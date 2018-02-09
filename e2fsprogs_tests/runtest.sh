[ -e /usr/bin/rhts-environment.sh ] && . /usr/bin/rhts-environment.sh
. /usr/share/beakerlib/beakerlib.sh || exit 1

rlJournalStart
    rlPhaseStartSetup
        rlRun "export PKG_VER=$(rpm -q e2fsprogs | cut -d "-" -f 2)"
        rlRun "export TEST_CONFIG=/usr/local/bin/e2fsprogs_tests/config.sh"
        rlRun "curl -O https://www.kernel.org/pub/linux/kernel/people/tytso/e2fsprogs/v${PKG_VER}/e2fsprogs-${PKG_VER}.tar.gz"
        rlRun "tar -zxvf e2fsprogs-${PKG_VER}.tar.gz e2fsprogs-${PKG_VER}"
        rlRun "cd e2fsprogs-${PKG_VER}"
        rlRun "mkdir build && cd build"
        rlRun "../configure"
    rlPhaseEnd
    rlPhaseStartTest
        rlRun "make check"
        #rlRun "touch /tmp/artifacts/report.log"
        #rlRun "n_passed=$(grep -w PASSED -c /tmp/artifacts/report.log)"
        #rlRun "n_failed=$(grep -w FAILED -c /tmp/artifacts/report.log)"
        #rlRun "n_skipped=$(grep -w SKIPPED -c /tmp/artifacts/report.log)"
        #rlRun 'brief_result="PASSED: ${n_passed} FAIILED: ${n_failed} SKIPPED: ${n_skipped}"'
        #rlRun 'echo $brief_result > /tmp/artifacts/brief_report.log'
        #rlRun 'grep "FAILED: 0" /tmp/artifacts/brief_report.log' 0
    rlPhaseEnd
    rlPhaseStartCleanup
    rlPhaseEnd
rlJournalEnd
