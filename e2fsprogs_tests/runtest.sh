[ -e /usr/bin/rhts-environment.sh ] && . /usr/bin/rhts-environment.sh
. /usr/share/beakerlib/beakerlib.sh || exit 1

rlJournalStart
    rlPhaseStartSetup
        rlRun "export TEST_CONFIG=/usr/local/bin/e2fsprogs_tests/config.sh"
        rlRun "curl -O https://www.kernel.org/pub/linux/kernel/people/tytso/e2fsprogs/v1.43.8/e2fsprogs-1.43.8.tar.gz"
        rlRun "tar -zxvf e2fsprogs-1.43.8.tar.gz e2fsprogs-1.43.8/tests"
        echo $(pwd)
        rlRun "cd e2fsprogs-1.43.8/tests "
        rlRun "chmod +x ./test_one.in"
        echo $(pwd)
    rlPhaseEnd
    rlPhaseStartTest
        touch /tmp/artifacts/report.log
        for test in $(ls -a | grep ^[dfijmrtu]_.); do
            echo $(pwd)
            ./test_one.in $test
            if [[ -f "$test".ok ]]
            then
                echo "$test PASSED" >> /tmp/artifacts/report.log
            elif [[ -f "$test".failed ]]
            then
                echo "$test FAILED" >> /tmp/artifacts/report.log
            else
                echo "$test SKIPPED" >> /tmp/artifacts/report.log
            fi
        done
        echo "PASSED: $(grep PASSED /tmp/artifacts/report.log | wc -l)" >> /tmp/artifacts/report.log
        echo "FAIILED: $(grep FAILED /tmp/artifacts/report.log | wc -l)" >> /tmp/artifacts/report.log
        echo "SKIPPED: $(grep SKIPPED /tmp/artifacts/report.log | wc -l)" >> /tmp/artifacts/report.log
        rlRun 'grep "FAILED: 0" /tmp/artifacts/report.log' 0
    rlPhaseEnd
    rlPhaseStartCleanup
        rlRun "rm -rf /tmp/artifacts"
        rlRun "rm -rf /tmp/e2fsprogs*"
    rlPhaseEnd
rlJournalEnd
