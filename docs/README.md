# Android Development Shell Scripts
 * Project created by [Adrian DC](https://github.com/AdrianDC) - 2015-2017

 * The 'android_development_shell_tools' is a project meant to provide
   <br />
   multiple advanced functions and shortcuts to ease Android development
   <br />
 * The sources written and shared here are either meant to be used as they are,
   <br />
   or to serve as a reference for commands and functions an Android developer needs

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
  * [**shtoolsup** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc): *shtoolsup **(Reloads android_development_shell_tools scripts)***
  * [**shtoolse** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc): *shtoolse &lt;words&gt; &lt;to&gt; &lt;search&gt; **(Direct access to related sources)***
  * [**shtoolssync** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc): *shtoolssync **(Download new android_development_shell_tools changes)***
  * [**shtoolspush** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc): *shtoolspush **(Commit new changes to android_development_shell_tools)***
  * [**shtoolsamend** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc): *shtoolsamend **(Amend new changes to android_development_shell_tools)***
  * [**shtoolsdiff** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc): *shtoolsdiff **(Compare with upstream android_development_shell_tools)***
  * [**shtoolslog** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc): *shtoolslog **(Display android_development_shell_tools history)***
  * [**shtoolsreset** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc): *shtoolsreset **(Reset project to remote HEAD)***
  * [**shtoolsdev** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc): *shtoolsdev [bool_master] **(Switch android_development_shell_tools branches)***
  * [**shtoolsreadme** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc): *shtoolsreadme **(Refresh README.md functions usages)***

---
### [ Documentation from [android_adb.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc) ]
  * [**adbr** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adbr **(adb root and remount rw system)***
  * [**adbro** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adbro **(Verified adb root and remount rw system)***
  * [**adbside** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adbside &lt;file_zip&gt; [bool_wait_recovery] **(adb sideload helper)***
  * [**adbs** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adb shell*
  * [**adbroot** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adb kill-server; sudo adb start-server*
  * [**adbremount** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *sudo adb root; sudo adb remount*
  * [**adbpo** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adb shell reboot -p*
  * [**adbre** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adb reboot*
  * [**adbrh** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adb ${1} shell setprop ctl.restart zygote*
  * [**adbrr** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adb reboot recovery*
  * [**adbw** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adb wait-for-device*
  * [**adbrb** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adb reboot bootloader*
  * [**adbscr** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *mkdir -p ./screenshots; adb shell screencap /sdcard/screenshot.png; adb pull /sdcard/screenshot.png ./screenshots/screenshot-$(date +%Y%m%d-%H%M%S).png*
  * [**adbfotarandom** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adb root; adb shell dd if=/dev/random of=/dev/block/platform/msm_sdcc.1/by-name/FOTAKernel*
  * [**adbfotazero** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adb root; adb shell dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/FOTAKernel*
  * [**adbsgdisk** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adb shell sgdisk --print /dev/block/mmcblk0*
  * [**adbinfomem** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adb shell dumpsys meminfo*
  * [**adbblkp** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adb shell ls -l /dev/block/bootdevice/by-name/*
  * [**adbdf** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adb shell df -H*
  * [**adbrcbin** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adb shell restorecon -R /sbin*
  * [**adbmountcache** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adb shell mount -t ext4 /dev/block/platform/msm_sdcc.1/by-name/Cache /cache*
  * [**adbmountdata** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adb shell mount -t ext4 /dev/block/platform/msm_sdcc.1/by-name/Userdata /data*
  * [**adbmountmicrosd** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adb shell mkdir -p /storage/ext; adb shell mount -t ext4 /dev/block/mmcblk1p1 /storage/ext*
  * [**adbumountcache** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adb shell umount /cache*
  * [**adbumountdata** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adb shell umount /data*
  * [**adbumountmicrosd** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adb shell umount /storage/ext*
  * [**adbmount** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adbmountcache; adbmountdata; adbmountmicrosd*
  * [**adbumount** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adbumountcache; adbumountdata; adbumountmicrosd*
  * [**adbemergencycalls** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adb shell setprop ril.ecclist*
  * [**adbemergencylist** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adb shell getprop ril.ecclist*
  * [**adbco** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adbco [ipaddress_once] **(Helper for adb network access)***
  * [**adbedit** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adbedit [file_path] **(Edit adb file, default on /system/build.prop)***
  * [**adbdatabase** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adbdatabase &lt;/data/.../sqlite.db&gt;*
  * [**adbinputs** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adbinputs **(Dump all input devices)***
  * [**adbreadevents** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adbreadevents &lt;event_number&gt; **(Read input events)***
  * [**adbkp** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adbkp &lt;process_name&gt; **(Kill process by name)***
  * [**adbservices** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adb shell service list*
  * [**adbsl** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adb shell ls -l*
  * [**adbslz** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adb shell ls -lZ*
  * [**adbsc** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adb shell cat*
  * [**adbsg** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adb shell getprop*
  * [**adbsw** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adbro; adb shell "echo ${1} &gt; ${2}"*
  * [**isdone** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *notify-send "Process execution finished !*
  * [**adbgitpf** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adbgitpf &lt;commit_sha1&gt; **(Push files through adb from commit)***
  * [**adbu** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb.rc): *adbu &lt;package_name&gt; **(Force optimization of a package)***

---
### [ Documentation from [android_adb_assets.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc) ]
  * [**adbupdate** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc): *adbupdate **(adb binary update from upstream)***
  * [**sepaud** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc): *sepaud &lt;logs_file&gt; **(Logs sepolicy analyzer)***
  * [**adbintents** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc): *adb shell dumpsys package r &gt; intents.txt*
  * [**adbcamera** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc): *adb shell pm enable com.android.camera2/com.android.camera.CameraLauncher; alias adblkl='adb root; adb wait-for-device; adb shell killall zigote; adbl*
  * [**adbpk** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc): *adbpk **(Android mediaserver debug logger)***
  * [**adbms** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc): *adbms **(Android mediaserver debug stracer)***
  * [**adblibs** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc): *adb shell grep -air "${1}" ${2:-/system/lib/}*
  * [**ndkstack** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc): *ndk-stack -sym ${ANDROID_DEV_DRIVE}/out/target/product/huashan/symbols -dump*
  * [**adbwtch** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc): *adbr; while [ 1 ]; do adb shell cat "${1}"; done*
  * [**adbdu** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc): *adbdu **(Android /data/ sizes study)***
  * [**adbpropradiolog** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc): *adbpropradiolog &lt;value&gt; **(Radio debug property overrider)***
  * [**adbrstock** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc): *adbrstock **(Stock ROM adb root access)***
  * [**adbalsa** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc): *adbalsa **(Audio cards advanced study)***

---
### [ Documentation from [android_adb_debug.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_debug.rc) ]
  * [**adbst** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_debug.rc): *adbst &lt;process_name&gt; [bool_get_root] [parameters] **(strace)***
  * [**adbstf** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_debug.rc): *adbstf &lt;process_name&gt; [bool_get_root] **(Followed strace)***

---
### [ Documentation from [android_adb_flash.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_flash.rc)  - Ready for standalone import ]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_devices.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_adb_tools.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_adb_flash.rc)
  ```
  * [**adbbootdump** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_flash.rc): *adbbootdump **(Dump bootimage from device)***
  * [**adbbootcut** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_flash.rc): *adbbootcut &lt;file_path&gt; **(Trim bootimage dump)***
  * [**adbrecoveryinstall** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_flash.rc): *adbrecoveryinstall &lt;file_path&gt; **(Inject and reboot recovery)***

---
### [ Documentation from [android_adb_installers.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc) ]
  * [**adbpushfile** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc): *adbpushfile &lt;file_path&gt; &lt;file_target&gt; **(Push files through adb)***
  * [**adbif** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc): *adbif &lt;command...&gt; **(Modules build listener and installed)***
  * [**adbil** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc): *adbil &lt;command...&gt; **(Modules build listener and lister)***
  * [**adbi** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc): *adbro; adbif ${@}*
  * [**adbii** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc): *adbif ${@}*
  * [**adbpf** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc): *adbpf &lt;file_paths&gt;*
  * [**adbp** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc): *adbro; adbpf*
  * [**adbpmrom** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc): *adbpmrom &lt;file&gt; **(MultiROM file pusher)***
  * [**adbpmromenc** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc): *adbpmromenc &lt;file&gt; **(MultiROM encryption file pusher)***
  * [**adbapkinstall** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc): *adbapkinstall **(Install all available apk files)***

---
### [ Documentation from [android_adb_logs.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) ]
  * [**adbl** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc): *adbl [all/crash/events/main/radio/system]*
  * [**adbcl** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc): *adbcl [file_adb.log] **(Logcat output cleaner)***
  * [**adbstcl** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc): *adbstcl [file_adb.log] **(strace output cleaner)***
  * [**adbld** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc): *cls; adbro; printf "" &gt;adb.data; adb shell cat /data/logcat.txt \| tee -a adb.data*
  * [**adblr** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc): *adbl radio*
  * [**adblb** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc): *while [ 1 ]; do cls; printf "" &gt;adb.log; adb logcat -v audit2allow *:V \| tee -a adb.log*
  * [**adblc** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc): *adb logcat -c; adbl*
  * [**adbk** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc): *adbro; printf "" &gt;kmsg; adb shell cat /proc/kmsg \| tee -a kmsg*
  * [**adbdm** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc): *adbro; printf "" &gt;dmesg; adb shell dmesg \| tee -a dmesg*
  * [**adbkd** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc): *printf "" &gt;kmsg; adb shell cat /proc/kmsg \| tee -a kmsg*
  * [**adbkl** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc): *cls; adbro; printf "" &gt;last_kmsg; adb shell cat /proc/last_kmsg \| tee -a last_kmsg*
  * [**adbkld** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc): *cls; printf "" &gt;last_kmsg; adb shell cat /proc/last_kmsg \| tee -a last_kmsg*
  * [**adbpl** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc): *cls; adbro; printf "" &gt;last_kmsg; adb shell cat /sys/fs/pstore/console-ramoops \| tee -a last_kmsg*
  * [**adbpld** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc): *cls; printf "" &gt;last_kmsg; adb shell cat /sys/fs/pstore/console-ramoops \| tee -a last_kmsg*
  * [**adbrl** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc): *cls; printf "" &gt;recovery_log; adb shell cat /tmp/recovery.log \| tee -a recovery_log*
  * [**adbse** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc): *adbro; printf "" &gt;kmsg; adb shell cat /proc/kmsg \| tee -a kmsg; sepaud kmsg*
  * [**adbdumpsensors** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc): *adb shell dumpsys sensorservice*
  * [**adbsel** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc): *adbkl; sepaud kmsg*
  * [**adblf** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc): *adb logcat -v audit2allow*
  * [**adblh** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc): *adb logcat -b events -b main -b radio \| highlight*
  * [**adbtrampoline** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc): *adb shell "dmesg \| grep -i trampoline*
  * [**adblcln** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc): *cat ${1} \| cut -c 32- \| tee ${1}.clean*
  * [**adbkcln** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc): *cat ${1} \| cut -c 15- \| tee ${1}.clean*
  * [**adbbootchart** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc): *adbbootchart **(Bootchart debug helper)***

---
### [ Documentation from [android_adb_tools.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc) ]
  * [**adbsu** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc): *adbsu &lt;command...&gt; **(Run on root adb shell)***

---
### [ Documentation from [android_changelog.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_changelog.rc) ]
  * [**repochangelog** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_changelog.rc): *repochangelog &lt;days_count&gt; [project1_path,project2_path,...]*

---
### [ Documentation from [android_devices.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_devices.rc) ]
  * [**androiddevicestarget** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_devices.rc): *androiddevicestarget [boot/system/...] **(Devices targets mapper)***
  * [**codenametotarget** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_devices.rc): *codenametotarget &lt;codename&gt; **(Codename to build target)***

---
### [ Documentation from [android_edit.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_edit.rc) ]
  * [**editreplacematch** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_edit.rc): *editreplacematch &lt;"match_line"&gt; &lt;"to_write"&gt; &lt;"files"&gt;*
  * [**editremovematch** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_edit.rc): *editremovematch &lt;"match_line"&gt; &lt;"files"&gt;*
  * [**editinsertabove** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_edit.rc): *editinsertabove &lt;"match_line"&gt; &lt;"to_insert"&gt; &lt;"files"&gt;*
  * [**editinsertbelow** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_edit.rc): *editinsertbelow &lt;"match_line"&gt; &lt;"to_insert"&gt; &lt;"files"&gt;*
  * [**editreplacemultiline** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_edit.rc): *editreplacemultiline &lt;"match_first"&gt; &lt;"match_last"&gt; &lt;"replace"&gt; &lt;"files"&gt;*

---
### [ Documentation from [android_fetch.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_fetch.rc) ]
  * [**gitfetchtreset** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_fetch.rc): *gitfetchtreset [remote] [branch]*
  * [**gitf** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_fetch.rc): *git fetch*
  * [**gitfmr** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_fetch.rc): *git fetch origin; git reset origin/master*
  * [**gitfs** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_fetch.rc): *git fetch origin; git reset origin/$(git rev-parse --abbrev-ref HEAD); git stash*
  * [**gitfsu** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_fetch.rc): *git fetch origin; git reset origin/$(git rev-parse --abbrev-ref HEAD); git stash -p*
  * [**gitfgr** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_fetch.rc): *gitfetchtreset github*
  * [**gitfor** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_fetch.rc): *gitfetchtreset origin*
  * [**gitforla** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_fetch.rc): *gitfetchtreset origin aosp/LA.UM.5.5_rb1.10*
  * [**gitfar** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_fetch.rc): *gitfetchtreset $(githubusername)*

---
### [ Documentation from [android_gerrit.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc)  - Ready for standalone import ]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_gerrit.rc)
  ```
  * [**gerritreview** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc): *gerritreview &lt;gerrit_ssh_or_http&gt; &lt;project_name_or_.&gt; &lt;drafts/for/heads&gt; [branch]*
  * [**gerritusername** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc): *gerritusername **(Gerrit username getter)***
  * [**gitpr** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc): *gerritreview ssh://$(gerritusername)@review.lineageos.org:29418 LineageOS for*
  * [**gitprh** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc): *gerritreview http://review.lineageos.org LineageOS for*
  * [**gitprd** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc): *gerritreview ssh://$(gerritusername)@review.lineageos.org:29418 LineageOS drafts*
  * [**gitprdh** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc): *gerritreview http://review.lineageos.org LineageOS drafts*
  * [**gitpg** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc): *gerritreview ssh://$(gerritusername)@review.lineageos.org:29418 LineageOS heads*
  * [**gitpgh** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc): *gerritreview http://review.lineageos.org LineageOS heads*
  * [**gitprg** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc): *gitpr; gitpg*
  * [**gitprgy** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc): *printf "ynyn" \| gitpr; printf "yny" \| gitpg*
  * [**gitpraosp** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc): *gerritreview https://android.googlesource.com aosp for*
  * [**gitpraospma** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc): *gerritreview https://android.googlesource.com aosp for master*
  * [**gitprdaosp** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc): *gerritreview https://android.googlesource.com aosp drafts*
  * [**gitprdaospma** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc): *gerritreview https://android.googlesource.com aosp drafts master*
  * [**gitpraicp** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc): *gerritreview ssh://$(gerritusername)@gerrit.aicp-rom.com:29418 AICP for n7.1*
  * [**gitprhaicp** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc): *gerritreview http://gerrit.aicp-rom.com AICP for n7.1*
  * [**gitprdaicp** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc): *gerritreview ssh://$(gerritusername)@gerrit.aicp-rom.com:29418 AICP drafts n7.1*
  * [**gitprdhaicp** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc): *gerritreview http://gerrit.aicp-rom.com AICP drafts n7.1*
  * [**gitpgaicp** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc): *gerritreview ssh://$(gerritusername)@gerrit.aicp-rom.com:29418 AICP heads n7.1*
  * [**gitpghaicp** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc): *gerritreview http://gerrit.aicp-rom.com AICP heads n7.1*
  * [**gitprgaicp** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc): *gitpraicp; gitpgaicp*
  * [**gitprghaicp** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc): *gitprhaicp; gitpghaicp*
  * [**gitpr7** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc): *gerritreview ssh://radian.dc@review.msm7x30.org:29418 LegacyXperia for*
  * [**gitpr7h** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc): *gerritreview http://review.msm7x30.org LegacyXperia for*
  * [**gitpr7d** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc): *gerritreview ssh://radian.dc@review.msm7x30.org:29418 LegacyXperia drafts*
  * [**gitpr7dh** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc): *gerritreview http://review.msm7x30.org LegacyXperia drafts*
  * [**gitpromni** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc): *gerritreview ssh://$(gerritusername)@gerrit.omnirom.org:29418 . for android-7.1*
  * [**gitprhomni** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc): *gerritreview http://gerrit.omnirom.org . for android-7.1*
  * [**gitprdomni** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc): *gerritreview ssh://$(gerritusername)@gerrit.omnirom.org:29418 . drafts android-7.1*
  * [**gitprdhomni** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc): *gerritreview http://gerrit.omnirom.org . drafts android-7.1*
  * [**gitprtwrp** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc): *gerritreview ssh://$(gerritusername)@gerrit.twrp.me:29418 . for android-6.0*
  * [**gitprdtwrp** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc): *gerritreview ssh://$(gerritusername)@gerrit.twrp.me:29418 . drafts android-6.0*

---
### [ Documentation from [android_gerritssh.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerritssh.rc)  - Ready for standalone import ]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_gerritssh.rc)
  ```
  * [**gerritssh** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerritssh.rc): *gerritssh [branch] [change_id_reverser]*

---
### [ Documentation from [android_git.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc) ]
  * [**githubusername** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *githubusername **(GitHub username getter)***
  * [**gitfcu** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *gitfcu &lt;url&gt; [branch] **(Git fetch url and reset)***
  * [**gitcleantags** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *gitcleantags &lt;branch_to_keep&gt;*
  * [**gitonebranch** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *gitonebranch **(Git remove non-default remote branches)***
  * [**gits** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git stash*
  * [**gitsp** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git stash -p*
  * [**gitsu** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git stash -u*
  * [**gitspop** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git stash pop*
  * [**gitdi** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *gitdi **(Show git differences status)***
  * [**gitdfs** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *gitdfs &lt;sha1commit&gt;*
  * [**gitdf** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *gitdf &lt;sha1commit&gt; &lt;filepath&gt;*
  * [**gitlo** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git log --pretty=oneline*
  * [**gitlod** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git log --pretty=oneline --*
  * [**gitloo** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git log --pretty=format:"%C(yellow)%h %Cred%ad %Creset%s" --date=short --all --*
  * [**gitlos** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *gitlos &lt;path_or_.&gt; ["search string input"] [search_max_count]*
  * [**gitfindsha1** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *gitfindsha1 &lt;remote/branch&gt; &lt;"title text to search"&gt;*
  * [**gitshow** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git show --name-status*
  * [**gitshf** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git show --pretty=full*
  * [**gitshl** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git show --oneline --name-only ${1} \| tail -n +2 \| cut -c $((1+${2:-0}))-*
  * [**gitap** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git add -p*
  * [**gitaa** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git add . -Av*
  * [**gitan** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git add . -An*
  * [**gite** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *gedit ${1}; printf ' Done ? [Enter] '; read; git add ${1}*
  * [**gitbd** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git branch -D*
  * [**gitbv** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git fetch ${gitreviewdefault} $(git rev-parse --abbrev-ref HEAD); git branch -vv*
  * [**gitch** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git checkout*
  * [**gitcp** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git cherry-pick*
  * [**gitcpc** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git reset; git cherry-pick --continue*
  * [**gitcpf** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git fetch ${1} ${2}; git cherry-pick FETCH_HEAD*
  * [**gitfcp** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git fetch ${1}; git cherry-pick FETCH_HEAD~${2:-0}*
  * [**gitcpr** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git show ${1} --no-color \| sed "s/${2}/${3}/g" \| patch*
  * [**gitc** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git commit $(gitgpgparam)*
  * [**gitcs** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git commit $(gitgpgparam) -s*
  * [**gitca** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git commit $(gitgpgparam) --amend*
  * [**gitcae** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git commit $(gitgpgparam) --amend --no-edit*
  * [**gitcauthor** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git commit $(gitgpgparam) --amend --no-edit --author="$(git config --global --get user.name) &lt;$(git config --global --get user.email)&gt;*
  * [**gitrevert** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git revert $(gitgpgparam) --no-edit*
  * [**gitfix** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *rm -fv .git/COMMIT_EDITMSG*; rm -fv .git/.COMMIT_EDITMSG.swp*
  * [**gitcid** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *gitcid **(Apply commit-msg hook to commit)***
  * [**gitcidupstream** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *gitcidupstream **(Load commit-msg hook from upstream)***
  * [**gitfurl** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git fetch "${1%/commits/*}" "${1#*/commits/}"*
  * [**gitpf** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git push -f*
  * [**gitra** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git rebase --abort*
  * [**gitrc** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git rebase --continue*
  * [**gitre** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git rebase --edit-todo*
  * [**gitrs** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git rebase --skip*
  * [**gitrf** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git rebase ${1}^ -i*
  * [**gitr** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git rebase HEAD~${1:-5} -i*
  * [**gitrall** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git rebase -i HEAD~$(($(git rev-list --count HEAD) - 1))*
  * [**gitrfedit** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *GIT_SEQUENCE_EDITOR="sed -i -e 's/pick/edit/g'" git rebase ${1} -i*
  * [**gitredit** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *GIT_SEQUENCE_EDITOR="sed -i -e 's/pick/edit/g'" git rebase HEAD~${1:-5} -i*
  * [**gitrb** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *branch=${1:-$(repogetbranch)}; git fetch github ${branch}; git rebase github/${branch}*
  * [**gitrbo** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *branch=${1:-$(repogetbranch)}; git fetch origin ${branch}; git rebase origin/${branch}*
  * [**gitrv** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git remote -v*
  * [**gitrh** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git reset FETCH_HEAD --hard*
  * [**githd** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git reset HEAD --hard*
  * [**gitcl** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git reset HEAD --hard; git stash -u; git am --abort*
  * [**gitro** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git reset HEAD^ --hard*
  * [**gitsl** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git reset HEAD^; gitap; gitcae*
  * [**gitrl** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git revert HEAD -n; git commit -m "Revert"; git reset HEAD^; git add -p*
  * [**gitri** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git reset HEAD^*
  * [**gitrt** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git reset --hard*
  * [**gitrerere** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git config --global rerere.enabled*
  * [**gitdiffpermhide** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git config core.filemode false*
  * [**gitdiffpermshow** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git config core.filemode true*
  * [**gpglist** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *gpg --list-secret-keys --keyid-format LONG*
  * [**gpgsilent** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *echo "no-tty" &gt;&gt; ~/.gnupg/gpg.conf*
  * [**gpgenable** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git config --global commit.gpgsign true*
  * [**gpgdisable** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git config --global commit.gpgsign false*
  * [**gpgsigning** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git config --global user.signingkey*
  * [**gitshowsg** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git config --global alias.logs "log --show-signature*
  * [**gitpwstore** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git config --global credential.helper store*
  * [**githi** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git update-index --assume-unchanged*
  * [**gitsh** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git update-index --no-assume-unchanged*
  * [**gitgpgparam** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *gitgpgparam **(Returns the GPG signature flag if enabled)***
  * [**gitmt** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *git mergetool*
  * [**gitmte** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *gitmte **(Merge tool with manual conflicts resolution)***
  * [**gitmtr** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git.rc): *gitmtr &lt;referenced_path&gt;*

---
### [ Documentation from [android_git_pick.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_pick.rc) ]
  * [**gitcpu** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_pick.rc): *gitcpu &lt;githuburltocommit&gt; [branch]*
  * [**gitmerges** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_pick.rc): *gitmerges &lt;commit_sha1&gt; [count] **(Attempt to merge commit history)***
  * [**gitcpo** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_pick.rc): *gitcpo &lt;branch&gt; &lt;amount_of_commits&gt;*
  * [**gitcpup** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_pick.rc): *gitcpup &lt;url&gt; **(Git URL patch applier)***
  * [**gitcpur** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_pick.rc): *gitcpur &lt;githuburltoproject&gt; &lt;branch&gt; &lt;search_text&gt; &lt;replace_text&gt;*
  * [**gitcpupprima** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_pick.rc): *gitcpup "${1}" CORE drivers/staging/prima/CORE*

---
### [ Documentation from [android_git_stats.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc) ]
  * [**gitstat** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc): *gitstat &lt;remote&gt; &lt;branch&gt; [stats_only]*
  * [**gitst** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc): *gitremoteverify origin gitrao && gitstat origin cm-14.1*
  * [**gitsto** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc): *gitremoteverify origin gitrao && gitstat origin $(git rev-parse --abbrev-ref HEAD)*
  * [**gitsta** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc): *gitremoteverify $(githubusername) gitraa && gitstat $(githubusername) cm-14.1*
  * [**gitstam** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc): *gitremoteverify $(githubusername) gitraa && gitstat $(githubusername) master*
  * [**gitstg** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc): *gitremoteverify github false && gitstat github*
  * [**gitstaosp** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc): *gitremoteverify aosp false && gitstat aosp master*
  * [**gitstsony** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc): *gitremoteverify origin gitraos && gitstat origin aosp/LA.UM.5.5.r1*
  * [**gitstfa** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc): *gitrao; gitremoteverify $(githubusername) gitraa && gitstat $(githubusername) cm-14.1 true*

---
### [ Documentation from [android_grep.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_grep.rc) ]
  * [**grepb** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_grep.rc): *grepb [inputs] **(Grep through sources)***
  * [**g** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_grep.rc): *grepb*
  * [**grepbs** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_grep.rc): *grepbs [inputs] **(Grep through sources and binaries)***
  * [**gs** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_grep.rc): *grepbs*
  * [**gck** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_grep.rc): *gck [inputs] **(Grep through kernel configurations)***
  * [**gca** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_grep.rc): *gca [inputs] **(Grep through Android makefiles)***
  * [**grepi** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_grep.rc): *grep -i*
  * [**glc** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_grep.rc): *GREP_COLORS='fn=1;1' grep --include *.c --include *.cpp --include *.h -anr '.{80,}' .*
  * [**glj** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_grep.rc): *GREP_COLORS='fn=1;1' grep --include *.java -anr '.{100,}' .*
  * [**gle** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_grep.rc): *GREP_COLORS='fn=1;1' grep --include *.c --include *.cpp --include *.h --include *.java -anr '.* $' .*
  * [**gcmodules** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_grep.rc): *gcmodules **(List all LOCAL_MODULE elements)***

---
### [ Documentation from [android_kernel_builders.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_builders.rc)  - Ready for standalone import ]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_kernel_builders.rc)
  ```
  * [**makekernel** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_builders.rc): *makekernel [platform_device_to_init / clean / mrproper] [make_parameters]*
  * [**mkcopyleft** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_builders.rc): *mkcopyleft [device_name_to_init] [msm*-perf_to_use]*

---
### [ Documentation from [android_kernel_defconfig.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_defconfig.rc)  - Ready for standalone import ]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_kernel_defconfig.rc)
  ```
  * [**makedefconf** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_defconfig.rc): *makedefconf &lt;device_name&gt; [bool_full_config] [diff_config] [force_config=value]*
  * [**kernelconfigupdater** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_defconfig.rc): *kernelconfigupdater &lt;CONFIG_NAME=VALUE_or_# CONFIG_NAME is not set&gt;*
  * [**makedefconfset** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_defconfig.rc): *makedefconfset &lt;device_name&gt; [force_config=value]*

---
### [ Documentation from [android_kernel_editors.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_editors.rc) ]
  * [**boottools** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_editors.rc): *boottools &lt;boot.img&gt;*
  * [**bootelf** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_editors.rc): *bootelf &lt;boot.img&gt;*

---
### [ Documentation from [android_kernel_helpers.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_helpers.rc) ]
  * [**makekernelinjector** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_helpers.rc): *makekernelinjector &lt;device_name&gt;*
  * [**doradefconf** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_helpers.rc): *makedefconf msm-perf dora common*
  * [**doracopyleft** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_helpers.rc): *mkcopyleft dora*
  * [**doraaospdefconf** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_helpers.rc): *makedefconf aosp_tone_dora_defconfig*
  * [**doraaospkernel** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_helpers.rc): *makekernel tone_dora*
  * [**dorazipkernel** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_helpers.rc): *kernelinjectorzip dora arch/arm64/boot/Image.gz-dtb .*
  * [**sonykernelrebase** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_helpers.rc): *git fetch https://github.com/sonyxperiadev/kernel aosp/LA.UM.5.5.r1; git rebase FETCH_HEAD; gitpa*
  * [**kaguradefconf** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_helpers.rc): *makedefconf msm-perf kagura common*
  * [**sonyaospkernelupdate** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_helpers.rc): *sonyaospkernelupdate &lt;device_name&gt;*

---
### [ Documentation from [android_kernel_tools.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc) ]
  * [**fboota** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc): *fboota [unsecure,sep,full,init,inject,recovery,fastupl,zip]*
  * [**fboot** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc): *fboot &lt;bootimage&gt;*
  * [**fboots** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc): *fboots &lt;system_img&gt;*
  * [**fbootr** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc): *fbootr **(Fastboot reboot)***
  * [**fbooti** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc): *fbooti **(Kernel bbootimg analyzer)***
  * [**bootinfo** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc): *bootinfo &lt;boot_img_file&gt;*
  * [**adbfotainfos** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc): *adbfotainfos **(FOTA bbootimg analyzer)***
  * [**fbootk** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc): *fbootk &lt;kernelpath&gt; [bool_fota]*
  * [**frecovery** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc): *frecovery &lt;image&gt; **(Flash recovery with fastboot)***
  * [**adbbootpush** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc): *adbbootpush &lt;image&gt; **(Inject bootimage to partition)***
  * [**adbfotapush** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc): *adbfotapush &lt;image&gt; **(Inject FOTA to partition)***
  * [**adbrecoverypush** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc): *adbrecoverypush &lt;image&gt; **(Inject recovery to partition)***
  * [**kernelinjectorzip** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc): *kernelinjectorzip &lt;device&gt; &lt;kernel_file_path&gt; [kernel_sources_for_modules]*
  * [**bootzip** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc): *bootzip &lt;device&gt; &lt;boot_img_path&gt;*
  * [**makesep** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc): *makesep **(Compile sepolicies clean)***
  * [**bootimagedebuggable** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc): *bootimagedebuggable &lt;device_product&gt; &lt;true/false&gt;*

---
### [ Documentation from [android_linux.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc) ]
  * [**cls** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc): *cls **(Clean terminal screen)***
  * [**toclip** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc): *xclip -selection c*
  * [**findn** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc): *find -name*
  * [**rsynca** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc): *rsynca &lt;path1&gt; &lt;path2&gt;*
  * [**pcinfo** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc): *inxi -Fxz*
  * [**findnewer** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc): *findnewer &lt;20160123&gt;*
  * [**cpioext** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc): *cpioext &lt;cpio_file_to_extract&gt;*
  * [**videoresize** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc): *videoresize &lt;video_file&gt;*
  * [**disableautomount** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc): *disableautomount **(Linux USB automount disabler)***
  * [**diffbin** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc): *diffbin &lt;binary_left&gt; &lt;binary_right&gt; [first_n_lines]*
  * [**netspeed** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc): *netspeed **(Display network speeds)***
  * [**buildlock** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc): *buildlock &lt;command...&gt; **(Mutex-locked command execution)***
  * [**fileschemesorter** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc): *fileschemesorter &lt;file_to_sort&gt; &lt;file_reference&gt;*
  * [**mtpmountdisable** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc): *mtpmountdisable **(Disable MTP automount)***
  * [**cleanram** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc): *cleanram **(RAM caches cleanup)***
  * [**cleanramkill** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc): *cleanramkill **(Complete RAM cleanup including "java")***
  * [**networkrestart** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc): *networkrestart **(Restart network manager)***
  * [**pushbsizes** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_linux.rc): *pushbsizes &lt;paths&gt; **(Path sizes in PushBullet notification)***

---
### [ Documentation from [android_push.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_push.rc) ]
  * [**gitpu** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_push.rc): *gitpu [remote] [branch] [input]*
  * [**gitpa** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_push.rc): *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername)*
  * [**gitpa14** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_push.rc): *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) cm-14.1*
  * [**gitpala** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_push.rc): *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) LA.UM.5.5_rb1.10*
  * [**gitpal** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_push.rc): *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) local_manifests*
  * [**gitpaman** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_push.rc): *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) manifests*
  * [**gitpam** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_push.rc): *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) multirom*
  * [**gitpama** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_push.rc): *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) master*
  * [**gitpanmr** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_push.rc): *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) n-mr1*
  * [**gitpan** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_push.rc): *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) nougat*
  * [**gitpat** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_push.rc): *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) twrp*
  * [**gitpb** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_push.rc): *gitremoteverify backup gitrab && gitpu backup*
  * [**gitpp** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_push.rc): *gitremoteverify project false && gitpu project*
  * [**gitppm** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_push.rc): *gitremoteverify project false && gitpu project master*
  * [**gitpurl** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_push.rc): *gitpu "${1%/commits/*}" "${1#*/commits/}"*

---
### [ Documentation from [android_pushbullet.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_pushbullet.rc) ]
  * [**pushb** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_pushbullet.rc): *pushb [message] **(PushBullet notification helper)***

---
### [ Documentation from [android_release_builders.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_builders.rc) ]
  * [**romautorelease** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_builders.rc): *romautorelease &lt;devicename&gt; {aosp/lineage/lx/caf/rr} [nowipe/outclean/outwipe,bringup/dev/local/priv,j1/j2] **(Advanced automated ROM builder)***
  * [**aosp8960autorelease** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_builders.rc): *aosp8960autorelease [devices] [bool_nosync] **(Automated AOSP 8960 releaser)***
  * [**aospsodpautorelease** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_builders.rc): *aospsodpautorelease [devices] [bool_nosync] **(Automated AOSP SODP releaser)***
  * [**lineageautorelease** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_builders.rc): *lineageautorelease [devices] [bool_nosync] **(Automated LineageOS 8960 releaser)***
  * [**lxautorelease** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_builders.rc): *lxautorelease [devices] [bool_unpatched] **(Automated RR 8960 releaser)***
  * [**rrautorelease** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_builders.rc): *rrautorelease [devices] [bool_nosync] **(Automated RR 8960 releaser)***
  * [**mromautorelease** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_builders.rc): *mromautorelease [devices] **(Automated MultiROM releaser)***
  * [**twrpautorelease** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_builders.rc): *twrpautorelease [devices] **(Automated TWRP releaser)***
  * [**cafautorelease** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_builders.rc): *cafautorelease [devices] **(Automated AOSP-CAF 8960 releaser)***
  * [**romlogs** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_builders.rc): *romlogs &lt;device&gt; &lt;rom&gt; [logs_count_**(default_200)**]*

---
### [ Documentation from [android_release_helpers.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_helpers.rc) ]
  * [**outdevcl** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_helpers.rc): *outdevcl &lt;devicename&gt;*
  * [**noninja** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_helpers.rc): *noninja &lt;command...&gt; **(Run command without ninja)***
  * [**mmo** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_helpers.rc): *mmo &lt;command...&gt; **(Build module without ninja)***
  * [**mmi** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_helpers.rc): *mmi &lt;command...&gt; **(Build & install module without ninja)***
  * [**mmil** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_helpers.rc): *mmil &lt;command...&gt; **(Build & list module without ninja)***
  * [**noccache** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_helpers.rc): *noccache &lt;command...&gt; **(Run command without CCache)***

---
### [ Documentation from [android_release_packages.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_packages.rc) ]
  * [**signzip** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_packages.rc): *signzip &lt;zip_to_sign&gt; [signed_output_zip] **(Sign flashable zip)***
  * [**mmmzip** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_packages.rc): *mmmzip &lt;paths_or_modules&gt; **(Build module to flashable zip)***
  * [**systozip** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_packages.rc): *systozip &lt;files&gt; **(System files to flashable zip)***
  * [**packzip** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_packages.rc): *packzip &lt;files&gt; **(Files to flashable zip)***
  * [**gitzip** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_packages.rc): *gitzip &lt;commit_sha1&gt; **(Git commit files to flashable zip)***

---
### [ Documentation from [android_remotes.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc) ]
  * [**gitremoteset** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc): *gitremoteset &lt;remote_name&gt; &lt;remote_url&gt;*
  * [**gitremoteadaptset** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc): *gitremoteadaptset &lt;remote_name&gt; &lt;remote_github&gt; [prefix_removal] [bool_prefix_android] [bool_underscore_to_dash]*
  * [**gitremoteverify** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc): *gitremoteverify &lt;remote_name&gt; "command_to_run_if_missing*
  * [**gitraa** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc): *gitraa **(Add GitHub Username remote)***
  * [**gitrai** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc): *gitremoteadaptset 'aicp' 'AICP' 'android_'*
  * [**gitraoo** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc): *gitremoteadaptset 'origin' "${1}" ''*
  * [**gitraot** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc): *gitremoteadaptset 'origin' 'TheMuppets' ''*
  * [**gitrat** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc): *gitremoteadaptset 'twrp' 'TeamWin' ''*
  * [**gitral** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc): *gitremoteset lineage "${1}"*
  * [**gitrao** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc): *gitrao **(Add LineageOS origin remote)***
  * [**gitrax** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc): *gitrax **(Add XperiaMultiROM xperia remote)***
  * [**gitramd** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc): *gitramd **(Add MultiROM-Dev mromdev remote)***
  * [**gitraos** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc): *gitraos **(Add sonyxperiadev origin remote)***
  * [**gitraau** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc): *git remote set-url $(githubusername)*
  * [**gitraou** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc): *git remote set-url origin*
  * [**gitrab** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc): *gitrab **(Add backup remote)***
  * [**gitra8960lineage** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc): *gitra8960lineage **(Add LineageOS 8960 development remote)***
  * [**gitra8996lineage** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc): *gitra8996lineage **(Add LineageOS 8996 development remote)***
  * [**gitra8960naosp** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc): *gitra8960naosp **(Add AOSP 8960 Nougat development remote)***
  * [**gitra8960oaosp** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc): *gitra8960oaosp **(Add AOSP 8960 O development remote)***
  * [**gitra8960masteraosp** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc): *gitra8960masteraosp **(Add AOSP 8960 Master development remote)***
  * [**gitrasonyaosp** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc): *gitrasonyaosp **(Add AOSP Sony development remote)***
  * [**gitraaospcaf** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc): *gitraaospcaf **(Add AOSP-CAF development remote)***
  * [**gitrasonylineage** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc): *gitrasonylineage **(Add LineageOS development remote)***
  * [**gitramultirom** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc): *gitramultirom **(Add MultiROM development remote)***
  * [**gitratwrp** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_remotes.rc): *gitratwrp **(Add TWRP development remote)***

---
### [ Documentation from [android_repo_builders.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_builders.rc) ]
  * [**repotwrp** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_builders.rc): *repotwrp {device} [nosync,nowipe,outcl,fota,local +fotareboot]*
  * [**repomrom** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_builders.rc): *repomrom {device} [nosync,nowipe,outcl,fota,local +fotareboot]*

---
### [ Documentation from [android_repo_changes.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_changes.rc) ]
  * [**repochanges** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_changes.rc): *repochanges ["ignored_projects"] **(Detect all repo projects differences)***

---
### [ Documentation from [android_repo_cleaners.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_cleaners.rc) ]
  * [**repoprojectscleaner** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_cleaners.rc): *repoprojectscleaner **(Run inside an Android repo root)***
  * [**repotagscleaner** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_cleaners.rc): *repotagscleaner **(Run inside an Android repo root)***
  * [**repoheadscleaner** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_cleaners.rc): *repoheadscleaner **(Cleanup repo projects refs/ contents)***
  * [**reposyrm** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_cleaners.rc): *reposyrm &lt;project/relative/path&gt;*
  * [**reposyrmf** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_cleaners.rc): *reposyrmf &lt;project/relative/path&gt;*
  * [**repocleancache** (Alias)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_cleaners.rc): *if [ ! -z "${CCACHE_DIR}" ]; then rm -rfv "${CCACHE_DIR}/"*; fi*

---
### [ Documentation from [android_repo_compare.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_compare.rc) ]
  * [**repocomparestable** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_compare.rc): *repocomparestable [stable_ZNH5Y] [github_account_LineageOS] [full_diff]*
  * [**repocompareupstream** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_compare.rc): *repocompareupstream [github_account_LineageOS] [full_diff]*
  * [**repocomparetags** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_compare.rc): *repocomparetags &lt;tag_to_compare_to_android_branch&gt; [ignore_account_LineageOS] [full_diff]*

---
### [ Documentation from [android_repo_helpers.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc) ]
  * [**gettop** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc): *gettop **(Get repo root path)***
  * [**croot** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc): *croot **(Access repo root path)***
  * [**repos** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc): *repos [device_name] **(Prepare LineageOS device environment)***
  * [**reposaosp** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc): *reposaosp [device_name] **(Prepare AOSP device environment)***
  * [**reporoomserv** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc): *reporoomserv **(Manifest and local_manifests editor)***
  * [**reposy** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc): *reposy **(Optimized relevant repo sync)***
  * [**reposysafe** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc): *reposysafe **(Safeguarded repo projects sync)***
  * [**reposybranch** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc): *reposybranch **(Individual repo projects sync)***
  * [**repoprune** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc): *repoprune **(Apply repo-wide prune cleanup)***
  * [**reposycl** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc): *reposycl **(Cleaned optimized relevant repo sync)***
  * [**repocache** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc): *repocache [cache_maximum_size] **(CCache watcher and configuration)***
  * [**repogetbranch** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc): *repogetbranch **(Get repo main branch)***

---
### [ Documentation from [android_repo_init.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_init.rc) ]
  * [**repoinitaosp** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_init.rc): *repoinitaosp &lt;android-7.1.2_r{XX}&gt; [referenced,clean,rmout,noprepare,example]*
  * [**repoinitlineage** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_init.rc): *repoinitlineage &lt;13.0/14.1&gt; [referenced,clean,rmout,noprepare,example]*
  * [**repoinitaospall** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_init.rc): *repoinitaospall &lt;android-7.1.2_r{XX}&gt; [clean,rmout]*
  * [**repoinitlineageall** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_init.rc): *repoinitlineageall &lt;13.0/14.1&gt; [clean,rmout]*
  * [**repoinitrr** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_init.rc): *repoinitrr &lt;nougat&gt; [referenced,clean,rmout,noprepare]*

---
### [ Documentation from [android_repo_referenced.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_referenced.rc) ]
  * [**reporeferencedaosp** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_referenced.rc): *reporeferencedaosp &lt;"command_to_run"&gt; &lt;"device1 device2 ..."&gt;*
  * [**reporeferencedlineage** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_referenced.rc): *reporeferencedlineage &lt;"command_to_run"&gt; &lt;"device1 device2 ..."&gt;*
  * [**reporefupdate** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_referenced.rc): *reporefupdate **(Upload new projects manifests)***
  * [**reporefsync** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_referenced.rc): *reporefsync **(Download new projects manifests)***

---
### [ Documentation from [android_rom_aicp.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_aicp.rc) ]
  * [**gitcpaicp** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_aicp.rc): *gitcpaicp **(Automated upstream to AICP device merger)***

---
### [ Documentation from [android_rom_aosp_sony8960.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_aosp_sony8960.rc)  - Ready for standalone import ]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_remotes.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_projects.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_aosp_sony8960.rc)
  ```
  * [**aosp8960npatcher** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_aosp_sony8960.rc): *aosp8960npatcher [specific_paths] **(AOSP 8960 Nougat Patcher)***
  * [**aosp8960opatcher** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_aosp_sony8960.rc): *aosp8960opatcher [specific_paths] **(AOSP 8960 O Patcher)***
  * [**aosp8960masterpatcher** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_aosp_sony8960.rc): *aosp8960masterpatcher [specific_paths] **(AOSP 8960 Master Patcher)***

---
### [ Documentation from [android_rom_aosp_sonyaosp.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_aosp_sonyaosp.rc)  - Ready for standalone import ]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_remotes.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_projects.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_aosp_sonyaosp.rc)
  ```
  * [**aospsonypatcher** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_aosp_sonyaosp.rc): *aospsonypatcher [specific_paths] **(AOSP SONY SODP Patcher)***
  * [**aospsonyrebaser** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_aosp_sonyaosp.rc): *aospsonyrebaser [specific_paths] **(AOSP SONY SODP Rebaser)***

---
### [ Documentation from [android_rom_aospcaf.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_aospcaf.rc)  - Ready for standalone import ]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_remotes.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_projects.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_aosp_aospcaf.rc)
  ```
  * [**aospcafpatcher** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_aospcaf.rc): *aospcafpatcher [specific_paths] **(AOSP-CAF Patcher)***

---
### [ Documentation from [android_rom_legacyxperia.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_legacyxperia.rc)  - Ready for standalone import ]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_kernel_defconfig.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_legacyxperia.rc)
  ```
  * [**lineagelxpatcher** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_legacyxperia.rc): *lineagelxpatcher [local_manifests_branch]*
  * [**lxrepopick** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_legacyxperia.rc): *lxrepopick &lt;commit_id&gt;*
  * [**lxdefconfig** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_legacyxperia.rc): *lxdefconfig **(Edit all lx defconfigs)***

---
### [ Documentation from [android_rom_lineageos.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_lineageos.rc)  - Ready for standalone import ]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_remotes.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_projects.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_lineageos.rc)
  ```
  * [**lineagepatcher** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_lineageos.rc): *lineagepatcher [specific_paths] **(LineageOS WiP Patcher)***
  * [**lineagerebaser** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_lineageos.rc): *lineagerebaser [specific_paths] **(LineageOS Devices Rebaser)***
  * [**lineagewebjekyll** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_lineageos.rc): *lineagewebjekyll [bool_install] **(Jekyll web helper)***

---
### [ Documentation from [android_rom_lineageos_sony8996.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_lineageos_sony8996.rc)  - Ready for standalone import ]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_remotes.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_projects.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_lineageos_sony8996.rc)
  ```
  * [**lineage8996patcher** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_lineageos_sony8996.rc): *lineage8996patcher [specific_paths] **(LineageOS Sony 8996 Patcher)***

---
### [ Documentation from [android_rom_lineageos_sonysodp.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_lineageos_sonysodp.rc)  - Ready for standalone import ]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_remotes.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_projects.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_lineageos_sonysodp.rc)
  ```
  * [**lineagesodppatcher** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_lineageos_sonysodp.rc): *lineagesodppatcher [specific_paths] **(LineageOS SONY SODP Patcher)***
  * [**lineagesodprebaser** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_lineageos_sonysodp.rc): *lineagesodprebaser [specific_paths] **(LineageOS SONY SODP Rebaser)***

---
### [ Documentation from [android_rom_projects.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_projects.rc) ]
  * [**gitbranchpusher** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_projects.rc): *gitbranchpusher [y] **(Push to project specific branch)***
  * [**androidprojectpatcher** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_projects.rc): *androidprojectpatcher &lt;project_name&gt; &lt;project_tag&gt; ["project paths"] [specific_path]*
  * [**androidprojectrebaser** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_projects.rc): *androidprojectrebaser &lt;upstream_repository_if_not_origin&gt; &lt;project_branch&gt; &lt;"project_paths::name::branch"&gt; [specific_path]*

---
### [ Documentation from [android_shortcuts.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) ]
  * [**cdd** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *cdd [device_name] **(Access device sources)***
  * [**cdman** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *cdman **(Access manifests path)***
  * [**toout** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *toout [device_name] **(Get device build output path)***
  * [**cdout** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *cdout [device_name] **(Access device build output path)***
  * [**getand** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *getand **(Get AndroidDev drive)***
  * [**torompaths** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *torompaths &lt;rom_name&gt; [device] **(Get ROM device variant path)***
  * [**toaosp** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *torompaths 'AOSP' "${1}"*
  * [**tolineage** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *torompaths 'LineageOS' "${1}"*
  * [**toaospcaf** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *torompaths 'AOSP-CAF' "${1}"*
  * [**tomultirom** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *torompaths 'MultiROM' "${1}"*
  * [**torr** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *torompaths 'ResurrectionRemix' "${1}"*
  * [**totwrp** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *torompaths 'TWRP' "${1}"*
  * [**cdaosp** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *cd $(toaosp ${1})*
  * [**cdl** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *cd $(tolineage ${1})*
  * [**cdlineage** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *cd $(tolineage ${1})*
  * [**cdaospcaf** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *cd $(toaospcaf)*
  * [**cdmultirom** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *cd $(tomultirom)*
  * [**cdrr** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *cd $(torr ${1})*
  * [**cdtwrp** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *cd $(totwrp)*
  * [**cdand** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *cd $(getand)*
  * [**cda** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *cdlineage huashan*
  * [**getshtools** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *echo ${android_development_shell_tools_dir}*
  * [**cdshtools** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *cd $(getshtools)*
  * [**cddesk** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *cd "$(xdg-user-dir DESKTOP)"*
  * [**cddev** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *cd $(getand)/Development/${1}*
  * [**cddevaosp** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *cd $(getand)/Development/aosp_*${1}*
  * [**cddevlineage** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *cd $(getand)/Development/lineage_*${1}*
  * [**cddevmrom** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *cd $(getand)/Development/multirom_development_sony*
  * [**cddevtwrp** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *cd $(getand)/Development/twrp_development_sony*
  * [**cdref** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *cd $(getand)/References/${1}*
  * [**cdrefapk** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *cd $(getand)/References/apk*
  * [**adbapks** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *cdrefapk; adbapkinstall*
  * [**cdandfiles** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *cd "${ANDROID_FILES_PATH}/"*
  * [**impaospcaf** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *rsync -arv --delete --delete-after $(toaospcaf ${1}) ./${1}*
  * [**implineage** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *rsync -arv --delete --delete-after $(tolineage ${1}) ./${1}*
  * [**meldaosp** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *meld ./${1} $(toaosp ${1})*
  * [**meldaospsony** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *meld ./${1} $(toaosp sony ${1})*
  * [**meldaospcaf** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *meld ./${1} $(toaospcaf ${1})*
  * [**meldlineage** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *meld ./${1} $(tolineage ${1})*
  * [**meldmrom** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *meld ./${1} $(tomultirom ${1})*
  * [**meldtwrp** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *meld ./${1} $(totwrp ${1})*
  * [**nout** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *xdg-open $(toout ${1})*
  * [**aospsyncall** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *reporeferencedaosp "reposy"*
  * [**lineagesyncall** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *reporeferencedlineage "reposy"*
  * [**cdspdev** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *cd $(echo "$(pwd)" \| sed 's/(.*)Android([^/]*/[^/]*).*/1Android2/device/sony/huashan/g')*
  * [**cdspker** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *cd $(echo "$(pwd)" \| sed 's/(.*)Android([^/]*/[^/]*).*/1Android2/kernel/sony/msm8960t/g')*
  * [**cdblueker** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *cd $(echo "$(pwd)" \| sed 's/(.*)Android([^/]*/[^/]*).*/1Android2/kernel/sony/msm8x60/g')*
  * [**cdvendsony** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *cd $(echo "$(pwd)" \| sed 's/(.*)Android([^/]*/[^/]*).*/1Android2/vendor/sony/g')*
  * [**meldblue** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *meld ./${1} ../blue-common/${1}*
  * [**meldril** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *meldril [bool_caf] **(Compare device to hardware/{ril\|ril-caf})***
  * [**cdmromboot** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *croot; cd ./system/extras/libbootimg/*
  * [**cdmromcore** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *croot; cd ./system/extras/multirom/*
  * [**cdrecovery** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc): *croot; cd ./bootable/recovery/*

---
### [ Documentation from [android_tools.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_tools.rc) ]
  * [**binaryeditor** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_tools.rc): *binaryeditor &lt;patternsearch&gt; [binariespath] [replacement]*
  * [**librarieshunter** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_tools.rc): *librarieshunter &lt;binariespath&gt;*
  * [**haste** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_tools.rc): *haste &lt;file&gt; or \| haste **(Share hastebin logs)***
  * [**overlaycompare** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_tools.rc): *overlaycompare &lt;overlay_file_path&gt;*

---
### [ Documentation from [android_uploads.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads.rc) ]
  * [**fileupl** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads.rc): *fileupl &lt;file_path&gt; [target_folder]*
  * [**fastupl** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads.rc): *fastupl &lt;device_name&gt; [none/zip/bootimage] **(Make zip and upload)***
  * [**mmmupl** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads.rc): *mmmupl &lt;package_or_path&gt; [bool_partial_build] **(Make zip and upload)***
  * [**devuplboot** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads.rc): *devuplboot &lt;device&gt; **(Upload ROM bootimage)***
  * [**devuplrom** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads.rc): *devuplrom &lt;device&gt; [folder_path] **(Upload ROM build)***
  * [**pushbrom** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads.rc): *pushbrom &lt;device_name&gt; [rom_name] **(Notify build success)***
  * [**fileget** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads.rc): *fileget &lt;remote_path&gt; [boot_remove_remote] **(Download from MEGA.nz)***
  * [**androidfilesadd** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads.rc): *androidfilesadd &lt;file_path&gt; &lt;target_folder&gt; **(Add file to AndroidFiles)***
  * [**androidfilessync** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads.rc): *androidfilessync &lt;--upload/--download&gt; **(Sync AndroidFiles folder)***
  * [**androidfilesopen** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads.rc): *androidfilesopen **(Open AndroidFiles folder)***

---
### [ Documentation from [megatools_mirror.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/megatools_mirror.rc) ]
  * [**megamirror** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/megatools_mirror.rc): *megamirror &lt;local_folder&gt; &lt;remote_folder&gt; &lt;--upload/--download&gt; [--copy,-y/-n]*

---
### [ Documentation from [megatools_reload.rc](http://github.com/AdrianDC/android_development_shell_tools/blob/master/megatools_reload.rc) ]
  * [**meganzreload** (Function)](http://github.com/AdrianDC/android_development_shell_tools/blob/master/megatools_reload.rc): *meganzreload **(Reload MEGA.nz account and keys)***

---
* #### Automatically generated by [shtoolsreadme](http://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc) for [android_development_shell_tools](http://github.com/AdrianDC/android_development_shell_tools)
<!-- Functions End -->
