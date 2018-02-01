#!/bin/bash
#
# Test configuration
#

FSCK="e2fsck"
MKE2FS="mke2fs"
DUMPE2FS="dumpe2fs"
TUNE2FS="tune2fs"
CHATTR="chattr"
LSATTR="lsattr"
E2IMAGE="e2image"
E2IMAGE_EXE="/e2image"
DEBUGFS="debugfs"
DEBUGFS_EXE="debugfs"
TEST_BITS="debugfs"
RESIZE2FS_EXE="resize2fs"
E2UNDO_EXE="e2undo"
E2UNDO=$E2UNDO_EXE
SRCDIR="/usr/local/bin/e2fsprogs_tests/e2fsprogs-1.43.8/tests"
cmd_dir=$SRCDIR
CLEAN_OUTPUT="sed -f $cmd_dir/filter.sed"
