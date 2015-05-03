# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := aprutil
DEFS_Debug := \
	'-D_LARGEFILE64_SOURCE' \
	'-DHAVE_CONFIG_H' \
	'-DLINUX=2' \
	'-D_REENTRANT' \
	'-D_GNU_SOURCE' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1' \
	'-DWTF_USE_DYNAMIC_ANNOTATIONS=1' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-pthread \
	-fno-exceptions \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-D_FILE_OFFSET_BITS=64 \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-fno-strict-aliasing \
	-pthread \
	-Wno-deprecated \
	-Wno-format \
	-O0 \
	-g

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden

INCS_Debug := \
	-Ithird_party/chromium/src \
	-Ithird_party/apache/aprutil/src/include/private \
	-Ithird_party/apache/aprutil/gen/arch/linux/x64/include/private \
	-Ithird_party/apache/aprutil/src/include \
	-Ithird_party/apache/aprutil/gen/arch/linux/x64/include \
	-Ithird_party/apache/apr/src/include \
	-Ithird_party/apache/apr/src/include/arch/unix \
	-Ithird_party/apache/apr/gen/arch/linux/x64/include

DEFS_Release := \
	'-D_LARGEFILE64_SOURCE' \
	'-DHAVE_CONFIG_H' \
	'-DLINUX=2' \
	'-D_REENTRANT' \
	'-D_GNU_SOURCE' \
	'-DNDEBUG'

# Flags passed to all source files.
CFLAGS_Release := \
	-pthread \
	-fno-exceptions \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-D_FILE_OFFSET_BITS=64 \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-fno-strict-aliasing \
	-pthread \
	-Wno-deprecated \
	-Wno-format \
	-O2 \
	-fno-ident \
	-fdata-sections \
	-ffunction-sections

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden

INCS_Release := \
	-Ithird_party/chromium/src \
	-Ithird_party/apache/aprutil/src/include/private \
	-Ithird_party/apache/aprutil/gen/arch/linux/x64/include/private \
	-Ithird_party/apache/aprutil/src/include \
	-Ithird_party/apache/aprutil/gen/arch/linux/x64/include \
	-Ithird_party/apache/apr/src/include \
	-Ithird_party/apache/apr/src/include/arch/unix \
	-Ithird_party/apache/apr/gen/arch/linux/x64/include

OBJS := \
	$(obj).target/$(TARGET)/third_party/apache/aprutil/src/buckets/apr_brigade.o \
	$(obj).target/$(TARGET)/third_party/apache/aprutil/src/buckets/apr_buckets.o \
	$(obj).target/$(TARGET)/third_party/apache/aprutil/src/buckets/apr_buckets_alloc.o \
	$(obj).target/$(TARGET)/third_party/apache/aprutil/src/buckets/apr_buckets_eos.o \
	$(obj).target/$(TARGET)/third_party/apache/aprutil/src/buckets/apr_buckets_file.o \
	$(obj).target/$(TARGET)/third_party/apache/aprutil/src/buckets/apr_buckets_flush.o \
	$(obj).target/$(TARGET)/third_party/apache/aprutil/src/buckets/apr_buckets_heap.o \
	$(obj).target/$(TARGET)/third_party/apache/aprutil/src/buckets/apr_buckets_mmap.o \
	$(obj).target/$(TARGET)/third_party/apache/aprutil/src/buckets/apr_buckets_pipe.o \
	$(obj).target/$(TARGET)/third_party/apache/aprutil/src/buckets/apr_buckets_pool.o \
	$(obj).target/$(TARGET)/third_party/apache/aprutil/src/buckets/apr_buckets_refcount.o \
	$(obj).target/$(TARGET)/third_party/apache/aprutil/src/buckets/apr_buckets_simple.o \
	$(obj).target/$(TARGET)/third_party/apache/aprutil/src/buckets/apr_buckets_socket.o \
	$(obj).target/$(TARGET)/third_party/apache/aprutil/src/dbm/apr_dbm.o \
	$(obj).target/$(TARGET)/third_party/apache/aprutil/src/dbm/apr_dbm_sdbm.o \
	$(obj).target/$(TARGET)/third_party/apache/aprutil/src/dbm/sdbm/sdbm.o \
	$(obj).target/$(TARGET)/third_party/apache/aprutil/src/dbm/sdbm/sdbm_hash.o \
	$(obj).target/$(TARGET)/third_party/apache/aprutil/src/dbm/sdbm/sdbm_lock.o \
	$(obj).target/$(TARGET)/third_party/apache/aprutil/src/dbm/sdbm/sdbm_pair.o \
	$(obj).target/$(TARGET)/third_party/apache/aprutil/src/encoding/apr_base64.o \
	$(obj).target/$(TARGET)/third_party/apache/aprutil/src/hooks/apr_hooks.o \
	$(obj).target/$(TARGET)/third_party/apache/aprutil/src/ldap/apr_ldap_stub.o \
	$(obj).target/$(TARGET)/third_party/apache/aprutil/src/ldap/apr_ldap_url.o \
	$(obj).target/$(TARGET)/third_party/apache/aprutil/src/memcache/apr_memcache.o \
	$(obj).target/$(TARGET)/third_party/apache/aprutil/src/misc/apr_date.o \
	$(obj).target/$(TARGET)/third_party/apache/aprutil/src/misc/apr_queue.o \
	$(obj).target/$(TARGET)/third_party/apache/aprutil/src/misc/apr_reslist.o \
	$(obj).target/$(TARGET)/third_party/apache/aprutil/src/misc/apr_rmm.o \
	$(obj).target/$(TARGET)/third_party/apache/aprutil/src/misc/apr_thread_pool.o \
	$(obj).target/$(TARGET)/third_party/apache/aprutil/src/misc/apu_dso.o \
	$(obj).target/$(TARGET)/third_party/apache/aprutil/src/misc/apu_version.o \
	$(obj).target/$(TARGET)/third_party/apache/aprutil/src/strmatch/apr_strmatch.o \
	$(obj).target/$(TARGET)/third_party/apache/aprutil/src/uri/apr_uri.o \
	$(obj).target/$(TARGET)/third_party/apache/aprutil/src/xlate/xlate.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(obj).target/third_party/apache/aprutil/include.stamp

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-Wl,-z,noexecstack

LDFLAGS_Release := \
	-pthread \
	-Wl,-z,noexecstack \
	-Wl,-O1 \
	-Wl,--as-needed \
	-Wl,--gc-sections

LIBS :=

$(obj).target/third_party/apache/aprutil/libaprutil.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/third_party/apache/aprutil/libaprutil.a: LIBS := $(LIBS)
$(obj).target/third_party/apache/aprutil/libaprutil.a: TOOLSET := $(TOOLSET)
$(obj).target/third_party/apache/aprutil/libaprutil.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink)

all_deps += $(obj).target/third_party/apache/aprutil/libaprutil.a
# Add target alias
.PHONY: aprutil
aprutil: $(obj).target/third_party/apache/aprutil/libaprutil.a

# Add target alias to "all" target.
.PHONY: all
all: aprutil
