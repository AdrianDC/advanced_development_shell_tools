# Android - Bash .rc functions
[Created by Adrian DC @XDA-Developers](http://forum.xda-developers.com/member.php?u=2233641)

Shared shell functions are meant to help everyone<br />
developing on Android, especially for SONY devices.<br />


### [ Permanent installation for terminals ]
- gedit ~/.bashrc
- Adapt and add "export ANDROID_DEV_DRIVE=/media/../AndroidDev;"
- Adapt and add "source ${ANDROID_DEV_DRIVE}/Bash/android_bash.rc;"

<br />

### [ Referenced list of functions ]

<!-- Functions Start -->
* #### Source: [android_bash.rc](android_bash.rc)
  * [**bashup** (Function)](android_bash.rc): *bashup **(Reloads android_shell_tools scripts)***
  * [**bashe** (Function)](android_bash.rc): *bashe &lt;words&gt; &lt;to&gt; &lt;search&gt; **(Direct access to related sources)***
  * [**bashsync** (Function)](android_bash.rc): *bashsync **(Download new android_shell_tools changes)***
  * [**bashpush** (Function)](android_bash.rc): *bashpush **(Commit new changes to android_shell_tools)***
  * [**bashamend** (Function)](android_bash.rc): *bashamend **(Amend new changes to android_shell_tools)***
  * [**bashdiff** (Function)](android_bash.rc): *bashdiff **(Compare with upstream android_shell_tools)***
  * [**bashlog** (Function)](android_bash.rc): *bashlog **(Displays android_shell_tools history)***
  * [**bashreset** (Function)](android_bash.rc): *bashreset **(Reset project to remote HEAD)***
  * [**shtoolsreadme** (Function)](android_bash.rc): *shtoolsreadme **(Refresh README.md functions usages)***

---
* #### Source: [android_adb.rc](android_adb.rc)
  * [**adbr** (Function)](android_adb.rc): *adbr **(adb root and remount rw system)***
  * [**adbro** (Function)](android_adb.rc): *adbro **(Verified adb root and remount rw system)***
  * [**adbside** (Function)](android_adb.rc): *adbside &lt;file_zip&gt; [bool_wait_recovery] **(adb sideload helper)***
  * [**adbs** (Alias)](android_adb.rc): *adb shell*
  * [**adbroot** (Alias)](android_adb.rc): *adb kill-server; sudo adb start-server*
  * [**adbremount** (Alias)](android_adb.rc): *sudo adb root; sudo adb remount*
  * [**adbpo** (Alias)](android_adb.rc): *adb shell reboot -p*
  * [**adbre** (Alias)](android_adb.rc): *adb reboot*
  * [**adbrh** (Function)](android_adb.rc): *adb ${1} shell setprop ctl.restart zygote*
  * [**adbrr** (Alias)](android_adb.rc): *adb reboot recovery*
  * [**adbw** (Alias)](android_adb.rc): *adb wait-for-device*
  * [**adbrb** (Alias)](android_adb.rc): *adb reboot bootloader*
  * [**adbscr** (Alias)](android_adb.rc): *mkdir -p ./screenshots; adb shell screencap /sdcard/screenshot.png; adb pull /sdcard/screenshot.png ./screenshots/screenshot-$(date +%Y%m%d-%H%M%S).png*
  * [**adbfotarandom** (Alias)](android_adb.rc): *adb root; adb shell dd if=/dev/random of=/dev/block/platform/msm_sdcc.1/by-name/FOTAKernel*
  * [**adbfotazero** (Alias)](android_adb.rc): *adb root; adb shell dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/FOTAKernel*
  * [**adbsgdisk** (Alias)](android_adb.rc): *adb shell sgdisk --print /dev/block/mmcblk0*
  * [**adbinfomem** (Alias)](android_adb.rc): *adb shell dumpsys meminfo*
  * [**adbblkp** (Alias)](android_adb.rc): *adb shell ls -l /dev/block/bootdevice/by-name/*
  * [**adbdf** (Alias)](android_adb.rc): *adb shell df -H*
  * [**adbrcbin** (Alias)](android_adb.rc): *adb shell restorecon -R /sbin*
  * [**adbmountcache** (Alias)](android_adb.rc): *adb shell mount -t ext4 /dev/block/platform/msm_sdcc.1/by-name/Cache /cache*
  * [**adbmountdata** (Alias)](android_adb.rc): *adb shell mount -t ext4 /dev/block/platform/msm_sdcc.1/by-name/Userdata /data*
  * [**adbmountmicrosd** (Alias)](android_adb.rc): *adb shell mkdir -p /storage/ext; adb shell mount -t ext4 /dev/block/mmcblk1p1 /storage/ext*
  * [**adbumountcache** (Alias)](android_adb.rc): *adb shell umount /cache*
  * [**adbumountdata** (Alias)](android_adb.rc): *adb shell umount /data*
  * [**adbumountmicrosd** (Alias)](android_adb.rc): *adb shell umount /storage/ext*
  * [**adbmount** (Alias)](android_adb.rc): *adbmountcache; adbmountdata; adbmountmicrosd*
  * [**adbumount** (Alias)](android_adb.rc): *adbumountcache; adbumountdata; adbumountmicrosd*
  * [**adbemergencycalls** (Alias)](android_adb.rc): *adb shell setprop ril.ecclist*
  * [**adbemergencylist** (Alias)](android_adb.rc): *adb shell getprop ril.ecclist*
  * [**adbco** (Function)](android_adb.rc): *adbco [ipaddress_once] **(Helper for adb network access)***
  * [**adbedit** (Function)](android_adb.rc): *adbedit [file_path] **(Edit adb file, default on /system/build.prop)***
  * [**adbdatabase** (Function)](android_adb.rc): *adbdatabase &lt;/data/.../sqlite.db&gt;*
  * [**adbinputs** (Function)](android_adb.rc): *adbinputs **(Dump all input devices)***
  * [**adbreadevents** (Function)](android_adb.rc): *adbreadevents &lt;event_number&gt; **(Read input events)***
  * [**adbkp** (Function)](android_adb.rc): *adbkp &lt;process_name&gt; **(Kill process by name)***
  * [**adbservices** (Alias)](android_adb.rc): *adb shell service list*
  * [**adbsl** (Alias)](android_adb.rc): *adb shell ls -l*
  * [**adbslz** (Alias)](android_adb.rc): *adb shell ls -lZ*
  * [**adbsc** (Alias)](android_adb.rc): *adb shell cat*
  * [**adbsg** (Alias)](android_adb.rc): *adb shell getprop*
  * [**adbsw** (Function)](android_adb.rc): *adbro; adb shell "echo ${1} &gt; ${2}"*
  * [**isdone** (Alias)](android_adb.rc): *notify-send "Process execution finished !*
  * [**adbgitpf** (Function)](android_adb.rc): *adbgitpf &lt;commit_sha1&gt; **(Push files through adb from commit)***
  * [**adbsu** (Function)](android_adb.rc): *adbsu &lt;command...&gt; **(Run on root adb shell)***
  * [**adbu** (Function)](android_adb.rc): *adbu &lt;package_name&gt; **(Force optimization of a package)***

---
* #### Source: [android_adb_assets.rc](android_adb_assets.rc)
  * [**adbupdate** (Function)](android_adb_assets.rc): *adbupdate **(adb binary update from upstream)***
  * [**sepaud** (Function)](android_adb_assets.rc): *sepaud &lt;logs_file&gt; **(Logs sepolicy analyzer)***
  * [**adbintents** (Alias)](android_adb_assets.rc): *adb shell dumpsys package r &gt; intents.txt*
  * [**adbcamera** (Alias)](android_adb_assets.rc): *adb shell pm enable com.android.camera2/com.android.camera.CameraLauncher; alias adblkl='adb root; adb wait-for-device; adb shell killall zigote; adbl*
  * [**adbpk** (Function)](android_adb_assets.rc): *adbpk **(Android mediaserver debug logger)***
  * [**adbms** (Function)](android_adb_assets.rc): *adbms **(Android mediaserver debug stracer)***
  * [**adblibs** (Function)](android_adb_assets.rc): *adb shell grep -air "${1}" ${2:-/system/lib/}*
  * [**ndkstack** (Alias)](android_adb_assets.rc): *ndk-stack -sym ${ANDROID_DEV_DRIVE}/out/target/product/huashan/symbols -dump*
  * [**adbwtch** (Function)](android_adb_assets.rc): *adbr; while [ 1 ]; do adb shell cat "${1}"; done*
  * [**adbdu** (Function)](android_adb_assets.rc): *adbdu **(Android /data/ sizes study)***
  * [**adbpropradiolog** (Function)](android_adb_assets.rc): *adbpropradiolog &lt;value&gt; **(Radio debug property overrider)***
  * [**adbrstock** (Function)](android_adb_assets.rc): *adbrstock **(Stock ROM adb root access)***
  * [**adbalsa** (Function)](android_adb_assets.rc): *adbalsa **(Audio cards advanced study)***

---
* #### Source: [android_adb_debug.rc](android_adb_debug.rc)
  * [**adbst** (Function)](android_adb_debug.rc): *adbst &lt;process_name&gt; [bool_get_root] [parameters] **(strace)***
  * [**adbstf** (Function)](android_adb_debug.rc): *adbstf &lt;process_name&gt; [bool_get_root] **(Followed strace)***

---
* #### Source: [android_adb_flash.rc](android_adb_flash.rc)
  * [**adbbootdump** (Function)](android_adb_flash.rc): *adbbootdump **(Dump bootimage from device)***
  * [**adbbootcut** (Function)](android_adb_flash.rc): *adbbootcut &lt;file_path&gt; **(Trim bootimage dump)***
  * [**adbrecoveryinstall** (Function)](android_adb_flash.rc): *adbrecoveryinstall &lt;file_path&gt; **(Inject and reboot recovery)***

---
* #### Source: [android_adb_installers.rc](android_adb_installers.rc)
  * [**adbpushfile** (Function)](android_adb_installers.rc): *adbpushfile &lt;file_path&gt; &lt;file_target&gt; **(Push files through adb)***
  * [**adbif** (Function)](android_adb_installers.rc): *adbif &lt;command...&gt; **(Modules build listener and installed)***
  * [**adbil** (Function)](android_adb_installers.rc): *adbil &lt;command...&gt; **(Modules build listener and lister)***
  * [**adbi** (Function)](android_adb_installers.rc): *adbro; adbif ${@}*
  * [**adbii** (Function)](android_adb_installers.rc): *adbif ${@}*
  * [**adbpf** (Function)](android_adb_installers.rc): *adbpf &lt;file_paths&gt;*
  * [**adbp** (Alias)](android_adb_installers.rc): *adbro; adbpf*
  * [**adbpmrom** (Function)](android_adb_installers.rc): *adbpmrom &lt;file&gt; **(MultiROM file pusher)***
  * [**adbpmromenc** (Function)](android_adb_installers.rc): *adbpmromenc &lt;file&gt; **(MultiROM encryption file pusher)***
  * [**adbapkinstall** (Function)](android_adb_installers.rc): *adbapkinstall **(Install all available apk files)***

---
* #### Source: [android_adb_logs.rc](android_adb_logs.rc)
  * [**adbl** (Function)](android_adb_logs.rc): *adbl [all/crash/events/main/radio/system]*
  * [**adbcl** (Function)](android_adb_logs.rc): *adbcl [file_adb.log] **(Logcat output cleaner)***
  * [**adbstcl** (Function)](android_adb_logs.rc): *adbstcl [file_adb.log] **(strace output cleaner)***
  * [**adbld** (Alias)](android_adb_logs.rc): *cls; adbro; printf "" &gt;adb.data; adb shell cat /data/logcat.txt | tee -a adb.data*
  * [**adblr** (Alias)](android_adb_logs.rc): *adbl radio*
  * [**adblb** (Alias)](android_adb_logs.rc): *while [ 1 ]; do cls; printf "" &gt;adb.log; adb logcat -v audit2allow *:V | tee -a adb.log*
  * [**adblc** (Alias)](android_adb_logs.rc): *adb logcat -c; adbl*
  * [**adbk** (Alias)](android_adb_logs.rc): *adbro; printf "" &gt;kmsg; adb shell cat /proc/kmsg | tee -a kmsg*
  * [**adbdm** (Alias)](android_adb_logs.rc): *adbro; printf "" &gt;dmesg; adb shell dmesg | tee -a dmesg*
  * [**adbkd** (Alias)](android_adb_logs.rc): *printf "" &gt;kmsg; adb shell cat /proc/kmsg | tee -a kmsg*
  * [**adbkl** (Alias)](android_adb_logs.rc): *cls; adbro; printf "" &gt;last_kmsg; adb shell cat /proc/last_kmsg | tee -a last_kmsg*
  * [**adbkld** (Alias)](android_adb_logs.rc): *cls; printf "" &gt;last_kmsg; adb shell cat /proc/last_kmsg | tee -a last_kmsg*
  * [**adbpl** (Alias)](android_adb_logs.rc): *cls; adbro; printf "" &gt;last_kmsg; adb shell cat /sys/fs/pstore/console-ramoops | tee -a last_kmsg*
  * [**adbpld** (Alias)](android_adb_logs.rc): *cls; printf "" &gt;last_kmsg; adb shell cat /sys/fs/pstore/console-ramoops | tee -a last_kmsg*
  * [**adbrl** (Alias)](android_adb_logs.rc): *cls; printf "" &gt;recovery_log; adb shell cat /tmp/recovery.log | tee -a recovery_log*
  * [**adbse** (Alias)](android_adb_logs.rc): *adbro; printf "" &gt;kmsg; adb shell cat /proc/kmsg | tee -a kmsg; sepaud kmsg*
  * [**adbdumpsensors** (Alias)](android_adb_logs.rc): *adb shell dumpsys sensorservice*
  * [**adbsel** (Alias)](android_adb_logs.rc): *adbkl; sepaud kmsg*
  * [**adblf** (Alias)](android_adb_logs.rc): *adb logcat -v audit2allow*
  * [**adblh** (Alias)](android_adb_logs.rc): *adb logcat -b events -b main -b radio | highlight*
  * [**adbtrampoline** (Alias)](android_adb_logs.rc): *adb shell "dmesg | grep -i trampoline*
  * [**adblcln** (Function)](android_adb_logs.rc): *cat ${1} | cut -c 32- | tee ${1}.clean*
  * [**adbkcln** (Function)](android_adb_logs.rc): *cat ${1} | cut -c 15- | tee ${1}.clean*
  * [**adbbootchart** (Function)](android_adb_logs.rc): *adbbootchart **(Bootchart debug helper)***

---
* #### Source: [android_changelog.rc](android_changelog.rc)
  * [**repochangelog** (Function)](android_changelog.rc): *repochangelog &lt;days_count&gt; [project1_path,project2_path,...]*

---
* #### Source: [android_devices.rc](android_devices.rc)
  * [**androiddevicestarget** (Function)](android_devices.rc): *androiddevicestarget [boot/system/...] **(Devices targets mapper)***
  * [**codenametotarget** (Function)](android_devices.rc): *codenametotarget &lt;codename&gt; **(Codename to build target)***

---
* #### Source: [android_edit.rc](android_edit.rc)
  * [**editreplacematch** (Function)](android_edit.rc): *editreplacematch &lt;"match_line"&gt; &lt;"to_write"&gt; &lt;"files"&gt;*
  * [**editremovematch** (Function)](android_edit.rc): *editremovematch &lt;"match_line"&gt; &lt;"files"&gt;*
  * [**editinsertabove** (Function)](android_edit.rc): *editinsertabove &lt;"match_line"&gt; &lt;"to_insert"&gt; &lt;"files"&gt;*
  * [**editinsertbelow** (Function)](android_edit.rc): *editinsertbelow &lt;"match_line"&gt; &lt;"to_insert"&gt; &lt;"files"&gt;*
  * [**editreplacemultiline** (Function)](android_edit.rc): *editreplacemultiline &lt;"match_first"&gt; &lt;"match_last"&gt; &lt;"replace"&gt; &lt;"files"&gt;*

---
* #### Source: [android_fetch.rc](android_fetch.rc)
  * [**gitfetchtreset** (Function)](android_fetch.rc): *gitfetchtreset [remote] [branch]*
  * [**gitf** (Alias)](android_fetch.rc): *git fetch*
  * [**gitfmr** (Alias)](android_fetch.rc): *git fetch origin; git reset origin/master*
  * [**gitfs** (Alias)](android_fetch.rc): *git fetch origin; git reset origin/$(git rev-parse --abbrev-ref HEAD); git stash*
  * [**gitfsu** (Alias)](android_fetch.rc): *git fetch origin; git reset origin/$(git rev-parse --abbrev-ref HEAD); git stash -p*
  * [**gitfgr** (Alias)](android_fetch.rc): *gitfetchtreset github*
  * [**gitfor** (Alias)](android_fetch.rc): *gitfetchtreset origin*
  * [**gitforla** (Alias)](android_fetch.rc): *gitfetchtreset origin aosp/LA.UM.5.5_rb1.10*
  * [**gitfar** (Alias)](android_fetch.rc): *gitfetchtreset $(githubusername)*

---
* #### Source: [android_gerrit.rc](android_gerrit.rc)  - Ready for standalone import
    ```Shell
    source <(curl -Ls https://github.com/AdrianDC/android_shell_tools/raw/master/android_gerrit.rc)
    ```
  * [**gerritreview** (Function)](android_gerrit.rc): *gerritreview &lt;gerrit_ssh_or_http&gt; &lt;project_name_or_.&gt; &lt;drafts/for/heads&gt; [branch]*
  * [**gerritusername** (Function)](android_gerrit.rc): *gerritusername **(Gerrit username getter)***
  * [**gitpr** (Alias)](android_gerrit.rc): *gerritreview ssh://$(gerritusername)@review.lineageos.org:29418 LineageOS for*
  * [**gitprh** (Alias)](android_gerrit.rc): *gerritreview http://review.lineageos.org LineageOS for*
  * [**gitprd** (Alias)](android_gerrit.rc): *gerritreview ssh://$(gerritusername)@review.lineageos.org:29418 LineageOS drafts*
  * [**gitprdh** (Alias)](android_gerrit.rc): *gerritreview http://review.lineageos.org LineageOS drafts*
  * [**gitpg** (Alias)](android_gerrit.rc): *gerritreview ssh://$(gerritusername)@review.lineageos.org:29418 LineageOS heads*
  * [**gitpgh** (Alias)](android_gerrit.rc): *gerritreview http://review.lineageos.org LineageOS heads*
  * [**gitprg** (Alias)](android_gerrit.rc): *gitpr; gitpg*
  * [**gitprgy** (Alias)](android_gerrit.rc): *printf "ynyn" | gitpr; printf "yny" | gitpg*
  * [**gitpraosp** (Alias)](android_gerrit.rc): *gerritreview https://android.googlesource.com aosp for*
  * [**gitpraospma** (Alias)](android_gerrit.rc): *gerritreview https://android.googlesource.com aosp for master*
  * [**gitprdaosp** (Alias)](android_gerrit.rc): *gerritreview https://android.googlesource.com aosp drafts*
  * [**gitprdaospma** (Alias)](android_gerrit.rc): *gerritreview https://android.googlesource.com aosp drafts master*
  * [**gitpraicp** (Alias)](android_gerrit.rc): *gerritreview ssh://$(gerritusername)@gerrit.aicp-rom.com:29418 AICP for n7.1*
  * [**gitprhaicp** (Alias)](android_gerrit.rc): *gerritreview http://gerrit.aicp-rom.com AICP for n7.1*
  * [**gitprdaicp** (Alias)](android_gerrit.rc): *gerritreview ssh://$(gerritusername)@gerrit.aicp-rom.com:29418 AICP drafts n7.1*
  * [**gitprdhaicp** (Alias)](android_gerrit.rc): *gerritreview http://gerrit.aicp-rom.com AICP drafts n7.1*
  * [**gitpgaicp** (Alias)](android_gerrit.rc): *gerritreview ssh://$(gerritusername)@gerrit.aicp-rom.com:29418 AICP heads n7.1*
  * [**gitpghaicp** (Alias)](android_gerrit.rc): *gerritreview http://gerrit.aicp-rom.com AICP heads n7.1*
  * [**gitprgaicp** (Alias)](android_gerrit.rc): *gitpraicp; gitpgaicp*
  * [**gitprghaicp** (Alias)](android_gerrit.rc): *gitprhaicp; gitpghaicp*
  * [**gitpr7** (Alias)](android_gerrit.rc): *gerritreview ssh://radian.dc@review.msm7x30.org:29418 LegacyXperia for*
  * [**gitpr7h** (Alias)](android_gerrit.rc): *gerritreview http://review.msm7x30.org LegacyXperia for*
  * [**gitpr7d** (Alias)](android_gerrit.rc): *gerritreview ssh://radian.dc@review.msm7x30.org:29418 LegacyXperia drafts*
  * [**gitpr7dh** (Alias)](android_gerrit.rc): *gerritreview http://review.msm7x30.org LegacyXperia drafts*
  * [**gitpromni** (Alias)](android_gerrit.rc): *gerritreview ssh://$(gerritusername)@gerrit.omnirom.org:29418 . for android-7.1*
  * [**gitprhomni** (Alias)](android_gerrit.rc): *gerritreview http://gerrit.omnirom.org . for android-7.1*
  * [**gitprdomni** (Alias)](android_gerrit.rc): *gerritreview ssh://$(gerritusername)@gerrit.omnirom.org:29418 . drafts android-7.1*
  * [**gitprdhomni** (Alias)](android_gerrit.rc): *gerritreview http://gerrit.omnirom.org . drafts android-7.1*
  * [**gitprtwrp** (Alias)](android_gerrit.rc): *gerritreview ssh://$(gerritusername)@gerrit.twrp.me:29418 . for android-6.0*
  * [**gitprdtwrp** (Alias)](android_gerrit.rc): *gerritreview ssh://$(gerritusername)@gerrit.twrp.me:29418 . drafts android-6.0*

---
* #### Source: [android_gerritssh.rc](android_gerritssh.rc)  - Ready for standalone import
    ```Shell
    source <(curl -Ls https://github.com/AdrianDC/android_shell_tools/raw/master/android_gerritssh.rc)
    ```
  * [**gerritssh** (Function)](android_gerritssh.rc): *gerritssh [branch] [change_id_reverser]*

---
* #### Source: [android_git.rc](android_git.rc)
  * [**githubusername** (Function)](android_git.rc): *githubusername **(GitHub username getter)***
  * [**gitfcu** (Function)](android_git.rc): *gitfcu &lt;url&gt; [branch] **(Git fetch url and reset)***
  * [**gitcleantags** (Function)](android_git.rc): *gitcleantags &lt;branch_to_keep&gt;*
  * [**gitonebranch** (Function)](android_git.rc): *gitonebranch **(Git remove non-default remote branches)***
  * [**gits** (Alias)](android_git.rc): *git stash*
  * [**gitsp** (Alias)](android_git.rc): *git stash -p*
  * [**gitsu** (Alias)](android_git.rc): *git stash -u*
  * [**gitspop** (Alias)](android_git.rc): *git stash pop*
  * [**gitdi** (Function)](android_git.rc): *gitdi **(Show git differences status)***
  * [**gitdfs** (Function)](android_git.rc): *gitdfs &lt;sha1commit&gt;*
  * [**gitdf** (Function)](android_git.rc): *gitdf &lt;sha1commit&gt; &lt;filepath&gt;*
  * [**gitlo** (Alias)](android_git.rc): *git log --pretty=oneline*
  * [**gitlod** (Alias)](android_git.rc): *git log --pretty=oneline --*
  * [**gitloo** (Alias)](android_git.rc): *git log --pretty=format:"%C(yellow)%h %Cred%ad %Creset%s" --date=short --all --*
  * [**gitlos** (Function)](android_git.rc): *gitlos &lt;path_or_.&gt; ["search string input"] [search_max_count]*
  * [**gitfindsha1** (Function)](android_git.rc): *gitfindsha1 &lt;remote/branch&gt; &lt;"title text to search"&gt;*
  * [**gitshow** (Alias)](android_git.rc): *git show --name-status*
  * [**gitshf** (Alias)](android_git.rc): *git show --pretty=full*
  * [**gitshl** (Function)](android_git.rc): *git show --oneline --name-only ${1} | tail -n +2 | cut -c $((1+${2:-0}))-*
  * [**gitap** (Alias)](android_git.rc): *git add -p*
  * [**gitaa** (Alias)](android_git.rc): *git add . -Av*
  * [**gitan** (Alias)](android_git.rc): *git add . -An*
  * [**gite** (Function)](android_git.rc): *gedit ${1}; printf ' Done ? [Enter] '; read; git add ${1}*
  * [**gitbd** (Alias)](android_git.rc): *git branch -D*
  * [**gitbv** (Alias)](android_git.rc): *git fetch ${gitreviewdefault} $(git rev-parse --abbrev-ref HEAD); git branch -vv*
  * [**gitch** (Alias)](android_git.rc): *git checkout*
  * [**gitcp** (Alias)](android_git.rc): *git cherry-pick*
  * [**gitcpc** (Alias)](android_git.rc): *git reset; git cherry-pick --continue*
  * [**gitcpf** (Function)](android_git.rc): *git fetch ${1} ${2}; git cherry-pick FETCH_HEAD*
  * [**gitfcp** (Function)](android_git.rc): *git fetch ${1}; git cherry-pick FETCH_HEAD~${2:-0}*
  * [**gitcpr** (Function)](android_git.rc): *git show ${1} --no-color | sed "s/${2}/${3}/g" | patch*
  * [**gitc** (Alias)](android_git.rc): *git commit $(gitgpgparam)*
  * [**gitcs** (Alias)](android_git.rc): *git commit $(gitgpgparam) -s*
  * [**gitca** (Alias)](android_git.rc): *git commit $(gitgpgparam) --amend*
  * [**gitcae** (Alias)](android_git.rc): *git commit $(gitgpgparam) --amend --no-edit*
  * [**gitcauthor** (Alias)](android_git.rc): *git commit $(gitgpgparam) --amend --no-edit --author="$(git config --global --get user.name) &lt;$(git config --global --get user.email)&gt;*
  * [**gitrevert** (Alias)](android_git.rc): *git revert $(gitgpgparam) --no-edit*
  * [**gitfix** (Alias)](android_git.rc): *rm -fv .git/COMMIT_EDITMSG*; rm -fv .git/.COMMIT_EDITMSG.swp*
  * [**gitcid** (Function)](android_git.rc): *gitcid **(Apply commit-msg hook to commit)***
  * [**gitcidupstream** (Function)](android_git.rc): *gitcidupstream **(Load commit-msg hook from upstream)***
  * [**gitfurl** (Function)](android_git.rc): *git fetch "${1%/commits/*}" "${1#*/commits/}"*
  * [**gitpf** (Alias)](android_git.rc): *git push -f*
  * [**gitra** (Alias)](android_git.rc): *git rebase --abort*
  * [**gitrc** (Alias)](android_git.rc): *git rebase --continue*
  * [**gitre** (Alias)](android_git.rc): *git rebase --edit-todo*
  * [**gitrs** (Alias)](android_git.rc): *git rebase --skip*
  * [**gitrf** (Function)](android_git.rc): *git rebase ${1}^ -i*
  * [**gitr** (Function)](android_git.rc): *git rebase HEAD~${1:-5} -i*
  * [**gitrall** (Function)](android_git.rc): *git rebase -i HEAD~$(($(git rev-list --count HEAD) - 1))*
  * [**gitrfedit** (Function)](android_git.rc): *GIT_SEQUENCE_EDITOR="sed -i -e 's/pick/edit/g'" git rebase ${1} -i*
  * [**gitredit** (Function)](android_git.rc): *GIT_SEQUENCE_EDITOR="sed -i -e 's/pick/edit/g'" git rebase HEAD~${1:-5} -i*
  * [**gitrb** (Function)](android_git.rc): *branch=${1:-$(repogetbranch)}; git fetch github ${branch}; git rebase github/${branch}*
  * [**gitrbo** (Function)](android_git.rc): *branch=${1:-$(repogetbranch)}; git fetch origin ${branch}; git rebase origin/${branch}*
  * [**gitrv** (Alias)](android_git.rc): *git remote -v*
  * [**gitrh** (Alias)](android_git.rc): *git reset FETCH_HEAD --hard*
  * [**githd** (Alias)](android_git.rc): *git reset HEAD --hard*
  * [**gitcl** (Alias)](android_git.rc): *git reset HEAD --hard; git stash -u; git am --abort*
  * [**gitro** (Alias)](android_git.rc): *git reset HEAD^ --hard*
  * [**gitsl** (Alias)](android_git.rc): *git reset HEAD^; gitap; gitcae*
  * [**gitrl** (Alias)](android_git.rc): *git revert HEAD -n; git commit -m "Revert"; git reset HEAD^; git add -p*
  * [**gitri** (Alias)](android_git.rc): *git reset HEAD^*
  * [**gitrt** (Alias)](android_git.rc): *git reset --hard*
  * [**gitrerere** (Alias)](android_git.rc): *git config --global rerere.enabled*
  * [**gitdiffpermhide** (Alias)](android_git.rc): *git config core.filemode false*
  * [**gitdiffpermshow** (Alias)](android_git.rc): *git config core.filemode true*
  * [**gpglist** (Alias)](android_git.rc): *gpg --list-secret-keys --keyid-format LONG*
  * [**gpgsilent** (Alias)](android_git.rc): *echo "no-tty" &gt;&gt; ~/.gnupg/gpg.conf*
  * [**gpgenable** (Alias)](android_git.rc): *git config --global commit.gpgsign true*
  * [**gpgdisable** (Alias)](android_git.rc): *git config --global commit.gpgsign false*
  * [**gpgsigning** (Alias)](android_git.rc): *git config --global user.signingkey*
  * [**gitshowsg** (Alias)](android_git.rc): *git config --global alias.logs "log --show-signature*
  * [**gitpwstore** (Alias)](android_git.rc): *git config --global credential.helper store*
  * [**githi** (Alias)](android_git.rc): *git update-index --assume-unchanged*
  * [**gitsh** (Alias)](android_git.rc): *git update-index --no-assume-unchanged*
  * [**gitgpgparam** (Function)](android_git.rc): *gitgpgparam **(Returns the GPG signature flag if enabled)***
  * [**gitmt** (Alias)](android_git.rc): *git mergetool*
  * [**gitmte** (Function)](android_git.rc): *gitmte **(Merge tool with manual conflicts resolution)***
  * [**gitmtr** (Function)](android_git.rc): *gitmtr &lt;referenced_path&gt;*

---
* #### Source: [android_git_pick.rc](android_git_pick.rc)
  * [**gitcpu** (Function)](android_git_pick.rc): *gitcpu &lt;githuburltocommit&gt; [branch]*
  * [**gitmerges** (Function)](android_git_pick.rc): *gitmerges &lt;commit_sha1&gt; [count] **(Attempt to merge commit history)***
  * [**gitcpo** (Function)](android_git_pick.rc): *gitcpo &lt;branch&gt; &lt;amount_of_commits&gt;*
  * [**gitcpup** (Function)](android_git_pick.rc): *gitcpup &lt;url&gt; **(Git URL patch applier)***
  * [**gitcpur** (Function)](android_git_pick.rc): *gitcpur &lt;githuburltoproject&gt; &lt;branch&gt; &lt;search_text&gt; &lt;replace_text&gt;*
  * [**gitcpupprima** (Function)](android_git_pick.rc): *gitcpup "${1}" CORE drivers/staging/prima/CORE*

---
* #### Source: [android_git_stats.rc](android_git_stats.rc)
  * [**gitstat** (Function)](android_git_stats.rc): *gitstat &lt;remote&gt; &lt;branch&gt; [stats_only]*
  * [**gitst** (Alias)](android_git_stats.rc): *gitremoteverify origin gitrao && gitstat origin cm-14.1*
  * [**gitsto** (Alias)](android_git_stats.rc): *gitremoteverify origin gitrao && gitstat origin $(git rev-parse --abbrev-ref HEAD)*
  * [**gitsta** (Alias)](android_git_stats.rc): *gitremoteverify $(githubusername) gitraa && gitstat $(githubusername) cm-14.1*
  * [**gitstam** (Alias)](android_git_stats.rc): *gitremoteverify $(githubusername) gitraa && gitstat $(githubusername) master*
  * [**gitstg** (Alias)](android_git_stats.rc): *gitremoteverify github false && gitstat github*
  * [**gitstaosp** (Alias)](android_git_stats.rc): *gitremoteverify aosp false && gitstat aosp master*
  * [**gitstsony** (Alias)](android_git_stats.rc): *gitremoteverify origin gitraos && gitstat origin aosp/LA.UM.5.5.r1*
  * [**gitstfa** (Alias)](android_git_stats.rc): *gitrao; gitremoteverify $(githubusername) gitraa && gitstat $(githubusername) cm-14.1 true*

---
* #### Source: [android_grep.rc](android_grep.rc)
  * [**grepb** (Function)](android_grep.rc): *grepb [inputs] **(Grep through sources)***
  * [**g** (Alias)](android_grep.rc): *grepb*
  * [**grepbs** (Function)](android_grep.rc): *grepbs [inputs] **(Grep through sources and binaries)***
  * [**gs** (Alias)](android_grep.rc): *grepbs*
  * [**gck** (Function)](android_grep.rc): *gck [inputs] **(Grep through kernel configurations)***
  * [**gca** (Function)](android_grep.rc): *gca [inputs] **(Grep through Android makefiles)***
  * [**grepi** (Alias)](android_grep.rc): *grep -i*
  * [**glc** (Function)](android_grep.rc): *GREP_COLORS='fn=1;1' grep --include *.c --include *.cpp --include *.h -anr '.{80,}' .*
  * [**glj** (Function)](android_grep.rc): *GREP_COLORS='fn=1;1' grep --include *.java -anr '.{100,}' .*
  * [**gle** (Function)](android_grep.rc): *GREP_COLORS='fn=1;1' grep --include *.c --include *.cpp --include *.h --include *.java -anr '.* $' .*
  * [**gcmodules** (Function)](android_grep.rc): *gcmodules **(List all LOCAL_MODULE elements)***

---
* #### Source: [android_kernel_builders.rc](android_kernel_builders.rc)  - Ready for standalone import
    ```Shell
    source <(curl -Ls https://github.com/AdrianDC/android_shell_tools/raw/master/android_kernel_builders.rc)
    ```
  * [**makekernel** (Function)](android_kernel_builders.rc): *makekernel [platform_device_to_init / clean / mrproper] [make_parameters]*
  * [**mkcopyleft** (Function)](android_kernel_builders.rc): *mkcopyleft [device_name_to_init] [msm*-perf_to_use]*

---
* #### Source: [android_kernel_defconfig.rc](android_kernel_defconfig.rc)  - Ready for standalone import
    ```Shell
    source <(curl -Ls https://github.com/AdrianDC/android_shell_tools/raw/master/android_kernel_defconfig.rc)
    ```
  * [**makedefconf** (Function)](android_kernel_defconfig.rc): *makedefconf &lt;device_name&gt; [bool_full_config] [diff_config] [force_config=value]*
  * [**kernelconfigupdater** (Function)](android_kernel_defconfig.rc): *kernelconfigupdater &lt;CONFIG_NAME=VALUE_or_# CONFIG_NAME is not set&gt;*
  * [**makedefconfset** (Function)](android_kernel_defconfig.rc): *makedefconfset &lt;device_name&gt; [force_config=value]*

---
* #### Source: [android_kernel_editors.rc](android_kernel_editors.rc)
  * [**boottools** (Function)](android_kernel_editors.rc): *boottools &lt;boot.img&gt;*
  * [**bootelf** (Function)](android_kernel_editors.rc): *bootelf &lt;boot.img&gt;*

---
* #### Source: [android_kernel_helpers.rc](android_kernel_helpers.rc)
  * [**makekernelinjector** (Function)](android_kernel_helpers.rc): *makekernelinjector &lt;device_name&gt;*
  * [**doradefconf** (Alias)](android_kernel_helpers.rc): *makedefconf msm-perf dora common*
  * [**doracopyleft** (Alias)](android_kernel_helpers.rc): *mkcopyleft dora*
  * [**doraaospdefconf** (Alias)](android_kernel_helpers.rc): *makedefconf aosp_tone_dora_defconfig*
  * [**doraaospkernel** (Alias)](android_kernel_helpers.rc): *makekernel tone_dora*
  * [**dorazipkernel** (Alias)](android_kernel_helpers.rc): *kernelinjectorzip dora arch/arm64/boot/Image.gz-dtb .*
  * [**sonykernelrebase** (Alias)](android_kernel_helpers.rc): *git fetch https://github.com/sonyxperiadev/kernel aosp/LA.UM.5.5.r1; git rebase FETCH_HEAD; gitpa*
  * [**kaguradefconf** (Alias)](android_kernel_helpers.rc): *makedefconf msm-perf kagura common*
  * [**sonyaospkernelupdate** (Function)](android_kernel_helpers.rc): *sonyaospkernelupdate &lt;device_name&gt;*

---
* #### Source: [android_kernel_tools.rc](android_kernel_tools.rc)
  * [**fboota** (Function)](android_kernel_tools.rc): *fboota [unsecure,sep,full,init,inject,recovery,fastupl,zip]*
  * [**fboot** (Function)](android_kernel_tools.rc): *fboot &lt;bootimage&gt;*
  * [**fboots** (Function)](android_kernel_tools.rc): *fboots &lt;system_img&gt;*
  * [**fbootr** (Function)](android_kernel_tools.rc): *fbootr **(Fastboot reboot)***
  * [**fbooti** (Function)](android_kernel_tools.rc): *fbooti **(Kernel bbootimg analyzer)***
  * [**bootinfo** (Function)](android_kernel_tools.rc): *bootinfo &lt;boot_img_file&gt;*
  * [**adbfotainfos** (Function)](android_kernel_tools.rc): *adbfotainfos **(FOTA bbootimg analyzer)***
  * [**fbootk** (Function)](android_kernel_tools.rc): *fbootk &lt;kernelpath&gt; [bool_fota]*
  * [**frecovery** (Function)](android_kernel_tools.rc): *frecovery &lt;image&gt; **(Flash recovery with fastboot)***
  * [**adbbootpush** (Function)](android_kernel_tools.rc): *adbbootpush &lt;image&gt; **(Inject bootimage to partition)***
  * [**adbfotapush** (Function)](android_kernel_tools.rc): *adbfotapush &lt;image&gt; **(Inject FOTA to partition)***
  * [**adbrecoverypush** (Function)](android_kernel_tools.rc): *adbrecoverypush &lt;image&gt; **(Inject recovery to partition)***
  * [**kernelinjectorzip** (Function)](android_kernel_tools.rc): *kernelinjectorzip &lt;device&gt; &lt;kernel_file_path&gt; [kernel_sources_for_modules]*
  * [**bootzip** (Function)](android_kernel_tools.rc): *bootzip &lt;device&gt; &lt;boot_img_path&gt;*
  * [**makesep** (Function)](android_kernel_tools.rc): *makesep **(Compile sepolicies clean)***
  * [**bootimagedebuggable** (Function)](android_kernel_tools.rc): *bootimagedebuggable &lt;device_product&gt; &lt;true/false&gt;*

---
* #### Source: [android_linux.rc](android_linux.rc)
  * [**cls** (Function)](android_linux.rc): *cls **(Clean terminal screen)***
  * [**toclip** (Function)](android_linux.rc): *xclip -selection c*
  * [**findn** (Alias)](android_linux.rc): *find -name*
  * [**rsynca** (Function)](android_linux.rc): *rsynca &lt;path1&gt; &lt;path2&gt;*
  * [**pcinfo** (Alias)](android_linux.rc): *inxi -Fxz*
  * [**findnewer** (Function)](android_linux.rc): *findnewer &lt;20160123&gt;*
  * [**cpioext** (Function)](android_linux.rc): *cpioext &lt;cpio_file_to_extract&gt;*
  * [**videoresize** (Function)](android_linux.rc): *videoresize &lt;video_file&gt;*
  * [**disableautomount** (Function)](android_linux.rc): *disableautomount **(Linux USB automount disabler)***
  * [**diffbin** (Function)](android_linux.rc): *diffbin &lt;binary_left&gt; &lt;binary_right&gt; [first_n_lines]*
  * [**netspeed** (Function)](android_linux.rc): *netspeed **(Display network speeds)***
  * [**buildlock** (Function)](android_linux.rc): *buildlock &lt;command...&gt; **(Mutex-locked command execution)***
  * [**fileschemesorter** (Function)](android_linux.rc): *fileschemesorter &lt;file_to_sort&gt; &lt;file_reference&gt;*
  * [**mtpmountdisable** (Function)](android_linux.rc): *mtpmountdisable **(Disable MTP automount)***
  * [**cleanram** (Function)](android_linux.rc): *cleanram **(RAM caches cleanup)***
  * [**cleanramkill** (Function)](android_linux.rc): *cleanramkill **(Complete RAM cleanup including "java")***
  * [**networkrestart** (Function)](android_linux.rc): *networkrestart **(Restart network manager)***
  * [**pushbsizes** (Function)](android_linux.rc): *pushbsizes &lt;paths&gt; **(Path sizes in PushBullet notification)***

---
* #### Source: [android_push.rc](android_push.rc)
  * [**gitpu** (Function)](android_push.rc): *gitpu [remote] [branch] [input]*
  * [**gitpa** (Alias)](android_push.rc): *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername)*
  * [**gitpa14** (Alias)](android_push.rc): *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) cm-14.1*
  * [**gitpala** (Alias)](android_push.rc): *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) LA.UM.5.5_rb1.10*
  * [**gitpal** (Alias)](android_push.rc): *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) local_manifests*
  * [**gitpaman** (Alias)](android_push.rc): *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) manifests*
  * [**gitpam** (Alias)](android_push.rc): *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) multirom*
  * [**gitpama** (Alias)](android_push.rc): *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) master*
  * [**gitpanmr** (Alias)](android_push.rc): *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) n-mr1*
  * [**gitpan** (Alias)](android_push.rc): *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) nougat*
  * [**gitpat** (Alias)](android_push.rc): *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) twrp*
  * [**gitpb** (Alias)](android_push.rc): *gitremoteverify backup gitrab && gitpu backup*
  * [**gitpp** (Alias)](android_push.rc): *gitremoteverify project false && gitpu project*
  * [**gitppm** (Alias)](android_push.rc): *gitremoteverify project false && gitpu project master*
  * [**gitpurl** (Function)](android_push.rc): *gitpu "${1%/commits/*}" "${1#*/commits/}"*

---
* #### Source: [android_pushbullet.rc](android_pushbullet.rc)
  * [**pushb** (Function)](android_pushbullet.rc): *pushb [message] **(PushBullet notification helper)***

---
* #### Source: [android_release_builders.rc](android_release_builders.rc)
  * [**romautorelease** (Function)](android_release_builders.rc): *romautorelease &lt;devicename&gt; {aosp/lineage/lx/caf/rr} [nowipe/outclean/outwipe,bringup/dev/local/priv,j1/j2] **(Advanced automated ROM builder)***
  * [**aosp8960autorelease** (Function)](android_release_builders.rc): *aosp8960autorelease [devices] [bool_nosync] **(Automated AOSP 8960 releaser)***
  * [**aospsodpautorelease** (Function)](android_release_builders.rc): *aospsodpautorelease [devices] [bool_nosync] **(Automated AOSP SODP releaser)***
  * [**lineageautorelease** (Function)](android_release_builders.rc): *lineageautorelease [devices] [bool_nosync] **(Automated LineageOS 8960 releaser)***
  * [**lxautorelease** (Function)](android_release_builders.rc): *lxautorelease [devices] [bool_unpatched] **(Automated RR 8960 releaser)***
  * [**rrautorelease** (Function)](android_release_builders.rc): *rrautorelease [devices] [bool_nosync] **(Automated RR 8960 releaser)***
  * [**mromautorelease** (Function)](android_release_builders.rc): *mromautorelease [devices] **(Automated MultiROM releaser)***
  * [**twrpautorelease** (Function)](android_release_builders.rc): *twrpautorelease [devices] **(Automated TWRP releaser)***
  * [**cafautorelease** (Function)](android_release_builders.rc): *cafautorelease [devices] **(Automated AOSP-CAF 8960 releaser)***
  * [**romlogs** (Function)](android_release_builders.rc): *romlogs &lt;device&gt; &lt;rom&gt; [logs_count_**(default_200)**]*

---
* #### Source: [android_release_helpers.rc](android_release_helpers.rc)
  * [**outdevcl** (Function)](android_release_helpers.rc): *outdevcl &lt;devicename&gt;*
  * [**noninja** (Function)](android_release_helpers.rc): *noninja &lt;command...&gt; **(Run command without ninja)***
  * [**mmo** (Function)](android_release_helpers.rc): *mmo &lt;command...&gt; **(Build module without ninja)***
  * [**mmi** (Function)](android_release_helpers.rc): *mmi &lt;command...&gt; **(Build & install module without ninja)***
  * [**mmil** (Function)](android_release_helpers.rc): *mmil &lt;command...&gt; **(Build & list module without ninja)***
  * [**noccache** (Function)](android_release_helpers.rc): *noccache &lt;command...&gt; **(Run command without CCache)***

---
* #### Source: [android_release_packages.rc](android_release_packages.rc)
  * [**signzip** (Function)](android_release_packages.rc): *signzip &lt;zip_to_sign&gt; [signed_output_zip] **(Sign flashable zip)***
  * [**mmmzip** (Function)](android_release_packages.rc): *mmmzip &lt;paths_or_modules&gt; **(Build module to flashable zip)***
  * [**systozip** (Function)](android_release_packages.rc): *systozip &lt;files&gt; **(System files to flashable zip)***
  * [**packzip** (Function)](android_release_packages.rc): *packzip &lt;files&gt; **(Files to flashable zip)***
  * [**gitzip** (Function)](android_release_packages.rc): *gitzip &lt;commit_sha1&gt; **(Git commit files to flashable zip)***

---
* #### Source: [android_remotes.rc](android_remotes.rc)
  * [**gitremoteset** (Function)](android_remotes.rc): *gitremoteset &lt;remote_name&gt; &lt;remote_url&gt;*
  * [**gitremoteadaptset** (Function)](android_remotes.rc): *gitremoteadaptset &lt;remote_name&gt; &lt;remote_github&gt; [prefix_removal] [bool_prefix_android] [bool_underscore_to_dash]*
  * [**gitremoteverify** (Function)](android_remotes.rc): *gitremoteverify &lt;remote_name&gt; "command_to_run_if_missing*
  * [**gitraa** (Function)](android_remotes.rc): *gitraa **(Add GitHub Username remote)***
  * [**gitrai** (Function)](android_remotes.rc): *gitremoteadaptset 'aicp' 'AICP' 'android_'*
  * [**gitraoo** (Function)](android_remotes.rc): *gitremoteadaptset 'origin' "${1}" ''*
  * [**gitraot** (Function)](android_remotes.rc): *gitremoteadaptset 'origin' 'TheMuppets' ''*
  * [**gitrat** (Function)](android_remotes.rc): *gitremoteadaptset 'twrp' 'TeamWin' ''*
  * [**gitral** (Function)](android_remotes.rc): *gitremoteset lineage "${1}"*
  * [**gitrao** (Function)](android_remotes.rc): *gitrao **(Add LineageOS origin remote)***
  * [**gitrax** (Function)](android_remotes.rc): *gitrax **(Add XperiaMultiROM xperia remote)***
  * [**gitramd** (Function)](android_remotes.rc): *gitramd **(Add MultiROM-Dev mromdev remote)***
  * [**gitraos** (Function)](android_remotes.rc): *gitraos **(Add sonyxperiadev origin remote)***
  * [**gitraau** (Alias)](android_remotes.rc): *git remote set-url $(githubusername)*
  * [**gitraou** (Alias)](android_remotes.rc): *git remote set-url origin*
  * [**gitrab** (Function)](android_remotes.rc): *gitrab **(Add backup remote)***
  * [**gitra8960lineage** (Function)](android_remotes.rc): *gitra8960lineage **(Add LineageOS 8960 development remote)***
  * [**gitra8996lineage** (Function)](android_remotes.rc): *gitra8996lineage **(Add LineageOS 8996 development remote)***
  * [**gitra8960naosp** (Function)](android_remotes.rc): *gitra8960naosp **(Add AOSP 8960 Nougat development remote)***
  * [**gitra8960oaosp** (Function)](android_remotes.rc): *gitra8960oaosp **(Add AOSP 8960 O development remote)***
  * [**gitra8960masteraosp** (Function)](android_remotes.rc): *gitra8960masteraosp **(Add AOSP 8960 Master development remote)***
  * [**gitrasonyaosp** (Function)](android_remotes.rc): *gitrasonyaosp **(Add AOSP Sony development remote)***
  * [**gitraaospcaf** (Function)](android_remotes.rc): *gitraaospcaf **(Add AOSP-CAF development remote)***
  * [**gitrasonylineage** (Function)](android_remotes.rc): *gitrasonylineage **(Add LineageOS development remote)***
  * [**gitramultirom** (Function)](android_remotes.rc): *gitramultirom **(Add MultiROM development remote)***
  * [**gitratwrp** (Function)](android_remotes.rc): *gitratwrp **(Add TWRP development remote)***

---
* #### Source: [android_repo_builders.rc](android_repo_builders.rc)
  * [**repotwrp** (Function)](android_repo_builders.rc): *repotwrp {device} [nosync,nowipe,outcl,fota,local +fotareboot]*
  * [**repomrom** (Function)](android_repo_builders.rc): *repomrom {device} [nosync,nowipe,outcl,fota,local +fotareboot]*

---
* #### Source: [android_repo_changes.rc](android_repo_changes.rc)
  * [**repochanges** (Function)](android_repo_changes.rc): *repochanges ["ignored_projects"] **(Detect all repo projects differences)***

---
* #### Source: [android_repo_cleaners.rc](android_repo_cleaners.rc)
  * [**repoprojectscleaner** (Function)](android_repo_cleaners.rc): *repoprojectscleaner **(Run inside an Android repo root)***
  * [**repotagscleaner** (Function)](android_repo_cleaners.rc): *repotagscleaner **(Run inside an Android repo root)***
  * [**repoheadscleaner** (Function)](android_repo_cleaners.rc): *repoheadscleaner **(Cleanup repo projects refs/ contents)***
  * [**reposyrm** (Function)](android_repo_cleaners.rc): *reposyrm &lt;project/relative/path&gt;*
  * [**reposyrmf** (Function)](android_repo_cleaners.rc): *reposyrmf &lt;project/relative/path&gt;*
  * [**repocleancache** (Alias)](android_repo_cleaners.rc): *if [ ! -z "${CCACHE_DIR}" ]; then rm -rfv "${CCACHE_DIR}/"*; fi*

---
* #### Source: [android_repo_compare.rc](android_repo_compare.rc)
  * [**repocomparestable** (Function)](android_repo_compare.rc): *repocomparestable [stable_ZNH5Y] [github_account_LineageOS] [full_diff]*
  * [**repocompareupstream** (Function)](android_repo_compare.rc): *repocompareupstream [github_account_LineageOS] [full_diff]*
  * [**repocomparetags** (Function)](android_repo_compare.rc): *repocomparetags &lt;tag_to_compare_to_android_branch&gt; [ignore_account_LineageOS] [full_diff]*

---
* #### Source: [android_repo_helpers.rc](android_repo_helpers.rc)
  * [**gettop** (Function)](android_repo_helpers.rc): *gettop **(Get repo root path)***
  * [**croot** (Function)](android_repo_helpers.rc): *croot **(Access repo root path)***
  * [**repos** (Function)](android_repo_helpers.rc): *repos [device_name] **(Prepare LineageOS device environment)***
  * [**reposaosp** (Function)](android_repo_helpers.rc): *reposaosp [device_name] **(Prepare AOSP device environment)***
  * [**reporoomserv** (Function)](android_repo_helpers.rc): *reporoomserv **(Manifest and local_manifests editor)***
  * [**reposy** (Function)](android_repo_helpers.rc): *reposy **(Optimized relevant repo sync)***
  * [**reposysafe** (Function)](android_repo_helpers.rc): *reposysafe **(Safeguarded repo projects sync)***
  * [**reposybranch** (Function)](android_repo_helpers.rc): *reposybranch **(Individual repo projects sync)***
  * [**repoprune** (Function)](android_repo_helpers.rc): *repoprune **(Apply repo-wide prune cleanup)***
  * [**reposycl** (Function)](android_repo_helpers.rc): *reposycl **(Cleaned optimized relevant repo sync)***
  * [**repocache** (Function)](android_repo_helpers.rc): *repocache [cache_maximum_size] **(CCache watcher and configuration)***
  * [**repogetbranch** (Function)](android_repo_helpers.rc): *repogetbranch **(Get repo main branch)***

---
* #### Source: [android_repo_init.rc](android_repo_init.rc)
  * [**repoinitaosp** (Function)](android_repo_init.rc): *repoinitaosp &lt;android-7.1.2_r{XX}&gt; [referenced,clean,rmout,noprepare,example]*
  * [**repoinitlineage** (Function)](android_repo_init.rc): *repoinitlineage &lt;13.0/14.1&gt; [referenced,clean,rmout,noprepare,example]*
  * [**repoinitaospall** (Function)](android_repo_init.rc): *repoinitaospall &lt;android-7.1.2_r{XX}&gt; [clean,rmout]*
  * [**repoinitlineageall** (Function)](android_repo_init.rc): *repoinitlineageall &lt;13.0/14.1&gt; [clean,rmout]*
  * [**repoinitrr** (Function)](android_repo_init.rc): *repoinitrr &lt;nougat&gt; [referenced,clean,rmout,noprepare]*

---
* #### Source: [android_repo_referenced.rc](android_repo_referenced.rc)
  * [**reporeferencedaosp** (Function)](android_repo_referenced.rc): *reporeferencedaosp &lt;"command_to_run"&gt; &lt;"device1 device2 ..."&gt;*
  * [**reporeferencedlineage** (Function)](android_repo_referenced.rc): *reporeferencedlineage &lt;"command_to_run"&gt; &lt;"device1 device2 ..."&gt;*
  * [**reporefupdate** (Function)](android_repo_referenced.rc): *reporefupdate **(Upload new projects manifests)***
  * [**reporefsync** (Function)](android_repo_referenced.rc): *reporefsync **(Download new projects manifests)***

---
* #### Source: [android_rom_aicp.rc](android_rom_aicp.rc)
  * [**gitcpaicp** (Function)](android_rom_aicp.rc): *gitcpaicp **(Automated upstream to AICP device merger)***

---
* #### Source: [android_rom_aosp_sony8960.rc](android_rom_aosp_sony8960.rc)  - Ready for standalone import
    ```Shell
    source <(curl -Ls https://github.com/AdrianDC/android_shell_tools/raw/master/android_remotes.rc)
    source <(curl -Ls https://github.com/AdrianDC/android_shell_tools/raw/master/android_rom_projects.rc)
    source <(curl -Ls https://github.com/AdrianDC/android_shell_tools/raw/master/android_rom_aosp_sony8960.rc)
    ```
  * [**aosp8960npatcher** (Function)](android_rom_aosp_sony8960.rc): *aosp8960npatcher [specific_paths] **(AOSP 8960 Nougat Patcher)***
  * [**aosp8960opatcher** (Function)](android_rom_aosp_sony8960.rc): *aosp8960opatcher [specific_paths] **(AOSP 8960 O Patcher)***
  * [**aosp8960masterpatcher** (Function)](android_rom_aosp_sony8960.rc): *aosp8960masterpatcher [specific_paths] **(AOSP 8960 Master Patcher)***

---
* #### Source: [android_rom_aosp_sonyaosp.rc](android_rom_aosp_sonyaosp.rc)  - Ready for standalone import
    ```Shell
    source <(curl -Ls https://github.com/AdrianDC/android_shell_tools/raw/master/android_remotes.rc)
    source <(curl -Ls https://github.com/AdrianDC/android_shell_tools/raw/master/android_rom_projects.rc)
    source <(curl -Ls https://github.com/AdrianDC/android_shell_tools/raw/master/android_rom_aosp_sonyaosp.rc)
    ```
  * [**aospsonypatcher** (Function)](android_rom_aosp_sonyaosp.rc): *aospsonypatcher [specific_paths] **(AOSP SONY SODP Patcher)***
  * [**aospsonyrebaser** (Function)](android_rom_aosp_sonyaosp.rc): *aospsonyrebaser [specific_paths] **(AOSP SONY SODP Rebaser)***

---
* #### Source: [android_rom_aospcaf.rc](android_rom_aospcaf.rc)  - Ready for standalone import
    ```Shell
    source <(curl -Ls https://github.com/AdrianDC/android_shell_tools/raw/master/android_remotes.rc)
    source <(curl -Ls https://github.com/AdrianDC/android_shell_tools/raw/master/android_rom_projects.rc)
    source <(curl -Ls https://github.com/AdrianDC/android_shell_tools/raw/master/android_rom_aosp_aospcaf.rc)
    ```
  * [**aospcafpatcher** (Function)](android_rom_aospcaf.rc): *aospcafpatcher [specific_paths] **(AOSP-CAF Patcher)***

---
* #### Source: [android_rom_legacyxperia.rc](android_rom_legacyxperia.rc)  - Ready for standalone import
    ```Shell
    source <(curl -Ls https://github.com/AdrianDC/android_shell_tools/raw/master/android_kernel_defconfig.rc)
    source <(curl -Ls https://github.com/AdrianDC/android_shell_tools/raw/master/android_rom_legacyxperia.rc)
    ```
  * [**lineagelxpatcher** (Function)](android_rom_legacyxperia.rc): *lineagelxpatcher [local_manifests_branch]*
  * [**lxrepopick** (Function)](android_rom_legacyxperia.rc): *lxrepopick &lt;commit_id&gt;*
  * [**lxdefconfig** (Function)](android_rom_legacyxperia.rc): *lxdefconfig **(Edit all lx defconfigs)***

---
* #### Source: [android_rom_lineageos.rc](android_rom_lineageos.rc)  - Ready for standalone import
    ```Shell
    source <(curl -Ls https://github.com/AdrianDC/android_shell_tools/raw/master/android_remotes.rc)
    source <(curl -Ls https://github.com/AdrianDC/android_shell_tools/raw/master/android_rom_projects.rc)
    source <(curl -Ls https://github.com/AdrianDC/android_shell_tools/raw/master/android_rom_lineageos.rc)
    ```
  * [**lineagepatcher** (Function)](android_rom_lineageos.rc): *lineagepatcher [specific_paths] **(LineageOS WiP Patcher)***
  * [**lineagerebaser** (Function)](android_rom_lineageos.rc): *lineagerebaser [specific_paths] **(LineageOS Devices Rebaser)***
  * [**lineagewebjekyll** (Function)](android_rom_lineageos.rc): *lineagewebjekyll [bool_install] **(Jekyll web helper)***

---
* #### Source: [android_rom_lineageos_sony8996.rc](android_rom_lineageos_sony8996.rc)  - Ready for standalone import
    ```Shell
    source <(curl -Ls https://github.com/AdrianDC/android_shell_tools/raw/master/android_remotes.rc)
    source <(curl -Ls https://github.com/AdrianDC/android_shell_tools/raw/master/android_rom_projects.rc)
    source <(curl -Ls https://github.com/AdrianDC/android_shell_tools/raw/master/android_rom_lineageos_sony8996.rc)
    ```
  * [**lineage8996patcher** (Function)](android_rom_lineageos_sony8996.rc): *lineage8996patcher [specific_paths] **(LineageOS Sony 8996 Patcher)***

---
* #### Source: [android_rom_lineageos_sonysodp.rc](android_rom_lineageos_sonysodp.rc)  - Ready for standalone import
    ```Shell
    source <(curl -Ls https://github.com/AdrianDC/android_shell_tools/raw/master/android_remotes.rc)
    source <(curl -Ls https://github.com/AdrianDC/android_shell_tools/raw/master/android_rom_projects.rc)
    source <(curl -Ls https://github.com/AdrianDC/android_shell_tools/raw/master/android_rom_lineageos_sonysodp.rc)
    ```
  * [**lineagesodppatcher** (Function)](android_rom_lineageos_sonysodp.rc): *lineagesodppatcher [specific_paths] **(LineageOS SONY SODP Patcher)***
  * [**lineagesodprebaser** (Function)](android_rom_lineageos_sonysodp.rc): *lineagesodprebaser [specific_paths] **(LineageOS SONY SODP Rebaser)***

---
* #### Source: [android_rom_projects.rc](android_rom_projects.rc)
  * [**gitbranchpusher** (Function)](android_rom_projects.rc): *gitbranchpusher [y] **(Push to project specific branch)***
  * [**androidprojectpatcher** (Function)](android_rom_projects.rc): *androidprojectpatcher &lt;project_name&gt; &lt;project_tag&gt; ["project paths"] [specific_path]*
  * [**androidprojectrebaser** (Function)](android_rom_projects.rc): *androidprojectrebaser &lt;upstream_repository_if_not_origin&gt; &lt;project_branch&gt; &lt;"project_paths::name::branch"&gt; [specific_path]*

---
* #### Source: [android_shortcuts.rc](android_shortcuts.rc)
  * [**cdd** (Function)](android_shortcuts.rc): *cdd [device_name] **(Access device sources)***
  * [**cdman** (Function)](android_shortcuts.rc): *cdman **(Access manifests path)***
  * [**toout** (Function)](android_shortcuts.rc): *toout [device_name] **(Get device build output path)***
  * [**cdout** (Function)](android_shortcuts.rc): *cdout [device_name] **(Access device build output path)***
  * [**getand** (Function)](android_shortcuts.rc): *getand **(Get AndroidDev drive)***
  * [**torompaths** (Function)](android_shortcuts.rc): *torompaths &lt;rom_name&gt; [device] **(Get ROM device variant path)***
  * [**toaosp** (Function)](android_shortcuts.rc): *torompaths 'AOSP' "${1}"*
  * [**tolineage** (Function)](android_shortcuts.rc): *torompaths 'LineageOS' "${1}"*
  * [**toaospcaf** (Function)](android_shortcuts.rc): *torompaths 'AOSP-CAF' "${1}"*
  * [**tomultirom** (Function)](android_shortcuts.rc): *torompaths 'MultiROM' "${1}"*
  * [**torr** (Function)](android_shortcuts.rc): *torompaths 'ResurrectionRemix' "${1}"*
  * [**totwrp** (Function)](android_shortcuts.rc): *torompaths 'TWRP' "${1}"*
  * [**cdaosp** (Function)](android_shortcuts.rc): *cd $(toaosp ${1})*
  * [**cdl** (Function)](android_shortcuts.rc): *cd $(tolineage ${1})*
  * [**cdlineage** (Function)](android_shortcuts.rc): *cd $(tolineage ${1})*
  * [**cdaospcaf** (Function)](android_shortcuts.rc): *cd $(toaospcaf)*
  * [**cdmultirom** (Function)](android_shortcuts.rc): *cd $(tomultirom)*
  * [**cdrr** (Function)](android_shortcuts.rc): *cd $(torr ${1})*
  * [**cdtwrp** (Function)](android_shortcuts.rc): *cd $(totwrp)*
  * [**cdand** (Function)](android_shortcuts.rc): *cd $(getand)*
  * [**cda** (Function)](android_shortcuts.rc): *cdlineage huashan*
  * [**getbash** (Function)](android_shortcuts.rc): *echo ${bash_android_dir}*
  * [**cdbash** (Function)](android_shortcuts.rc): *cd $(getbash)*
  * [**cddesk** (Function)](android_shortcuts.rc): *cd "$(xdg-user-dir DESKTOP)"*
  * [**cddev** (Function)](android_shortcuts.rc): *cd $(getand)/Development/${1}*
  * [**cddevaosp** (Function)](android_shortcuts.rc): *cd $(getand)/Development/aosp_*${1}*
  * [**cddevlineage** (Function)](android_shortcuts.rc): *cd $(getand)/Development/lineage_*${1}*
  * [**cddevmrom** (Function)](android_shortcuts.rc): *cd $(getand)/Development/multirom_development_sony*
  * [**cddevtwrp** (Function)](android_shortcuts.rc): *cd $(getand)/Development/twrp_development_sony*
  * [**cdref** (Function)](android_shortcuts.rc): *cd $(getand)/References/${1}*
  * [**cdrefapk** (Function)](android_shortcuts.rc): *cd $(getand)/References/apk*
  * [**adbapks** (Function)](android_shortcuts.rc): *cdrefapk; adbapkinstall*
  * [**cdandfiles** (Function)](android_shortcuts.rc): *cd "${ANDROID_FILES_PATH}/"*
  * [**impaospcaf** (Function)](android_shortcuts.rc): *rsync -arv --delete --delete-after $(toaospcaf ${1}) ./${1}*
  * [**implineage** (Function)](android_shortcuts.rc): *rsync -arv --delete --delete-after $(tolineage ${1}) ./${1}*
  * [**meldaosp** (Function)](android_shortcuts.rc): *meld ./${1} $(toaosp ${1})*
  * [**meldaospsony** (Function)](android_shortcuts.rc): *meld ./${1} $(toaosp sony ${1})*
  * [**meldaospcaf** (Function)](android_shortcuts.rc): *meld ./${1} $(toaospcaf ${1})*
  * [**meldlineage** (Function)](android_shortcuts.rc): *meld ./${1} $(tolineage ${1})*
  * [**meldmrom** (Function)](android_shortcuts.rc): *meld ./${1} $(tomultirom ${1})*
  * [**meldtwrp** (Function)](android_shortcuts.rc): *meld ./${1} $(totwrp ${1})*
  * [**nout** (Function)](android_shortcuts.rc): *xdg-open $(toout ${1})*
  * [**aospsyncall** (Function)](android_shortcuts.rc): *reporeferencedaosp "reposy"*
  * [**lineagesyncall** (Function)](android_shortcuts.rc): *reporeferencedlineage "reposy"*
  * [**cdspdev** (Function)](android_shortcuts.rc): *cd $(echo "$(pwd)" | sed 's/(.*)Android([^/]*/[^/]*).*/1Android2/device/sony/huashan/g')*
  * [**cdspker** (Function)](android_shortcuts.rc): *cd $(echo "$(pwd)" | sed 's/(.*)Android([^/]*/[^/]*).*/1Android2/kernel/sony/msm8960t/g')*
  * [**cdblueker** (Function)](android_shortcuts.rc): *cd $(echo "$(pwd)" | sed 's/(.*)Android([^/]*/[^/]*).*/1Android2/kernel/sony/msm8x60/g')*
  * [**cdvendsony** (Function)](android_shortcuts.rc): *cd $(echo "$(pwd)" | sed 's/(.*)Android([^/]*/[^/]*).*/1Android2/vendor/sony/g')*
  * [**meldblue** (Function)](android_shortcuts.rc): *meld ./${1} ../blue-common/${1}*
  * [**meldril** (Function)](android_shortcuts.rc): *meldril [bool_caf] **(Compare device to hardware/{ril|ril-caf})***
  * [**cdmromboot** (Function)](android_shortcuts.rc): *croot; cd ./system/extras/libbootimg/*
  * [**cdmromcore** (Function)](android_shortcuts.rc): *croot; cd ./system/extras/multirom/*
  * [**cdrecovery** (Function)](android_shortcuts.rc): *croot; cd ./bootable/recovery/*

---
* #### Source: [android_tools.rc](android_tools.rc)
  * [**binaryeditor** (Function)](android_tools.rc): *binaryeditor &lt;patternsearch&gt; [binariespath] [replacement]*
  * [**librarieshunter** (Function)](android_tools.rc): *librarieshunter &lt;binariespath&gt;*
  * [**haste** (Function)](android_tools.rc): *haste &lt;file&gt; or | haste **(Share hastebin logs)***
  * [**overlaycompare** (Function)](android_tools.rc): *overlaycompare &lt;overlay_file_path&gt;*

---
* #### Source: [android_uploads.rc](android_uploads.rc)
  * [**fileupl** (Function)](android_uploads.rc): *fileupl &lt;file_path&gt; [target_folder]*
  * [**fastupl** (Function)](android_uploads.rc): *fastupl &lt;device_name&gt; [none/zip/bootimage] **(Make zip and upload)***
  * [**mmmupl** (Function)](android_uploads.rc): *mmmupl &lt;package_or_path&gt; [bool_partial_build] **(Make zip and upload)***
  * [**devuplboot** (Function)](android_uploads.rc): *devuplboot &lt;device&gt; **(Upload ROM bootimage)***
  * [**devuplrom** (Function)](android_uploads.rc): *devuplrom &lt;device&gt; [folder_path] **(Upload ROM build)***
  * [**pushbrom** (Function)](android_uploads.rc): *pushbrom &lt;device_name&gt; [rom_name] **(Notify build success)***
  * [**fileget** (Function)](android_uploads.rc): *fileget &lt;remote_path&gt; [boot_remove_remote] **(Download from MEGA.nz)***
  * [**androidfilesadd** (Function)](android_uploads.rc): *androidfilesadd &lt;file_path&gt; &lt;target_folder&gt; **(Add file to AndroidFiles)***
  * [**androidfilessync** (Function)](android_uploads.rc): *androidfilessync &lt;--upload/--download&gt; **(Sync AndroidFiles folder)***
  * [**androidfilesopen** (Function)](android_uploads.rc): *androidfilesopen **(Open AndroidFiles folder)***

---
* #### Source: [megatools_mirror.rc](megatools_mirror.rc)
  * [**megamirror** (Function)](megatools_mirror.rc): *megamirror &lt;local_folder&gt; &lt;remote_folder&gt; &lt;--upload/--download&gt; [--copy,-y/-n]*

---
* #### Source: [megatools_reload.rc](megatools_reload.rc)
  * [**meganzreload** (Function)](megatools_reload.rc): *meganzreload **(Reload MEGA.nz account and keys)***

---
* #### Automatically generated by [shtoolsreadme](android_bash.rc) for [android_shell_tools](README.md)
<!-- Functions End -->
