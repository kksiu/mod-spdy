# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := dynamic_annotations
DEFS_Debug := \
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
	-Ithird_party/chromium/src

DEFS_Release := \
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
	-Ithird_party/chromium/src

OBJS := \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/third_party/dynamic_annotations/dynamic_annotations.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

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

$(obj).target/third_party/chromium/src/base/third_party/dynamic_annotations/libdynamic_annotations.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/third_party/chromium/src/base/third_party/dynamic_annotations/libdynamic_annotations.a: LIBS := $(LIBS)
$(obj).target/third_party/chromium/src/base/third_party/dynamic_annotations/libdynamic_annotations.a: TOOLSET := $(TOOLSET)
$(obj).target/third_party/chromium/src/base/third_party/dynamic_annotations/libdynamic_annotations.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink)

all_deps += $(obj).target/third_party/chromium/src/base/third_party/dynamic_annotations/libdynamic_annotations.a
# Add target alias
.PHONY: dynamic_annotations
dynamic_annotations: $(obj).target/third_party/chromium/src/base/third_party/dynamic_annotations/libdynamic_annotations.a

# Add target alias to "all" target.
.PHONY: all
all: dynamic_annotations

