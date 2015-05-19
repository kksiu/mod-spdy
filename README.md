# mod-spdy
Automatically exported from code.google.com/p/mod-spdy

The chrome extension is used for adding HTTP header entry for cache hint (bloom filters), there are two main parts:
1. periodical background calculation, it will refresh the bloom filter for each domain for every 30s
2. intercept http's request and detect whether it is a domain, then we will send the bloom filter corresponding to that domain.

The server implementation will receive the bloom filter in the http request from our extension, then decide whether to push a specific resource.

Both sides use murmur32 hash for bloom filter computation.

