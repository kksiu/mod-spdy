# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := spdy_apache
DEFS_Debug := \
	'-D_LARGEFILE64_SOURCE' \
	'-DHAVE_CONFIG_H' \
	'-DLINUX=2' \
	'-D_REENTRANT' \
	'-D_GNU_SOURCE' \
	'-D__STDC_FORMAT_MACROS' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1' \
	'-DWTF_USE_DYNAMIC_ANNOTATIONS=1' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-Werror \
	-pthread \
	-fno-exceptions \
	-Wall \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-D_FILE_OFFSET_BITS=64 \
	-fvisibility=hidden \
	-pipe \
	-std=gnu++0x \
	-fPIC \
	-fno-strict-aliasing \
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
	-I. \
	-I$(obj)/gen \
	-Ithird_party/apache/httpd/src/include \
	-Ithird_party/apache/httpd/src/os/unix \
	-Ithird_party/apache/httpd/gen/arch/linux/x64/include \
	-Ithird_party/apache/apr/src/include \
	-Ithird_party/apache/apr/src/include/arch/unix \
	-Ithird_party/apache/apr/gen/arch/linux/x64/include \
	-Ithird_party/apache/aprutil/src/include \
	-Ithird_party/apache/aprutil/gen/arch/linux/x64/include

DEFS_Release := \
	'-D_LARGEFILE64_SOURCE' \
	'-DHAVE_CONFIG_H' \
	'-DLINUX=2' \
	'-D_REENTRANT' \
	'-D_GNU_SOURCE' \
	'-D__STDC_FORMAT_MACROS' \
	'-DNDEBUG'

# Flags passed to all source files.
CFLAGS_Release := \
	-Werror \
	-pthread \
	-fno-exceptions \
	-Wall \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-D_FILE_OFFSET_BITS=64 \
	-fvisibility=hidden \
	-pipe \
	-std=gnu++0x \
	-fPIC \
	-fno-strict-aliasing \
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
	-I. \
	-I$(obj)/gen \
	-Ithird_party/apache/httpd/src/include \
	-Ithird_party/apache/httpd/src/os/unix \
	-Ithird_party/apache/httpd/gen/arch/linux/x64/include \
	-Ithird_party/apache/apr/src/include \
	-Ithird_party/apache/apr/src/include/arch/unix \
	-Ithird_party/apache/apr/gen/arch/linux/x64/include \
	-Ithird_party/apache/aprutil/src/include \
	-Ithird_party/apache/aprutil/gen/arch/linux/x64/include

OBJS := \
	$(obj).target/$(TARGET)/mod_spdy/apache/apache_spdy_session_io.o \
	$(obj).target/$(TARGET)/mod_spdy/apache/apache_spdy_stream_task_factory.o \
	$(obj).target/$(TARGET)/mod_spdy/apache/config_commands.o \
	$(obj).target/$(TARGET)/mod_spdy/apache/config_util.o \
	$(obj).target/$(TARGET)/mod_spdy/apache/filters/http_to_spdy_filter.o \
	$(obj).target/$(TARGET)/mod_spdy/apache/filters/base64.o \
	$(obj).target/$(TARGET)/mod_spdy/apache/filters/server_push_filter.o \
	$(obj).target/$(TARGET)/mod_spdy/apache/filters/spdy_to_http_filter.o \
	$(obj).target/$(TARGET)/mod_spdy/apache/id_pool.o \
	$(obj).target/$(TARGET)/mod_spdy/apache/log_message_handler.o \
	$(obj).target/$(TARGET)/mod_spdy/apache/master_connection_context.o \
	$(obj).target/$(TARGET)/mod_spdy/apache/pool_util.o \
	$(obj).target/$(TARGET)/mod_spdy/apache/sockaddr_util.o \
	$(obj).target/$(TARGET)/mod_spdy/apache/slave_connection.o \
	$(obj).target/$(TARGET)/mod_spdy/apache/slave_connection_api.o \
	$(obj).target/$(TARGET)/mod_spdy/apache/slave_connection_context.o \
	$(obj).target/$(TARGET)/mod_spdy/apache/ssl_util.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(obj).target/build/mod_spdy_version_header.stamp $(obj).target/third_party/apache/httpd/include.stamp

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

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

$(obj).target/mod_spdy/libspdy_apache.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/mod_spdy/libspdy_apache.a: LIBS := $(LIBS)
$(obj).target/mod_spdy/libspdy_apache.a: TOOLSET := $(TOOLSET)
$(obj).target/mod_spdy/libspdy_apache.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink)

all_deps += $(obj).target/mod_spdy/libspdy_apache.a
# Add target alias
.PHONY: spdy_apache
spdy_apache: $(obj).target/mod_spdy/libspdy_apache.a

# Add target alias to "all" target.
.PHONY: all
all: spdy_apache

