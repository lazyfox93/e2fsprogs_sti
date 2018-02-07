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
SRCDIR="/usr/local/bin/e2fsprogs_tests/e2fsprogs-${PKG_VER}/tests"
cmd_dir=$SRCDIR
CLEAN_OUTPUT="sed -f $cmd_dir/filter.sed"
##################################################################
TEST_REL="${SRCDIR}/progs/test_rel"
TEST_ICOUNT="${SRCDIR}/progs/test_icount"
CRCSUM="${SRCDIR}/progs/crcsum"
E2FSCK_CONFIG="/dev/null"
MKE2FS_CONFIG="${SRCDIR}/mke2fs.conf.in"
BLKID_FILE=/dev/null
E2FSPROGS_SKIP_PROGRESS=yes
EXT2FS_NO_MTAB_OK=yes
E2FSPROGS_LIBMAGIC_SUPPRESS=yes
LC_ALL=C