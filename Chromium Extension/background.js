// Copyright (c) 2012 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.


var computeAlarm = "compute";
var host_reg = new RegExp("^(?:https?:\/\/)?(?:www\.)?([^\/]+)");
var bloomfilters = {};

chrome.alarms.create(computeAlarm,{ when: 0, periodInMinutes: 2 });

chrome.alarms.onAlarm.addListener(function(alarm) {
  console.log("alarm out!");

  var page = new XMLHttpRequest();
  var res = "0";
  
  page.open('POST', 'chrome://view-http-cache/',false);
  page.responseType = 'html';

  page.onload = function() {
    var response = page.response;
    res = response;
  };
  page.onerror = function() {
    errorCallback('Fetch cache error.');
  };
  page.send();

  var time1 = Date.now();

  var str = res;
  var reg = /<a href="chrome\:\/\/view\-http\-cache\/(.*?)"/g;
  var urlList = [];
  var matches = getMatches(str, reg);
  var matchLength = matches.length;
  for (var i = 0; i < matchLength; i ++) {
      if (matches[i].indexOf("google") > -1) continue;
      if (matches[i].indexOf("gstatic") > -1) continue;
      urlList.push(matches[i]);
  }

  console.log("Flush the storage!");
  localStorage.clear();
  var total = urlList.length;

  var domainList = {};
  for (var i = 0; i < total; i ++) {
    var domain = getMatch(urlList[i], host_reg);

    if (domain) {
      domainList[domain] = [];
    }
  }
  
  for (var i = 0; i < total; i ++) {
    var domain = getMatch(urlList[i], host_reg);

    if (domain) {
      domainList[domain].push(urlList[i]);
    }
  }

  //localStorage.setItem("name", "OK");

  bloomfilters = {};
  for (var domain in domainList) {
    var domainUrls = domainList[domain];
    bloomfilters[domain] = getBloomFilter(domainUrls);
  }
  var time2 = Date.now();

  console.log(bloomfilters);

  // localStorage.clear();
  // for (var domain in bloomfilters) {
  //   localStorage.setItem(domain, bloomfilters[domain]);
  // }
  console.log("Finish flush the storage.");
});

chrome.webRequest.onBeforeSendHeaders.addListener(
  function(details) {

    console.log("request = " + details.url);

    var domain = getMatch(details.url, host_reg);

    //var bloomfilter = localStorage.getItem(domain); /*getBloomFilter(urlList);*/
    var bloomfilter = bloomfilters[domain];

    if (bloomfilters[domain]) {
      details.requestHeaders.push({ "name" : "B-Cache", "value" : bloomfilter });
      console.log(details.requestHeaders);
    }
    
    return {requestHeaders : details.requestHeaders};
  },
  {urls: ["<all_urls>"]},
  ["blocking", "requestHeaders"]
);

function getMatch(str, regex) {
  var match = regex.exec(str);
  if (match) {
    return match[1];
  }
  return null;
}

function getMatches(str, regex) {
    var matches = [];
    var match;

    while (match = regex.exec(str)) {
      matches.push(match[1]);
    }
    return matches;
}

function getBloomFilter(urlList) {
  var k = 4;
  var n = urlList.length;
  var m = n * 10;
  var numBytes = Math.ceil(m / 8.0);

  var arr = new Uint8Array(numBytes);

  for (var i = 0; i < n; i ++) {
    for (var p = 1; p <= k; p ++) {
      var hash = murmurhash2_32_gc(urlList[i], p) % m;
      var tempByteNum = Math.floor(hash / 8);
      var shiftBy = 7 - (hash % 8);

      arr[tempByteNum] = arr[tempByteNum] | (1 << shiftBy);
    }
  }

  var returnedString = k + " " + m + " " + bin2String(arr);

  return returnedString;
}

function bin2String(array) {
  var result = "";
  for (var i = 0; i < array.length; i++) {
    result += String.fromCharCode(array[i]);
  }
  return btoa(result);
}

function murmurhash2_32_gc(str, seed) {
  var
    l = str.length,
    h = seed ^ l,
    i = 0,
    k;
    
  while (l >= 4) {
    k = 
      ((str.charCodeAt(i) & 0xff)) |
      ((str.charCodeAt(++i) & 0xff) << 8) |
      ((str.charCodeAt(++i) & 0xff) << 16) |
      ((str.charCodeAt(++i) & 0xff) << 24);
      
    k = (((k & 0xffff) * 0x5bd1e995) + ((((k >>> 16) * 0x5bd1e995) & 0xffff) << 16));
    k ^= k >>> 24;
    k = (((k & 0xffff) * 0x5bd1e995) + ((((k >>> 16) * 0x5bd1e995) & 0xffff) << 16));
  
    h = (((h & 0xffff) * 0x5bd1e995) + ((((h >>> 16) * 0x5bd1e995) & 0xffff) << 16)) ^ k;

    l -= 4;
    ++i;
  }
  
  switch (l) {
    case 3: h ^= (str.charCodeAt(i + 2) & 0xff) << 16;
    case 2: h ^= (str.charCodeAt(i + 1) & 0xff) << 8;
    case 1: h ^= (str.charCodeAt(i) & 0xff);
            h = (((h & 0xffff) * 0x5bd1e995) + ((((h >>> 16) * 0x5bd1e995) & 0xffff) << 16));
  }
  
  h ^= h >>> 13;
  h = (((h & 0xffff) * 0x5bd1e995) + ((((h >>> 16) * 0x5bd1e995) & 0xffff) << 16));
  h ^= h >>> 15;
  
  return h >>> 0;
}
  