# Android - Bash .rc functions
[Created by Adrian DC @XDA-Developers](http://forum.xda-developers.com/member.php?u=2233641)

Shared shell functions are meant to help everyone<br />
developing on Android, especially for SONY devices.<br />


### [ Permanent installation for terminals ]
- gedit ~/.bashrc
- Adapt and add "export ANDROID_DEV_DRIVE=/media/../AndroidDev;"
- Adapt and add "source ${ANDROID_DEV_DRIVE}/Bash/android_bash.rc;"



### [ Referenced list of functions ]

<!-- Functions Start -->
* #### Source: [android_bash.rc](android_bash.rc)
  * [bashup (Function)](android_bash.rc): *bashup (Reloads android_shell_tools scripts)*
  * [bashe (Function)](android_bash.rc): *bashe <words> <to> <search> (Direct access to related sources)*
  * [bashsync (Function)](android_bash.rc): *bashsync (Download new android_shell_tools changes)*
  * [bashpush (Function)](android_bash.rc): *bashpush (Commit new changes to android_shell_tools)*
  * [bashamend (Function)](android_bash.rc): *bashamend (Amend new changes to android_shell_tools)*
  * [bashdiff (Function)](android_bash.rc): *bashdiff (Compare with upstream android_shell_tools)*
  * [bashlog (Function)](android_bash.rc): *bashlog (Displays android_shell_tools history)*
  * [bashreset (Function)](android_bash.rc): *bashreset (Reset project to remote HEAD)*
  * [shtoolsreadme (Function)](android_bash.rc): *shtoolsreadme (Refresh README.md functions helpers)*
* #### Source: [android_adb.rc](android_adb.rc)
  * [adbr (Function)](android_adb.rc)
  * [adbro (Function)](android_adb.rc)
  * [adbside (Function)](android_adb.rc)
  * [adbs (Alias)](android_adb.rc): *adb shell*
  * [adbroot (Alias)](android_adb.rc): *adb kill-server; sudo adb start-server*
  * [adbremount (Alias)](android_adb.rc): *sudo adb root; sudo adb remount*
  * [adbpo (Alias)](android_adb.rc): *adb shell reboot -p*
  * [adbre (Alias)](android_adb.rc): *adb reboot*
  * [adbrh (Function)](android_adb.rc): *adb ${1} shell setprop ctl.restart zygote*
  * [adbrr (Alias)](android_adb.rc): *adb reboot recovery*
  * [adbw (Alias)](android_adb.rc): *adb wait-for-device*
  * [adbrb (Alias)](android_adb.rc): *adb reboot bootloader*
  * [adbscr (Alias)](android_adb.rc): *mkdir -p ./screenshots; adb shell screencap /sdcard/screenshot.png; adb pull /sdcard/screenshot.png ./screenshots/screenshot-$(date +%Y%m%d-%H%M%S).png*
  * [adbfotarandom (Alias)](android_adb.rc): *adb root; adb shell dd if=/dev/random of=/dev/block/platform/msm_sdcc.1/by-name/FOTAKernel*
  * [adbfotazero (Alias)](android_adb.rc): *adb root; adb shell dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/FOTAKernel*
  * [adbsgdisk (Alias)](android_adb.rc): *adb shell sgdisk --print /dev/block/mmcblk0*
  * [adbinfomem (Alias)](android_adb.rc): *adb shell dumpsys meminfo*
  * [adbblkp (Alias)](android_adb.rc): *adb shell ls -l /dev/block/bootdevice/by-name/*
  * [adbdf (Alias)](android_adb.rc): *adb shell df -H*
  * [adbrcbin (Alias)](android_adb.rc): *adb shell restorecon -R /sbin*
  * [adbmountcache (Alias)](android_adb.rc): *adb shell mount -t ext4 /dev/block/platform/msm_sdcc.1/by-name/Cache /cache*
  * [adbmountdata (Alias)](android_adb.rc): *adb shell mount -t ext4 /dev/block/platform/msm_sdcc.1/by-name/Userdata /data*
  * [adbmountmicrosd (Alias)](android_adb.rc): *adb shell mkdir -p /storage/ext; adb shell mount -t ext4 /dev/block/mmcblk1p1 /storage/ext*
  * [adbumountcache (Alias)](android_adb.rc): *adb shell umount /cache*
  * [adbumountdata (Alias)](android_adb.rc): *adb shell umount /data*
  * [adbumountmicrosd (Alias)](android_adb.rc): *adb shell umount /storage/ext*
  * [adbmount (Alias)](android_adb.rc): *adbmountcache; adbmountdata; adbmountmicrosd*
  * [adbumount (Alias)](android_adb.rc): *adbumountcache; adbumountdata; adbumountmicrosd*
  * [adbemergencycalls (Alias)](android_adb.rc): *adb shell setprop ril.ecclist*
  * [adbemergencylist (Alias)](android_adb.rc): *adb shell getprop ril.ecclist*
  * [adbco (Function)](android_adb.rc): *adbco [ipaddressonlyonce]*
  * [adbedit (Function)](android_adb.rc)
  * [adbdatabase (Function)](android_adb.rc): *adbdatabase </data/.../sqlite.db>*
  * [adbinputs (Function)](android_adb.rc)
  * [adbreadevents (Function)](android_adb.rc): *adbreadevents <event_number>*
  * [adbkp (Function)](android_adb.rc)
  * [adbservices (Alias)](android_adb.rc): *adb shell service list*
  * [adbsl (Alias)](android_adb.rc): *adb shell ls -l*
  * [adbslz (Alias)](android_adb.rc): *adb shell ls -lZ*
  * [adbsc (Alias)](android_adb.rc): *adb shell cat*
  * [adbsg (Alias)](android_adb.rc): *adb shell getprop*
  * [adbsw (Function)](android_adb.rc): *adbro; adb shell "echo ${1} > ${2}"*
  * [isdone (Alias)](android_adb.rc): *notify-send "Process execution finished !"*
  * [adbgitpf (Function)](android_adb.rc)
  * [adbsu (Function)](android_adb.rc)
  * [adbu (Function)](android_adb.rc)
* #### Source: [android_adb_assets.rc](android_adb_assets.rc)
  * [adbupdate (Function)](android_adb_assets.rc)
  * [sepaud (Function)](android_adb_assets.rc)
  * [adbintents (Alias)](android_adb_assets.rc): *adb shell dumpsys package r > intents.txt*
  * [adbcamera (Alias)](android_adb_assets.rc): *adb root; adb wait-for-device; adb shell killall zigote; adbl*
  * [adbpk (Function)](android_adb_assets.rc)
  * [adbms (Function)](android_adb_assets.rc)
  * [adblibs (Function)](android_adb_assets.rc): *adb shell grep -air "${1}" ${2:-/system/lib/}*
  * [ndkstack (Alias)](android_adb_assets.rc): *ndk-stack -sym ${ANDROID_DEV_DRIVE}/out/target/product/huashan/symbols -dump*
  * [adbwtch (Function)](android_adb_assets.rc): *adbr; while [ 1 ]; do adb shell cat "${1}"; done*
  * [adbdu (Function)](android_adb_assets.rc)
  * [adbpropradiolog (Function)](android_adb_assets.rc)
  * [adbrstock (Function)](android_adb_assets.rc)
  * [adbalsa (Function)](android_adb_assets.rc)
* #### Source: [android_adb_debug.rc](android_adb_debug.rc)
  * [adbst (Function)](android_adb_debug.rc): *adbst <process_name> [bool_get_root] [parameters]*
  * [adbstf (Function)](android_adb_debug.rc)
* #### Source: [android_adb_flash.rc](android_adb_flash.rc)
  * [adbbootdump (Function)](android_adb_flash.rc)
  * [adbbootcut (Function)](android_adb_flash.rc)
  * [adbrecoveryinstall (Function)](android_adb_flash.rc): *adbrecoveryinstall <file_path>*
* #### Source: [android_adb_installers.rc](android_adb_installers.rc)
  * [adbpushfile (Function)](android_adb_installers.rc)
  * [adbif (Function)](android_adb_installers.rc)
  * [adbil (Function)](android_adb_installers.rc)
  * [adbi (Function)](android_adb_installers.rc): *adbro; adbif ${@}*
  * [adbii (Function)](android_adb_installers.rc): *adbif ${@}*
  * [adbpf (Function)](android_adb_installers.rc): *adbpf <file_paths>*
  * [adbp (Alias)](android_adb_installers.rc): *adbro; adbpf*
  * [adbpfa (Function)](android_adb_installers.rc)
  * [adbpetc (Function)](android_adb_installers.rc)
  * [adbpmrom (Function)](android_adb_installers.rc)
  * [adbpmromenc (Function)](android_adb_installers.rc)
  * [adbicopymk (Function)](android_adb_installers.rc)
  * [adbapkinstall (Function)](android_adb_installers.rc)
* #### Source: [android_adb_logs.rc](android_adb_logs.rc)
  * [adbl (Function)](android_adb_logs.rc): *adbl [all/crash/events/main/radio/system]*
  * [adbcl (Function)](android_adb_logs.rc)
  * [adbstcl (Function)](android_adb_logs.rc)
  * [adbld (Alias)](android_adb_logs.rc): *cls; adbro; printf "" >adb.data; adb shell cat /data/logcat.txt | tee -a adb.data*
  * [adblr (Alias)](android_adb_logs.rc): *adbl radio*
  * [adblb (Alias)](android_adb_logs.rc): *alias adblb='while [ 1 ]; do cls; printf "" >adb.log; adb logcat -v audit2allow *:V | tee -a adb.log;*
  * [adblc (Alias)](android_adb_logs.rc): *adb logcat -c; adbl*
  * [adbk (Alias)](android_adb_logs.rc): *adbro; printf "" >kmsg; adb shell cat /proc/kmsg | tee -a kmsg*
  * [adbdm (Alias)](android_adb_logs.rc): *adbro; printf "" >dmesg; adb shell dmesg | tee -a dmesg*
  * [adbkd (Alias)](android_adb_logs.rc): *printf "" >kmsg; adb shell cat /proc/kmsg | tee -a kmsg*
  * [adbkl (Alias)](android_adb_logs.rc): *cls; adbro; printf "" >last_kmsg; adb shell cat /proc/last_kmsg | tee -a last_kmsg*
  * [adbkld (Alias)](android_adb_logs.rc): *cls; printf "" >last_kmsg; adb shell cat /proc/last_kmsg | tee -a last_kmsg*
  * [adbpl (Alias)](android_adb_logs.rc): *cls; adbro; printf "" >last_kmsg; adb shell cat /sys/fs/pstore/console-ramoops | tee -a last_kmsg*
  * [adbpld (Alias)](android_adb_logs.rc): *cls; printf "" >last_kmsg; adb shell cat /sys/fs/pstore/console-ramoops | tee -a last_kmsg*
  * [adbrl (Alias)](android_adb_logs.rc): *cls; printf "" >recovery_log; adb shell cat /tmp/recovery.log | tee -a recovery_log*
  * [adbse (Alias)](android_adb_logs.rc): *adbro; printf "" >kmsg; adb shell cat /proc/kmsg | tee -a kmsg; sepaud kmsg*
  * [adbdumpsensors (Alias)](android_adb_logs.rc): *adb shell dumpsys sensorservice*
  * [adbsel (Alias)](android_adb_logs.rc): *adbkl; sepaud kmsg*
  * [adblf (Alias)](android_adb_logs.rc): *adb logcat -v audit2allow*
  * [adblh (Alias)](android_adb_logs.rc): *adb logcat -b events -b main -b radio | highlight*
  * [adbtrampoline (Alias)](android_adb_logs.rc): *adb shell "dmesg | grep -i trampoline"*
  * [adblcln (Function)](android_adb_logs.rc): *cat ${1} | cut -c 32- | tee ${1}.clean*
  * [adbkcln (Function)](android_adb_logs.rc): *cat ${1} | cut -c 15- | tee ${1}.clean*
  * [adbbootchart (Function)](android_adb_logs.rc)
* #### Source: [android_changelog.rc](android_changelog.rc)
  * [repochangelog (Function)](android_changelog.rc): *repochangelog <days_count> [project1_path,project2_path,...]*
* #### Source: [android_colors.rc](android_colors.rc)
  * [loadcolors (Function)](android_colors.rc)
* #### Source: [android_devices.rc](android_devices.rc)
  * [androiddevicestarget (Function)](android_devices.rc)
  * [codenametotarget (Function)](android_devices.rc)
* #### Source: [android_edit.rc](android_edit.rc)
  * [editreplacematch (Function)](android_edit.rc): *editreplacematch <"match_line"> <"to_write"> <"files">*
  * [editremovematch (Function)](android_edit.rc): *editremovematch <"match_line"> <"files">*
  * [editinsertabove (Function)](android_edit.rc): *editinsertabove <"match_line"> <"to_insert"> <"files">*
  * [editinsertbelow (Function)](android_edit.rc): *editinsertbelow <"match_line"> <"to_insert"> <"files">*
* #### Source: [android_fetch.rc](android_fetch.rc)
  * [gitfetchtreset (Function)](android_fetch.rc)
  * [gitfetchcheckout (Function)](android_fetch.rc)
  * [gitf (Alias)](android_fetch.rc): *git fetch*
  * [gitfmr (Alias)](android_fetch.rc): *git fetch origin; git reset origin/master*
  * [gitfs (Alias)](android_fetch.rc): *git fetch origin; git reset origin/$(git rev-parse --abbrev-ref HEAD); git stash*
  * [gitfsu (Alias)](android_fetch.rc): *git fetch origin; git reset origin/$(git rev-parse --abbrev-ref HEAD); git stash -p*
  * [gitfsm (Alias)](android_fetch.rc): *git stash -u; git fetch origin cm-14.1; git checkout cm-14.1*
  * [gitfgr (Alias)](android_fetch.rc): *gitfetchtreset github*
  * [gitfor (Alias)](android_fetch.rc): *gitfetchtreset origin*
  * [gitforla (Alias)](android_fetch.rc): *gitfetchtreset origin aosp/LA.UM.5.5_rb1.10*
  * [gitfar (Alias)](android_fetch.rc): *gitfetchtreset $(githubusername)*
  * [gitfar6 (Alias)](android_fetch.rc): *gitfetchtreset $(githubusername) aosp-6.0*
  * [gitfara6 (Alias)](android_fetch.rc): *gitfetchtreset $(githubusername) android-6.0*
  * [gitfarm (Alias)](android_fetch.rc): *gitfetchtreset $(githubusername) multirom*
  * [gitfart (Alias)](android_fetch.rc): *gitfetchtreset $(githubusername) twrp*
  * [gitfbr (Alias)](android_fetch.rc): *gitfetchtreset backup*
  * [gitfsr (Alias)](android_fetch.rc): *gitfetchtreset source*
  * [gitfgc (Alias)](android_fetch.rc): *gitfetchcheckout github*
  * [gitfdr (Function)](android_fetch.rc): *git fetch "${1}"; git reset --hard FETCH_HEAD*
  * [gitfkl (Function)](android_fetch.rc): *git fetch git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git linux-3.4.y*
* #### Source: [android_gerrit.rc](android_gerrit.rc)
  * [gerritreview (Function)](android_gerrit.rc): *gerritreview <gerrit_ssh_or_http> <project_name_or_.> <drafts/for/heads> [branch]*
  * [gerritusername (Function)](android_gerrit.rc)
  * [gitpr (Alias)](android_gerrit.rc): *gerritreview ssh://$(gerritusername)@review.lineageos.org:29418 LineageOS for*
  * [gitprh (Alias)](android_gerrit.rc): *gerritreview http://review.lineageos.org LineageOS for*
  * [gitprd (Alias)](android_gerrit.rc): *gerritreview ssh://$(gerritusername)@review.lineageos.org:29418 LineageOS drafts*
  * [gitprdh (Alias)](android_gerrit.rc): *gerritreview http://review.lineageos.org LineageOS drafts*
  * [gitpg (Alias)](android_gerrit.rc): *gerritreview ssh://$(gerritusername)@review.lineageos.org:29418 LineageOS heads*
  * [gitpgh (Alias)](android_gerrit.rc): *gerritreview http://review.lineageos.org LineageOS heads*
  * [gitprg (Alias)](android_gerrit.rc): *gitpr; gitpg*
  * [gitprgy (Alias)](android_gerrit.rc): *printf "ynyn" | gitpr; printf "yny" | gitpg*
  * [gitpraosp (Alias)](android_gerrit.rc): *gerritreview https://android.googlesource.com aosp for*
  * [gitpraospma (Alias)](android_gerrit.rc): *gerritreview https://android.googlesource.com aosp for master*
  * [gitprdaosp (Alias)](android_gerrit.rc): *gerritreview https://android.googlesource.com aosp drafts*
  * [gitprdaospma (Alias)](android_gerrit.rc): *gerritreview https://android.googlesource.com aosp drafts master*
  * [gitpraicp (Alias)](android_gerrit.rc): *gerritreview ssh://$(gerritusername)@gerrit.aicp-rom.com:29418 AICP for n7.1*
  * [gitprhaicp (Alias)](android_gerrit.rc): *gerritreview http://gerrit.aicp-rom.com AICP for n7.1*
  * [gitprdaicp (Alias)](android_gerrit.rc): *gerritreview ssh://$(gerritusername)@gerrit.aicp-rom.com:29418 AICP drafts n7.1*
  * [gitprdhaicp (Alias)](android_gerrit.rc): *gerritreview http://gerrit.aicp-rom.com AICP drafts n7.1*
  * [gitpgaicp (Alias)](android_gerrit.rc): *gerritreview ssh://$(gerritusername)@gerrit.aicp-rom.com:29418 AICP heads n7.1*
  * [gitpghaicp (Alias)](android_gerrit.rc): *gerritreview http://gerrit.aicp-rom.com AICP heads n7.1*
  * [gitprgaicp (Alias)](android_gerrit.rc): *gitpraicp; gitpgaicp*
  * [gitprghaicp (Alias)](android_gerrit.rc): *gitprhaicp; gitpghaicp*
  * [gitpr7 (Alias)](android_gerrit.rc): *gerritreview ssh://radian.dc@review.msm7x30.org:29418 LegacyXperia for*
  * [gitpr7h (Alias)](android_gerrit.rc): *gerritreview http://review.msm7x30.org LegacyXperia for*
  * [gitpr7d (Alias)](android_gerrit.rc): *gerritreview ssh://radian.dc@review.msm7x30.org:29418 LegacyXperia drafts*
  * [gitpr7dh (Alias)](android_gerrit.rc): *gerritreview http://review.msm7x30.org LegacyXperia drafts*
  * [gitpromni (Alias)](android_gerrit.rc): *gerritreview ssh://$(gerritusername)@gerrit.omnirom.org:29418 . for android-7.1*
  * [gitprhomni (Alias)](android_gerrit.rc): *gerritreview http://gerrit.omnirom.org . for android-7.1*
  * [gitprdomni (Alias)](android_gerrit.rc): *gerritreview ssh://$(gerritusername)@gerrit.omnirom.org:29418 . drafts android-7.1*
  * [gitprdhomni (Alias)](android_gerrit.rc): *gerritreview http://gerrit.omnirom.org . drafts android-7.1*
  * [gitprtwrp (Alias)](android_gerrit.rc): *gerritreview ssh://$(gerritusername)@gerrit.twrp.me:29418 . for android-6.0*
  * [gitprdtwrp (Alias)](android_gerrit.rc): *gerritreview ssh://$(gerritusername)@gerrit.twrp.me:29418 . drafts android-6.0*
* #### Source: [android_gerritssh.rc](android_gerritssh.rc)
  * [gerritssh (Function)](android_gerritssh.rc)
* #### Source: [android_git.rc](android_git.rc)
  * [githubusername (Function)](android_git.rc)
  * [gitfcu (Function)](android_git.rc)
  * [gitcleantags (Function)](android_git.rc)
  * [gitonebranch (Function)](android_git.rc)
  * [gits (Alias)](android_git.rc): *git stash*
  * [gitsp (Alias)](android_git.rc): *git stash -p*
  * [gitsu (Alias)](android_git.rc): *git stash -u*
  * [gitspop (Alias)](android_git.rc): *git stash pop*
  * [gitdi (Function)](android_git.rc)
  * [gitdfs (Function)](android_git.rc): *gitdfs <sha1commit>*
  * [gitdf (Function)](android_git.rc): *gitdf <sha1commit> <filepath>*
  * [gitlo (Alias)](android_git.rc): *git log --pretty=oneline*
  * [gitlod (Alias)](android_git.rc): *git log --pretty=oneline --*
  * [gitloo (Alias)](android_git.rc): *git log --pretty=format:"%C(yellow)%h %Cred%ad %Creset%s" --date=short --all --*
  * [gitlos (Function)](android_git.rc): *gitlos <path_or_.> ["search string input"] [search_max_count]*
  * [gitfindsha1 (Function)](android_git.rc): *gitfindsha1 <remote/branch> <"title text to search">*
  * [gitshow (Alias)](android_git.rc): *git show --name-status*
  * [gitshf (Alias)](android_git.rc): *git show --pretty=full*
  * [gitshl (Function)](android_git.rc): *git show --oneline --name-only ${1} | tail -n +2 | cut -c $((1+${2:-0}))-*
  * [gitap (Alias)](android_git.rc): *git add -p*
  * [gitaa (Alias)](android_git.rc): *git add . -Av*
  * [gitan (Alias)](android_git.rc): *git add . -An*
  * [gite (Function)](android_git.rc): *gedit ${1}; printf ' Done ? [Enter] '; read; git add ${1}*
  * [gitbd (Alias)](android_git.rc): *git branch -D*
  * [gitbv (Alias)](android_git.rc): *git fetch ${gitreviewdefault} $(git rev-parse --abbrev-ref HEAD); git branch -vv*
  * [gitch (Alias)](android_git.rc): *git checkout*
  * [gitcp (Alias)](android_git.rc): *git cherry-pick*
  * [gitcpc (Alias)](android_git.rc): *git reset; git cherry-pick --continue*
  * [gitcpf (Function)](android_git.rc): *git fetch ${1} ${2}; git cherry-pick FETCH_HEAD*
  * [gitfcp (Function)](android_git.rc): *git fetch ${1}; git cherry-pick FETCH_HEAD~${2:-0}*
  * [gitcpr (Function)](android_git.rc): *git show ${1} --no-color | sed "s/${2}/${3}/g" | patch*
  * [gitc (Alias)](android_git.rc): *git commit $(gitgpgparam)*
  * [gitcs (Alias)](android_git.rc): *git commit $(gitgpgparam) -s*
  * [gitca (Alias)](android_git.rc): *git commit $(gitgpgparam) --amend*
  * [gitcae (Alias)](android_git.rc): *git commit $(gitgpgparam) --amend --no-edit*
  * [gitcauthor (Alias)](android_git.rc): *$(git config --global --get user.name) <$(git config --global --get user.email)>"*
  * [gitrevert (Alias)](android_git.rc): *git revert $(gitgpgparam) --no-edit*
  * [gitfix (Alias)](android_git.rc): *rm -fv .git/COMMIT_EDITMSG*; rm -fv .git/.COMMIT_EDITMSG.swp*
  * [gitcid (Function)](android_git.rc)
  * [gitcidupstream (Function)](android_git.rc)
  * [gitfurl (Function)](android_git.rc): *git fetch "${1%/commits/*}" "${1#*/commits/}"*
  * [gitpf (Alias)](android_git.rc): *git push -f*
  * [gitra (Alias)](android_git.rc): *git rebase --abort*
  * [gitrc (Alias)](android_git.rc): *git rebase --continue*
  * [gitre (Alias)](android_git.rc): *git rebase --edit-todo*
  * [gitrs (Alias)](android_git.rc): *git rebase --skip*
  * [gitrf (Function)](android_git.rc): *git rebase ${1}^ -i*
  * [gitr (Function)](android_git.rc): *git rebase HEAD~${1:-5} -i*
  * [gitrall (Function)](android_git.rc): *git rebase -i HEAD~$(($(git rev-list --count HEAD) - 1))*
  * [gitrfedit (Function)](android_git.rc): *GIT_SEQUENCE_EDITOR="sed -i -e 's/pick/edit/g'" git rebase ${1} -i*
  * [gitredit (Function)](android_git.rc): *GIT_SEQUENCE_EDITOR="sed -i -e 's/pick/edit/g'" git rebase HEAD~${1:-5} -i*
  * [gitrb (Function)](android_git.rc): *branch=${1:-$(repogetbranch)}; git fetch github ${branch}; git rebase github/${branch}*
  * [gitrbo (Function)](android_git.rc): *branch=${1:-$(repogetbranch)}; git fetch origin ${branch}; git rebase origin/${branch}*
  * [gitrv (Alias)](android_git.rc): *git remote -v*
  * [gitrh (Alias)](android_git.rc): *git reset FETCH_HEAD --hard*
  * [githd (Alias)](android_git.rc): *git reset HEAD --hard*
  * [gitcl (Alias)](android_git.rc): *git reset HEAD --hard; git stash -u; git am --abort*
  * [gitro (Alias)](android_git.rc): *git reset HEAD^ --hard*
  * [gitsl (Alias)](android_git.rc): *git reset HEAD^; gitap; gitcae*
  * [gitrl (Alias)](android_git.rc): *git revert HEAD -n; git commit -m "Revert"; git reset HEAD^; git add -p*
  * [gitri (Alias)](android_git.rc): *git reset HEAD^*
  * [gitrt (Alias)](android_git.rc): *git reset --hard*
  * [gitrerere (Alias)](android_git.rc): *git config --global rerere.enabled*
  * [gitdiffpermhide (Alias)](android_git.rc): *git config core.filemode false*
  * [gitdiffpermshow (Alias)](android_git.rc): *git config core.filemode true*
  * [gpglist (Alias)](android_git.rc): *gpg --list-secret-keys --keyid-format LONG*
  * [gpgsilent (Alias)](android_git.rc): *echo "no-tty" >> ~/.gnupg/gpg.conf*
  * [gpgenable (Alias)](android_git.rc): *git config --global commit.gpgsign true*
  * [gpgdisable (Alias)](android_git.rc): *git config --global commit.gpgsign false*
  * [gpgsigning (Alias)](android_git.rc): *git config --global user.signingkey*
  * [gitshowsg (Alias)](android_git.rc): *git config --global alias.logs "log --show-signature"*
  * [gitpwstore (Alias)](android_git.rc): *git config --global credential.helper store*
  * [githi (Alias)](android_git.rc): *git update-index --assume-unchanged*
  * [gitsh (Alias)](android_git.rc): *git update-index --no-assume-unchanged*
  * [gitgpgparam (Function)](android_git.rc)
  * [gitmt (Alias)](android_git.rc): *git mergetool*
  * [gitme (Function)](android_git.rc)
  * [gitmte (Function)](android_git.rc)
  * [gitmtr (Function)](android_git.rc): *gitmtr <referenced_path>*
* #### Source: [android_git_pick.rc](android_git_pick.rc)
  * [gitcpu (Function)](android_git_pick.rc): *gitcpu <githuburltocommit> [branch]*
  * [gitmerges (Function)](android_git_pick.rc)
  * [gitcpo (Function)](android_git_pick.rc): *gitcpo <branch> <amount_of_commits>*
  * [gitcpup (Function)](android_git_pick.rc)
  * [gitcpur (Function)](android_git_pick.rc): *gitcpur <githuburltoproject> <branch> <search_text> <replace_text>*
  * [gitcpupprima (Function)](android_git_pick.rc): *gitcpup "${1}" CORE drivers/staging/prima/CORE*
* #### Source: [android_git_stats.rc](android_git_stats.rc)
  * [gitstat (Function)](android_git_stats.rc): *gitstat <remote> <branch> [stats_only]*
  * [gitst (Alias)](android_git_stats.rc): *gitremoteverify origin gitrao && gitstat origin cm-14.1*
  * [gitsto (Alias)](android_git_stats.rc): *gitremoteverify origin gitrao && gitstat origin $(git rev-parse --abbrev-ref HEAD)*
  * [gitsta (Alias)](android_git_stats.rc): *gitremoteverify $(githubusername) gitraa && gitstat $(githubusername) cm-14.1*
  * [gitsta6 (Alias)](android_git_stats.rc): *gitremoteverify $(githubusername) gitraa && gitstat $(githubusername) aosp-6.0*
  * [gitstaa6 (Alias)](android_git_stats.rc): *gitremoteverify $(githubusername) gitraa && gitstat $(githubusername) android-6.0*
  * [gitstam (Alias)](android_git_stats.rc): *gitremoteverify $(githubusername) gitraa && gitstat $(githubusername) master*
  * [gitstatw (Alias)](android_git_stats.rc): *gitremoteverify $(githubusername) gitraa && gitstat $(githubusername) twrp*
  * [gitstg (Alias)](android_git_stats.rc): *gitremoteverify github false && gitstat github*
  * [gitsti (Alias)](android_git_stats.rc): *gitremoteverify aicp gitrai && gitstat aicp mm6.0*
  * [gitstt (Alias)](android_git_stats.rc): *gitremoteverify twrp gitrat && gitstat twrp android-6.0*
  * [gitsts13 (Alias)](android_git_stats.rc): *gitremoteverify origin gitrao && gitstat origin stable/cm-13.0-ZNH5Y*
  * [gitstaosp (Alias)](android_git_stats.rc): *gitremoteverify aosp false && gitstat aosp master*
  * [gitstsony (Alias)](android_git_stats.rc): *gitremoteverify origin gitraos && gitstat origin aosp/LA.UM.5.5.r1*
  * [gitstfa (Alias)](android_git_stats.rc): *gitrao; gitremoteverify $(githubusername) gitraa && gitstat $(githubusername) cm-14.1 true*
  * [gitstfs13 (Alias)](android_git_stats.rc): *gitrao; gitremoteverify origin gitrao && gitstat origin stable/cm-13.0-ZNH5Y true*
* #### Source: [android_grep.rc](android_grep.rc)
  * [grepb (Function)](android_grep.rc)
  * [grepbs (Function)](android_grep.rc)
  * [grepbn (Function)](android_grep.rc)
  * [gck (Function)](android_grep.rc)
  * [gca (Function)](android_grep.rc)
  * [grepi (Alias)](android_grep.rc): *grep -i*
  * [g (Alias)](android_grep.rc): *grepb*
  * [gs (Alias)](android_grep.rc): *grepbs*
  * [gn (Alias)](android_grep.rc): *grepbn*
  * [glc (Function)](android_grep.rc): *GREP_COLORS='fn=1;1' grep --include *.c --include *.cpp --include *.h -anr '.{80,}' .*
  * [glj (Function)](android_grep.rc): *GREP_COLORS='fn=1;1' grep --include *.java -anr '.{100,}' .*
  * [gle (Function)](android_grep.rc): *GREP_COLORS='fn=1;1' grep --include *.c --include *.cpp --include *.h --include *.java -anr '.* $' .*
  * [gcmodules (Function)](android_grep.rc)
  * [gso (Function)](android_grep.rc)
* #### Source: [android_kernel_builders.rc](android_kernel_builders.rc)
  * [makekernel (Function)](android_kernel_builders.rc): *makekernel [platform_device_to_init / clean / mrproper] [make_parameters]*
  * [mkcopyleft (Function)](android_kernel_builders.rc): *mkcopyleft [device_name_to_init] [msm*-perf_to_use]*
* #### Source: [android_kernel_defconfig.rc](android_kernel_defconfig.rc)
  * [makedefconf (Function)](android_kernel_defconfig.rc): *makedefconf <device_name> [bool_full_config] [diff_config] [force_config=value]*
  * [kernelconfigupdater (Function)](android_kernel_defconfig.rc): *kernelconfigupdater <CONFIG_NAME=VALUE_or_# CONFIG_NAME is not set>*
  * [makedefconfset (Function)](android_kernel_defconfig.rc): *makedefconfset <device_name> [force_config=value]*
* #### Source: [android_kernel_editors.rc](android_kernel_editors.rc)
  * [boottools (Function)](android_kernel_editors.rc): *boottools <boot.img>*
  * [bootelf (Function)](android_kernel_editors.rc): *bootelf <boot.img>*
* #### Source: [android_kernel_helpers.rc](android_kernel_helpers.rc)
  * [makekernelinjector (Function)](android_kernel_helpers.rc): *makekernelinjector <device_name>*
  * [doradefconf (Alias)](android_kernel_helpers.rc): *makedefconf msm-perf dora common*
  * [doracopyleft (Alias)](android_kernel_helpers.rc): *mkcopyleft dora*
  * [doraaospdefconf (Alias)](android_kernel_helpers.rc): *makedefconf aosp_tone_dora_defconfig*
  * [doraaospkernel (Alias)](android_kernel_helpers.rc): *makekernel tone_dora*
  * [dorazipkernel (Alias)](android_kernel_helpers.rc): *kernelinjectorzip dora arch/arm64/boot/Image.gz-dtb .*
  * [sonykernelrebase (Alias)](android_kernel_helpers.rc): *git fetch https://github.com/sonyxperiadev/kernel aosp/LA.UM.5.5.r1; git rebase FETCH_HEAD; gitpa*
  * [kaguradefconf (Alias)](android_kernel_helpers.rc): *makedefconf msm-perf kagura common*
  * [sonyaospkernelupdate (Function)](android_kernel_helpers.rc): *sonyaospkernelupdate <device_name>*
* #### Source: [android_kernel_tools.rc](android_kernel_tools.rc)
  * [fboota (Function)](android_kernel_tools.rc): *fboota [unsecure,sep,full,init,inject,recovery,fastupl,zip]*
  * [fboot (Function)](android_kernel_tools.rc)
  * [fboots (Function)](android_kernel_tools.rc)
  * [fbootr (Function)](android_kernel_tools.rc)
  * [fbooti (Function)](android_kernel_tools.rc)
  * [bootinfo (Function)](android_kernel_tools.rc): *bootinfo <boot_img_file>*
  * [adbfotainfos (Function)](android_kernel_tools.rc)
  * [fbootk (Function)](android_kernel_tools.rc): *fbootk <kernelpath> [bool_fota]*
  * [fbootmodules (Function)](android_kernel_tools.rc)
  * [fbooto (Function)](android_kernel_tools.rc)
  * [frecovery (Function)](android_kernel_tools.rc)
  * [adbbootpush (Function)](android_kernel_tools.rc)
  * [adbfotapush (Function)](android_kernel_tools.rc)
  * [adbrecoverypush (Function)](android_kernel_tools.rc)
  * [kernelinjectorzip (Function)](android_kernel_tools.rc): *kernelinjectorzip <device> <kernel_file_path> [kernel_sources_for_modules]*
  * [bootzip (Function)](android_kernel_tools.rc): *bootzip <device> <boot_img_path>*
  * [makesep (Function)](android_kernel_tools.rc)
  * [bootimagedebuggable (Function)](android_kernel_tools.rc): *bootimagedebuggable <device_product> <true/false>*
  * [romkernelmrproper (Function)](android_kernel_tools.rc): *romkernelmrproper*
* #### Source: [android_linux.rc](android_linux.rc)
  * [cls (Function)](android_linux.rc)
  * [toclip (Function)](android_linux.rc): *xclip -selection c*
  * [findn (Alias)](android_linux.rc): *find -name*
  * [rsynca (Function)](android_linux.rc): *rsynca <path1> <path2>*
  * [pcinfo (Alias)](android_linux.rc): *inxi -Fxz*
  * [findnewer (Function)](android_linux.rc): *findnewer <20160123>*
  * [cpioext (Function)](android_linux.rc)
  * [videoresize (Function)](android_linux.rc)
  * [disableautomount (Function)](android_linux.rc)
  * [newtab (Function)](android_linux.rc)
  * [tmtab (Function)](android_linux.rc)
  * [td (Function)](android_linux.rc)
  * [diffbin (Function)](android_linux.rc)
  * [netspeed (Function)](android_linux.rc)
  * [buildlock (Function)](android_linux.rc)
  * [fileschemesorter (Function)](android_linux.rc): *fileschemesorter <file_to_sort> <file_reference>*
  * [gohibernate (Function)](android_linux.rc)
  * [mtpmountdisable (Function)](android_linux.rc)
  * [cleanram (Function)](android_linux.rc)
  * [cleanramkill (Function)](android_linux.rc)
  * [networkrestart (Function)](android_linux.rc)
  * [pushbsizes (Function)](android_linux.rc)
* #### Source: [android_push.rc](android_push.rc)
  * [gitpu (Function)](android_push.rc)
  * [gitpa (Alias)](android_push.rc): *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername)*
  * [gitpa14 (Alias)](android_push.rc): *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) cm-14.1*
  * [gitpa6 (Alias)](android_push.rc): *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) aosp-6.0*
  * [gitpaa6 (Alias)](android_push.rc): *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) android-6.0*
  * [gitpala (Alias)](android_push.rc): *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) LA.UM.5.5_rb1.10*
  * [gitpal (Alias)](android_push.rc): *alias gitpal='gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) local_manifests'*
  * [gitpaman (Alias)](android_push.rc): *alias gitpaman='gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) manifests'*
  * [gitpam (Alias)](android_push.rc): *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) multirom*
  * [gitpama (Alias)](android_push.rc): *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) master*
  * [gitpamm (Alias)](android_push.rc): *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) marshmallow*
  * [gitpanmr (Alias)](android_push.rc): *alias gitpanmr='gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) n-mr1'*
  * [gitpalineage (Alias)](android_push.rc): *gitremoteverify lineage gitrao && gitpu lineage cm-14.1*
  * [gitpan (Alias)](android_push.rc): *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) nougat*
  * [gitpat (Alias)](android_push.rc): *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) twrp*
  * [gitpaicp (Alias)](android_push.rc): *gitremoteverify aicp gitrai && gitpu aicp mm6.0*
  * [gitpb (Alias)](android_push.rc): *gitremoteverify backup gitrab && gitpu backup*
  * [gitpold (Alias)](android_push.rc): *gitremoteverify old false && gitpu old*
  * [gitpp (Alias)](android_push.rc): *gitremoteverify project false && gitpu project*
  * [gitppm (Alias)](android_push.rc): *gitremoteverify project false && gitpu project master*
  * [gitpx (Alias)](android_push.rc): *gitremoteverify xperia gitrax && gitpu xperia*
  * [gitpxm (Alias)](android_push.rc): *gitremoteverify xperia gitrax && gitpu xperia master*
  * [gitpmd (Alias)](android_push.rc): *gitremoteverify xperia gitramd && gitpu mromdev*
  * [gitpurl (Function)](android_push.rc): *gitpu "${1%/commits/*}" "${1#*/commits/}"*
* #### Source: [android_pushbullet.rc](android_pushbullet.rc)
  * [pushb (Function)](android_pushbullet.rc)
* #### Source: [android_release_builders.rc](android_release_builders.rc)
  * [romautorelease (Function)](android_release_builders.rc): *romautorelease <devicename> {aosp/lineage/lx/caf/rr} [nowipe/outclean/outwipe,bringup/dev/local/priv,j1/j2]*
  * [aosp8960autorelease (Function)](android_release_builders.rc)
  * [aospsodpautorelease (Function)](android_release_builders.rc)
  * [lineageautorelease (Function)](android_release_builders.rc)
  * [lxautorelease (Function)](android_release_builders.rc)
  * [rrautorelease (Function)](android_release_builders.rc)
  * [mromautorelease (Function)](android_release_builders.rc)
  * [twrpautorelease (Function)](android_release_builders.rc)
  * [cafautorelease (Function)](android_release_builders.rc)
  * [romlogs (Function)](android_release_builders.rc): *romlogs <device> <rom> [logs_count_(default_200)]*
* #### Source: [android_release_helpers.rc](android_release_helpers.rc)
  * [outdevcl (Function)](android_release_helpers.rc): *outdevcl <devicename>*
  * [noninja (Function)](android_release_helpers.rc)
  * [mmo (Function)](android_release_helpers.rc)
  * [mmi (Function)](android_release_helpers.rc)
  * [mmil (Function)](android_release_helpers.rc)
  * [noccache (Function)](android_release_helpers.rc)
* #### Source: [android_release_packages.rc](android_release_packages.rc)
  * [signzip (Function)](android_release_packages.rc): *signzip <unsigned_input_zip_or_zip_to_sign> [signed_output_zip]*
  * [mmmzip (Function)](android_release_packages.rc)
  * [systozip (Function)](android_release_packages.rc)
  * [packzip (Function)](android_release_packages.rc)
  * [gitzip (Function)](android_release_packages.rc)
* #### Source: [android_remotes.rc](android_remotes.rc)
  * [gitremoteset (Function)](android_remotes.rc): *gitremoteset <remote_name> <remote_url>*
  * [gitremoteadaptset (Function)](android_remotes.rc): *gitremoteadaptset <remote_name> <remote_github> [prefix_removal] [bool_prefix_android] [bool_underscore_to_dash]*
  * [gitremoteverify (Function)](android_remotes.rc): *gitremoteverify <remote_name> "command_to_run_if_missing"*
  * [gitraa (Function)](android_remotes.rc)
  * [gitrai (Function)](android_remotes.rc): *gitremoteadaptset 'aicp' 'AICP' 'android_'*
  * [gitraoo (Function)](android_remotes.rc): *gitremoteadaptset 'origin' "${1}" ''*
  * [gitraot (Function)](android_remotes.rc): *gitremoteadaptset 'origin' 'TheMuppets' ''*
  * [gitrat (Function)](android_remotes.rc): *gitremoteadaptset 'twrp' 'TeamWin' ''*
  * [gitral (Function)](android_remotes.rc): *gitremoteset lineage "${1}"*
  * [gitrao (Function)](android_remotes.rc)
  * [gitrax (Function)](android_remotes.rc)
  * [gitramd (Function)](android_remotes.rc)
  * [gitraos (Function)](android_remotes.rc)
  * [gitraau (Alias)](android_remotes.rc): *git remote set-url $(githubusername)*
  * [gitraou (Alias)](android_remotes.rc): *git remote set-url origin*
  * [gitrab (Function)](android_remotes.rc)
  * [gitra8960lineage (Function)](android_remotes.rc)
  * [gitra8996lineage (Function)](android_remotes.rc)
  * [gitra8960naosp (Function)](android_remotes.rc)
  * [gitra8960oaosp (Function)](android_remotes.rc)
  * [gitra8960masteraosp (Function)](android_remotes.rc)
  * [gitrasonyaosp (Function)](android_remotes.rc)
  * [gitraaospcaf (Function)](android_remotes.rc)
  * [gitrasonylineage (Function)](android_remotes.rc)
  * [gitramultirom (Function)](android_remotes.rc)
  * [gitratwrp (Function)](android_remotes.rc)
* #### Source: [android_repo_builders.rc](android_repo_builders.rc)
  * [repotwrp (Function)](android_repo_builders.rc): *repotwrp {device} [nosync,nowipe,outcl,fota,local +fotareboot]*
  * [repomrom (Function)](android_repo_builders.rc): *repomrom {device} [nosync,nowipe,outcl,fota,local +fotareboot]*
* #### Source: [android_repo_changes.rc](android_repo_changes.rc)
  * [repochanges (Function)](android_repo_changes.rc)
* #### Source: [android_repo_cleaners.rc](android_repo_cleaners.rc)
  * [repoprojectscleaner (Function)](android_repo_cleaners.rc): *repoprojectscleaner (Run inside an Android repo root)*
  * [repotagscleaner (Function)](android_repo_cleaners.rc): *repotagscleaner (Run inside an Android repo root)*
  * [repoheadscleaner (Function)](android_repo_cleaners.rc)
  * [reposyrm (Function)](android_repo_cleaners.rc): *reposyrm <project/relative/path>*
  * [reposyrmf (Function)](android_repo_cleaners.rc): *reposyrmf <project/relative/path>*
  * [repocleancache (Alias)](android_repo_cleaners.rc): *if [ ! -z "${CCACHE_DIR}" ]; then rm -rfv "${CCACHE_DIR}/"*; fi*
* #### Source: [android_repo_compare.rc](android_repo_compare.rc)
  * [repocomparestable (Function)](android_repo_compare.rc)
  * [repocompareupstream (Function)](android_repo_compare.rc)
  * [repocomparetags (Function)](android_repo_compare.rc)
* #### Source: [android_repo_helpers.rc](android_repo_helpers.rc)
  * [gettop (Function)](android_repo_helpers.rc)
  * [croot (Function)](android_repo_helpers.rc)
  * [repos (Function)](android_repo_helpers.rc)
  * [reposaosp (Function)](android_repo_helpers.rc)
  * [reporoomserv (Function)](android_repo_helpers.rc)
  * [reposi (Alias)](android_repo_helpers.rc): *repo sync .*
  * [reposy (Function)](android_repo_helpers.rc)
  * [reposysafe (Function)](android_repo_helpers.rc)
  * [reposybranch (Function)](android_repo_helpers.rc)
  * [repoprune (Function)](android_repo_helpers.rc)
  * [reposycl (Function)](android_repo_helpers.rc)
  * [repocache (Function)](android_repo_helpers.rc)
  * [repogetbranch (Function)](android_repo_helpers.rc)
* #### Source: [android_repo_init.rc](android_repo_init.rc)
  * [repoinitaosp (Function)](android_repo_init.rc): *repoinitaosp <android-7.1.2_r{XX}> [referenced,clean,rmout,noprepare,example]*
  * [repoinitlineage (Function)](android_repo_init.rc): *repoinitlineage <13.0/14.1> [referenced,clean,rmout,noprepare,example]*
  * [repoinitaospall (Function)](android_repo_init.rc): *repoinitaospall <android-7.1.2_r{XX}> [clean,rmout]*
  * [repoinitlineageall (Function)](android_repo_init.rc): *repoinitlineageall <13.0/14.1> [clean,rmout]*
  * [repoinitrr (Function)](android_repo_init.rc): *repoinitrr <nougat> [referenced,clean,rmout,noprepare]*
* #### Source: [android_repo_referenced.rc](android_repo_referenced.rc)
  * [reporeferencedaosp (Function)](android_repo_referenced.rc): *reporeferencedaosp <"command_to_run"> <"device1 device2 ...">*
  * [reporeferencedlineage (Function)](android_repo_referenced.rc): *reporeferencedlineage <"command_to_run"> <"device1 device2 ...">*
  * [reporefupdate (Function)](android_repo_referenced.rc)
  * [reporefsync (Function)](android_repo_referenced.rc)
* #### Source: [android_rom_aicp.rc](android_rom_aicp.rc)
  * [gitcpaicp (Function)](android_rom_aicp.rc)
* #### Source: [android_rom_aosp_sony8960.rc](android_rom_aosp_sony8960.rc)
  * [aosp8960npatcher (Function)](android_rom_aosp_sony8960.rc)
  * [aosp8960opatcher (Function)](android_rom_aosp_sony8960.rc)
  * [aosp8960masterpatcher (Function)](android_rom_aosp_sony8960.rc)
* #### Source: [android_rom_aosp_sonyaosp.rc](android_rom_aosp_sonyaosp.rc)
  * [aospsonypatcher (Function)](android_rom_aosp_sonyaosp.rc)
  * [aospsonyrebaser (Function)](android_rom_aosp_sonyaosp.rc)
* #### Source: [android_rom_aospcaf.rc](android_rom_aospcaf.rc)
  * [aospcafpatcher (Function)](android_rom_aospcaf.rc)
* #### Source: [android_rom_legacyxperia.rc](android_rom_legacyxperia.rc)
  * [lineagelxpatcher (Function)](android_rom_legacyxperia.rc)
  * [lxrepopick (Function)](android_rom_legacyxperia.rc): *lxrepopick <commit_id>*
  * [lxdefconfig (Function)](android_rom_legacyxperia.rc)
* #### Source: [android_rom_lineageos.rc](android_rom_lineageos.rc)
  * [lineagepatcher (Function)](android_rom_lineageos.rc)
  * [lineagerebaser (Function)](android_rom_lineageos.rc)
  * [lineagewebjekyll (Function)](android_rom_lineageos.rc)
* #### Source: [android_rom_lineageos_sony8996.rc](android_rom_lineageos_sony8996.rc)
  * [lineage8996patcher (Function)](android_rom_lineageos_sony8996.rc)
* #### Source: [android_rom_lineageos_sonysodp.rc](android_rom_lineageos_sonysodp.rc)
  * [lineagesodppatcher (Function)](android_rom_lineageos_sonysodp.rc)
  * [lineagesodprebaser (Function)](android_rom_lineageos_sonysodp.rc)
* #### Source: [android_rom_projects.rc](android_rom_projects.rc)
  * [gitbranchpusher (Function)](android_rom_projects.rc)
  * [gitbp (Function)](android_rom_projects.rc)
  * [gitfbranch (Function)](android_rom_projects.rc)
  * [androidprojectpatcher (Function)](android_rom_projects.rc): *androidprojectpatcher <project_name> <project_tag> ['project paths'] [specific_path]*
  * [androidprojectrebaser (Function)](android_rom_projects.rc): *androidprojectrebaser <upstream_repository_if_not_origin> <project_branch> '<project_paths::name::branch>' [specific_path]*
* #### Source: [android_shortcuts.rc](android_shortcuts.rc)
  * [repogetdevice (Function)](android_shortcuts.rc)
  * [cdd (Function)](android_shortcuts.rc)
  * [cdman (Function)](android_shortcuts.rc)
  * [toout (Function)](android_shortcuts.rc)
  * [cdout (Function)](android_shortcuts.rc)
  * [getand (Function)](android_shortcuts.rc)
  * [torompaths (Function)](android_shortcuts.rc)
  * [toaosp (Function)](android_shortcuts.rc): *torompaths 'AOSP' "${1}"*
  * [tolineage (Function)](android_shortcuts.rc): *torompaths 'LineageOS' "${1}"*
  * [toaospcaf (Function)](android_shortcuts.rc): *torompaths 'AOSP-CAF' "${1}"*
  * [tomultirom (Function)](android_shortcuts.rc): *torompaths 'MultiROM' "${1}"*
  * [torr (Function)](android_shortcuts.rc): *torompaths 'ResurrectionRemix' "${1}"*
  * [totwrp (Function)](android_shortcuts.rc): *torompaths 'TWRP' "${1}"*
  * [cdaosp (Function)](android_shortcuts.rc): *cd $(toaosp ${1})*
  * [cdl (Function)](android_shortcuts.rc): *cd $(tolineage ${1})*
  * [cdlineage (Function)](android_shortcuts.rc): *cd $(tolineage ${1})*
  * [cdaospcaf (Function)](android_shortcuts.rc): *cd $(toaospcaf)*
  * [cdmultirom (Function)](android_shortcuts.rc): *cd $(tomultirom)*
  * [cdrr (Function)](android_shortcuts.rc): *cd $(torr ${1})*
  * [cdtwrp (Function)](android_shortcuts.rc): *cd $(totwrp)*
  * [cdand (Function)](android_shortcuts.rc): *cd $(getand)*
  * [cda (Function)](android_shortcuts.rc): *cdlineage huashan*
  * [getbash (Function)](android_shortcuts.rc): *echo ${bash_android_dir}*
  * [cdbash (Function)](android_shortcuts.rc): *cd $(getbash)*
  * [cddesk (Function)](android_shortcuts.rc): *cd "$(xdg-user-dir DESKTOP)"*
  * [cddev (Function)](android_shortcuts.rc): *cd $(getand)/Development/${1}*
  * [cddevaosp (Function)](android_shortcuts.rc): *cd $(getand)/Development/aosp_*${1}*
  * [cddevlineage (Function)](android_shortcuts.rc): *cd $(getand)/Development/lineage_*${1}*
  * [cddevmrom (Function)](android_shortcuts.rc): *cd $(getand)/Development/multirom_development_sony*
  * [cddevtwrp (Function)](android_shortcuts.rc): *cd $(getand)/Development/twrp_development_sony*
  * [cdref (Function)](android_shortcuts.rc): *cd $(getand)/References/${1}*
  * [cdrefapk (Function)](android_shortcuts.rc): *cd $(getand)/References/apk*
  * [adbapks (Function)](android_shortcuts.rc): *cdrefapk; adbapkinstall*
  * [cdandfiles (Function)](android_shortcuts.rc): *cd "${ANDROID_FILES_PATH}/"*
  * [impaospcaf (Function)](android_shortcuts.rc): *rsync -arv --delete --delete-after $(toaospcaf ${1}) ./${1}*
  * [implineage (Function)](android_shortcuts.rc): *rsync -arv --delete --delete-after $(tolineage ${1}) ./${1}*
  * [meldaosp (Function)](android_shortcuts.rc): *meld ./${1} $(toaosp ${1})*
  * [meldaospsony (Function)](android_shortcuts.rc): *meld ./${1} $(toaosp sony ${1})*
  * [meldaospcaf (Function)](android_shortcuts.rc): *meld ./${1} $(toaospcaf ${1})*
  * [meldlineage (Function)](android_shortcuts.rc): *meld ./${1} $(tolineage ${1})*
  * [meldmrom (Function)](android_shortcuts.rc): *meld ./${1} $(tomultirom ${1})*
  * [meldtwrp (Function)](android_shortcuts.rc): *meld ./${1} $(totwrp ${1})*
  * [nout (Function)](android_shortcuts.rc): *xdg-open $(toout ${1})*
  * [aospsyncall (Function)](android_shortcuts.rc): *reporeferencedaosp "reposy"*
  * [lineagesyncall (Function)](android_shortcuts.rc): *reporeferencedlineage "reposy"*
  * [cdspdev (Function)](android_shortcuts.rc): *cd $(echo "$(pwd)" | sed 's/(.*)Android([^/]*/[^/]*).*/1Android2/device/sony/huashan/g')*
  * [cdspker (Function)](android_shortcuts.rc): *cd $(echo "$(pwd)" | sed 's/(.*)Android([^/]*/[^/]*).*/1Android2/kernel/sony/msm8960t/g')*
  * [cdblueker (Function)](android_shortcuts.rc): *cd $(echo "$(pwd)" | sed 's/(.*)Android([^/]*/[^/]*).*/1Android2/kernel/sony/msm8x60/g')*
  * [cdvendsony (Function)](android_shortcuts.rc): *cd $(echo "$(pwd)" | sed 's/(.*)Android([^/]*/[^/]*).*/1Android2/vendor/sony/g')*
  * [meldblue (Function)](android_shortcuts.rc): *meld ./${1} ../blue-common/${1}*
  * [meldril (Function)](android_shortcuts.rc)
  * [cdmromboot (Function)](android_shortcuts.rc): *croot; cd ./system/extras/libbootimg/*
  * [cdmromcore (Function)](android_shortcuts.rc): *croot; cd ./system/extras/multirom/*
  * [cdrecovery (Function)](android_shortcuts.rc): *croot; cd ./bootable/recovery/*
* #### Source: [android_tools.rc](android_tools.rc)
  * [binaryeditor (Function)](android_tools.rc)
  * [librarieshunter (Function)](android_tools.rc)
  * [haste (Function)](android_tools.rc)
  * [overlaycompare (Function)](android_tools.rc)
* #### Source: [android_uploads.rc](android_uploads.rc)
  * [fileupl (Function)](android_uploads.rc): *fileupl <file_path> <target_folder>*
  * [devupl (Function)](android_uploads.rc)
  * [fastupl (Function)](android_uploads.rc)
  * [mmmupl (Function)](android_uploads.rc): *mmmupl <packageorpath> [bool_partial_build]*
  * [devuplboot (Function)](android_uploads.rc)
  * [devuplrom (Function)](android_uploads.rc): *devuplrom <device> [folder_path]*
  * [fileget (Function)](android_uploads.rc): *fileget <remote_path> [boot_remove_remote]*
  * [pushbrom (Function)](android_uploads.rc)
  * [androidfilesadd (Function)](android_uploads.rc): *androidfilesadd <file_path> <target_folder>*
  * [androidfilessync (Function)](android_uploads.rc)
  * [androidfilesopen (Function)](android_uploads.rc)
* #### Source: [megatools_mirror.rc](megatools_mirror.rc)
  * [megamirror (Function)](megatools_mirror.rc): *megamirror <local_folder> <remote_folder> <--upload/--download> [--copy,-y/-n]*
* #### Source: [megatools_reload.rc](megatools_reload.rc)
  * [meganzreload (Function)](megatools_reload.rc): *meganzreload*
<!-- Functions End -->
