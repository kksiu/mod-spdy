# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := base
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
	-fPIC \
	-fno-strict-aliasing \
	-Wno-write-strings \
	-Wno-error \
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
	-I.

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
	-fPIC \
	-fno-strict-aliasing \
	-Wno-write-strings \
	-Wno-error \
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
	-I.

OBJS := \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/string16.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/time_posix.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/third_party/dmg_fp/g_fmt.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/third_party/dmg_fp/dtoa_wrapper.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/third_party/icu/icu_utf.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/third_party/nspr/prtime.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/at_exit.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/atomicops_internals_x86_gcc.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/callback_internal.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/command_line.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/debug/alias.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/debug/debugger.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/debug/debugger_posix.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/debug/stack_trace.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/debug/stack_trace_posix.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/file_path.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/lazy_instance.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/location.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/logging.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/memory/ref_counted.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/memory/singleton.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/metrics/stats_counters.o \
	$(obj).target/$(TARGET)/base/metrics/stats_table.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/pickle.o \
	$(obj).target/$(TARGET)/base/process_util_posix.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/profiler/alternate_timer.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/profiler/tracked_time.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/safe_strerror_posix.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/string_number_conversions.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/string_piece.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/string_split.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/string_util.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/stringprintf.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/synchronization/condition_variable_posix.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/synchronization/lock.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/synchronization/lock_impl_posix.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/sys_string_conversions_posix.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/threading/platform_thread_posix.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/threading/thread_collision_warner.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/threading/thread_local_posix.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/threading/thread_local_storage_posix.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/threading/thread_restrictions.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/time.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/tracked_objects.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/utf_string_conversion_utils.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/utf_string_conversions.o \
	$(obj).target/$(TARGET)/third_party/chromium/src/base/vlog.o

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

$(obj).target/base/libbase.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/base/libbase.a: LIBS := $(LIBS)
$(obj).target/base/libbase.a: TOOLSET := $(TOOLSET)
$(obj).target/base/libbase.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink)

all_deps += $(obj).target/base/libbase.a
# Add target alias
.PHONY: base
base: $(obj).target/base/libbase.a

# Add target alias to "all" target.
.PHONY: all
all: base

