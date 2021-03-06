# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := zlib
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
	-Ithird_party/zlib \
	-I.

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
	-Ithird_party/zlib \
	-I.

OBJS := \
	$(obj).target/$(TARGET)/third_party/zlib/contrib/minizip/ioapi.o \
	$(obj).target/$(TARGET)/third_party/zlib/contrib/minizip/unzip.o \
	$(obj).target/$(TARGET)/third_party/zlib/contrib/minizip/zip.o \
	$(obj).target/$(TARGET)/third_party/zlib/adler32.o \
	$(obj).target/$(TARGET)/third_party/zlib/compress.o \
	$(obj).target/$(TARGET)/third_party/zlib/crc32.o \
	$(obj).target/$(TARGET)/third_party/zlib/deflate.o \
	$(obj).target/$(TARGET)/third_party/zlib/gzio.o \
	$(obj).target/$(TARGET)/third_party/zlib/infback.o \
	$(obj).target/$(TARGET)/third_party/zlib/inffast.o \
	$(obj).target/$(TARGET)/third_party/zlib/inflate.o \
	$(obj).target/$(TARGET)/third_party/zlib/inftrees.o \
	$(obj).target/$(TARGET)/third_party/zlib/trees.o \
	$(obj).target/$(TARGET)/third_party/zlib/uncompr.o \
	$(obj).target/$(TARGET)/third_party/zlib/zutil.o

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

$(obj).target/third_party/zlib/libchrome_zlib.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/third_party/zlib/libchrome_zlib.a: LIBS := $(LIBS)
$(obj).target/third_party/zlib/libchrome_zlib.a: TOOLSET := $(TOOLSET)
$(obj).target/third_party/zlib/libchrome_zlib.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink)

all_deps += $(obj).target/third_party/zlib/libchrome_zlib.a
# Add target alias
.PHONY: zlib
zlib: $(obj).target/third_party/zlib/libchrome_zlib.a

# Add target alias to "all" target.
.PHONY: all
all: zlib

