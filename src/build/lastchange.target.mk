# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := lastchange
### Rules for action "lastchange":
quiet_cmd__home_user_mod_spdy_src_build_build_util_gyp_lastchange_target_lastchange = ACTION Extracting last change to $(obj)/gen/build/LASTCHANGE $@
cmd__home_user_mod_spdy_src_build_build_util_gyp_lastchange_target_lastchange = LD_LIBRARY_PATH=$(builddir)/lib.host:$(builddir)/lib.target:$$LD_LIBRARY_PATH; export LD_LIBRARY_PATH; cd build; mkdir -p $(obj)/gen/build; python util/lastchange.py -o "$(obj)/gen/build/LASTCHANGE" -d ../LASTCHANGE.in

$(obj)/gen/build/LASTCHANGE.always: obj := $(abs_obj)
$(obj)/gen/build/LASTCHANGE.always: builddir := $(abs_builddir)
$(obj)/gen/build/LASTCHANGE.always: TOOLSET := $(TOOLSET)
$(obj)/gen/build/LASTCHANGE.always: build/util/lastchange.py FORCE_DO_CMD
	$(call do_cmd,_home_user_mod_spdy_src_build_build_util_gyp_lastchange_target_lastchange)
$(obj)/gen/build/LASTCHANGE: $(obj)/gen/build/LASTCHANGE.always
$(obj)/gen/build/LASTCHANGE: ;

all_deps += $(obj)/gen/build/LASTCHANGE.always $(obj)/gen/build/LASTCHANGE
action__home_user_mod_spdy_src_build_build_util_gyp_lastchange_target_lastchange_outputs := $(obj)/gen/build/LASTCHANGE.always $(obj)/gen/build/LASTCHANGE


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
	-Ithird_party/chromium/src

OBJS :=

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our actions/rules run before any of us.
$(OBJS): | $(action__home_user_mod_spdy_src_build_build_util_gyp_lastchange_target_lastchange_outputs)


### Rules for final target.
# Build our special outputs first.
$(obj).target/build/lastchange.stamp: | $(action__home_user_mod_spdy_src_build_build_util_gyp_lastchange_target_lastchange_outputs)

# Preserve order dependency of special output on deps.
$(action__home_user_mod_spdy_src_build_build_util_gyp_lastchange_target_lastchange_outputs): | 

$(obj).target/build/lastchange.stamp: TOOLSET := $(TOOLSET)
$(obj).target/build/lastchange.stamp:  FORCE_DO_CMD
	$(call do_cmd,touch)

all_deps += $(obj).target/build/lastchange.stamp
# Add target alias
.PHONY: lastchange
lastchange: $(obj).target/build/lastchange.stamp

# Add target alias to "all" target.
.PHONY: all
all: lastchange
