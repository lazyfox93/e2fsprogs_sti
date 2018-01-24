[ -e /usr/bin/rhts-environment.sh ] && . /usr/bin/rhts-environment.sh

rlJouranlStart
    rlPhaseStartSetup
        rlRun "curl -O https://www.kernel.org/pub/linux/kernel/people/tytso/e2fsprogs/v1.43.8/e2fsprogs-1.43.8.tar.gz"
        rlRun "tar -zxvf e2fsprogs-1.43.8.tar.gz e2fsprogs-1.43.8/tests"
        rlrun ". ./config.sh"
        rlRun "cd tests "
    rlPhaseEndSetup
    rlPhaseStartTest
        for test_dir in $(ls -a | grep ^[dfijmrtu]_.); do
            ./test_one.in $test_dir
        done
    rlPhaseEndTest
    rlPhaseStartCleanup
    rlPhaseEndCleanup
rlJournalEnd
