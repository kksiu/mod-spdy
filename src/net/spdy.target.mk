# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := spdy
DEFS_Debug := \
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
	-Ithird_party/zlib

DEFS_Release := \
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
	-Ithird_party/zlib

OBJS := \
	$(obj).target/$(TARGET)/third_party/chromium/src/net/spdy/buffered_spdy_framer.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/net/spdy/spdy_frame_builder.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/net/spdy/spdy_frame_reader.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/net/spdy/spdy_framer.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

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

$(obj).target/net/libspdy.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/net/libspdy.a: LIBS := $(LIBS)
$(obj).target/net/libspdy.a: TOOLSET := $(TOOLSET)
$(obj).target/net/libspdy.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink)

all_deps += $(obj).target/net/libspdy.a
# Add target alias
.PHONY: spdy
spdy: $(obj).target/net/libspdy.a

# Add target alias to "all" target.
.PHONY: all
all: spdy

