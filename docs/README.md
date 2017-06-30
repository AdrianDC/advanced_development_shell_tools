# Android Development Shell Tools

 * Project created by [Adrian DC](https://github.com/AdrianDC) - 2015-2017

 * XDA-Developers thread for this project : [Android Development Shell Tools](http://forum.xda-developers.com/-/-/-t3622382)

 * The 'android_development_shell_tools' is a project meant to provide
   <br />
   multiple advanced functions and shortcuts to ease Android development

 * The sources written and shared here are either meant to be used as they are,
   <br />
   or to serve as a reference for commands and functions an Android developer needs

 * To keep a local sync of 'android_development_shell_tools' updated with upstream changes,
   <br />
   simply run the *`shtoolssync`* command and the updates will be downloaded

 * Scripts flagged "Standalone Import Ready" and starting with *`source <(curl -Ls...`*
   <br />
   are able to be directly sourced through the provided commands in any terminal
   <br />
   without the need of this project being synced locally or loaded in a root context

 * The "extensions/" folder can hold self-coded scripts folders based on the scripts from
   <br />
   'android_development_shell_tools' and be included along the regular ones.
   <br />
   These scripts will not be lost with 'shtoolssync' and will stay in "extensions/".
   <br />
   *(Keeping a copy or symlinking extensions scripts is recommended for safety)*

<br />

### [ Permanent installation for terminals ]
 * Open the `~/.bashrc` file
 * Adapt and add the following lines:
   ```Shell
   export ANDROID_DEV_DRIVE=/media/../AndroidDev;
   source "/.../android_development_shell_tools.rc";
   ```

<br />

<!-- Functions Start -->
### [&nbsp;Documentation: [android_development_shell_tools.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc)&nbsp;]
  * [**shtoolsup** *<b>\[Reloads android_development_shell_tools scripts\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc)
  * [**shtoolsget** *<b>\[Get android_development_shell_tools path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc)
  * [**shtoolscd** *<b>\[Access android_development_shell_tools path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc)
  * [**shtoolse** *<b>\[Direct access to related sources\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc) : *shtoolse &lt;words&gt; &lt;to&gt; &lt;search&gt;*
  * [**shtoolssync** *<b>\[Download new android_development_shell_tools changes\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc)
  * [**shtoolspush** *<b>\[Commit new changes to android_development_shell_tools\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc)
  * [**shtoolsamend** *<b>\[Amend new changes to android_development_shell_tools\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc)
  * [**shtools** *<b>\[Entrypoint menu to android_development_shell_tools\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc)
  * [**shtoolsdiff** *<b>\[Compare with upstream android_development_shell_tools\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc)
  * [**shtoolslog** *<b>\[Display android_development_shell_tools history\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc)
  * [**shtoolsreset** *<b>\[Reset project to remote HEAD\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc)
  * [**shtoolsmaster** *<b>\[Switch android_development_shell_tools to master branch\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc)
  * [**shtoolsstaging** *<b>\[Switch android_development_shell_tools to staging branch\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc)
  * [**shtoolsforum** *<b>\[Refresh README.forum project presentation\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc)
  * [**shtoolsreadme** *<b>\[Refresh README.md functions usages\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc)

---
### [&nbsp;Documentation: [android_adb_assets.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc)&nbsp;]
  * [**adbdatabase** *<b>\[Android sqlite3 database opener\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc) : *adbdatabase &lt;/data/.../sqlite.db&gt;*
  * [**sepaud** *<b>\[Logs sepolicy analyzer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc) : *sepaud &lt;logs_file&gt;*
  * [**adbintents** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc) : *adb shell dumpsys package r &gt; intents.txt*
  * [**adbcamera** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc) : *adb shell pm enable com.android.camera2/com.android.camera.CameraLauncher; alias adblkl='adb root; adb wait-for-device; adb shell killall zigote; adbl*
  * [**adbkp** *<b>\[Kill process by name\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc) : *adbkp &lt;process_name&gt;*
  * [**adbpk** *<b>\[Android mediaserver debug logger\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc)
  * [**adbms** *<b>\[Android mediaserver debug stracer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc)
  * [**adblibs** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc) : *adb shell grep -air "${1}" ${2:-/system/lib/}*
  * [**ndkstack** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc) : *ndk-stack -sym ${ANDROID_DEV_DRIVE}/out/target/product/huashan/symbols -dump*
  * [**adbwtch** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc) : *adbr; while [ 1 ]; do adb shell cat "${1}"; done*
  * [**adbdu** *<b>\[Android /data/ sizes study\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc)
  * [**adbpropradiolog** *<b>\[Radio debug property overrider\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc) : *adbpropradiolog &lt;value&gt;*
  * [**adbalsa** *<b>\[Audio cards advanced study\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc)

---
### [&nbsp;Documentation: [android_adb_debug.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_debug.rc)&nbsp;]
  * [**adbst** *<b>\[strace\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_debug.rc) : *adbst &lt;process_name&gt; [bool_get_root] [parameters]*
  * [**adbstf** *<b>\[Followed strace\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_debug.rc) : *adbstf &lt;process_name&gt; [bool_get_root]*

---
### [&nbsp;Documentation: [android_adb_flash.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_flash.rc)  - Standalone Import Ready&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_devices.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_adb_tools.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_adb_flash.rc)
  ```
  * [**adbbootdump** *<b>\[Dump bootimage from device\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_flash.rc)
  * [**adbbootcut** *<b>\[Trim bootimage dump\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_flash.rc) : *adbbootcut &lt;file_path&gt;*
  * [**adbrecoveryinstall** *<b>\[Inject and reboot recovery\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_flash.rc) : *adbrecoveryinstall &lt;file_path&gt;*

---
### [&nbsp;Documentation: [android_adb_installers.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc)  - Standalone Import Ready&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_adb_tools.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_adb_installers.rc)
  ```
  * [**adbpushfile** *<b>\[Push files through adb\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc) : *adbpushfile &lt;file_path&gt; &lt;file_target&gt;*
  * [**adbif** *<b>\[Modules build listener and installed\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc) : *adbif &lt;command...&gt;*
  * [**adbil** *<b>\[Modules build listener and lister\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc) : *adbil &lt;command...&gt;*
  * [**adbi** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc) : *adbro; adbif*
  * [**adbpf** *<b>\[Advanced recursive adb files pusher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc) : *adbpf &lt;file_paths&gt;*
  * [**adbp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc) : *adbro; adbpf*
  * [**adbpu** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc) : *adbro; adbpushfile*
  * [**adbside** *<b>\[adb sideload helper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc) : *adbside &lt;file_zip&gt; [boot_reboot]*
  * [**adbu** *<b>\[Force optimization of a package\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc) : *adbu &lt;package_name&gt;*
  * [**adbgitpf** *<b>\[Push files through adb from commit\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc) : *adbgitpf &lt;commit_sha1&gt;*
  * [**adbpmrom** *<b>\[MultiROM file pusher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc) : *adbpmrom &lt;file&gt;*
  * [**adbpmromenc** *<b>\[MultiROM encryption file pusher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc) : *adbpmromenc &lt;file&gt;*
  * [**adbapkinstall** *<b>\[Install all available apk files\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc)

---
### [&nbsp;Documentation: [android_adb_logs.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc)&nbsp;]
  * [**adbl** *<b>\[adb Logcat helper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *adbl [all/crash/events/main/radio/system] [file_output] [bool_clean]*
  * [**adbcl** *<b>\[Logcat output cleaner\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *adbcl [file_adb.log]*
  * [**adbstcl** *<b>\[strace output cleaner\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *adbstcl [file_adb.log]*
  * [**adbld** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *cls; adbro; printf "" &gt;adb.data; adb shell cat /data/logcat.txt \| tee -a adb.data*
  * [**adblr** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *adbl radio*
  * [**adblb** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *while [ 1 ]; do cls; printf "" &gt;adb.log; adb logcat -v audit2allow *:V \| tee -a adb.log*
  * [**adblc** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *adb logcat -c; adbl*
  * [**adbk** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *adbro; printf "" &gt;kmsg; adb shell cat /proc/kmsg \| tee -a kmsg*
  * [**adbdm** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *adbro; printf "" &gt;dmesg; adb shell dmesg \| tee -a dmesg*
  * [**adbkd** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *printf "" &gt;kmsg; adb shell cat /proc/kmsg \| tee -a kmsg*
  * [**adbkl** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *cls; adbro; printf "" &gt;last_kmsg; adb shell cat /proc/last_kmsg \| tee -a last_kmsg*
  * [**adbkld** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *cls; printf "" &gt;last_kmsg; adb shell cat /proc/last_kmsg \| tee -a last_kmsg*
  * [**adbpl** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *cls; adbro; printf "" &gt;last_kmsg; adb shell cat /sys/fs/pstore/console-ramoops \| tee -a last_kmsg*
  * [**adbpld** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *cls; printf "" &gt;last_kmsg; adb shell cat /sys/fs/pstore/console-ramoops \| tee -a last_kmsg*
  * [**adbrl** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *cls; printf "" &gt;recovery_log; adb shell cat /tmp/recovery.log \| tee -a recovery_log*
  * [**adbse** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *adbro; printf "" &gt;kmsg; adb shell cat /proc/kmsg \| tee -a kmsg; sepaud kmsg*
  * [**adbdumpsensors** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *adb shell dumpsys sensorservice*
  * [**adbsel** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *adbkl; sepaud kmsg*
  * [**adblf** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *adb logcat -v audit2allow*
  * [**adblh** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *adb logcat -b events -b main -b radio \| highlight*
  * [**adbtrampoline** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *adb shell "dmesg \| grep -i trampoline*
  * [**adbdcln** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *cat ${1} \| cut -d']' -f 2- \| tee ${1}.clean*
  * [**adblcln** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *cat ${1} \| cut -c 32- \| tee ${1}.clean*
  * [**adbkcln** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *cat ${1} \| cut -c 15- \| tee ${1}.clean*
  * [**adbbootchart** *<b>\[Bootchart debug helper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc)

---
### [&nbsp;Documentation: [android_adb_multirom.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_multirom.rc)&nbsp;]
  * [**adbmromlist** *<b>\[List available MultiROM installations\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_multirom.rc)
  * [**adbmromselect** *<b>\[Select MultiROM installation for path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_multirom.rc)
  * [**adbmrominjector** *<b>\[MultiROM kernel image injector\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_multirom.rc) : *adbmrominjector &lt;kernelpath&gt;*
  * [**adbmromautoboot** *<b>\[MultiROM autoboot selection\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_multirom.rc)

---
### [&nbsp;Documentation: [android_adb_shortcuts.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc)  - Standalone Import Ready&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_adb_shortcuts.rc)
  ```
  * [**adbs** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell*
  * [**adbdf** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell df -H*
  * [**adbpo** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell reboot -p*
  * [**adbrb** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb reboot bootloader*
  * [**adbre** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb reboot*
  * [**adbrh** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb ${1} shell setprop ctl.restart zygote*
  * [**adbrr** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb reboot recovery*
  * [**adbsl** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell ls -l*
  * [**adbslz** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell ls -lZ*
  * [**adbsc** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell cat*
  * [**adbsg** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell getprop*
  * [**adbw** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb wait-for-device*
  * [**adbsw** *<b>\[Write a string to path through adb\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adbsw &lt;"data"&gt; &lt;path&gt;*
  * [**adbblkp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell ls -l /dev/block/bootdevice/by-name/*
  * [**adbfotarandom** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb root; adb shell dd if=/dev/random of=/dev/block/platform/msm_sdcc.1/by-name/FOTAKernel*
  * [**adbfotazero** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb root; adb shell dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/FOTAKernel*
  * [**adbmountcache** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell mount -t ext4 /dev/block/platform/msm_sdcc.1/by-name/Cache /cache*
  * [**adbmountdata** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell mount -t ext4 /dev/block/platform/msm_sdcc.1/by-name/Userdata /data*
  * [**adbmountmicrosd** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell mkdir -p /storage/ext; adb shell mount -t ext4 /dev/block/mmcblk1p1 /storage/ext*
  * [**adbsgdisk** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell sgdisk --print /dev/block/mmcblk0*
  * [**adbumountcache** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell umount /cache*
  * [**adbumountdata** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell umount /data*
  * [**adbumountmicrosd** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell umount /storage/ext*
  * [**adbmount** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adbmountcache; adbmountdata; adbmountmicrosd*
  * [**adbumount** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adbumountcache; adbumountdata; adbumountmicrosd*
  * [**adbinfomem** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell dumpsys meminfo*
  * [**adbrcbin** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell restorecon -R /sbin*
  * [**adbemergencycalls** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell setprop ril.ecclist*
  * [**adbemergencylist** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell getprop ril.ecclist*
  * [**adbservices** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell service list*

---
### [&nbsp;Documentation: [android_adb_syncer.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_syncer.rc)  - Standalone Import Ready&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_adb_syncer.rc)
  ```
  * [**adbpushsync** *<b>\[Folders adb push syncer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_syncer.rc) : *adbpushsync &lt;local_path&gt; &lt;target_path&gt;*

---
### [&nbsp;Documentation: [android_adb_tools.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc)  - Standalone Import Ready&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_linux.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_adb_tools.rc)
  ```
  * [**adbscr** *<b>\[Take a screenshot from connected device\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc)
  * [**adbr** *<b>\[adb root and remount rw system\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc)
  * [**adbro** *<b>\[Verified adb root and remount rw system\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc)
  * [**adbroot** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc) : *adb kill-server; sudo adb start-server; sudo adb root; sudo adb wait-for-device; sudo adb remount*
  * [**adbsudo** *<b>\[ADB sudo toggle helper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc)
  * [**adbcmd** *<b>\[Return adb command based on alias\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc)
  * [**adbrstock** *<b>\[Stock ROM adb root access\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc)
  * [**adbsu** *<b>\[Run on root adb shell\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc) : *adbsu &lt;command...&gt;*
  * [**adbco** *<b>\[Helper for adb network access\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc) : *adbco [ipaddress_once]*
  * [**adbedit** *<b>\[Edit adb file, default on /system/build.prop\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc) : *adbedit [file_path]*
  * [**adbinputs** *<b>\[Dump all input devices\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc)
  * [**adbreadevents** *<b>\[Read input events\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc) : *adbreadevents &lt;event_number&gt;*

---
### [&nbsp;Documentation: [android_adb_updater.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_updater.rc)  - Standalone Import Ready&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_adb_updater.rc)
  ```
  * [**adbupdate** *<b>\[adb binary update from upstream\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_updater.rc)

---
### [&nbsp;Documentation: [android_changelog.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_changelog.rc)&nbsp;]
  * [**repochangelog** *<b>\[Generate ROM changelogs\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_changelog.rc) : *repochangelog &lt;days_count&gt; [project1_path,project2_path,...]*

---
### [&nbsp;Documentation: [android_devices.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_devices.rc)&nbsp;]
  * [**androiddevicestarget** *<b>\[Devices targets mapper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_devices.rc) : *androiddevicestarget [boot/system/...] [device]*
  * [**codenametotarget** *<b>\[Codename to build target\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_devices.rc) : *codenametotarget &lt;codename&gt;*
  * [**repogetdevice** *<b>\[Detect device name from repo environment\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_devices.rc)

---
### [&nbsp;Documentation: [android_edit.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_edit.rc)&nbsp;]
  * [**editreplacematch** *<b>\[Edit by replacing matches\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_edit.rc) : *editreplacematch &lt;"match_line"&gt; &lt;"to_write"&gt; &lt;"files"&gt;*
  * [**editremovematch** *<b>\[Edit by removing matches\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_edit.rc) : *editremovematch &lt;"match_line"&gt; &lt;"files"&gt;*
  * [**editinsertabove** *<b>\[Edit by inserting above\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_edit.rc) : *editinsertabove &lt;"match_line"&gt; &lt;"to_insert"&gt; &lt;"files"&gt;*
  * [**editinsertbelow** *<b>\[Edit by inserting below\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_edit.rc) : *editinsertbelow &lt;"match_line"&gt; &lt;"to_insert"&gt; &lt;"files"&gt;*
  * [**editreplacemultiline** *<b>\[Edit by replacing multiple lines\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_edit.rc) : *editreplacemultiline &lt;"match_first"&gt; &lt;"match_last"&gt; &lt;"replace"&gt; &lt;"files"&gt;*

---
### [&nbsp;Documentation: [android_gerrit.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc)  - Standalone Import Ready&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_gerrit.rc)
  ```
  * [**gerritreview** *<b>\[Gerrit review uploader\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview &lt;gerrit_ssh_or_http&gt; &lt;project_name_or_.&gt; &lt;drafts/for/heads&gt; [branch]*
  * [**gerritusername** *<b>\[Gerrit username getter\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc)
  * [**gitpr** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview ssh://$(gerritusername)@review.lineageos.org:29418 LineageOS for*
  * [**gitprh** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview http://review.lineageos.org LineageOS for*
  * [**gitprd** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview ssh://$(gerritusername)@review.lineageos.org:29418 LineageOS drafts*
  * [**gitprdh** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview http://review.lineageos.org LineageOS drafts*
  * [**gitpg** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview ssh://$(gerritusername)@review.lineageos.org:29418 LineageOS heads*
  * [**gitpgh** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview http://review.lineageos.org LineageOS heads*
  * [**gitprg** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gitpr; gitpg*
  * [**gitprgy** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *printf "ynyn" \| gitpr; printf "yny" \| gitpg*
  * [**gitpraosp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview https://android.googlesource.com aosp for*
  * [**gitpraospma** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview https://android.googlesource.com aosp for master*
  * [**gitprdaosp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview https://android.googlesource.com aosp drafts*
  * [**gitprdaospma** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview https://android.googlesource.com aosp drafts master*
  * [**gitpraicp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview ssh://$(gerritusername)@gerrit.aicp-rom.com:29418 AICP for n7.1*
  * [**gitprhaicp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview http://gerrit.aicp-rom.com AICP for n7.1*
  * [**gitprdaicp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview ssh://$(gerritusername)@gerrit.aicp-rom.com:29418 AICP drafts n7.1*
  * [**gitprdhaicp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview http://gerrit.aicp-rom.com AICP drafts n7.1*
  * [**gitpgaicp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview ssh://$(gerritusername)@gerrit.aicp-rom.com:29418 AICP heads n7.1*
  * [**gitpghaicp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview http://gerrit.aicp-rom.com AICP heads n7.1*
  * [**gitprgaicp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gitpraicp; gitpgaicp*
  * [**gitprghaicp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gitprhaicp; gitpghaicp*
  * [**gitpr7** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview ssh://radian.dc@review.msm7x30.org:29418 LegacyXperia for*
  * [**gitpr7h** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview http://review.msm7x30.org LegacyXperia for*
  * [**gitpr7d** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview ssh://radian.dc@review.msm7x30.org:29418 LegacyXperia drafts*
  * [**gitpr7dh** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview http://review.msm7x30.org LegacyXperia drafts*
  * [**gitpromni** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview ssh://$(gerritusername)@gerrit.omnirom.org:29418 . for android-7.1*
  * [**gitprhomni** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview http://gerrit.omnirom.org . for android-7.1*
  * [**gitprdomni** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview ssh://$(gerritusername)@gerrit.omnirom.org:29418 . drafts android-7.1*
  * [**gitprdhomni** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview http://gerrit.omnirom.org . drafts android-7.1*
  * [**gitprtwrp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview ssh://$(gerritusername)@gerrit.twrp.me:29418 . for android-6.0*
  * [**gitprdtwrp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview ssh://$(gerritusername)@gerrit.twrp.me:29418 . drafts android-6.0*

---
### [&nbsp;Documentation: [android_gerritssh.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerritssh.rc)  - Standalone Import Ready&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_gerritssh.rc)
  ```
  * [**gerritssh** *<b>\[Advanced Gerrit SSH interface\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerritssh.rc) : *gerritssh [branch] [change_id_reverser]*

---
### [&nbsp;Documentation: [android_git_cleaners.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_cleaners.rc)&nbsp;]
  * [**gits** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_cleaners.rc) : *git stash*
  * [**gitsp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_cleaners.rc) : *git stash -p*
  * [**gitsu** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_cleaners.rc) : *git stash -u*
  * [**gitspop** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_cleaners.rc) : *git stash pop*
  * [**gitcleantags** *<b>\[Cleanup unrequired git tags\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_cleaners.rc) : *gitcleantags &lt;branch_to_keep&gt;*
  * [**gitonebranch** *<b>\[Git remove non-default remote branches\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_cleaners.rc)

---
### [&nbsp;Documentation: [android_git_commit.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc)&nbsp;]
  * [**gitshow** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git show --name-status*
  * [**gitshf** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git show --pretty=full*
  * [**gitshl** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git show --oneline --name-only ${1} \| tail -n +2 \| cut -c $((1+${2:-0}))-*
  * [**gitap** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git add -p*
  * [**gitaa** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git add . -Av*
  * [**gitan** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git add . -An*
  * [**gitanp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git config core.fileMode false; git add -p; git config --unset core.fileMode*
  * [**gite** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *fileedit ${1}; printf ' Done ? [Enter] '; read; git add ${1}*
  * [**gitbd** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git branch -D*
  * [**gitbv** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git fetch ${gitreviewdefault} $(git rev-parse --abbrev-ref HEAD); git branch -vv*
  * [**gitch** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git checkout*
  * [**gitcp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git cherry-pick*
  * [**gitcpc** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git reset; git cherry-pick --continue*
  * [**gitcpa** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *for sha1 in ${@}; do echo ''; echo ${sha1}; git cherry-pick ${sha1}; done*
  * [**gitcpf** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git fetch ${1} ${2}; git cherry-pick FETCH_HEAD*
  * [**gitcpr** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git show ${1} --no-color \| sed "s/${2}/${3}/g" \| patch*
  * [**gitfcp** *<b>\[Git cherry-pick from path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *gitfcp &lt;path&gt; [amount_of_commits]*
  * [**gitc** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git commit $(gitgpgparam)*
  * [**gitcs** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git commit $(gitgpgparam) -s*
  * [**gitca** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git commit $(gitgpgparam) --amend*
  * [**gitcae** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git commit $(gitgpgparam) --amend --no-edit*
  * [**gitcauthor** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git commit $(gitgpgparam) --amend --no-edit --author="$(git config --global --get user.name) &lt;$(git config --global --get user.email)&gt;*
  * [**gitrevert** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git revert $(gitgpgparam) --no-edit*
  * [**gitfix** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *rm -fv .git/COMMIT_EDITMSG*; rm -fv .git/.COMMIT_EDITMSG.swp*
  * [**gitcid** *<b>\[Apply commit-msg hook to commit\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc)
  * [**gitcidupstream** *<b>\[Load commit-msg hook from upstream\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc)
  * [**gitrh** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git reset FETCH_HEAD --hard*
  * [**githd** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git reset HEAD --hard*
  * [**gitcl** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git reset HEAD --hard; git stash -u; git am --abort*
  * [**gitro** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git reset HEAD^ --hard*
  * [**gitsl** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git reset HEAD^; gitap; gitcae*
  * [**gitrl** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git revert HEAD -n; git commit -m "Revert"; git reset HEAD^; git add -p*
  * [**gitri** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git reset HEAD^*
  * [**gitrt** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git reset --hard*

---
### [&nbsp;Documentation: [android_git_config.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_config.rc)&nbsp;]
  * [**githubusername** *<b>\[GitHub username getter\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_config.rc)
  * [**gitrerere** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_config.rc) : *git config --global rerere.enabled*
  * [**gitdiffpermhide** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_config.rc) : *git config core.filemode false*
  * [**gitdiffpermshow** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_config.rc) : *git config core.filemode true*
  * [**gpglist** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_config.rc) : *gpg --list-secret-keys --keyid-format LONG*
  * [**gpgsilent** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_config.rc) : *echo "no-tty" &gt;&gt; ~/.gnupg/gpg.conf*
  * [**gpgenable** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_config.rc) : *git config --global commit.gpgsign true*
  * [**gpgdisable** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_config.rc) : *git config --global commit.gpgsign false*
  * [**gpgsigning** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_config.rc) : *git config --global user.signingkey*
  * [**gitshowsg** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_config.rc) : *git config --global alias.logs "log --show-signature*
  * [**gitpwstore** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_config.rc) : *git config --global credential.helper store*
  * [**githi** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_config.rc) : *git update-index --assume-unchanged*
  * [**gitsh** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_config.rc) : *git update-index --no-assume-unchanged*
  * [**gitgpgparam** *<b>\[Returns the GPG signature flag if enabled\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_config.rc)

---
### [&nbsp;Documentation: [android_git_fetch.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_fetch.rc)&nbsp;]
  * [**gitfetchtreset** *<b>\[Git fetch and reset hard\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_fetch.rc) : *gitfetchtreset [remote] [branch]*
  * [**gitfcu** *<b>\[Git fetch url and reset\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_fetch.rc) : *gitfcu &lt;url&gt; [branch]*
  * [**gitfurl** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_fetch.rc) : *git fetch "${1%/commits/*}" "${1#*/commits/}"*
  * [**gitf** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_fetch.rc) : *git fetch*
  * [**gitfmr** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_fetch.rc) : *git fetch origin; git reset origin/master*
  * [**gitfs** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_fetch.rc) : *git fetch origin; git reset origin/$(git rev-parse --abbrev-ref HEAD); git stash*
  * [**gitfsu** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_fetch.rc) : *git fetch origin; git reset origin/$(git rev-parse --abbrev-ref HEAD); git stash -p*
  * [**gitfgr** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_fetch.rc) : *gitfetchtreset github*
  * [**gitfor** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_fetch.rc) : *gitfetchtreset origin*
  * [**gitforla** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_fetch.rc) : *gitfetchtreset origin aosp/LA.UM.5.5_rb1.10*
  * [**gitfar** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_fetch.rc) : *gitfetchtreset $(githubusername)*

---
### [&nbsp;Documentation: [android_git_history.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_history.rc)&nbsp;]
  * [**gitlo** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_history.rc) : *git log --pretty=oneline*
  * [**gitlod** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_history.rc) : *git log --pretty=oneline --*
  * [**gitloo** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_history.rc) : *git log --pretty=format:"%C(yellow)%h %Cred%ad %Creset%s" --date=short --all --*
  * [**gitlos** *<b>\[Search string in git history\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_history.rc) : *gitlos &lt;path_or_.&gt; ["search string input"] [search_max_count]*
  * [**gitdi** *<b>\[Show git differences status\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_history.rc)
  * [**gitdfs** *<b>\[git diff status of an SHA1\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_history.rc) : *gitdfs &lt;sha1commit&gt;*
  * [**gitdf** *<b>\[git diffs from an SHA1\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_history.rc) : *gitdf &lt;sha1commit&gt; &lt;filepath&gt;*
  * [**gitfindsha1** *<b>\[git search commit by title contents\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_history.rc) : *gitfindsha1 &lt;remote/branch&gt; &lt;"title text to search"&gt;*

---
### [&nbsp;Documentation: [android_git_merge.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_merge.rc)&nbsp;]
  * [**gitmt** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_merge.rc) : *git mergetool*
  * [**gitmte** *<b>\[Merge tool with manual conflicts resolution\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_merge.rc)
  * [**gitmtr** *<b>\[Merge tool with reference project sources\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_merge.rc) : *gitmtr &lt;referenced_path&gt;*

---
### [&nbsp;Documentation: [android_git_pick.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_pick.rc)&nbsp;]
  * [**gitcpu** *<b>\[Git URL commit cherry-picker\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_pick.rc) : *gitcpu &lt;githuburltocommit&gt; [branch]*
  * [**gitmerges** *<b>\[Attempt to merge commit history\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_pick.rc) : *gitmerges &lt;commit_sha1&gt; [count]*
  * [**gitcpo** *<b>\[GitHub origin cherry-picker\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_pick.rc) : *gitcpo &lt;branch&gt; &lt;amount_of_commits&gt;*
  * [**gitcpup** *<b>\[Git URL patch applier\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_pick.rc) : *gitcpup [url]*
  * [**gitcpur** *<b>\[Git URL retargeted patch applier\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_pick.rc) : *gitcpur &lt;url&gt; &lt;search_text&gt; &lt;replace_text&gt;*
  * [**gitcpupprima** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_pick.rc) : *gitcpup "${1}" CORE drivers/staging/prima/CORE*

---
### [&nbsp;Documentation: [android_git_push.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_push.rc)&nbsp;]
  * [**gitpf** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_push.rc) : *git push -f*
  * [**gitpu** *<b>\[Git push to validated remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_push.rc) : *gitpu [remote] [branch] [input]*
  * [**gitpurl** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_push.rc) : *gitpu "${1%/commits/*}" "${1#*/commits/}"*
  * [**gitpa** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_push.rc) : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername)*
  * [**gitpa14** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_push.rc) : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) cm-14.1*
  * [**gitpala** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_push.rc) : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) LA.UM.5.5_rb1.10*
  * [**gitpal** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_push.rc) : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) local_manifests*
  * [**gitpaman** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_push.rc) : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) manifests*
  * [**gitpam** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_push.rc) : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) multirom*
  * [**gitpama** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_push.rc) : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) master*
  * [**gitpanmr** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_push.rc) : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) n-mr1*
  * [**gitpan** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_push.rc) : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) nougat*
  * [**gitpat** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_push.rc) : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) twrp*
  * [**gitpp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_push.rc) : *gitremoteverify project gitrap && gitpu project*
  * [**gitppm** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_push.rc) : *gitremoteverify project false && gitpu project master*

---
### [&nbsp;Documentation: [android_git_rebase.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_rebase.rc)&nbsp;]
  * [**gitra** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_rebase.rc) : *git rebase --abort*
  * [**gitrc** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_rebase.rc) : *git rebase --continue*
  * [**gitre** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_rebase.rc) : *git rebase --edit-todo*
  * [**gitrs** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_rebase.rc) : *git rebase --skip*
  * [**gitrf** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_rebase.rc) : *git rebase ${1}^ -i*
  * [**gitr** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_rebase.rc) : *git rebase HEAD~${1:-5} -i*
  * [**gitrall** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_rebase.rc) : *git rebase -i HEAD~$(($(git rev-list --count HEAD) - 1))*
  * [**gitrfedit** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_rebase.rc) : *GIT_SEQUENCE_EDITOR="sed -i -e 's/pick/edit/g'" git rebase ${1} -i*
  * [**gitredit** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_rebase.rc) : *GIT_SEQUENCE_EDITOR="sed -i -e 's/pick/edit/g'" git rebase HEAD~${1:-5} -i*
  * [**gitrb** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_rebase.rc) : *branch=${1:-$(repogetbranch)}; git fetch github ${branch}; git rebase github/${branch}*
  * [**gitrbo** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_rebase.rc) : *branch=${1:-$(repogetbranch)}; git fetch origin ${branch}; git rebase origin/${branch}*

---
### [&nbsp;Documentation: [android_git_remotes.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_remotes.rc)&nbsp;]
  * [**gitrv** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_remotes.rc) : *git remote -v*
  * [**gitremoteset** *<b>\[Git remote setter\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_remotes.rc) : *gitremoteset &lt;remote_name&gt; &lt;remote_url&gt;*
  * [**gitremoteadaptset** *<b>\[Git remote adapter\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_remotes.rc) : *gitremoteadaptset &lt;remote_name&gt; &lt;remote_github&gt; [prefix_removal] [bool_prefix_android] [bool_underscore_to_dash]*
  * [**gitremoteverify** *<b>\[Git remote verifier\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_remotes.rc) : *gitremoteverify &lt;remote_name&gt; "command_to_run_if_missing"*
  * [**gitraa** *<b>\[Add GitHub Username remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_remotes.rc)
  * [**gitrai** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_remotes.rc) : *gitremoteadaptset 'aicp' 'AICP' 'android_'*
  * [**gitraoo** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_remotes.rc) : *gitremoteadaptset 'origin' "${1}" ''*
  * [**gitraot** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_remotes.rc) : *gitremoteadaptset 'origin' 'TheMuppets' ''*
  * [**gitrat** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_remotes.rc) : *gitremoteadaptset 'twrp' 'TeamWin' ''*
  * [**gitral** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_remotes.rc) : *gitremoteset lineage "${1}"*
  * [**gitraau** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_remotes.rc) : *git remote set-url $(githubusername)*
  * [**gitraou** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_remotes.rc) : *git remote set-url origin*
  * [**gitrao** *<b>\[Add LineageOS origin remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_remotes.rc)
  * [**gitrax** *<b>\[Add XperiaMultiROM xperia remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_remotes.rc)
  * [**gitramd** *<b>\[Add MultiROM-Dev mromdev remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_remotes.rc)
  * [**gitraos** *<b>\[Add sonyxperiadev origin remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_remotes.rc)

---
### [&nbsp;Documentation: [android_git_stats.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc)&nbsp;]
  * [**gitstat** *<b>\[Git history with remote comparator\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc) : *gitstat &lt;remote&gt; &lt;branch&gt; [stats_only]*
  * [**gitst** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc) : *gitremoteverify origin gitrao && gitstat origin cm-14.1*
  * [**gitsto** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc) : *gitremoteverify origin gitrao && gitstat origin $(git rev-parse --abbrev-ref HEAD)*
  * [**gitstom** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc) : *gitremoteverify origin gitrao && gitstat origin master*
  * [**gitsta** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc) : *gitremoteverify $(githubusername) gitraa && gitstat $(githubusername) cm-14.1*
  * [**gitstam** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc) : *gitremoteverify $(githubusername) gitraa && gitstat $(githubusername) master*
  * [**gitstg** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc) : *gitremoteverify github false && gitstat github*
  * [**gitstaosp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc) : *gitremoteverify aosp false && gitstat aosp master*
  * [**gitstsony** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc) : *gitremoteverify origin gitraos && gitstat origin aosp/LA.UM.5.5.r1*
  * [**gitstfa** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc) : *gitrao; gitremoteverify $(githubusername) gitraa && gitstat $(githubusername) cm-14.1 true*

---
### [&nbsp;Documentation: [android_grep.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_grep.rc)  - Standalone Import Ready&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_grep.rc)
  ```
  * [**grepb** *<b>\[Grep through sources\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_grep.rc) : *grepb [inputs]*
  * [**g** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_grep.rc) : *grepb*
  * [**grepbs** *<b>\[Grep through sources and binaries\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_grep.rc) : *grepbs [inputs]*
  * [**gs** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_grep.rc) : *grepbs*
  * [**gck** *<b>\[Grep through kernel configurations\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_grep.rc) : *gck [inputs]*
  * [**gca** *<b>\[Grep through Android makefiles\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_grep.rc) : *gca [inputs]*
  * [**grepi** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_grep.rc) : *grep -ai*
  * [**glc** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_grep.rc) : *GREP_COLORS='fn=1;1' grep --include *.c --include *.cpp --include *.h -anr '.{80,}' .*
  * [**glj** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_grep.rc) : *GREP_COLORS='fn=1;1' grep --include *.java -anr '.{100,}' .*
  * [**gle** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_grep.rc) : *GREP_COLORS='fn=1;1' grep --include *.c --include *.cpp --include *.h --include *.java -anr '.* $' .*
  * [**gcmodules** *<b>\[List all LOCAL_MODULE elements\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_grep.rc)
  * [**stringsparams** *<b>\[Get the strings command parameters for variants\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_grep.rc)

---
### [&nbsp;Documentation: [android_kernel_builders.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_builders.rc)  - Standalone Import Ready&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_kernel_builders.rc)
  ```
  * [**makekernel** *<b>\[Kernel inline compiler\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_builders.rc) : *makekernel [platform_device_to_init / clean / mrproper] [make_parameters]*
  * [**kerneldefconfig** *<b>\[Select defconfig easily\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_builders.rc) : *kerneldefconfig [platform_device]*
  * [**kerneltoolchains** *<b>\[Select toolchains based on ARCH in Android build tree\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_builders.rc)

---
### [&nbsp;Documentation: [android_kernel_defconfig.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_defconfig.rc)  - Standalone Import Ready&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_kernel_defconfig.rc)
  ```
  * [**makedefconf** *<b>\[Advanced defconfig helper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_defconfig.rc) : *makedefconf &lt;device_name&gt; [bool_full_config] [diff_config] [force_config=value]*
  * [**kernelconfigupdater** *<b>\[Kernel config updater\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_defconfig.rc) : *kernelconfigupdater &lt;CONFIG_NAME=VALUE_or_# CONFIG_NAME is not set&gt;*
  * [**makedefconfset** *<b>\[Kernel defconfig configuration setter\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_defconfig.rc) : *makedefconfset &lt;device_name&gt; [force_config=value]*

---
### [&nbsp;Documentation: [android_kernel_editors.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_editors.rc)&nbsp;]
  * [**boottools** *<b>\[Android bootimage editor\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_editors.rc) : *boottools &lt;boot.img&gt;*
  * [**bootelf** *<b>\[Sony ELF 8960 bootimage editor\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_editors.rc) : *bootelf &lt;boot.img&gt;*

---
### [&nbsp;Documentation: [android_kernel_helpers.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_helpers.rc)&nbsp;]
  * [**makekernelinjector** *<b>\[Helper to makekernel with injector zip\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_helpers.rc) : *makekernelinjector &lt;device_names&gt;*

---
### [&nbsp;Documentation: [android_kernel_tools.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc)  - Standalone Import Ready&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_devices.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_adb_tools.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_kernel_tools.rc)
  ```
  * [**fboota** *<b>\[Advanced bootimage builder\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc) : *fboota [fastupl,flash,full,init,inject,push,recovery,sep,unsecure,zip]*
  * [**fboot** *<b>\[fastboot bootimage flashed\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc) : *fboot &lt;bootimage&gt;*
  * [**fboots** *<b>\[fastboot systemimage flashed\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc) : *fboots &lt;system_img&gt;*
  * [**fbootr** *<b>\[Fastboot reboot\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc)
  * [**bootinfo** *<b>\[Bootimage structure and information parser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc) : *bootinfo &lt;boot_img_file&gt;*
  * [**adbbootinfo** *<b>\[Kernel bbootimg analyzer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc)
  * [**adbfotainfo** *<b>\[FOTA bbootimg analyzer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc)
  * [**fbootk** *<b>\[Kernel image to boot partition injector\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc) : *fbootk &lt;kernelpath&gt; [bool_fota]*
  * [**frecovery** *<b>\[Flash recovery with fastboot\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc) : *frecovery &lt;image&gt;*
  * [**adbbootpush** *<b>\[Inject bootimage to partition\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc) : *adbbootpush &lt;image&gt;*
  * [**adbfotapush** *<b>\[Inject FOTA to partition\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc) : *adbfotapush &lt;image&gt;*
  * [**adbrecoverypush** *<b>\[Inject recovery to partition\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc) : *adbrecoverypush &lt;image&gt;*
  * [**kernelinjectorzip** *<b>\[Kernel to injector zip packager\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc) : *kernelinjectorzip &lt;device&gt; &lt;kernel_file_path&gt; [kernel_sources_for_modules]*
  * [**bootzip** *<b>\[Bootimage to zip packager\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc) : *bootzip &lt;device&gt; &lt;boot_img_path&gt; [bool_push_to_device]*
  * [**makesep** *<b>\[Compile sepolicies clean\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc)
  * [**bootimagedebuggable** *<b>\[Bootimage build unsecured patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc) : *bootimagedebuggable &lt;device_product&gt; &lt;true/false&gt;*

---
### [&nbsp;Documentation: [android_linux.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc)&nbsp;]
  * [**bashup** *<b>\[Reload ~/.bashrc\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc)
  * [**bashe** *<b>\[Edit ~/.bashrc\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc)
  * [**cls** *<b>\[Clean terminal screen\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc)
  * [**fileedit** *<b>\[Files editor for most environments\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) : *fileedit &lt;paths&gt;*
  * [**fe** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) : *fileedit*
  * [**diropen** *<b>\[Directory opener for most environments\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) : *diropen &lt;path&gt;*
  * [**toclip** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) : *xclip -selection c*
  * [**findn** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) : *find -name*
  * [**rsynca** *<b>\[Mirror a path to another\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) : *rsynca &lt;path1&gt; &lt;path2&gt;*
  * [**pcinfo** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) : *inxi -Fxz*
  * [**findnewer** *<b>\[Search files newer than a date\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) : *findnewer &lt;20160123&gt;*
  * [**cpioext** *<b>\[Extract cpio file\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) : *cpioext &lt;cpio_file_to_extract&gt;*
  * [**videoresize** *<b>\[Resize video dimensions\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) : *videoresize &lt;video_file&gt;*
  * [**disableautomount** *<b>\[Linux USB automount disabler\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc)
  * [**diffbin** *<b>\[Compare binary files\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) : *diffbin &lt;binary_left&gt; &lt;binary_right&gt; [first_n_lines]*
  * [**netspeed** *<b>\[Display network speeds\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc)
  * [**netspeedtest** *<b>\[Run SpeedTest client\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc)
  * [**drivespeedtest** *<b>\[Run drive write speed test\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) : *drivespeedtest &lt;test_file_path&gt;*
  * [**trimtrees** *<b>\[Hardlink duplicated files with trimtrees from cpansearch.perl.org\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) : *trimtrees &lt;paths&gt;*
  * [**buildlock** *<b>\[Mutex-locked command execution\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) : *buildlock &lt;command...&gt;*
  * [**fileschemesorter** *<b>\[Sort file against scheme file\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) : *fileschemesorter &lt;file_to_sort&gt; &lt;file_reference&gt;*
  * [**mtpmountdisable** *<b>\[Disable MTP automount\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc)
  * [**cleanram** *<b>\[RAM caches cleanup\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc)
  * [**cleanrambuild** *<b>\[RAM caches cleanup\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc)
  * [**cleanramkill** *<b>\[Complete RAM cleanup including "java"\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc)
  * [**networkrestart** *<b>\[Restart network manager\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc)
  * [**pushbsizes** *<b>\[Path sizes in PushBullet notification\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) : *pushbsizes &lt;paths&gt;*
  * [**isdone** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) : *notify-send "Process execution finished !*
  * [**topmem** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) : *top -o %MEM*

---
### [&nbsp;Documentation: [android_pushbullet.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_pushbullet.rc)&nbsp;]
  * [**pushb** *<b>\[PushBullet notification helper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_pushbullet.rc) : *pushb [message]*

---
### [&nbsp;Documentation: [android_release_builders.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_builders.rc)&nbsp;]
  * [**romautorelease** *<b>\[Advanced automated ROM builder\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_builders.rc) : *romautorelease &lt;devicename&gt; &lt;aosp/lineage/lx/caf/rr&gt; [nowipe,j1/j2]*
  * [**autorelease** *<b>\[Helper menu access to autorelease* functions\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_builders.rc)

---
### [&nbsp;Documentation: [android_release_helpers.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_helpers.rc)&nbsp;]
  * [**outdevcl** *<b>\[Advanced ROM output cleaner for rebuilds\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_helpers.rc) : *outdevcl &lt;devicename&gt;*
  * [**noninja** *<b>\[Run command without ninja\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_helpers.rc) : *noninja &lt;command...&gt;*
  * [**mmo** *<b>\[Build module without ninja\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_helpers.rc) : *mmo &lt;command...&gt;*
  * [**mmi** *<b>\[Build & install module without ninja\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_helpers.rc) : *mmi &lt;command...&gt;*
  * [**mmil** *<b>\[Build & list module without ninja\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_helpers.rc) : *mmil &lt;command...&gt;*
  * [**noccache** *<b>\[Run command without CCache\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_helpers.rc) : *noccache &lt;command...&gt;*

---
### [&nbsp;Documentation: [android_release_logs.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_logs.rc)&nbsp;]
  * [**romlogs** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_logs.rc) : *romlogs &lt;device&gt; &lt;rom&gt; [logs_count_(default_200-SUMMARY-*

---
### [&nbsp;Documentation: [android_release_options.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_options.rc)&nbsp;]
  * [**shtools-builds-clean-enable** *<b>\[Enable clean builds option\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_options.rc)
  * [**shtools-builds-clean-disable** *<b>\[Disable clean builds option\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_options.rc)
  * [**shtools-builds-clean-active** *<b>\[Get clean builds option\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_options.rc)
  * [**shtools-builds-cleanram-enable** *<b>\[Enable cleanram builds option\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_options.rc)
  * [**shtools-builds-cleanram-disable** *<b>\[Disable cleanram builds option\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_options.rc)
  * [**shtools-builds-cleanram-active** *<b>\[Get cleanram builds option\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_options.rc)
  * [**shtools-builds-debug-enable** *<b>\[Enable debug builds option\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_options.rc)
  * [**shtools-builds-debug-disable** *<b>\[Disable debug builds option\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_options.rc)
  * [**shtools-builds-debug-active** *<b>\[Get debug builds option\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_options.rc)
  * [**shtools-builds-local-enable** *<b>\[Enable local builds option\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_options.rc)
  * [**shtools-builds-local-disable** *<b>\[Disable local builds option\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_options.rc)
  * [**shtools-builds-local-active** *<b>\[Get local builds option\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_options.rc)
  * [**shtools-builds-nosync-enable** *<b>\[Enable nosync builds option\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_options.rc)
  * [**shtools-builds-nosync-disable** *<b>\[Disable nosync builds option\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_options.rc)
  * [**shtools-builds-nosync-active** *<b>\[Get nosync builds option\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_options.rc)

---
### [&nbsp;Documentation: [android_release_packages.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_packages.rc)&nbsp;]
  * [**signzip** *<b>\[Sign flashable zip\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_packages.rc) : *signzip &lt;zip_to_sign&gt; [signed_output_zip]*
  * [**signapk** *<b>\[Sign apk files\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_packages.rc) : *signapk &lt;apk_to_sign&gt; [signed_output_apk]*
  * [**mmmzip** *<b>\[Build module to flashable zip\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_packages.rc) : *mmmzip &lt;paths_or_modules&gt;*
  * [**systozip** *<b>\[System files to flashable zip\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_packages.rc) : *systozip &lt;files&gt;*
  * [**packzip** *<b>\[Files to flashable zip\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_packages.rc) : *packzip &lt;files&gt;*
  * [**gitzip** *<b>\[Git commit files to flashable zip\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_packages.rc) : *gitzip &lt;commit_sha1&gt;*

---
### [&nbsp;Documentation: [android_repo_builders.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_builders.rc)&nbsp;]
  * [**repotwrp** *<b>\[Advanced builder for TWRP\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_builders.rc) : *repotwrp {device} [nosync,nowipe,outcl,fota,local +fotareboot]*
  * [**repomrom** *<b>\[Advanced builder for MultiROM\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_builders.rc) : *repomrom {device} [nosync,nowipe,outcl,fota,local +fotareboot]*

---
### [&nbsp;Documentation: [android_repo_changes.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_changes.rc)&nbsp;]
  * [**repochanges** *<b>\[Detect all repo projects differences\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_changes.rc) : *repochanges ["ignored_projects"]*

---
### [&nbsp;Documentation: [android_repo_cleaners.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_cleaners.rc)&nbsp;]
  * [**repoprojectscleaner** *<b>\[Run inside an Android repo root\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_cleaners.rc)
  * [**repotagscleaner** *<b>\[Run inside an Android repo root\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_cleaners.rc)
  * [**repoheadscleaner** *<b>\[Cleanup repo projects refs/ contents\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_cleaners.rc)
  * [**reposyrm** *<b>\[Project repo sync with removal\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_cleaners.rc) : *reposyrm &lt;project/relative/path&gt;*
  * [**reposyrmf** *<b>\[Project repo sync with forced removal\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_cleaners.rc) : *reposyrmf &lt;project/relative/path&gt;*
  * [**repocleancache** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_cleaners.rc) : *if [ ! -z "${CCACHE_DIR}" ]; then rm -rfv "${CCACHE_DIR}/"*; fi*

---
### [&nbsp;Documentation: [android_repo_compare.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_compare.rc)&nbsp;]
  * [**repocomparestable** *<b>\[Helper to compare with stable branch\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_compare.rc) : *repocomparestable [stable_ZNH5Y] [github_account_LineageOS] [full_diff]*
  * [**repocompareupstream** *<b>\[Helper to compare with upstream branch\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_compare.rc) : *repocompareupstream [github_account_LineageOS] [full_diff]*
  * [**repocomparetags** *<b>\[Helper to compare with tags\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_compare.rc) : *repocomparetags &lt;tag_to_compare_to_android_branch&gt; [ignore_account_LineageOS] [full_diff]*

---
### [&nbsp;Documentation: [android_repo_helpers.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc)&nbsp;]
  * [**gettop** *<b>\[Get repo root path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc)
  * [**croot** *<b>\[Access repo root path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc)
  * [**repos** *<b>\[Prepare LineageOS device environment\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc) : *repos &lt;device_name&gt;*
  * [**reposaosp** *<b>\[Prepare AOSP device environment\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc) : *reposaosp &lt;device_name&gt;*
  * [**reporoomserv** *<b>\[Manifest and local_manifests editor\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc)
  * [**reposy** *<b>\[Optimized relevant repo sync\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc)
  * [**reposysafe** *<b>\[Safeguarded repo projects sync\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc)
  * [**reposybranch** *<b>\[Individual repo projects sync\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc)
  * [**repoprune** *<b>\[Apply repo-wide prune cleanup\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc)
  * [**reposycl** *<b>\[Cleaned optimized relevant repo sync\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc)
  * [**repocache** *<b>\[CCache watcher and configuration\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc) : *repocache [cache_maximum_size]*
  * [**repogetbranch** *<b>\[Get repo main branch\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc)
  * [**repolistexclude** *<b>\[Get repo list fields to exclude with search\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc) : *repolistexclude [word_to_search]*
  * [**reposwitcher** *<b>\[Helper to switch between local_manifests_* folders\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc)

---
### [&nbsp;Documentation: [android_repo_init.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_init.rc)&nbsp;]
  * [**repoinitaosp** *<b>\[repo init for AOSP\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_init.rc) : *repoinitaosp &lt;android-7.1.2_r{XX}/master&gt; [referenced,clean,shallow,example]*
  * [**repoinitlineage** *<b>\[repo init for LineageOS\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_init.rc) : *repoinitlineage &lt;13.0/14.1&gt; [referenced,clean,shallow,example]*
  * [**repoinitaospall** *<b>\[repo init for referenced AOSP\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_init.rc) : *repoinitaospall &lt;android-7.1.2_r{XX}&gt; [clean]*
  * [**repoinitlineageall** *<b>\[repo init for referenced LineageOS\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_init.rc) : *repoinitlineageall &lt;13.0/14.1&gt; [clean]*
  * [**repoinitrr** *<b>\[repo init for ResurrectionRemix\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_init.rc) : *repoinitrr &lt;nougat&gt; [referenced,clean,shallow]*
  * [**repoinittwrp** *<b>\[repo init for TWRP\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_init.rc) : *repoinittwrp &lt;twrp-{X.X}&gt; [referenced,clean,shallow]*

---
### [&nbsp;Documentation: [android_repo_projects.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_projects.rc)&nbsp;]
  * [**gitrap** *<b>\[Development projects selector\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_projects.rc)
  * [**gitraplineagesony8996** *<b>\[LineageOS Sony 8996 development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_projects.rc)
  * [**gitrapaospsony8960n** *<b>\[AOSP Sony 8960 Nougat development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_projects.rc)
  * [**gitrapaospsony8960o** *<b>\[AOSP Sony 8960 O development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_projects.rc)
  * [**gitrapaospsony8960master** *<b>\[AOSP Sony 8960 Master development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_projects.rc)
  * [**gitrapaospsonysodp** *<b>\[AOSP Sony SODP development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_projects.rc)
  * [**gitrapaospcaf** *<b>\[AOSP-CAF development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_projects.rc)
  * [**gitraplineagesonysodp** *<b>\[LineageOS Sony SODP development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_projects.rc)
  * [**gitrapmultirom** *<b>\[MultiROM Sony development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_projects.rc)
  * [**gitraptwrp** *<b>\[TWRP Sony development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_projects.rc)

---
### [&nbsp;Documentation: [android_repo_referenced.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_referenced.rc)&nbsp;]
  * [**reporeferencedaosp** *<b>\[AOSP referenced repo commands launcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_referenced.rc) : *reporeferencedaosp &lt;"command_to_run"&gt; &lt;"device1 device2 ..."&gt;*
  * [**reporeferencedlineage** *<b>\[LineageOS referenced repo commands launcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_referenced.rc) : *reporeferencedlineage &lt;"command_to_run"&gt; &lt;"device1 device2 ..."&gt;*
  * [**reporefupdate** *<b>\[Upload new projects manifests\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_referenced.rc)
  * [**reporefsync** *<b>\[Download new projects manifests\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_referenced.rc)
  * [**reporeflinker** *<b>\[Helper to symlink local_manifests to Developments\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_referenced.rc)

---
### [&nbsp;Documentation: [android_rom_aicp.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_aicp.rc)&nbsp;]
  * [**gitcpaicp** *<b>\[Automated upstream to AICP device merger\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_aicp.rc)

---
### [&nbsp;Documentation: [android_rom_aospcaf.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_aospcaf.rc)  - Standalone Import Ready&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_git_remotes.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_projects.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_aosp_aospcaf.rc)
  ```
  * [**aospcafpatcher** *<b>\[AOSP-CAF Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_aospcaf.rc) : *aospcafpatcher [specific_paths]*

---
### [&nbsp;Documentation: [android_rom_helpers.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_helpers.rc)&nbsp;]
  * [**rompatcher** *<b>\[Helper menu access to *patcher functions\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_helpers.rc)

---
### [&nbsp;Documentation: [android_rom_lineageos.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_lineageos.rc)  - Standalone Import Ready&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_git_remotes.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_projects.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_lineageos.rc)
  ```
  * [**lineagepatcher** *<b>\[LineageOS WiP Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_lineageos.rc) : *lineagepatcher [specific_paths]*
  * [**lineagewebjekyll** *<b>\[Jekyll web helper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_lineageos.rc) : *lineagewebjekyll [bool_install]*
  * [**lineagecvetracker** *<b>\[CVE tracker instance helper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_lineageos.rc) : *lineagecvetracker [bool_install]*

---
### [&nbsp;Documentation: [android_rom_projects.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_projects.rc)&nbsp;]
  * [**gitbranchpusher** *<b>\[Push to project specific branch\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_projects.rc) : *gitbranchpusher [y/n] [remote_url]*
  * [**androidprojectpaths** *<b>\[Android project remote paths list\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_projects.rc) : *androidprojectpaths &lt;project_name&gt;*
  * [**androidprojectpatcher** *<b>\[Android project patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_projects.rc) : *androidprojectpatcher &lt;project_name&gt; &lt;project_tag&gt; ["project paths"] [specific_path]*
  * [**androidprojectrebaser** *<b>\[Android project rebaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_projects.rc) : *androidprojectrebaser &lt;upstream_repository_if_not_origin&gt; &lt;project_branch&gt; &lt;"project_paths::name::branch"&gt; [specific_path]*
  * [**androidprojectforeach** *<b>\[Android project paths commands runner\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_projects.rc) : *androidprojectforeach &lt;project_name&gt; '&lt;commands&gt;'*

---
### [&nbsp;Documentation: [android_shortcuts.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc)&nbsp;]
  * [**cdd** *<b>\[Access device sources\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cdd &lt;device_name&gt;*
  * [**cdman** *<b>\[Access manifests path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc)
  * [**cdlocman** *<b>\[Access local manifests path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc)
  * [**toout** *<b>\[Get device build output path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *toout &lt;device_name&gt;*
  * [**cdout** *<b>\[Access device build output path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cdout [device_name]*
  * [**getand** *<b>\[Get AndroidDev drive\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc)
  * [**torompaths** *<b>\[Get ROM device variant path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *torompaths &lt;rom_name&gt; [device]*
  * [**pathchanged** *<b>\[Run command and notify path changes\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *pathchanged &lt;command&gt; &lt;parameters&gt;*
  * [**toaosp** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *torompaths 'AOSP' "${1}"*
  * [**tolineage** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *torompaths 'LineageOS' "${1}"*
  * [**toaospcaf** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *torompaths 'AOSP-CAF' "${1}"*
  * [**tomultirom** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *torompaths 'MultiROM' "${1}"*
  * [**torr** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *torompaths 'ResurrectionRemix' "${1}"*
  * [**totwrp** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *torompaths 'TWRP' "${1}"*
  * [**cdaosp** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd $(toaosp ${1})*
  * [**cdl** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd $(tolineage ${1})*
  * [**cdlineage** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd $(tolineage ${1})*
  * [**cdaospcaf** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd $(toaospcaf)*
  * [**cdmultirom** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd $(tomultirom)*
  * [**cdrr** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd $(torr ${1})*
  * [**cdtwrp** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd $(totwrp)*
  * [**cdand** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd $(getand)*
  * [**cddesk** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd "${ANDROID_DESKTOP:-$(xdg-user-dir DESKTOP)}"*
  * [**cddev** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd $(getand)/Development/${1}*
  * [**cddevaosp** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd $(getand)/Development/aosp_*${1}*
  * [**cddevlineage** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd $(getand)/Development/lineage_*${1}*
  * [**cddevmrom** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd $(getand)/Development/multirom_development_sony*
  * [**cddevtwrp** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd $(getand)/Development/twrp_development_sony*
  * [**cdprojects** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd $(getand)/Projects/${1}*
  * [**cdref** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd $(getand)/References/${1}*
  * [**cdrefapk** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd $(getand)/References/apk*
  * [**cdserv** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd $(getand)/Server*
  * [**adbapks** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cdrefapk; adbapkinstall*
  * [**cdandfiles** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd "${ANDROID_FILES_PATH}/"*
  * [**impaospcaf** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *rsync -arv --delete --delete-after $(toaospcaf ${1}) ./${1}*
  * [**implineage** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *rsync -arv --delete --delete-after $(tolineage ${1}) ./${1}*
  * [**cpaosp** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cp -fv ./${1} $(toaosp ${2})/${1}*
  * [**cplineage** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cp -fv ./${1} $(tolineage ${2})/${1}*
  * [**meldaosp** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *meld ./${1} $(toaosp ${2})/${1}*
  * [**meldaospsony** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *meld ./${1} $(toaosp sony)/${1}*
  * [**meldaospcaf** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *meld ./${1} $(toaospcaf)/${1}*
  * [**meldlineage** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *meld ./${1} $(tolineage ${2})/${1}*
  * [**meldmrom** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *meld ./${1} $(tomultirom)/${1}*
  * [**meldtwrp** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *meld ./${1} $(totwrp)/${1}*
  * [**nout** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *diropen $(toout ${1})*
  * [**aospsyncall** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *reporeferencedaosp "reposy"*
  * [**lineagesyncall** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *reporeferencedlineage "reposy"*
  * [**meldril** *<b>\[Compare device to hardware/{ril\|ril-caf}\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *meldril [bool_caf]*
  * [**cdmromboot** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *croot; cd ./system/extras/libbootimg/*
  * [**cdmromcore** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *croot; cd ./system/extras/multirom/*
  * [**cdrecovery** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *croot; cd ./bootable/recovery/*

---
### [&nbsp;Documentation: [android_ssh_remote.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_ssh_remote.rc)&nbsp;]
  * [**sshremote** *<b>\[Get the configured SSH target\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_ssh_remote.rc)
  * [**sshserv** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_ssh_remote.rc) : *ssh $(sshremote)*
  * [**sshsync** *<b>\[Mirror remote server folder\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_ssh_remote.rc) : *sshsync &lt;up/down&gt; &lt;local_path&gt; &lt;remote_path&gt; [params]*

---
### [&nbsp;Documentation: [android_tools.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_tools.rc)  - Standalone Import Ready&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_grep.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_tools.rc)
  ```
  * [**binaryeditor** *<b>\[Binary files parser and editor\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_tools.rc) : *binaryeditor &lt;patternsearch&gt; [binariespath] [replacement]*
  * [**binarysearch** *<b>\[Binary files parser and searcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_tools.rc) : *binarysearch &lt;patternsearch&gt; [binariespath]*
  * [**librarieshunter** *<b>\[Libraries linkage analyzer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_tools.rc) : *librarieshunter &lt;binariespath&gt;*
  * [**haste** *<b>\[Share hastebin logs\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_tools.rc) : *haste &lt;file&gt; or \| haste*
  * [**overlaycompare** *<b>\[Compare device overlays against sources\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_tools.rc) : *overlaycompare &lt;overlay_file_path&gt;*

---
### [&nbsp;Documentation: [android_uploads_basketbuild.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_basketbuild.rc)&nbsp;]
  * [**uploadbasketbuild** *<b>\[File to BasketBuild server uploader\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_basketbuild.rc) : *uploadbasketbuild &lt;file_path&gt; [target_folder]*
  * [**downloadbasketbuild** *<b>\[Download from BasketBuild\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_basketbuild.rc) : *downloadbasketbuild &lt;remote_path&gt;*
  * [**uploadprivatebasketbuild** *<b>\[Upload to private BasketBuild\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_basketbuild.rc) : *uploadprivatebasketbuild &lt;device_name&gt;*

---
### [&nbsp;Documentation: [android_uploads_common.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_common.rc)&nbsp;]
  * [**fileupl** *<b>\[File to release server uploader\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_common.rc) : *fileupl &lt;file_path&gt; [target_folder]*
  * [**fileget** *<b>\[File from release server downloader\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_common.rc) : *fileget &lt;remote_path&gt; [boot_remove_remote]*
  * [**fastupl** *<b>\[Fast private file to server uploader\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_common.rc) : *fastupl &lt;device_name&gt; [none/zip/bootimage]*

---
### [&nbsp;Documentation: [android_uploads_ftp.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_ftp.rc)&nbsp;]
  * [**uploadftp** *<b>\[File to FTP server uploader\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_ftp.rc) : *uploadftp &lt;file_path&gt; [target_folder] [uploadftp_variant]*
  * [**downloadftp** *<b>\[Download from FTP\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_ftp.rc) : *downloadftp &lt;remote_path&gt; [uploadftp_variant]*

---
### [&nbsp;Documentation: [android_uploads_helpers.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_helpers.rc)&nbsp;]
  * [**mmmupl** *<b>\[Make zip and upload\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_helpers.rc) : *mmmupl &lt;package_or_path&gt; [bool_partial_build]*
  * [**devuplboot** *<b>\[Upload ROM bootimage\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_helpers.rc) : *devuplboot &lt;device&gt;*
  * [**devuplrom** *<b>\[Upload ROM build\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_helpers.rc) : *devuplrom &lt;device&gt; [folder_path]*
  * [**pushbrom** *<b>\[Notify build success\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_helpers.rc) : *pushbrom &lt;device_name&gt; [rom_name]*

---
### [&nbsp;Documentation: [android_uploads_local.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_local.rc)&nbsp;]
  * [**androidfilesadd** *<b>\[Add file to AndroidFiles\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_local.rc) : *androidfilesadd &lt;file_path&gt; &lt;target_folder&gt;*
  * [**androidfilessync** *<b>\[Sync AndroidFiles folder\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_local.rc) : *androidfilessync &lt;--upload/--download&gt;*
  * [**androidfilesdownload** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_local.rc) : *androidfilessync --download*
  * [**androidfilesopen** *<b>\[Open AndroidFiles folder\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_local.rc)

---
### [&nbsp;Documentation: [android_uploads_mega.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_mega.rc)&nbsp;]
  * [**uploadmega** *<b>\[Upload to MEGA.nz\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_mega.rc) : *uploadmega &lt;file_path&gt; [target_folder]*
  * [**downloadmega** *<b>\[Download from MEGA.nz\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_mega.rc) : *downloadmega &lt;remote_path&gt; [boot_remove_remote]*
  * [**uploadprivatemega** *<b>\[Upload to private MEGA.nz\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_mega.rc) : *uploadprivatemega &lt;device_name&gt;*

---
### [&nbsp;Documentation: [android_uploads_options.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_options.rc)&nbsp;]
  * [**shtools-uploads-basketbuild-enable** *<b>\[Enable optional BasketBuild uploads\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_options.rc)
  * [**shtools-uploads-basketbuild-disable** *<b>\[Disable optional BasketBuild uploads\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_options.rc)
  * [**shtools-uploads-basketbuild-active** *<b>\[Get optional BasketBuild uploads\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_options.rc)
  * [**shtools-uploads-ftp-enable** *<b>\[Enable optional FTP uploads\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_options.rc)
  * [**shtools-uploads-ftp-disable** *<b>\[Disable optional FTP uploads\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_options.rc)
  * [**shtools-uploads-ftp-active** *<b>\[Get optional FTP uploads\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_options.rc)
  * [**shtools-uploads-mega-enable** *<b>\[Enable optional Mega.nz uploads\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_options.rc)
  * [**shtools-uploads-mega-disable** *<b>\[Disable optional Mega.nz uploads\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_options.rc)
  * [**shtools-uploads-mega-active** *<b>\[Get optional Mega.nz uploads\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_options.rc)

---
### [&nbsp;Documentation: [megatools_mirror.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/megatools_mirror.rc)&nbsp;]
  * [**megamirror** *<b>\[MEGA mirror syncer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/megatools_mirror.rc) : *megamirror &lt;local_folder&gt; &lt;remote_folder&gt; &lt;--upload/--download&gt; [--copy,-y/-n]*

---
### [&nbsp;Documentation: [megatools_reload.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/megatools_reload.rc)&nbsp;]
  * [**meganzreload** *<b>\[Reload Mega.nz account and keys\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/megatools_reload.rc)

---
### [&nbsp;Documentation: [extensions/semc_msm7x30/android_autorelease.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/semc_msm7x30/android_autorelease.rc)&nbsp;]
  * [**autoreleaselegacyxperia** *<b>\[Automated LegacyXperia 7x30 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/semc_msm7x30/android_autorelease.rc) : *autoreleaselegacyxperia [devices] [bool_unpatched]*

---
### [&nbsp;Documentation: [extensions/semc_msm7x30/android_rom_legacyxperia.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/semc_msm7x30/android_rom_legacyxperia.rc)  - Standalone Import Ready&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_kernel_defconfig.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/extensions/semc_msm7x30/android_rom_legacyxperia.rc)
  ```
  * [**lineagelxpatcher** *<b>\[LineageOS LegacyXperia Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/semc_msm7x30/android_rom_legacyxperia.rc) : *lineagelxpatcher [local_manifests_branch]*
  * [**lxrepopick** *<b>\[LineageOS LegacyXperia repopick tool\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/semc_msm7x30/android_rom_legacyxperia.rc) : *lxrepopick &lt;commit_id&gt;*
  * [**lxdefconfig** *<b>\[Edit all lx defconfigs\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/semc_msm7x30/android_rom_legacyxperia.rc)

---
### [&nbsp;Documentation: [extensions/sony_msm8960/android_autorelease.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_autorelease.rc)&nbsp;]
  * [**autoreleaseaospsony8960** *<b>\[Automated AOSP Sony 8960 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_autorelease.rc) : *autoreleaseaospsony8960 [devices]*
  * [**autoreleaselineagesony8960** *<b>\[Automated LineageOS Sony 8960 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_autorelease.rc) : *autoreleaselineagesony8960 [devices]*
  * [**autoreleaserrsony8960** *<b>\[Automated RR Sony 8960 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_autorelease.rc) : *autoreleaserrsony8960 [devices]*
  * [**autoreleasecafsony8960** *<b>\[Automated AOSP-CAF Sony 8960 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_autorelease.rc) : *autoreleasecafsony8960 [devices]*

---
### [&nbsp;Documentation: [extensions/sony_msm8960/android_lineageos.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_lineageos.rc)&nbsp;]
  * [**lineagesony8960rebaser** *<b>\[LineageOS Devices Rebaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_lineageos.rc) : *lineagesony8960rebaser [specific_paths]*

---
### [&nbsp;Documentation: [extensions/sony_msm8960/android_rom_aosp_sony8960.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_rom_aosp_sony8960.rc)  - Standalone Import Ready&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_git_remotes.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_projects.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/extensions/sony_msm8960/android_rom_aosp_sony8960.rc)
  ```
  * [**aospsony8960npatcher** *<b>\[AOSP 8960 Nougat Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_rom_aosp_sony8960.rc) : *aospsony8960npatcher [specific_paths]*
  * [**aospsony8960opatcher** *<b>\[AOSP 8960 O Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_rom_aosp_sony8960.rc) : *aospsony8960opatcher [specific_paths]*
  * [**aospsony8960masterpatcher** *<b>\[AOSP 8960 Master Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_rom_aosp_sony8960.rc) : *aospsony8960masterpatcher [specific_paths]*

---
### [&nbsp;Documentation: [extensions/sony_msm8960/android_shortcuts.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_shortcuts.rc)&nbsp;]
  * [**cdspdev** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_shortcuts.rc) : *cd $(echo "$(pwd)" \| sed 's/(.*)Android([^/]*/[^/]*).*/1Android2/device/sony/huashan/g')*
  * [**cdspker** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_shortcuts.rc) : *cd $(echo "$(pwd)" \| sed 's/(.*)Android([^/]*/[^/]*).*/1Android2/kernel/sony/msm8960t/g')*
  * [**cdblueker** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_shortcuts.rc) : *cd $(echo "$(pwd)" \| sed 's/(.*)Android([^/]*/[^/]*).*/1Android2/kernel/sony/msm8x60/g')*
  * [**cdvendsony** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_shortcuts.rc) : *cd $(echo "$(pwd)" \| sed 's/(.*)Android([^/]*/[^/]*).*/1Android2/vendor/sony/g')*
  * [**meldblue** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_shortcuts.rc) : *meld ./${1} ../blue-common/${1}*

---
### [&nbsp;Documentation: [extensions/sony_msm8960/android_tools_release.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_tools_release.rc)&nbsp;]
  * [**autoreleasemultiromsony8960** *<b>\[Automated MultiROM Sony 8960 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_tools_release.rc) : *autoreleasemultiromsony8960 [devices]*
  * [**autoreleasetwrpsony8960** *<b>\[Automated TWRP Sony 8960 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_tools_release.rc) : *autoreleasetwrpsony8960 [devices]*

---
### [&nbsp;Documentation: [extensions/sony_msm8996/android_autorelease.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/android_autorelease.rc)&nbsp;]
  * [**autoreleaseaospsodp8996** *<b>\[Automated AOSP Sony SODP 8996 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/android_autorelease.rc) : *autoreleaseaospsodp8996 [devices]*

---
### [&nbsp;Documentation: [extensions/sony_msm8996/android_kernel_builders.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/android_kernel_builders.rc)  - Standalone Import Ready&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_kernel_builders.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/extensions/sony_msm8996/android_kernel_builders.rc)
  ```
  * [**makekernelcopyleft** *<b>\[Kernel inline compiler for Sony Copyleft\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/android_kernel_builders.rc) : *makekernelcopyleft [platform_device_to_init / clean / mrproper] [make_parameters]*
  * [**kernelcopyleftmerger** *<b>\[Sony Copyleft kernel archive merge helper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/android_kernel_builders.rc)

---
### [&nbsp;Documentation: [extensions/sony_msm8996/android_rom_aosp_sonysodp.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/android_rom_aosp_sonysodp.rc)  - Standalone Import Ready&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_git_remotes.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_projects.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/extensions/sony_msm8996/android_rom_aosp_sonysodp.rc)
  ```
  * [**aospsonysodppatcher** *<b>\[AOSP SONY SODP Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/android_rom_aosp_sonysodp.rc) : *aospsonysodppatcher [specific_paths]*
  * [**aospsonysodprebaser** *<b>\[AOSP SONY SODP Rebaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/android_rom_aosp_sonysodp.rc) : *aospsonysodprebaser &lt;master/n-mr1&gt; [specific_paths]*
  * [**sonyaospkernelupdate** *<b>\[Automated Sony SODP kernel updater for AOSP\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/android_rom_aosp_sonysodp.rc) : *sonyaospkernelupdate &lt;device_name&gt;*

---
### [&nbsp;Documentation: [extensions/sony_msm8996/android_rom_lineageos_sony8996.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/android_rom_lineageos_sony8996.rc)  - Standalone Import Ready&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_git_remotes.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_projects.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/extensions/sony_msm8996/android_rom_lineageos_sony8996.rc)
  ```
  * [**lineagesony8996patcher** *<b>\[LineageOS Sony 8996 Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/android_rom_lineageos_sony8996.rc) : *lineagesony8996patcher [specific_paths]*

---
### [&nbsp;Documentation: [extensions/sony_msm8996/android_rom_lineageos_sonysodp.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/android_rom_lineageos_sonysodp.rc)  - Standalone Import Ready&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_git_remotes.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_projects.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/extensions/sony_msm8996/android_rom_lineageos_sonysodp.rc)
  ```
  * [**lineagesonysodppatcher** *<b>\[LineageOS SONY SODP Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/android_rom_lineageos_sonysodp.rc) : *lineagesonysodppatcher [specific_paths]*
  * [**lineagesonysodprebaser** *<b>\[LineageOS SONY SODP Rebaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/android_rom_lineageos_sonysodp.rc) : *lineagesonysodprebaser [specific_paths]*

---
### [&nbsp;Documentation: [extensions/sony_msm8996/android_shortcuts.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/android_shortcuts.rc)&nbsp;]
  * [**sonysodpkernelrebase** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/android_shortcuts.rc) : *git fetch https://github.com/sonyxperiadev/kernel aosp/LA.UM.5.5.r1; git rebase FETCH_HEAD; gitpa*
  * [**doradefconf** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/android_shortcuts.rc) : *makedefconf msm-perf dora common*
  * [**dorazipkernel** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/android_shortcuts.rc) : *kernelinjectorzip dora arch/arm64/boot/Image.gz-dtb .*
  * [**kaguradefconf** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/android_shortcuts.rc) : *makedefconf msm-perf kagura common*

---
### [&nbsp;Documentation: [extensions/sony_msm8996/android_tools_release.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/android_tools_release.rc)&nbsp;]
  * [**autoreleasemultiromsony8996** *<b>\[Automated MultiROM Sony 8996 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/android_tools_release.rc) : *autoreleasemultiromsony8996 [devices]*
  * [**autoreleasetwrpsony8996** *<b>\[Automated TWRP Sony 8996 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/android_tools_release.rc) : *autoreleasetwrpsony8996 [devices]*

---
### [&nbsp;Documentation: [extensions/template/android_template.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/template/android_template.rc)&nbsp;]
  * [**_templateaddonfunction** *<b>\[Base template for addons\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/template/android_template.rc) : *_templateaddonfunction &lt;required&gt; [optional]*

---
### [&nbsp;Documentation: [install_repo.sh](https://github.com/AdrianDC/android_development_shell_tools/blob/master/install_repo.sh)  - Standalone Import Ready&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/install_repo.sh)
  ```
  * [**\./install_repo.sh** *<b>\[Automated install of Android repo requirements\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/install_repo.sh)

---
### [&nbsp;Documentation: [run_cleanram.sh](https://github.com/AdrianDC/android_development_shell_tools/blob/master/run_cleanram.sh)  - Standalone Import Ready&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/run_cleanram.sh)
  ```
  * [**\./run_cleanram.sh** *<b>\[RAM caches cleanup\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/run_cleanram.sh)

---
### [&nbsp;Documentation: [run_cleanrambuild.sh](https://github.com/AdrianDC/android_development_shell_tools/blob/master/run_cleanrambuild.sh)  - Standalone Import Ready&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/run_cleanrambuild.sh)
  ```
  * [**\./run_cleanrambuild.sh** *<b>\[Build RAM processes cleanup\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/run_cleanrambuild.sh)

---
### [&nbsp;Documentation: [server_reboot.sh](https://github.com/AdrianDC/android_development_shell_tools/blob/master/server_reboot.sh)  - Standalone Import Ready&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/server_reboot.sh)
  ```
  * [**\./server_reboot.sh** *<b>\[Server crontab script to reboot when not building\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/server_reboot.sh)

---
* #### Automatically generated by [shtoolsreadme](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc) for [android_development_shell_tools](https://github.com/AdrianDC/android_development_shell_tools)
<!-- Functions End -->
