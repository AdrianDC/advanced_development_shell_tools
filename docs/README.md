# Android Development Shell Scripts
 * Project created by [Adrian DC](https://github.com/AdrianDC) - 2015-2017

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
### [ Documentation from [android_development_shell_tools.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc) ]
  * [**shtoolsup** *<b>\[Reloads android_development_shell_tools scripts\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc) : *shtoolsup*
  * [**shtoolse** *<b>\[Direct access to related sources\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc) : *shtoolse &lt;words&gt; &lt;to&gt; &lt;search&gt;*
  * [**shtoolssync** *<b>\[Download new android_development_shell_tools changes\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc) : *shtoolssync*
  * [**shtoolspush** *<b>\[Commit new changes to android_development_shell_tools\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc) : *shtoolspush*
  * [**shtoolsamend** *<b>\[Amend new changes to android_development_shell_tools\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc) : *shtoolsamend*
  * [**shtoolsdiff** *<b>\[Compare with upstream android_development_shell_tools\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc) : *shtoolsdiff*
  * [**shtoolslog** *<b>\[Display android_development_shell_tools history\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc) : *shtoolslog*
  * [**shtoolsreset** *<b>\[Reset project to remote HEAD\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc) : *shtoolsreset*
  * [**shtoolsmaster** *<b>\[Switch android_development_shell_tools to master branch\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc) : *shtoolsmaster*
  * [**shtoolsstaging** *<b>\[Switch android_development_shell_tools to staging branch\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc) : *shtoolsstaging*
  * [**shtoolsreadme** *<b>\[Refresh README.md functions usages\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc) : *shtoolsreadme*

---
### [ Documentation from [android_adb_assets.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc) ]
  * [**adbdatabase** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc) : *adbdatabase &lt;/data/.../sqlite.db&gt;*
  * [**sepaud** *<b>\[Logs sepolicy analyzer\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc) : *sepaud &lt;logs_file&gt;*
  * [**adbintents** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc) : *adb shell dumpsys package r &gt; intents.txt*
  * [**adbcamera** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc) : *adb shell pm enable com.android.camera2/com.android.camera.CameraLauncher; alias adblkl='adb root; adb wait-for-device; adb shell killall zigote; adbl*
  * [**adbkp** *<b>\[Kill process by name\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc) : *adbkp &lt;process_name&gt;*
  * [**adbpk** *<b>\[Android mediaserver debug logger\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc) : *adbpk*
  * [**adbms** *<b>\[Android mediaserver debug stracer\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc) : *adbms*
  * [**adblibs** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc) : *adb shell grep -air "${1}" ${2:-/system/lib/}*
  * [**ndkstack** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc) : *ndk-stack -sym ${ANDROID_DEV_DRIVE}/out/target/product/huashan/symbols -dump*
  * [**adbwtch** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc) : *adbr; while [ 1 ]; do adb shell cat "${1}"; done*
  * [**adbdu** *<b>\[Android /data/ sizes study\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc) : *adbdu*
  * [**adbpropradiolog** *<b>\[Radio debug property overrider\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc) : *adbpropradiolog &lt;value&gt;*
  * [**adbalsa** *<b>\[Audio cards advanced study\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc) : *adbalsa*

---
### [ Documentation from [android_adb_debug.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_debug.rc) ]
  * [**adbst** *<b>\[strace\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_debug.rc) : *adbst &lt;process_name&gt; [bool_get_root] [parameters]*
  * [**adbstf** *<b>\[Followed strace\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_debug.rc) : *adbstf &lt;process_name&gt; [bool_get_root]*

---
### [ Documentation from [android_adb_flash.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_flash.rc)  - Standalone Import Ready ]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_devices.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_adb_tools.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_adb_flash.rc)
  ```
  * [**adbbootdump** *<b>\[Dump bootimage from device\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_flash.rc) : *adbbootdump*
  * [**adbbootcut** *<b>\[Trim bootimage dump\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_flash.rc) : *adbbootcut &lt;file_path&gt;*
  * [**adbrecoveryinstall** *<b>\[Inject and reboot recovery\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_flash.rc) : *adbrecoveryinstall &lt;file_path&gt;*

---
### [ Documentation from [android_adb_installers.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc)  - Standalone Import Ready ]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_adb_installers.rc)
  ```
  * [**adbpushfile** *<b>\[Push files through adb\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc) : *adbpushfile &lt;file_path&gt; &lt;file_target&gt;*
  * [**adbif** *<b>\[Modules build listener and installed\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc) : *adbif &lt;command...&gt;*
  * [**adbil** *<b>\[Modules build listener and lister\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc) : *adbil &lt;command...&gt;*
  * [**adbi** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc) : *adbro; adbif ${@}*
  * [**adbii** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc) : *adbif ${@}*
  * [**adbpf** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc) : *adbpf &lt;file_paths&gt;*
  * [**adbp** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc) : *adbro; adbpf*
  * [**adbside** *<b>\[adb sideload helper\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc) : *adbside &lt;file_zip&gt; [bool_wait_recovery]*
  * [**adbu** *<b>\[Force optimization of a package\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc) : *adbu &lt;package_name&gt;*
  * [**adbgitpf** *<b>\[Push files through adb from commit\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc) : *adbgitpf &lt;commit_sha1&gt;*
  * [**adbpmrom** *<b>\[MultiROM file pusher\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc) : *adbpmrom &lt;file&gt;*
  * [**adbpmromenc** *<b>\[MultiROM encryption file pusher\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc) : *adbpmromenc &lt;file&gt;*
  * [**adbapkinstall** *<b>\[Install all available apk files\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc) : *adbapkinstall*

---
### [ Documentation from [android_adb_logs.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) ]
  * [**adbl** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *adbl [all/crash/events/main/radio/system]*
  * [**adbcl** *<b>\[Logcat output cleaner\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *adbcl [file_adb.log]*
  * [**adbstcl** *<b>\[strace output cleaner\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *adbstcl [file_adb.log]*
  * [**adbld** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *cls; adbro; printf "" &gt;adb.data; adb shell cat /data/logcat.txt \| tee -a adb.data*
  * [**adblr** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *adbl radio*
  * [**adblb** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *while [ 1 ]; do cls; printf "" &gt;adb.log; adb logcat -v audit2allow *:V \| tee -a adb.log*
  * [**adblc** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *adb logcat -c; adbl*
  * [**adbk** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *adbro; printf "" &gt;kmsg; adb shell cat /proc/kmsg \| tee -a kmsg*
  * [**adbdm** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *adbro; printf "" &gt;dmesg; adb shell dmesg \| tee -a dmesg*
  * [**adbkd** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *printf "" &gt;kmsg; adb shell cat /proc/kmsg \| tee -a kmsg*
  * [**adbkl** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *cls; adbro; printf "" &gt;last_kmsg; adb shell cat /proc/last_kmsg \| tee -a last_kmsg*
  * [**adbkld** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *cls; printf "" &gt;last_kmsg; adb shell cat /proc/last_kmsg \| tee -a last_kmsg*
  * [**adbpl** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *cls; adbro; printf "" &gt;last_kmsg; adb shell cat /sys/fs/pstore/console-ramoops \| tee -a last_kmsg*
  * [**adbpld** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *cls; printf "" &gt;last_kmsg; adb shell cat /sys/fs/pstore/console-ramoops \| tee -a last_kmsg*
  * [**adbrl** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *cls; printf "" &gt;recovery_log; adb shell cat /tmp/recovery.log \| tee -a recovery_log*
  * [**adbse** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *adbro; printf "" &gt;kmsg; adb shell cat /proc/kmsg \| tee -a kmsg; sepaud kmsg*
  * [**adbdumpsensors** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *adb shell dumpsys sensorservice*
  * [**adbsel** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *adbkl; sepaud kmsg*
  * [**adblf** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *adb logcat -v audit2allow*
  * [**adblh** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *adb logcat -b events -b main -b radio \| highlight*
  * [**adbtrampoline** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *adb shell "dmesg \| grep -i trampoline*
  * [**adblcln** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *cat ${1} \| cut -c 32- \| tee ${1}.clean*
  * [**adbkcln** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *cat ${1} \| cut -c 15- \| tee ${1}.clean*
  * [**adbbootchart** *<b>\[Bootchart debug helper\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *adbbootchart*

---
### [ Documentation from [android_adb_shortcuts.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc)  - Standalone Import Ready ]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_adb_shortcuts.rc)
  ```
  * [**adbs** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell*
  * [**adbdf** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell df -H*
  * [**adbpo** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell reboot -p*
  * [**adbrb** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb reboot bootloader*
  * [**adbre** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb reboot*
  * [**adbrh** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb ${1} shell setprop ctl.restart zygote*
  * [**adbrr** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb reboot recovery*
  * [**adbsl** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell ls -l*
  * [**adbslz** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell ls -lZ*
  * [**adbsc** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell cat*
  * [**adbsg** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell getprop*
  * [**adbw** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb wait-for-device*
  * [**adbsw** *<b>\[Write a string to path through adb\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adbsw &lt;"data"&gt; &lt;path&gt;*
  * [**adbblkp** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell ls -l /dev/block/bootdevice/by-name/*
  * [**adbfotarandom** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb root; adb shell dd if=/dev/random of=/dev/block/platform/msm_sdcc.1/by-name/FOTAKernel*
  * [**adbfotazero** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb root; adb shell dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/FOTAKernel*
  * [**adbmountcache** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell mount -t ext4 /dev/block/platform/msm_sdcc.1/by-name/Cache /cache*
  * [**adbmountdata** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell mount -t ext4 /dev/block/platform/msm_sdcc.1/by-name/Userdata /data*
  * [**adbmountmicrosd** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell mkdir -p /storage/ext; adb shell mount -t ext4 /dev/block/mmcblk1p1 /storage/ext*
  * [**adbsgdisk** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell sgdisk --print /dev/block/mmcblk0*
  * [**adbumountcache** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell umount /cache*
  * [**adbumountdata** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell umount /data*
  * [**adbumountmicrosd** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell umount /storage/ext*
  * [**adbmount** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adbmountcache; adbmountdata; adbmountmicrosd*
  * [**adbumount** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adbumountcache; adbumountdata; adbumountmicrosd*
  * [**adbinfomem** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell dumpsys meminfo*
  * [**adbrcbin** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell restorecon -R /sbin*
  * [**adbemergencycalls** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell setprop ril.ecclist*
  * [**adbemergencylist** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell getprop ril.ecclist*
  * [**adbservices** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell service list*

---
### [ Documentation from [android_adb_tools.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc)  - Standalone Import Ready ]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_adb_tools.rc)
  ```
  * [**adbscr** *<b>\[Take a screenshot from connected device\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc) : *adbscr*
  * [**adbr** *<b>\[adb root and remount rw system\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc) : *adbr*
  * [**adbro** *<b>\[Verified adb root and remount rw system\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc) : *adbro*
  * [**adbroot** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc) : *adb kill-server; sudo adb start-server; sudo adb root; sudo adb wait-for-device; sudo adb remount*
  * [**adbrstock** *<b>\[Stock ROM adb root access\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc) : *adbrstock*
  * [**adbsu** *<b>\[Run on root adb shell\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc) : *adbsu &lt;command...&gt;*
  * [**adbco** *<b>\[Helper for adb network access\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc) : *adbco [ipaddress_once]*
  * [**adbedit** *<b>\[Edit adb file, default on /system/build.prop\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc) : *adbedit [file_path]*
  * [**adbinputs** *<b>\[Dump all input devices\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc) : *adbinputs*
  * [**adbreadevents** *<b>\[Read input events\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc) : *adbreadevents &lt;event_number&gt;*

---
### [ Documentation from [android_adb_updater.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_updater.rc)  - Standalone Import Ready ]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_adb_updater.rc)
  ```
  * [**adbupdate** *<b>\[adb binary update from upstream\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_updater.rc) : *adbupdate*

---
### [ Documentation from [android_changelog.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_changelog.rc) ]
  * [**repochangelog** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_changelog.rc) : *repochangelog &lt;days_count&gt; [project1_path,project2_path,...]*

---
### [ Documentation from [android_devices.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_devices.rc) ]
  * [**androiddevicestarget** *<b>\[Devices targets mapper\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_devices.rc) : *androiddevicestarget [boot/system/...]*
  * [**codenametotarget** *<b>\[Codename to build target\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_devices.rc) : *codenametotarget &lt;codename&gt;*
  * [**repogetdevice** *<b>\[Detect device name from repo environment\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_devices.rc) : *repogetdevice*

---
### [ Documentation from [android_edit.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_edit.rc) ]
  * [**editreplacematch** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_edit.rc) : *editreplacematch &lt;"match_line"&gt; &lt;"to_write"&gt; &lt;"files"&gt;*
  * [**editremovematch** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_edit.rc) : *editremovematch &lt;"match_line"&gt; &lt;"files"&gt;*
  * [**editinsertabove** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_edit.rc) : *editinsertabove &lt;"match_line"&gt; &lt;"to_insert"&gt; &lt;"files"&gt;*
  * [**editinsertbelow** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_edit.rc) : *editinsertbelow &lt;"match_line"&gt; &lt;"to_insert"&gt; &lt;"files"&gt;*
  * [**editreplacemultiline** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_edit.rc) : *editreplacemultiline &lt;"match_first"&gt; &lt;"match_last"&gt; &lt;"replace"&gt; &lt;"files"&gt;*

---
### [ Documentation from [android_fetch.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_fetch.rc) ]
  * [**gitfetchtreset** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_fetch.rc) : *gitfetchtreset [remote] [branch]*
  * [**gitf** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_fetch.rc) : *git fetch*
  * [**gitfmr** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_fetch.rc) : *git fetch origin; git reset origin/master*
  * [**gitfs** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_fetch.rc) : *git fetch origin; git reset origin/$(git rev-parse --abbrev-ref HEAD); git stash*
  * [**gitfsu** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_fetch.rc) : *git fetch origin; git reset origin/$(git rev-parse --abbrev-ref HEAD); git stash -p*
  * [**gitfgr** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_fetch.rc) : *gitfetchtreset github*
  * [**gitfor** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_fetch.rc) : *gitfetchtreset origin*
  * [**gitforla** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_fetch.rc) : *gitfetchtreset origin aosp/LA.UM.5.5_rb1.10*
  * [**gitfar** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_fetch.rc) : *gitfetchtreset $(githubusername)*

---
### [ Documentation from [android_gerrit.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc)  - Standalone Import Ready ]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_gerrit.rc)
  ```
  * [**gerritreview** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview &lt;gerrit_ssh_or_http&gt; &lt;project_name_or_.&gt; &lt;drafts/for/heads&gt; [branch]*
  * [**gerritusername** *<b>\[Gerrit username getter\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritusername*
  * [**gitpr** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview ssh://$(gerritusername)@review.lineageos.org:29418 LineageOS for*
  * [**gitprh** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview http://review.lineageos.org LineageOS for*
  * [**gitprd** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview ssh://$(gerritusername)@review.lineageos.org:29418 LineageOS drafts*
  * [**gitprdh** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview http://review.lineageos.org LineageOS drafts*
  * [**gitpg** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview ssh://$(gerritusername)@review.lineageos.org:29418 LineageOS heads*
  * [**gitpgh** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview http://review.lineageos.org LineageOS heads*
  * [**gitprg** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gitpr; gitpg*
  * [**gitprgy** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *printf "ynyn" \| gitpr; printf "yny" \| gitpg*
  * [**gitpraosp** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview https://android.googlesource.com aosp for*
  * [**gitpraospma** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview https://android.googlesource.com aosp for master*
  * [**gitprdaosp** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview https://android.googlesource.com aosp drafts*
  * [**gitprdaospma** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview https://android.googlesource.com aosp drafts master*
  * [**gitpraicp** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview ssh://$(gerritusername)@gerrit.aicp-rom.com:29418 AICP for n7.1*
  * [**gitprhaicp** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview http://gerrit.aicp-rom.com AICP for n7.1*
  * [**gitprdaicp** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview ssh://$(gerritusername)@gerrit.aicp-rom.com:29418 AICP drafts n7.1*
  * [**gitprdhaicp** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview http://gerrit.aicp-rom.com AICP drafts n7.1*
  * [**gitpgaicp** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview ssh://$(gerritusername)@gerrit.aicp-rom.com:29418 AICP heads n7.1*
  * [**gitpghaicp** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview http://gerrit.aicp-rom.com AICP heads n7.1*
  * [**gitprgaicp** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gitpraicp; gitpgaicp*
  * [**gitprghaicp** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gitprhaicp; gitpghaicp*
  * [**gitpr7** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview ssh://radian.dc@review.msm7x30.org:29418 LegacyXperia for*
  * [**gitpr7h** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview http://review.msm7x30.org LegacyXperia for*
  * [**gitpr7d** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview ssh://radian.dc@review.msm7x30.org:29418 LegacyXperia drafts*
  * [**gitpr7dh** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview http://review.msm7x30.org LegacyXperia drafts*
  * [**gitpromni** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview ssh://$(gerritusername)@gerrit.omnirom.org:29418 . for android-7.1*
  * [**gitprhomni** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview http://gerrit.omnirom.org . for android-7.1*
  * [**gitprdomni** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview ssh://$(gerritusername)@gerrit.omnirom.org:29418 . drafts android-7.1*
  * [**gitprdhomni** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview http://gerrit.omnirom.org . drafts android-7.1*
  * [**gitprtwrp** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview ssh://$(gerritusername)@gerrit.twrp.me:29418 . for android-6.0*
  * [**gitprdtwrp** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview ssh://$(gerritusername)@gerrit.twrp.me:29418 . drafts android-6.0*

---
### [ Documentation from [android_gerritssh.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerritssh.rc)  - Standalone Import Ready ]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_gerritssh.rc)
  ```
  * [**gerritssh** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerritssh.rc) : *gerritssh [branch] [change_id_reverser]*

---
### [ Documentation from [android_git_pick.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_pick.rc) ]
  * [**gitcpu** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_pick.rc) : *gitcpu &lt;githuburltocommit&gt; [branch]*
  * [**gitmerges** *<b>\[Attempt to merge commit history\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_pick.rc) : *gitmerges &lt;commit_sha1&gt; [count]*
  * [**gitcpo** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_pick.rc) : *gitcpo &lt;branch&gt; &lt;amount_of_commits&gt;*
  * [**gitcpup** *<b>\[Git URL patch applier\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_pick.rc) : *gitcpup &lt;url&gt;*
  * [**gitcpur** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_pick.rc) : *gitcpur &lt;githuburltoproject&gt; &lt;branch&gt; &lt;search_text&gt; &lt;replace_text&gt;*
  * [**gitcpupprima** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_pick.rc) : *gitcpup "${1}" CORE drivers/staging/prima/CORE*

---
### [ Documentation from [android_git.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) ]
  * [**githubusername** *<b>\[GitHub username getter\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *githubusername*
  * [**gitfcu** *<b>\[Git fetch url and reset\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *gitfcu &lt;url&gt; [branch]*
  * [**gitcleantags** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *gitcleantags &lt;branch_to_keep&gt;*
  * [**gitonebranch** *<b>\[Git remove non-default remote branches\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *gitonebranch*
  * [**gits** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git stash*
  * [**gitsp** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git stash -p*
  * [**gitsu** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git stash -u*
  * [**gitspop** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git stash pop*
  * [**gitdi** *<b>\[Show git differences status\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *gitdi*
  * [**gitdfs** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *gitdfs &lt;sha1commit&gt;*
  * [**gitdf** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *gitdf &lt;sha1commit&gt; &lt;filepath&gt;*
  * [**gitlo** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git log --pretty=oneline*
  * [**gitlod** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git log --pretty=oneline --*
  * [**gitloo** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git log --pretty=format:"%C(yellow)%h %Cred%ad %Creset%s" --date=short --all --*
  * [**gitlos** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *gitlos &lt;path_or_.&gt; ["search string input"] [search_max_count]*
  * [**gitfindsha1** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *gitfindsha1 &lt;remote/branch&gt; &lt;"title text to search"&gt;*
  * [**gitshow** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git show --name-status*
  * [**gitshf** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git show --pretty=full*
  * [**gitshl** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git show --oneline --name-only ${1} \| tail -n +2 \| cut -c $((1+${2:-0}))-*
  * [**gitap** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git add -p*
  * [**gitaa** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git add . -Av*
  * [**gitan** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git add . -An*
  * [**gite** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *gedit ${1}; printf ' Done ? [Enter] '; read; git add ${1}*
  * [**gitbd** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git branch -D*
  * [**gitbv** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git fetch ${gitreviewdefault} $(git rev-parse --abbrev-ref HEAD); git branch -vv*
  * [**gitch** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git checkout*
  * [**gitcp** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git cherry-pick*
  * [**gitcpc** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git reset; git cherry-pick --continue*
  * [**gitcpf** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git fetch ${1} ${2}; git cherry-pick FETCH_HEAD*
  * [**gitfcp** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git fetch ${1}; git cherry-pick FETCH_HEAD~${2:-0}*
  * [**gitcpr** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git show ${1} --no-color \| sed "s/${2}/${3}/g" \| patch*
  * [**gitc** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git commit $(gitgpgparam)*
  * [**gitcs** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git commit $(gitgpgparam) -s*
  * [**gitca** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git commit $(gitgpgparam) --amend*
  * [**gitcae** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git commit $(gitgpgparam) --amend --no-edit*
  * [**gitcauthor** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git commit $(gitgpgparam) --amend --no-edit --author="$(git config --global --get user.name) &lt;$(git config --global --get user.email)&gt;*
  * [**gitrevert** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git revert $(gitgpgparam) --no-edit*
  * [**gitfix** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *rm -fv .git/COMMIT_EDITMSG*; rm -fv .git/.COMMIT_EDITMSG.swp*
  * [**gitcid** *<b>\[Apply commit-msg hook to commit\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *gitcid*
  * [**gitcidupstream** *<b>\[Load commit-msg hook from upstream\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *gitcidupstream*
  * [**gitfurl** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git fetch "${1%/commits/*}" "${1#*/commits/}"*
  * [**gitpf** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git push -f*
  * [**gitra** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git rebase --abort*
  * [**gitrc** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git rebase --continue*
  * [**gitre** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git rebase --edit-todo*
  * [**gitrs** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git rebase --skip*
  * [**gitrf** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git rebase ${1}^ -i*
  * [**gitr** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git rebase HEAD~${1:-5} -i*
  * [**gitrall** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git rebase -i HEAD~$(($(git rev-list --count HEAD) - 1))*
  * [**gitrfedit** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *GIT_SEQUENCE_EDITOR="sed -i -e 's/pick/edit/g'" git rebase ${1} -i*
  * [**gitredit** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *GIT_SEQUENCE_EDITOR="sed -i -e 's/pick/edit/g'" git rebase HEAD~${1:-5} -i*
  * [**gitrb** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *branch=${1:-$(repogetbranch)}; git fetch github ${branch}; git rebase github/${branch}*
  * [**gitrbo** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *branch=${1:-$(repogetbranch)}; git fetch origin ${branch}; git rebase origin/${branch}*
  * [**gitrv** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git remote -v*
  * [**gitrh** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git reset FETCH_HEAD --hard*
  * [**githd** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git reset HEAD --hard*
  * [**gitcl** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git reset HEAD --hard; git stash -u; git am --abort*
  * [**gitro** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git reset HEAD^ --hard*
  * [**gitsl** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git reset HEAD^; gitap; gitcae*
  * [**gitrl** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git revert HEAD -n; git commit -m "Revert"; git reset HEAD^; git add -p*
  * [**gitri** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git reset HEAD^*
  * [**gitrt** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git reset --hard*
  * [**gitrerere** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git config --global rerere.enabled*
  * [**gitdiffpermhide** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git config core.filemode false*
  * [**gitdiffpermshow** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git config core.filemode true*
  * [**gpglist** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *gpg --list-secret-keys --keyid-format LONG*
  * [**gpgsilent** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *echo "no-tty" &gt;&gt; ~/.gnupg/gpg.conf*
  * [**gpgenable** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git config --global commit.gpgsign true*
  * [**gpgdisable** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git config --global commit.gpgsign false*
  * [**gpgsigning** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git config --global user.signingkey*
  * [**gitshowsg** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git config --global alias.logs "log --show-signature*
  * [**gitpwstore** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git config --global credential.helper store*
  * [**githi** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git update-index --assume-unchanged*
  * [**gitsh** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git update-index --no-assume-unchanged*
  * [**gitgpgparam** *<b>\[Returns the GPG signature flag if enabled\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *gitgpgparam*
  * [**gitmt** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *git mergetool*
  * [**gitmte** *<b>\[Merge tool with manual conflicts resolution\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *gitmte*
  * [**gitmtr** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) : *gitmtr &lt;referenced_path&gt;*

---
### [ Documentation from [android_git_stats.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc) ]
  * [**gitstat** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc) : *gitstat &lt;remote&gt; &lt;branch&gt; [stats_only]*
  * [**gitst** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc) : *gitremoteverify origin gitrao && gitstat origin cm-14.1*
  * [**gitsto** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc) : *gitremoteverify origin gitrao && gitstat origin $(git rev-parse --abbrev-ref HEAD)*
  * [**gitsta** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc) : *gitremoteverify $(githubusername) gitraa && gitstat $(githubusername) cm-14.1*
  * [**gitstam** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc) : *gitremoteverify $(githubusername) gitraa && gitstat $(githubusername) master*
  * [**gitstg** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc) : *gitremoteverify github false && gitstat github*
  * [**gitstaosp** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc) : *gitremoteverify aosp false && gitstat aosp master*
  * [**gitstsony** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc) : *gitremoteverify origin gitraos && gitstat origin aosp/LA.UM.5.5.r1*
  * [**gitstfa** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc) : *gitrao; gitremoteverify $(githubusername) gitraa && gitstat $(githubusername) cm-14.1 true*

---
### [ Documentation from [android_grep.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_grep.rc) ]
  * [**grepb** *<b>\[Grep through sources\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_grep.rc) : *grepb [inputs]*
  * [**g** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_grep.rc) : *grepb*
  * [**grepbs** *<b>\[Grep through sources and binaries\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_grep.rc) : *grepbs [inputs]*
  * [**gs** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_grep.rc) : *grepbs*
  * [**gck** *<b>\[Grep through kernel configurations\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_grep.rc) : *gck [inputs]*
  * [**gca** *<b>\[Grep through Android makefiles\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_grep.rc) : *gca [inputs]*
  * [**grepi** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_grep.rc) : *grep -i*
  * [**glc** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_grep.rc) : *GREP_COLORS='fn=1;1' grep --include *.c --include *.cpp --include *.h -anr '.{80,}' .*
  * [**glj** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_grep.rc) : *GREP_COLORS='fn=1;1' grep --include *.java -anr '.{100,}' .*
  * [**gle** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_grep.rc) : *GREP_COLORS='fn=1;1' grep --include *.c --include *.cpp --include *.h --include *.java -anr '.* $' .*
  * [**gcmodules** *<b>\[List all LOCAL_MODULE elements\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_grep.rc) : *gcmodules*

---
### [ Documentation from [android_kernel_builders.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_builders.rc)  - Standalone Import Ready ]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_kernel_builders.rc)
  ```
  * [**makekernel** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_builders.rc) : *makekernel [platform_device_to_init / clean / mrproper] [make_parameters]*
  * [**mkcopyleft** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_builders.rc) : *mkcopyleft [device_name_to_init] [msm*-perf_to_use]*

---
### [ Documentation from [android_kernel_defconfig.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_defconfig.rc)  - Standalone Import Ready ]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_kernel_defconfig.rc)
  ```
  * [**makedefconf** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_defconfig.rc) : *makedefconf &lt;device_name&gt; [bool_full_config] [diff_config] [force_config=value]*
  * [**kernelconfigupdater** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_defconfig.rc) : *kernelconfigupdater &lt;CONFIG_NAME=VALUE_or_# CONFIG_NAME is not set&gt;*
  * [**makedefconfset** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_defconfig.rc) : *makedefconfset &lt;device_name&gt; [force_config=value]*

---
### [ Documentation from [android_kernel_editors.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_editors.rc) ]
  * [**boottools** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_editors.rc) : *boottools &lt;boot.img&gt;*
  * [**bootelf** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_editors.rc) : *bootelf &lt;boot.img&gt;*

---
### [ Documentation from [android_kernel_helpers.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_helpers.rc) ]
  * [**makekernelinjector** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_helpers.rc) : *makekernelinjector &lt;device_name&gt;*
  * [**doradefconf** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_helpers.rc) : *makedefconf msm-perf dora common*
  * [**doracopyleft** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_helpers.rc) : *mkcopyleft dora*
  * [**doraaospdefconf** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_helpers.rc) : *makedefconf aosp_tone_dora_defconfig*
  * [**doraaospkernel** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_helpers.rc) : *makekernel tone_dora*
  * [**dorazipkernel** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_helpers.rc) : *kernelinjectorzip dora arch/arm64/boot/Image.gz-dtb .*
  * [**sonykernelrebase** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_helpers.rc) : *git fetch https://github.com/sonyxperiadev/kernel aosp/LA.UM.5.5.r1; git rebase FETCH_HEAD; gitpa*
  * [**kaguradefconf** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_helpers.rc) : *makedefconf msm-perf kagura common*
  * [**sonyaospkernelupdate** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_helpers.rc) : *sonyaospkernelupdate &lt;device_name&gt;*

---
### [ Documentation from [android_kernel_tools.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc) ]
  * [**fboota** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc) : *fboota [unsecure,sep,full,init,inject,recovery,fastupl,zip]*
  * [**fboot** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc) : *fboot &lt;bootimage&gt;*
  * [**fboots** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc) : *fboots &lt;system_img&gt;*
  * [**fbootr** *<b>\[Fastboot reboot\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc) : *fbootr*
  * [**fbooti** *<b>\[Kernel bbootimg analyzer\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc) : *fbooti*
  * [**bootinfo** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc) : *bootinfo &lt;boot_img_file&gt;*
  * [**adbfotainfos** *<b>\[FOTA bbootimg analyzer\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc) : *adbfotainfos*
  * [**fbootk** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc) : *fbootk &lt;kernelpath&gt; [bool_fota]*
  * [**frecovery** *<b>\[Flash recovery with fastboot\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc) : *frecovery &lt;image&gt;*
  * [**adbbootpush** *<b>\[Inject bootimage to partition\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc) : *adbbootpush &lt;image&gt;*
  * [**adbfotapush** *<b>\[Inject FOTA to partition\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc) : *adbfotapush &lt;image&gt;*
  * [**adbrecoverypush** *<b>\[Inject recovery to partition\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc) : *adbrecoverypush &lt;image&gt;*
  * [**kernelinjectorzip** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc) : *kernelinjectorzip &lt;device&gt; &lt;kernel_file_path&gt; [kernel_sources_for_modules]*
  * [**bootzip** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc) : *bootzip &lt;device&gt; &lt;boot_img_path&gt;*
  * [**makesep** *<b>\[Compile sepolicies clean\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc) : *makesep*
  * [**bootimagedebuggable** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc) : *bootimagedebuggable &lt;device_product&gt; &lt;true/false&gt;*

---
### [ Documentation from [android_linux.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) ]
  * [**cls** *<b>\[Clean terminal screen\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) : *cls*
  * [**toclip** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) : *xclip -selection c*
  * [**findn** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) : *find -name*
  * [**rsynca** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) : *rsynca &lt;path1&gt; &lt;path2&gt;*
  * [**pcinfo** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) : *inxi -Fxz*
  * [**findnewer** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) : *findnewer &lt;20160123&gt;*
  * [**cpioext** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) : *cpioext &lt;cpio_file_to_extract&gt;*
  * [**videoresize** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) : *videoresize &lt;video_file&gt;*
  * [**disableautomount** *<b>\[Linux USB automount disabler\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) : *disableautomount*
  * [**diffbin** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) : *diffbin &lt;binary_left&gt; &lt;binary_right&gt; [first_n_lines]*
  * [**netspeed** *<b>\[Display network speeds\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) : *netspeed*
  * [**buildlock** *<b>\[Mutex-locked command execution\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) : *buildlock &lt;command...&gt;*
  * [**fileschemesorter** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) : *fileschemesorter &lt;file_to_sort&gt; &lt;file_reference&gt;*
  * [**mtpmountdisable** *<b>\[Disable MTP automount\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) : *mtpmountdisable*
  * [**cleanram** *<b>\[RAM caches cleanup\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) : *cleanram*
  * [**cleanramkill** *<b>\[Complete RAM cleanup including "java"\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) : *cleanramkill*
  * [**networkrestart** *<b>\[Restart network manager\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) : *networkrestart*
  * [**pushbsizes** *<b>\[Path sizes in PushBullet notification\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) : *pushbsizes &lt;paths&gt;*
  * [**isdone** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) : *notify-send "Process execution finished !*

---
### [ Documentation from [android_pushbullet.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_pushbullet.rc) ]
  * [**pushb** *<b>\[PushBullet notification helper\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_pushbullet.rc) : *pushb [message]*

---
### [ Documentation from [android_push.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_push.rc) ]
  * [**gitpu** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_push.rc) : *gitpu [remote] [branch] [input]*
  * [**gitpa** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_push.rc) : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername)*
  * [**gitpa14** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_push.rc) : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) cm-14.1*
  * [**gitpala** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_push.rc) : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) LA.UM.5.5_rb1.10*
  * [**gitpal** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_push.rc) : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) local_manifests*
  * [**gitpaman** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_push.rc) : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) manifests*
  * [**gitpam** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_push.rc) : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) multirom*
  * [**gitpama** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_push.rc) : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) master*
  * [**gitpanmr** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_push.rc) : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) n-mr1*
  * [**gitpan** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_push.rc) : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) nougat*
  * [**gitpat** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_push.rc) : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) twrp*
  * [**gitpb** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_push.rc) : *gitremoteverify backup gitrab && gitpu backup*
  * [**gitpp** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_push.rc) : *gitremoteverify project false && gitpu project*
  * [**gitppm** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_push.rc) : *gitremoteverify project false && gitpu project master*
  * [**gitpurl** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_push.rc) : *gitpu "${1%/commits/*}" "${1#*/commits/}"*

---
### [ Documentation from [android_release_builders.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_builders.rc) ]
  * [**romautorelease** *<b>\[Advanced automated ROM builder\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_builders.rc) : *romautorelease &lt;devicename&gt; &lt;aosp/lineage/lx/caf/rr&gt; [nowipe,bringup,local,j1/j2,outclean]*
  * [**romlogs** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_builders.rc) : *romlogs &lt;device&gt; &lt;rom&gt; [logs_count_(default_200-SUMMARY-*

---
### [ Documentation from [android_release_helpers.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_helpers.rc) ]
  * [**outdevcl** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_helpers.rc) : *outdevcl &lt;devicename&gt;*
  * [**noninja** *<b>\[Run command without ninja\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_helpers.rc) : *noninja &lt;command...&gt;*
  * [**mmo** *<b>\[Build module without ninja\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_helpers.rc) : *mmo &lt;command...&gt;*
  * [**mmi** *<b>\[Build & install module without ninja\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_helpers.rc) : *mmi &lt;command...&gt;*
  * [**mmil** *<b>\[Build & list module without ninja\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_helpers.rc) : *mmil &lt;command...&gt;*
  * [**noccache** *<b>\[Run command without CCache\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_helpers.rc) : *noccache &lt;command...&gt;*

---
### [ Documentation from [android_release_packages.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_packages.rc) ]
  * [**signzip** *<b>\[Sign flashable zip\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_packages.rc) : *signzip &lt;zip_to_sign&gt; [signed_output_zip]*
  * [**signapk** *<b>\[Sign apk files\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_packages.rc) : *signapk &lt;apk_to_sign&gt; [signed_output_apk]*
  * [**mmmzip** *<b>\[Build module to flashable zip\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_packages.rc) : *mmmzip &lt;paths_or_modules&gt;*
  * [**systozip** *<b>\[System files to flashable zip\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_packages.rc) : *systozip &lt;files&gt;*
  * [**packzip** *<b>\[Files to flashable zip\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_packages.rc) : *packzip &lt;files&gt;*
  * [**gitzip** *<b>\[Git commit files to flashable zip\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_packages.rc) : *gitzip &lt;commit_sha1&gt;*

---
### [ Documentation from [android_remotes.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc) ]
  * [**gitremoteset** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc) : *gitremoteset &lt;remote_name&gt; &lt;remote_url&gt;*
  * [**gitremoteadaptset** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc) : *gitremoteadaptset &lt;remote_name&gt; &lt;remote_github&gt; [prefix_removal] [bool_prefix_android] [bool_underscore_to_dash]*
  * [**gitremoteverify** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc) : *gitremoteverify &lt;remote_name&gt; "command_to_run_if_missing*
  * [**gitraa** *<b>\[Add GitHub Username remote\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc) : *gitraa*
  * [**gitrai** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc) : *gitremoteadaptset 'aicp' 'AICP' 'android_'*
  * [**gitraoo** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc) : *gitremoteadaptset 'origin' "${1}" ''*
  * [**gitraot** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc) : *gitremoteadaptset 'origin' 'TheMuppets' ''*
  * [**gitrat** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc) : *gitremoteadaptset 'twrp' 'TeamWin' ''*
  * [**gitral** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc) : *gitremoteset lineage "${1}"*
  * [**gitrao** *<b>\[Add LineageOS origin remote\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc) : *gitrao*
  * [**gitrax** *<b>\[Add XperiaMultiROM xperia remote\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc) : *gitrax*
  * [**gitramd** *<b>\[Add MultiROM-Dev mromdev remote\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc) : *gitramd*
  * [**gitraos** *<b>\[Add sonyxperiadev origin remote\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc) : *gitraos*
  * [**gitraau** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc) : *git remote set-url $(githubusername)*
  * [**gitraou** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc) : *git remote set-url origin*
  * [**gitrab** *<b>\[Add backup remote\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc) : *gitrab*
  * [**gitra8960lineage** *<b>\[Add LineageOS 8960 development remote\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc) : *gitra8960lineage*
  * [**gitra8996lineage** *<b>\[Add LineageOS 8996 development remote\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc) : *gitra8996lineage*
  * [**gitra8960naosp** *<b>\[Add AOSP 8960 Nougat development remote\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc) : *gitra8960naosp*
  * [**gitra8960oaosp** *<b>\[Add AOSP 8960 O development remote\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc) : *gitra8960oaosp*
  * [**gitra8960masteraosp** *<b>\[Add AOSP 8960 Master development remote\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc) : *gitra8960masteraosp*
  * [**gitrasonyaosp** *<b>\[Add AOSP Sony development remote\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc) : *gitrasonyaosp*
  * [**gitraaospcaf** *<b>\[Add AOSP-CAF development remote\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc) : *gitraaospcaf*
  * [**gitrasonylineage** *<b>\[Add LineageOS development remote\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc) : *gitrasonylineage*
  * [**gitramultirom** *<b>\[Add MultiROM development remote\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc) : *gitramultirom*
  * [**gitratwrp** *<b>\[Add TWRP development remote\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc) : *gitratwrp*

---
### [ Documentation from [android_repo_builders.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_builders.rc) ]
  * [**repotwrp** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_builders.rc) : *repotwrp {device} [nosync,nowipe,outcl,fota,local +fotareboot]*
  * [**repomrom** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_builders.rc) : *repomrom {device} [nosync,nowipe,outcl,fota,local +fotareboot]*

---
### [ Documentation from [android_repo_changes.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_changes.rc) ]
  * [**repochanges** *<b>\[Detect all repo projects differences\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_changes.rc) : *repochanges ["ignored_projects"]*

---
### [ Documentation from [android_repo_cleaners.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_cleaners.rc) ]
  * [**repoprojectscleaner** *<b>\[Run inside an Android repo root\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_cleaners.rc) : *repoprojectscleaner*
  * [**repotagscleaner** *<b>\[Run inside an Android repo root\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_cleaners.rc) : *repotagscleaner*
  * [**repoheadscleaner** *<b>\[Cleanup repo projects refs/ contents\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_cleaners.rc) : *repoheadscleaner*
  * [**reposyrm** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_cleaners.rc) : *reposyrm &lt;project/relative/path&gt;*
  * [**reposyrmf** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_cleaners.rc) : *reposyrmf &lt;project/relative/path&gt;*
  * [**repocleancache** *(Alias)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_cleaners.rc) : *if [ ! -z "${CCACHE_DIR}" ]; then rm -rfv "${CCACHE_DIR}/"*; fi*

---
### [ Documentation from [android_repo_compare.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_compare.rc) ]
  * [**repocomparestable** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_compare.rc) : *repocomparestable [stable_ZNH5Y] [github_account_LineageOS] [full_diff]*
  * [**repocompareupstream** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_compare.rc) : *repocompareupstream [github_account_LineageOS] [full_diff]*
  * [**repocomparetags** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_compare.rc) : *repocomparetags &lt;tag_to_compare_to_android_branch&gt; [ignore_account_LineageOS] [full_diff]*

---
### [ Documentation from [android_repo_helpers.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc) ]
  * [**gettop** *<b>\[Get repo root path\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc) : *gettop*
  * [**croot** *<b>\[Access repo root path\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc) : *croot*
  * [**repos** *<b>\[Prepare LineageOS device environment\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc) : *repos &lt;device_name&gt;*
  * [**reposaosp** *<b>\[Prepare AOSP device environment\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc) : *reposaosp &lt;device_name&gt;*
  * [**reporoomserv** *<b>\[Manifest and local_manifests editor\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc) : *reporoomserv*
  * [**reposy** *<b>\[Optimized relevant repo sync\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc) : *reposy*
  * [**reposysafe** *<b>\[Safeguarded repo projects sync\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc) : *reposysafe*
  * [**reposybranch** *<b>\[Individual repo projects sync\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc) : *reposybranch*
  * [**repoprune** *<b>\[Apply repo-wide prune cleanup\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc) : *repoprune*
  * [**reposycl** *<b>\[Cleaned optimized relevant repo sync\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc) : *reposycl*
  * [**repocache** *<b>\[CCache watcher and configuration\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc) : *repocache [cache_maximum_size]*
  * [**repogetbranch** *<b>\[Get repo main branch\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc) : *repogetbranch*

---
### [ Documentation from [android_repo_init.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_init.rc) ]
  * [**repoinitaosp** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_init.rc) : *repoinitaosp &lt;android-7.1.2_r{XX}&gt; [referenced,clean,rmout,noprepare,example]*
  * [**repoinitlineage** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_init.rc) : *repoinitlineage &lt;13.0/14.1&gt; [referenced,clean,rmout,noprepare,example]*
  * [**repoinitaospall** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_init.rc) : *repoinitaospall &lt;android-7.1.2_r{XX}&gt; [clean,rmout]*
  * [**repoinitlineageall** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_init.rc) : *repoinitlineageall &lt;13.0/14.1&gt; [clean,rmout]*
  * [**repoinitrr** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_init.rc) : *repoinitrr &lt;nougat&gt; [referenced,clean,rmout,noprepare]*

---
### [ Documentation from [android_repo_referenced.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_referenced.rc) ]
  * [**reporeferencedaosp** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_referenced.rc) : *reporeferencedaosp &lt;"command_to_run"&gt; &lt;"device1 device2 ..."&gt;*
  * [**reporeferencedlineage** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_referenced.rc) : *reporeferencedlineage &lt;"command_to_run"&gt; &lt;"device1 device2 ..."&gt;*
  * [**reporefupdate** *<b>\[Upload new projects manifests\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_referenced.rc) : *reporefupdate*
  * [**reporefsync** *<b>\[Download new projects manifests\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_referenced.rc) : *reporefsync*

---
### [ Documentation from [android_rom_aicp.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_aicp.rc) ]
  * [**gitcpaicp** *<b>\[Automated upstream to AICP device merger\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_aicp.rc) : *gitcpaicp*

---
### [ Documentation from [android_rom_aospcaf.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_aospcaf.rc)  - Standalone Import Ready ]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_remotes.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_projects.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_aosp_aospcaf.rc)
  ```
  * [**aospcafpatcher** *<b>\[AOSP-CAF Patcher\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_aospcaf.rc) : *aospcafpatcher [specific_paths]*

---
### [ Documentation from [android_rom_aosp_sony8960.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_aosp_sony8960.rc)  - Standalone Import Ready ]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_remotes.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_projects.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_aosp_sony8960.rc)
  ```
  * [**aosp8960npatcher** *<b>\[AOSP 8960 Nougat Patcher\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_aosp_sony8960.rc) : *aosp8960npatcher [specific_paths]*
  * [**aosp8960opatcher** *<b>\[AOSP 8960 O Patcher\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_aosp_sony8960.rc) : *aosp8960opatcher [specific_paths]*
  * [**aosp8960masterpatcher** *<b>\[AOSP 8960 Master Patcher\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_aosp_sony8960.rc) : *aosp8960masterpatcher [specific_paths]*

---
### [ Documentation from [android_rom_aosp_sonyaosp.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_aosp_sonyaosp.rc)  - Standalone Import Ready ]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_remotes.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_projects.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_aosp_sonyaosp.rc)
  ```
  * [**aospsonypatcher** *<b>\[AOSP SONY SODP Patcher\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_aosp_sonyaosp.rc) : *aospsonypatcher [specific_paths]*
  * [**aospsonyrebaser** *<b>\[AOSP SONY SODP Rebaser\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_aosp_sonyaosp.rc) : *aospsonyrebaser [specific_paths]*

---
### [ Documentation from [android_rom_legacyxperia.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_legacyxperia.rc)  - Standalone Import Ready ]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_kernel_defconfig.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_legacyxperia.rc)
  ```
  * [**lineagelxpatcher** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_legacyxperia.rc) : *lineagelxpatcher [local_manifests_branch]*
  * [**lxrepopick** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_legacyxperia.rc) : *lxrepopick &lt;commit_id&gt;*
  * [**lxdefconfig** *<b>\[Edit all lx defconfigs\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_legacyxperia.rc) : *lxdefconfig*

---
### [ Documentation from [android_rom_lineageos.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_lineageos.rc)  - Standalone Import Ready ]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_remotes.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_projects.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_lineageos.rc)
  ```
  * [**lineagepatcher** *<b>\[LineageOS WiP Patcher\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_lineageos.rc) : *lineagepatcher [specific_paths]*
  * [**lineagewebjekyll** *<b>\[Jekyll web helper\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_lineageos.rc) : *lineagewebjekyll [bool_install]*

---
### [ Documentation from [android_rom_lineageos_sony8996.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_lineageos_sony8996.rc)  - Standalone Import Ready ]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_remotes.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_projects.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_lineageos_sony8996.rc)
  ```
  * [**lineage8996patcher** *<b>\[LineageOS Sony 8996 Patcher\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_lineageos_sony8996.rc) : *lineage8996patcher [specific_paths]*

---
### [ Documentation from [android_rom_lineageos_sonysodp.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_lineageos_sonysodp.rc)  - Standalone Import Ready ]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_remotes.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_projects.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_lineageos_sonysodp.rc)
  ```
  * [**lineagesodppatcher** *<b>\[LineageOS SONY SODP Patcher\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_lineageos_sonysodp.rc) : *lineagesodppatcher [specific_paths]*
  * [**lineagesodprebaser** *<b>\[LineageOS SONY SODP Rebaser\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_lineageos_sonysodp.rc) : *lineagesodprebaser [specific_paths]*

---
### [ Documentation from [android_rom_projects.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_projects.rc) ]
  * [**gitbranchpusher** *<b>\[Push to project specific branch\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_projects.rc) : *gitbranchpusher [y]*
  * [**androidprojectpatcher** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_projects.rc) : *androidprojectpatcher &lt;project_name&gt; &lt;project_tag&gt; ["project paths"] [specific_path]*
  * [**androidprojectrebaser** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_projects.rc) : *androidprojectrebaser &lt;upstream_repository_if_not_origin&gt; &lt;project_branch&gt; &lt;"project_paths::name::branch"&gt; [specific_path]*

---
### [ Documentation from [android_shortcuts.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) ]
  * [**cdd** *<b>\[Access device sources\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cdd &lt;device_name&gt;*
  * [**cdman** *<b>\[Access manifests path\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cdman*
  * [**toout** *<b>\[Get device build output path\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *toout &lt;device_name&gt;*
  * [**cdout** *<b>\[Access device build output path\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cdout [device_name]*
  * [**getand** *<b>\[Get AndroidDev drive\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *getand*
  * [**torompaths** *<b>\[Get ROM device variant path\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *torompaths &lt;rom_name&gt; [device]*
  * [**toaosp** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *torompaths 'AOSP' "${1}"*
  * [**tolineage** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *torompaths 'LineageOS' "${1}"*
  * [**toaospcaf** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *torompaths 'AOSP-CAF' "${1}"*
  * [**tomultirom** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *torompaths 'MultiROM' "${1}"*
  * [**torr** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *torompaths 'ResurrectionRemix' "${1}"*
  * [**totwrp** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *torompaths 'TWRP' "${1}"*
  * [**cdaosp** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd $(toaosp ${1})*
  * [**cdl** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd $(tolineage ${1})*
  * [**cdlineage** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd $(tolineage ${1})*
  * [**cdaospcaf** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd $(toaospcaf)*
  * [**cdmultirom** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd $(tomultirom)*
  * [**cdrr** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd $(torr ${1})*
  * [**cdtwrp** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd $(totwrp)*
  * [**cdand** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd $(getand)*
  * [**getshtools** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *echo ${android_development_shell_tools_dir}*
  * [**cdshtools** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd $(getshtools)*
  * [**cddesk** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd "$(xdg-user-dir DESKTOP)"*
  * [**cddev** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd $(getand)/Development/${1}*
  * [**cddevaosp** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd $(getand)/Development/aosp_*${1}*
  * [**cddevlineage** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd $(getand)/Development/lineage_*${1}*
  * [**cddevmrom** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd $(getand)/Development/multirom_development_sony*
  * [**cddevtwrp** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd $(getand)/Development/twrp_development_sony*
  * [**cdref** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd $(getand)/References/${1}*
  * [**cdrefapk** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd $(getand)/References/apk*
  * [**adbapks** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cdrefapk; adbapkinstall*
  * [**cdandfiles** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd "${ANDROID_FILES_PATH}/"*
  * [**impaospcaf** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *rsync -arv --delete --delete-after $(toaospcaf ${1}) ./${1}*
  * [**implineage** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *rsync -arv --delete --delete-after $(tolineage ${1}) ./${1}*
  * [**meldaosp** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *meld ./${1} $(toaosp ${1})*
  * [**meldaospsony** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *meld ./${1} $(toaosp sony ${1})*
  * [**meldaospcaf** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *meld ./${1} $(toaospcaf ${1})*
  * [**meldlineage** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *meld ./${1} $(tolineage ${1})*
  * [**meldmrom** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *meld ./${1} $(tomultirom ${1})*
  * [**meldtwrp** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *meld ./${1} $(totwrp ${1})*
  * [**nout** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *xdg-open $(toout ${1})*
  * [**aospsyncall** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *reporeferencedaosp "reposy"*
  * [**lineagesyncall** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *reporeferencedlineage "reposy"*
  * [**meldril** *<b>\[Compare device to hardware/{ril\|ril-caf}\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *meldril [bool_caf]*
  * [**cdmromboot** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *croot; cd ./system/extras/libbootimg/*
  * [**cdmromcore** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *croot; cd ./system/extras/multirom/*
  * [**cdrecovery** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *croot; cd ./bootable/recovery/*

---
### [ Documentation from [android_tools.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_tools.rc) ]
  * [**binaryeditor** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_tools.rc) : *binaryeditor &lt;patternsearch&gt; [binariespath] [replacement]*
  * [**librarieshunter** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_tools.rc) : *librarieshunter &lt;binariespath&gt;*
  * [**haste** *<b>\[Share hastebin logs\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_tools.rc) : *haste &lt;file&gt; or \| haste*
  * [**overlaycompare** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_tools.rc) : *overlaycompare &lt;overlay_file_path&gt;*

---
### [ Documentation from [android_uploads.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads.rc) ]
  * [**fileupl** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads.rc) : *fileupl &lt;file_path&gt; [target_folder]*
  * [**fastupl** *<b>\[Make zip and upload\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads.rc) : *fastupl &lt;device_name&gt; [none/zip/bootimage]*
  * [**mmmupl** *<b>\[Make zip and upload\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads.rc) : *mmmupl &lt;package_or_path&gt; [bool_partial_build]*
  * [**devuplboot** *<b>\[Upload ROM bootimage\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads.rc) : *devuplboot &lt;device&gt;*
  * [**devuplrom** *<b>\[Upload ROM build\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads.rc) : *devuplrom &lt;device&gt; [folder_path]*
  * [**pushbrom** *<b>\[Notify build success\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads.rc) : *pushbrom &lt;device_name&gt; [rom_name]*
  * [**fileget** *<b>\[Download from MEGA.nz\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads.rc) : *fileget &lt;remote_path&gt; [boot_remove_remote]*
  * [**androidfilesadd** *<b>\[Add file to AndroidFiles\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads.rc) : *androidfilesadd &lt;file_path&gt; &lt;target_folder&gt;*
  * [**androidfilessync** *<b>\[Sync AndroidFiles folder\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads.rc) : *androidfilessync &lt;--upload/--download&gt;*
  * [**androidfilesopen** *<b>\[Open AndroidFiles folder\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads.rc) : *androidfilesopen*

---
### [ Documentation from [megatools_mirror.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/megatools_mirror.rc) ]
  * [**megamirror** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/megatools_mirror.rc) : *megamirror &lt;local_folder&gt; &lt;remote_folder&gt; &lt;--upload/--download&gt; [--copy,-y/-n]*

---
### [ Documentation from [megatools_reload.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/megatools_reload.rc) ]
  * [**meganzreload** *<b>\[Reload MEGA.nz account and keys\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/megatools_reload.rc) : *meganzreload*

---
### [ Documentation from [extensions/semc_7x30_adriandc/android_autorelease.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/semc_7x30_adriandc/android_autorelease.rc) ]
  * [**autoreleaselegacyxperia** *<b>\[Automated RR 8960 releaser\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/semc_7x30_adriandc/android_autorelease.rc) : *autoreleaselegacyxperia [devices] [bool_unpatched]*

---
### [ Documentation from [extensions/sony_8960_adriandc/android_autorelease.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_8960_adriandc/android_autorelease.rc) ]
  * [**autoreleaseaospsony8960** *<b>\[Automated AOSP Sony 8960 releaser\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_8960_adriandc/android_autorelease.rc) : *autoreleaseaospsony8960 [devices] [bool_nosync]*
  * [**autoreleaselineagesony8960** *<b>\[Automated LineageOS Sony 8960 releaser\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_8960_adriandc/android_autorelease.rc) : *autoreleaselineagesony8960 [devices] [bool_nosync]*
  * [**autoreleaserrsony8960** *<b>\[Automated RR Sony 8960 releaser\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_8960_adriandc/android_autorelease.rc) : *autoreleaserrsony8960 [devices] [bool_nosync]*
  * [**autoreleasemromsony8960** *<b>\[Automated MultiROM Sony 8960 releaser\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_8960_adriandc/android_autorelease.rc) : *autoreleasemromsony8960 [devices]*
  * [**autoreleasetwrpsony8960** *<b>\[Automated TWRP Sony 8960 releaser\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_8960_adriandc/android_autorelease.rc) : *autoreleasetwrpsony8960 [devices]*
  * [**autoreleasecafsony8960** *<b>\[Automated AOSP-CAF Sony 8960 releaser\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_8960_adriandc/android_autorelease.rc) : *autoreleasecafsony8960 [devices]*

---
### [ Documentation from [extensions/sony_8960_adriandc/android_lineageos.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_8960_adriandc/android_lineageos.rc) ]
  * [**lineagesony8960rebaser** *<b>\[LineageOS Devices Rebaser\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_8960_adriandc/android_lineageos.rc) : *lineagesony8960rebaser [specific_paths]*

---
### [ Documentation from [extensions/sony_8960_adriandc/android_shortcuts.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_8960_adriandc/android_shortcuts.rc) ]
  * [**cdspdev** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_8960_adriandc/android_shortcuts.rc) : *cd $(echo "$(pwd)" \| sed 's/(.*)Android([^/]*/[^/]*).*/1Android2/device/sony/huashan/g')*
  * [**cdspker** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_8960_adriandc/android_shortcuts.rc) : *cd $(echo "$(pwd)" \| sed 's/(.*)Android([^/]*/[^/]*).*/1Android2/kernel/sony/msm8960t/g')*
  * [**cdblueker** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_8960_adriandc/android_shortcuts.rc) : *cd $(echo "$(pwd)" \| sed 's/(.*)Android([^/]*/[^/]*).*/1Android2/kernel/sony/msm8x60/g')*
  * [**cdvendsony** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_8960_adriandc/android_shortcuts.rc) : *cd $(echo "$(pwd)" \| sed 's/(.*)Android([^/]*/[^/]*).*/1Android2/vendor/sony/g')*
  * [**meldblue** *(Function)*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_8960_adriandc/android_shortcuts.rc) : *meld ./${1} ../blue-common/${1}*

---
### [ Documentation from [extensions/sony_8996_adriandc/android_autorelease.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_8996_adriandc/android_autorelease.rc) ]
  * [**autoreleaseaospsodp8996** *<b>\[Automated AOSP Sony SODP 8996 releaser\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_8996_adriandc/android_autorelease.rc) : *autoreleaseaospsodp8996 [devices] [bool_nosync]*

---
### [ Documentation from [extensions/template/android_template.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/template/android_template.rc) ]
  * [**_templateaddonfunction** *<b>\[Base template for addons\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/template/android_template.rc) : *_templateaddonfunction &lt;required&gt; [optional]*

---
### [ Documentation from [install_repo.sh](http://github.com/AdrianDC/android_development_shell_tools/blob/master/install_repo.sh)  - Standalone Import Ready ]
  ```Shell
source <(curl -Ls http://github.com/AdrianDC/android_development_shell_tools/install_repo.sh)
  ```
  * [**\./install_repo\.sh** *<b>\[Automated install of Android repo requirements\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/install_repo.sh) : *# Usage: install_repo.sh*

---
### [ Documentation from [run_cleanram.sh](http://github.com/AdrianDC/android_development_shell_tools/blob/master/run_cleanram.sh)  - Standalone Import Ready ]
  ```Shell
source <(curl -Ls http://github.com/AdrianDC/android_development_shell_tools/run_cleanram.sh)
  ```
  * [**\./run_cleanram\.sh** *<b>\[RAM caches cleanup\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/run_cleanram.sh) : *# Usage: run_cleanram.sh*

---
### [ Documentation from [server_reboot.sh](http://github.com/AdrianDC/android_development_shell_tools/blob/master/server_reboot.sh)  - Standalone Import Ready ]
  ```Shell
source <(curl -Ls http://github.com/AdrianDC/android_development_shell_tools/server_reboot.sh)
  ```
  * [**\./server_reboot\.sh** *<b>\[Server crontab script to reboot when not building\]</b>*](http://github.com/AdrianDC/android_development_shell_tools/blob/master/server_reboot.sh) : *# Usage: server_reboot.sh*

---
* #### Automatically generated by [shtoolsreadme](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc) for [android_development_shell_tools](http://github.com/AdrianDC/android_development_shell_tools)
<!-- Functions End -->
