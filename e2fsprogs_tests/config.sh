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
E2IMAGE_EXE="/sbin/e2image"
DEBUGFS="debugfs"
DEBUGFS_EXE="/sbin/debugfs"
TEST_BITS="debugfs"
RESIZE2FS_EXE="/sbin/resize2fs"
RESIZE2FS="resize2fs"
E2UNDO_EXE="/sbin/e2undo"
E2UNDO="e2undo"
SRCDIR="/usr/local/bin/e2fsprogs_tests/e2fsprogs-${PKG_VER}/build/tests"
cmd_dir=$SRCDIR
CLEAN_OUTPUT="sed -f $cmd_dir/filter.sed"
##################################################################
TEST_REL="${SRCDIR}/progs/test_rel"
TEST_ICOUNT="${SRCDIR}/progs/test_icount"
CRCSUM="${SRCDIR}/progs/crcsum"
LD_LIBRARY_PATH=../lib:../lib/ext2fs:../lib/e2p:../lib/et:../lib/ss:${LD_LIBRARY_PATH}
DYLD_LIBRARY_PATH=../lib:../lib/ext2fs:../lib/e2p:../lib/et:../lib/ss:${DYLD_LIBRARY_PATH}
TZ=GMT0
LC_ALL=C
E2FSCK_CONFIG=/dev/null
MKE2FS_CONFIG=./mke2fs.conf.in
BLKID_FILE=/dev/null
unset MKE2FS_FIRST_META_BG
E2FSPROGS_SKIP_PROGRESS=yes
EXT2FS_NO_MTAB_OK=yes
E2FSPROGS_LIBMAGIC_SUPPRESS=yes
##################################################################
HTREE="y"
QUOTA="y"
DIFF_OPTS="u"
SIZEOF_TIME_T="8"
DD="dd"
