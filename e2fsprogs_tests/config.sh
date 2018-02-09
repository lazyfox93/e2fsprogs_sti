#!/bin/bash
#
# Test configuration
#
unset LANG LANGUAGE LC_ADDRESS LC_ALL LC_COLLATE LC_CTYPE LC_IDENTIFICATION LC_MEASUREMENT LC_MESSAGES LC_MONETARY LC_NAME LC_NUMERIC LC_PAPER LC_TELEPHONE LC_TIME PAGER
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
TEST_REL=../tests/progs/test_rel
TEST_ICOUNT=../tests/progs/test_icount
CRCSUM=../tests/progs/crcsum
CLEAN_OUTPUT="sed -f $cmd_dir/filter.sed"
LD_LIBRARY_PATH=../lib:../lib/ext2fs:../lib/e2p:../lib/et:../lib/ss:${LD_LIBRARY_PATH}
DYLD_LIBRARY_PATH=../lib:../lib/ext2fs:../lib/e2p:../lib/et:../lib/ss:${DYLD_LIBRARY_PATH}
TZ=GMT0
LC_ALL=C
E2FSCK_CONFIG=/dev/null
MKE2FS_CONFIG=./mke2fs.conf
BLKID_FILE=/dev/null
unset MKE2FS_FIRST_META_BG
E2FSPROGS_SKIP_PROGRESS=yes
EXT2FS_NO_MTAB_OK=yes
E2FSPROGS_LIBMAGIC_SUPPRESS=yes
