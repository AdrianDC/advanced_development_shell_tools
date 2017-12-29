# Android Development Shell Tools

 * Project created by [Adrian DC](https://github.com/AdrianDC) - 2015-2017

 * GitHub description of the project: [About the project...](project.md)
   <br />
   Previews of a few regular functions: [Project previews...](previews.md)
   <br />
   Samples of commands usage per context: [Project samples...](samples.md)

 * XDA-Developers thread for this project : [Android Development Shell Tools](http://forum.xda-developers.com/-/-/-t3622382)

 * The 'android_development_shell_tools' is a project meant to provide
   <br />
   multiple advanced functions and shortcuts to ease Android development

 * The sources written and shared here are either meant to be used as they are,
   <br />
   or to serve as a reference for commands and functions an Android developer needs

 * To keep a local sync of 'android_development_shell_tools' updated with upstream changes,
   <br />
   simply run the *`shtoolssync;`* command and the updates will be downloaded

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

### [ How to find command here ]
 * Obviously 'android_development_shell_tools' is a massive project
   <br />
   and this fully automated and updated documentation contains
   <br />
   quite an extensive list of functions you may or not need.

 * To find something you are interested in, for example 'Gerrit',
   <br />
   you can easily search *(Ctrl + F)* to find related functions

<br />

<!-- Functions Start -->
### [&nbsp;Documentation: [android_development_shell_tools.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc)&nbsp;]
  * [**shtoolsup** *<b>\[Reloads android_development_shell_tools scripts\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc)
  * [**shtoolsget** *<b>\[Get android_development_shell_tools path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc)
  * [**shtoolscd** *<b>\[Access android_development_shell_tools path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc)
  * [**shtoolse** *<b>\[Direct access to related sources\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc) : *shtoolse &lt;words&gt; &lt;to&gt; &lt;search&gt;*
  * [**shtoolsf** *<b>\[Direct access to related function or alias sources\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc) : *shtoolsf &lt;function_or_alias&gt;*
  * [**shtoolscheck** *<b>\[Run ShellCheck on the project\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc) : *shtoolscheck [bool_ignore]*
  * [**shtoolssync** *<b>\[Download new android_development_shell_tools changes\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc)
  * [**shtoolspush** *<b>\[Commit new changes to android_development_shell_tools\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc) : *shtoolspush [bool_ignore_readme]*
  * [**shtoolsamend** *<b>\[Amend new changes to android_development_shell_tools\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc) : *shtoolsamend [bool_ignore_readme] [bool_ignore_message]*
  * [**shtools** *<b>\[Entrypoint menu to android_development_shell_tools\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc)
  * [**shtools-** *<b>\[Options menu for android_development_shell_tools\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc)
  * [**shtoolsstats** *<b>\[Statistics on the project files\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc)
  * [**shtoolsdiff** *<b>\[Compare with upstream android_development_shell_tools\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc)
  * [**shtoolslog** *<b>\[Display android_development_shell_tools history\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc) : *shtoolslog [commits_count]*
  * [**shtoolsshow** *<b>\[Display android_development_shell_tools commit\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc) : *shtoolsshow [offset_count]*
  * [**shtoolsreset** *<b>\[Reset project to remote HEAD\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc)
  * [**shtoolsmaster** *<b>\[Switch android_development_shell_tools to master branch\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc)
  * [**shtoolsstaging** *<b>\[Switch android_development_shell_tools to staging branch\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc)
  * [**shtoolsnews** *<b>\[Display android_development_shell_tools news notifications\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc)
  * [**shtoolsforum** *<b>\[Refresh README.forum project presentation\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc)
  * [**shtoolsreadme** *<b>\[Refresh README.md functions usages\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc)

---
### [&nbsp;Documentation: [android_adb_assets.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc)&nbsp;]
  * [**adbdatabase** *<b>\[Android sqlite3 database opener\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc) : *adbdatabase &lt;/data/.../sqlite.db&gt;*
  * [**sepaud** *<b>\[Logs sepolicy analyzer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc) : *sepaud &lt;logs_file&gt; [context_search]*
  * [**sepmsg** *<b>\[Logs sepolicy message extractor\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc) : *sepmsg &lt;logs_file&gt; &lt;context&gt; [grep]*
  * [**adbintents** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc) : *adb shell dumpsys package r &gt; intents.txt*
  * [**adbcamera** *<b>\[Enable and launch camera applications\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc)
  * [**adbkp** *<b>\[Kill process by name\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc) : *adbkp &lt;process_name&gt;*
  * [**adbpk** *<b>\[Android mediaserver debug logger\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc)
  * [**adbms** *<b>\[Android mediaserver debug stracer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc)
  * [**adblibs** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc) : *adb shell grep -air "${1}" "${2:-/system/lib/}"*
  * [**ndkstack** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc) : *ndk-stack -sym "${ANDROID_DEV_DRIVE}/out/target/product/huashan/symbols" -dump*
  * [**adbwtch** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc) : *adbr; while true; do adb shell cat "${1}"; done*
  * [**adbdu** *<b>\[Android /data/ sizes study\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc)
  * [**adbpropradiolog** *<b>\[Radio debug property overrider\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc) : *adbpropradiolog &lt;value&gt;*
  * [**adbalsa** *<b>\[Audio cards advanced study\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc)
  * [**adbtinymix** *<b>\[Run tinymix on the device\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc)
  * [**adbeditmanifest** *<b>\[Edit adb /system/vendor/manifest.xml file\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc)
  * [**adbinputs** *<b>\[Dump all input devices\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc)
  * [**adbreadevents** *<b>\[Read input events\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_assets.rc) : *adbreadevents &lt;event_number&gt;*

---
### [&nbsp;Documentation: [android_adb_debug.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_debug.rc)&nbsp;]
  * [**adbst** *<b>\[strace\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_debug.rc) : *adbst &lt;process_name&gt; [parameters] [bool_wait]*
  * [**adbstf** *<b>\[Followed strace\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_debug.rc) : *adbstf &lt;process_name&gt;*
  * [**adbstw** *<b>\[Waiting strace\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_debug.rc) : *adbstw &lt;process_name&gt;*
  * [**adbstacktombstone** *<b>\[ADB tombstone debugger with stack\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_debug.rc)

---
### [&nbsp;Documentation: [android_adb_flash.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_flash.rc)&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_devices.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_adb_tools.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_adb_flash.rc)
  ```
  * [**adbbootdump** *<b>\[Dump bootimage from device\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_flash.rc)
  * [**adbbootcut** *<b>\[Trim bootimage dump\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_flash.rc) : *adbbootcut &lt;file_path&gt;*
  * [**adbrecoveryinstall** *<b>\[Inject and reboot recovery\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_flash.rc) : *adbrecoveryinstall &lt;file_path&gt;*

---
### [&nbsp;Documentation: [android_adb_installers.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc)&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_adb_host.rc)
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
  * [**adbppr** *<b>\[adb automated PACKAGES_RESULTS files pusher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc)
  * [**adbside** *<b>\[adb sideload helper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc) : *adbside &lt;file_zip&gt; [boot_reboot]*
  * [**adbsiderom** *<b>\[adb sideload ROM with addons helper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc) : *adbsiderom &lt;rom_zip_or_bootimage&gt; &lt;device&gt; [boot_no_reboot]*
  * [**adbpi** *<b>\[Automated file pusher and installer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc) : *adbpi &lt;file_path&gt;*
  * [**adbu** *<b>\[Force optimization of a package\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc) : *adbu &lt;package_name_or_file&gt;*
  * [**adbgitpf** *<b>\[Push files through adb from commit\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc) : *adbgitpf &lt;commit_sha1&gt;*
  * [**adbpmrom** *<b>\[MultiROM development file pusher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc) : *adbpmrom &lt;file&gt;*
  * [**adbpmromenc** *<b>\[MultiROM development encryption file pusher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc) : *adbpmromenc &lt;file&gt;*
  * [**adbapkinstall** *<b>\[Install available apk files from current path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_installers.rc)

---
### [&nbsp;Documentation: [android_adb_logs.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc)&nbsp;]
  * [**adbl** *<b>\[adb Logcat helper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *adbl [all/crash/events/main/radio/system] [file_output] [bool_clean]*
  * [**adblr** *<b>\[Logcat output relevant reader\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc)
  * [**adblpcln** *<b>\[Logcat output public cleaner\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *adblpcln [file_adb.log]*
  * [**adblcln** *<b>\[Logcat output cleaner\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *adblcln [file_adb.log]*
  * [**adbdcln** *<b>\[dmesg output cleaner\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *adbdcln [file_adb.log]*
  * [**adbkcln** *<b>\[Kernel logs output cleaner\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *adbkcln [file_kmsg]*
  * [**adbstcln** *<b>\[strace output cleaner\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *adbstcln [file_adb.log]*
  * [**adbld** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *cls; echo -n '' &gt; adb.data; adbsu cat /data/logcat.txt \| tee -a adb.data*
  * [**adblb** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *while true; do cls; echo -n "" &gt; adb.log; adb logcat -v audit2allow *:V \| tee -a adb.log*
  * [**adblc** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *adb logcat -c; adbl*
  * [**adbk** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *echo -n '' &gt; kmsg; adbsu cat /proc/kmsg \| tee -a kmsg*
  * [**adbdm** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *echo -n '' &gt; dmesg; adbsu dmesg \| tee -a dmesg*
  * [**adbkd** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *echo -n '' &gt; kmsg; adbsu cat /proc/kmsg \| tee -a kmsg*
  * [**adbkl** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *cls; echo -n '' &gt; last_kmsg; adbsu cat /proc/last_kmsg \| tee -a last_kmsg*
  * [**adbpl** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *cls; echo -n '' &gt; last_kmsg; adbsu cat /sys/fs/pstore/console-ramoops \| tee -a last_kmsg*
  * [**adbrl** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *cls; echo -n '' &gt; recovery_log; adbsu cat /tmp/recovery.log \| tee -a recovery_log*
  * [**adbdumpsensors** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *adbsu dumpsys sensorservice*
  * [**adblf** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *adb logcat -v audit2allow*
  * [**adblh** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *adb logcat -b events -b main -b radio \| highlight*
  * [**adbtrampoline** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc) : *adbsu "dmesg \| grep -i trampoline*
  * [**adbple** *<b>\[ADB Ramoops Compressed Logger\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc)
  * [**adbbootchart** *<b>\[Bootchart debug helper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_logs.rc)

---
### [&nbsp;Documentation: [android_adb_multirom.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_multirom.rc)&nbsp;]
  * [**adbmromselect** *<b>\[Select MultiROM installation for path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_multirom.rc) : *adbmromselect [preselect]*
  * [**adbmrombootimage** *<b>\[MultiROM bootimage installer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_multirom.rc) : *adbmrombootimage &lt;bootimage_path&gt; [preselect]*
  * [**adbmrominjector** *<b>\[MultiROM kernel image injector\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_multirom.rc) : *adbmrominjector &lt;kernel_path&gt;*
  * [**adbmromautoboot** *<b>\[MultiROM autoboot selection\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_multirom.rc)
  * [**adbmromedit** *<b>\[MultiROM secondary ROM file editor\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_multirom.rc) : *adbmromedit &lt;relative_path&gt; [preselect]*

---
### [&nbsp;Documentation: [android_adb_shortcuts.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc)&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_adb_shortcuts.rc)
  ```
  * [**adbs** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell*
  * [**adbdf** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell df -H*
  * [**adbpo** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell reboot -p*
  * [**adbrb** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb reboot bootloader*
  * [**adbre** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb reboot*
  * [**adbrh** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_shortcuts.rc) : *adb shell setprop ctl.restart zygote*
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
### [&nbsp;Documentation: [android_adb_syncer.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_syncer.rc)&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_adb_syncer.rc)
  ```
  * [**adbpushsync** *<b>\[Folders adb push syncer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_syncer.rc) : *adbpushsync &lt;local_path&gt; &lt;target_path&gt;*

---
### [&nbsp;Documentation: [android_adb_tools.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc)&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_host_common.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_adb_tools.rc)
  ```
  * [**adbscr** *<b>\[Take a screenshot from connected device\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc)
  * [**adbr** *<b>\[adb root and remount rw system\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc)
  * [**adbready** *<b>\[ADB ready checker\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc)
  * [**adbro** *<b>\[Verified adb root and remount rw system\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc)
  * [**adbroot** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc) : *adb kill-server; sudo adb start-server; sudo adb root; sudo adb wait-for-device; sudo adb remount*
  * [**adbsudo** *<b>\[ADB sudo toggle helper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc)
  * [**adbcmd** *<b>\[Return adb command based on alias\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc)
  * [**adbrstock** *<b>\[Stock ROM adb root access\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc)
  * [**adbwait** *<b>\[adb wait for device\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc) : *adbwait [delay_secs]*
  * [**adbsu** *<b>\[Run on root adb shell without remounts\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc) : *adbsu &lt;command...&gt;*
  * [**adbsur** *<b>\[Run on root adb shell with remounts\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc) : *adbsur &lt;command...&gt;*
  * [**adbco** *<b>\[Helper for adb network access\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc) : *adbco [ipaddress_once]*
  * [**adbedit** *<b>\[Edit adb file, default on /system/build.prop\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_tools.rc) : *adbedit [file_path]*

---
### [&nbsp;Documentation: [android_adb_updater.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_updater.rc)&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_adb_updater.rc)
  ```
  * [**adbupdate** *<b>\[adb binary update from upstream\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_adb_updater.rc)

---
### [&nbsp;Documentation: [android_build_helpers.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_build_helpers.rc)&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_build_helpers.rc)
  ```
  * [**makej** *<b>\[Helper to 'make -jPROCESSORS'\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_build_helpers.rc) : *makej &lt;parameters&gt;*
  * [**makes** *<b>\[Helper to 'make -jPROCESSORS' with SCHED_BATCH\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_build_helpers.rc) : *makes &lt;parameters&gt;*

---
### [&nbsp;Documentation: [android_devices.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_devices.rc)&nbsp;]
  * [**androiddevicestarget** *<b>\[Devices targets mapper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_devices.rc) : *androiddevicestarget [boot/system/...] [device]*
  * [**codenametotarget** *<b>\[Codename to build target\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_devices.rc) : *codenametotarget &lt;codename&gt;*
  * [**repogetdevice** *<b>\[Detect device name from repo environment\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_devices.rc)

---
### [&nbsp;Documentation: [android_gerrit.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc)&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_gerrit.rc)
  ```
  * [**gerritreview** *<b>\[Gerrit review uploader\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview &lt;gerrit_ssh_or_http&gt; &lt;project_name_or_.&gt; &lt;github_name_or_.&gt; &lt;drafts/for/heads&gt; [branch]*
  * [**gerritusername** *<b>\[Gerrit username getter\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc)
  * [**gitpr** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview ssh://$(gerritusername)@review.lineageos.org:29418 LineageOS . for*
  * [**gitprh** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview http://review.lineageos.org LineageOS . for*
  * [**gitpr14** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview ssh://$(gerritusername)@review.lineageos.org:29418 LineageOS . for cm-14.1*
  * [**gitpr15** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview ssh://$(gerritusername)@review.lineageos.org:29418 LineageOS . for lineage-15.0*
  * [**gitprd** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview ssh://$(gerritusername)@review.lineageos.org:29418 LineageOS . drafts*
  * [**gitprdh** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview http://review.lineageos.org LineageOS . drafts*
  * [**gitpg** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview ssh://$(gerritusername)@review.lineageos.org:29418 LineageOS . heads*
  * [**gitpgh** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview http://review.lineageos.org LineageOS . heads*
  * [**gitprg** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gitpr; gitpg*
  * [**gitprgy** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *echo -n "ynyn" \| gitpr; echo -n "yny" \| gitpg*
  * [**gitpraosp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview https://android.googlesource.com aosp . for*
  * [**gitpraospma** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview https://android.googlesource.com aosp . for master*
  * [**gitprdaosp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview https://android.googlesource.com aosp . drafts*
  * [**gitprdaospma** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview https://android.googlesource.com aosp . drafts master*
  * [**gitpraicp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview ssh://$(gerritusername)@gerrit.aicp-rom.com:29418 AICP . for n7.1*
  * [**gitprhaicp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview http://gerrit.aicp-rom.com AICP . for n7.1*
  * [**gitprdaicp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview ssh://$(gerritusername)@gerrit.aicp-rom.com:29418 AICP . drafts n7.1*
  * [**gitprdhaicp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview http://gerrit.aicp-rom.com AICP . drafts n7.1*
  * [**gitpgaicp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview ssh://$(gerritusername)@gerrit.aicp-rom.com:29418 AICP . heads n7.1*
  * [**gitpghaicp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview http://gerrit.aicp-rom.com AICP . heads n7.1*
  * [**gitprgaicp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gitpraicp; gitpgaicp*
  * [**gitprghaicp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gitprhaicp; gitpghaicp*
  * [**gitpr7** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview ssh://radian.dc@review.msm7x30.org:29418 LegacyXperia . for*
  * [**gitpr7h** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview http://review.msm7x30.org LegacyXperia . for*
  * [**gitpr7d** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview ssh://radian.dc@review.msm7x30.org:29418 LegacyXperia . drafts*
  * [**gitpr7dh** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview http://review.msm7x30.org LegacyXperia . drafts*
  * [**gitpromni** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview ssh://$(gerritusername)@gerrit.omnirom.org:29418 . OmniROM for android-7.1*
  * [**gitprhomni** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview http://gerrit.omnirom.org . OmniROM for android-7.1*
  * [**gitprdomni** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview ssh://$(gerritusername)@gerrit.omnirom.org:29418 . OmniROM drafts android-7.1*
  * [**gitprdhomni** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview http://gerrit.omnirom.org . OmniROM drafts android-7.1*
  * [**gitprtwrp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview ssh://$(gerritusername)@gerrit.twrp.me:29418 . TeamWin for android-6.0*
  * [**gitprdtwrp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerrit.rc) : *gerritreview ssh://$(gerritusername)@gerrit.twrp.me:29418 . TeamWin drafts android-6.0*

---
### [&nbsp;Documentation: [android_gerritssh.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_gerritssh.rc)&nbsp;]
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
  * [**gitshow** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git show -M --name-status*
  * [**gitshf** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git show -M --pretty=fuller*
  * [**gitshl** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git show --oneline --name-only "${1}" \| tail -n +2 \| cut -c $((1+${2:-0}))-*
  * [**gitap** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git add -p*
  * [**gitaa** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git add . -Afv*
  * [**gitan** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git add . -Afn*
  * [**gitanp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git config core.fileMode false; git add -p; git config --unset core.fileMode*
  * [**gite** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *fileedit "${1}"; echo -n ' Done ? [Enter] '; read -r; git add "${1}"*
  * [**gitbd** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git branch -D*
  * [**gitbv** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git fetch ${gitreviewdefault} $(git rev-parse --abbrev-ref HEAD); git branch -vv*
  * [**gitch** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git checkout*
  * [**gitcp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git cherry-pick*
  * [**gitcpc** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git reset; git cherry-pick --continue*
  * [**gitcpa** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *for sha1 in "${@}"; do echo ''; echo "${sha1}"; git cherry-pick "${sha1}"; done*
  * [**gitcpf** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git fetch "${1}" "${2}"; git cherry-pick FETCH_HEAD*
  * [**gitcpr** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git show "${1}" --no-color \| sed "s/${2}/${3}/g" \| patch*
  * [**gitfcp** *<b>\[Git cherry-pick from path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *gitfcp &lt;path&gt; [amount_of_commits]*
  * [**gitc** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git commit $(gitgpgparam)*
  * [**gitce** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git commit $(gitgpgparam) --allow-empty*
  * [**gitcs** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git commit $(gitgpgparam) -s*
  * [**gitca** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git commit $(gitgpgparam) --amend*
  * [**gitcae** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git commit $(gitgpgparam) --amend --no-edit*
  * [**gitcad** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git commit $(gitgpgparam) --amend --no-edit --date="$(date -R)*
  * [**gitrevert** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git revert $(gitgpgparam) --no-edit*
  * [**gitfix** *<b>\[Fix git commit issues\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc)
  * [**gitcauthor** *<b>\[Apply own author to commit\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc)
  * [**gitcamarker** *<b>\[Apply marker commit to author/committer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc)
  * [**gitcid** *<b>\[Apply commit-msg hook to commit\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc)
  * [**gitcidupstream** *<b>\[Load commit-msg hook from upstream\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc)
  * [**gitrh** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git reset FETCH_HEAD --hard*
  * [**githd** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git reset HEAD --hard*
  * [**gitcl** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git cherry-pick --abort 2&gt;/dev/null; git am --abort 2&gt;/dev/null; git reset HEAD --hard; git stash -u*
  * [**gitro** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git reset HEAD^ --hard*
  * [**gitsl** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git reset HEAD^; gitap; gitcae*
  * [**gitrl** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git revert HEAD -n; git commit -m "Revert"; git reset HEAD^; git add -p*
  * [**gitri** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git reset HEAD^*
  * [**gitrt** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *git reset --hard*
  * [**gitsquashes** *<b>\[Get formatted squash message\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_commit.rc) : *gitsquashes &lt;commits_count&gt;*

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
  * [**gitfurl** *<b>\[Git fetch from full url\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_fetch.rc) : *gitfurl &lt;url&gt;*
  * [**gitunshallow** *<b>\[Git fetch and unshallow project\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_fetch.rc)
  * [**gitf** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_fetch.rc) : *git fetch*
  * [**gitfmr** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_fetch.rc) : *git fetch origin; git reset origin/master*
  * [**gitfs** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_fetch.rc) : *git fetch origin; git reset origin/$(git rev-parse --abbrev-ref HEAD); git stash*
  * [**gitfsu** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_fetch.rc) : *git fetch origin; git reset origin/$(git rev-parse --abbrev-ref HEAD); git stash -p*
  * [**gitfgr** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_fetch.rc) : *gitfetchtreset github*
  * [**gitfor** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_fetch.rc) : *gitremoteverify origin gitrao; gitfetchtreset origin*
  * [**gitforla** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_fetch.rc) : *gitfetchtreset origin aosp/LA.UM.5.5_rb1.10*
  * [**gitfar** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_fetch.rc) : *gitremoteverify $(githubusername) gitraa; gitfetchtreset $(githubusername)*
  * [**gitfprivr** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_fetch.rc) : *gitfetchtreset private*

---
### [&nbsp;Documentation: [android_git_history.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_history.rc)&nbsp;]
  * [**gitlo** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_history.rc) : *git log --pretty=oneline --abbrev-commit*
  * [**gitlod** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_history.rc) : *git log --pretty=oneline --abbrev-commit --*
  * [**gitloo** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_history.rc) : *git log --pretty=format:"%C(yellow)%h %Cred%ad %Creset%s" --date=short --all --*
  * [**gitlos** *<b>\[Search string in git history\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_history.rc) : *gitlos &lt;path_or_.&gt; ["search string input"] [search_max_count]*
  * [**gitdi** *<b>\[Show git differences status\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_history.rc)
  * [**gitdfs** *<b>\[git diff status of an SHA1\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_history.rc) : *gitdfs &lt;sha1commit&gt;*
  * [**gitdf** *<b>\[git diffs from an SHA1\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_history.rc) : *gitdf &lt;sha1commit&gt; &lt;filepath&gt;*
  * [**gitfindsha1** *<b>\[git search commit by title contents\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_history.rc) : *gitfindsha1 &lt;remote/branch&gt; &lt;"title text to search"&gt;*
  * [**gitnofilter** *<b>\[Use git commands without filters\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_history.rc) : *gitnofilter &lt;parameters&gt;*

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
  * [**gitpurl** *<b>\[Git pull to full url\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_push.rc) : *gitpurl &lt;url&gt;*
  * [**gitpa** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_push.rc) : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername)*
  * [**gitpa14** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_push.rc) : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) cm-14.1*
  * [**gitpa15** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_push.rc) : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) lineage-15.0*
  * [**gitpala** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_push.rc) : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) LA.UM.5.5_rb1.10*
  * [**gitpal** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_push.rc) : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) local_manifests*
  * [**gitpaman** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_push.rc) : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) manifests*
  * [**gitpam** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_push.rc) : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) multirom*
  * [**gitpama** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_push.rc) : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) master*
  * [**gitpanmr** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_push.rc) : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) n-mr1*
  * [**gitpan** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_push.rc) : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) nougat*
  * [**gitpat** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_push.rc) : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) twrp*
  * [**gitpo** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_push.rc) : *gitremoteverify origin false && gitpu origin*
  * [**gitpom** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_push.rc) : *gitremoteverify origin false && gitpu origin master*
  * [**gitpon** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_push.rc) : *gitremoteverify next gitraon && gitpu next lineage-15.0_master*
  * [**gitpp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_push.rc) : *gitremoteverify project gitrap && gitpu project*
  * [**gitppm** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_push.rc) : *gitremoteverify project gitrap && gitpu project master*
  * [**gitppriv** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_push.rc) : *gitremoteverify private false && gitpu private*
  * [**gitpprivm** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_push.rc) : *gitremoteverify private false && gitpu private master*
  * [**gitpoa** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_push.rc) : *gitpu $(gitgetremote $(repogetbranch)) $(repogetbranch)*

---
### [&nbsp;Documentation: [android_git_rebase.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_rebase.rc)&nbsp;]
  * [**gitra** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_rebase.rc) : *git rebase --abort*
  * [**gitrc** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_rebase.rc) : *git rebase --continue*
  * [**gitre** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_rebase.rc) : *git rebase --edit-todo*
  * [**gitrs** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_rebase.rc) : *git rebase --skip*
  * [**gitrf** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_rebase.rc) : *git rebase "${1}^" -i*
  * [**gitr** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_rebase.rc) : *git rebase "HEAD~${1:-5}" -i*
  * [**gitrall** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_rebase.rc) : *git rebase -i HEAD~$(($(git rev-list --count HEAD) - 1))*
  * [**gitrfedit** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_rebase.rc) : *GIT_SEQUENCE_EDITOR="sed -i -e 's/pick/edit/g'" git rebase "${1}" -i*
  * [**gitredit** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_rebase.rc) : *GIT_SEQUENCE_EDITOR="sed -i -e 's/pick/edit/g'" git rebase "HEAD~${1:-5}" -i*
  * [**gitrb** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_rebase.rc) : *branch=${1:-$(repogetbranch)}; git fetch github "${branch}"; git rebase "github/${branch}"*
  * [**gitrbo** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_rebase.rc) : *branch=${1:-$(repogetbranch)}; gitremoteverify origin gitrao; git fetch origin "${branch}"; git rebase "origin/${branch}"*

---
### [&nbsp;Documentation: [android_git_remotes.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_remotes.rc)&nbsp;]
  * [**gitrv** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_remotes.rc) : *git remote -v*
  * [**gitremoteset** *<b>\[Git remote setter\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_remotes.rc) : *gitremoteset &lt;remote_name&gt; &lt;remote_url&gt;*
  * [**gitremoteadaptset** *<b>\[Git remote adapter\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_remotes.rc) : *gitremoteadaptset &lt;remote_name&gt; &lt;remote_github&gt; [prefix_removal] [bool_prefix_android] [bool_underscore_to_dash]*
  * [**gitremoteverify** *<b>\[Git remote verifier\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_remotes.rc) : *gitremoteverify &lt;remote_name&gt; "command_to_run_if_missing"*
  * [**gitraa** *<b>\[Add GitHub Username remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_remotes.rc)
  * [**gitrai** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_remotes.rc) : *gitremoteadaptset 'aicp' 'AICP' 'android_'*
  * [**gitraon** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_remotes.rc) : *gitremoteadaptset 'next' 'lineage-next'*
  * [**gitraoo** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_remotes.rc) : *gitremoteadaptset 'origin' "${1}"*
  * [**gitraot** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_remotes.rc) : *gitremoteadaptset 'origin' 'TheMuppets'*
  * [**gitrat** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_remotes.rc) : *gitremoteadaptset 'twrp' 'TeamWin'*
  * [**gitral** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_remotes.rc) : *gitremoteset lineage "${1}"*
  * [**gitrapriv** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_remotes.rc) : *gitremoteset private "${1}"*
  * [**gitraau** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_remotes.rc) : *git remote set-url $(githubusername)*
  * [**gitraou** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_remotes.rc) : *git remote set-url origin*
  * [**gitrao** *<b>\[Add LineageOS origin remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_remotes.rc)
  * [**gitrax** *<b>\[Add XperiaMultiROM xperia remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_remotes.rc)
  * [**gitramd** *<b>\[Add MultiROM-Dev mromdev remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_remotes.rc)
  * [**gitraos** *<b>\[Add sonyxperiadev origin remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_remotes.rc)

---
### [&nbsp;Documentation: [android_git_stats.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc)&nbsp;]
  * [**gitstat** *<b>\[Git history with remote comparator\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc) : *gitstat &lt;remote&gt; &lt;branch&gt; [stats_only]*
  * [**gitst** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc) : *gitremoteverify origin gitrao && gitstat origin lineage-15.0*
  * [**gitsto** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc) : *gitremoteverify origin gitrao && gitstat origin $(git rev-parse --abbrev-ref HEAD)*
  * [**gitstom** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc) : *gitremoteverify origin gitrao && gitstat origin master*
  * [**gitsta** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc) : *gitremoteverify $(githubusername) gitraa && gitstat $(githubusername) lineage-15.0*
  * [**gitstam** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc) : *gitremoteverify $(githubusername) gitraa && gitstat $(githubusername) master*
  * [**gitstg** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc) : *gitremoteverify github false && gitstat github*
  * [**gitstaosp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc) : *gitremoteverify aosp false && gitstat aosp master*
  * [**gitstsony** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc) : *gitremoteverify origin gitraos && gitstat origin aosp/LA.UM.5.5.r1*
  * [**gitstfa** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_stats.rc) : *gitrao; gitremoteverify $(githubusername) gitraa && gitstat $(githubusername) lineage-15.0 true*

---
### [&nbsp;Documentation: [android_git_tools.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_tools.rc)&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_git_tools.rc)
  ```
  * [**gitgetremote** *<b>\[Get git primary remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_tools.rc) : *gitgetremote [branch_grep]*
  * [**gitgetbranch** *<b>\[Get git primary branch\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_git_tools.rc)

---
### [&nbsp;Documentation: [android_host_common.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_common.rc)&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_host_common.rc)
  ```
  * [**fileedit** *<b>\[Files editor for most environments\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_common.rc) : *fileedit &lt;paths&gt;*
  * [**fe** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_common.rc) : *fileedit*
  * [**fen** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_common.rc) : *FILEEDIT_TOUCH_NEW_FILE=true fileedit*
  * [**diropen** *<b>\[Directory opener for most environments\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_common.rc) : *diropen &lt;path&gt;*
  * [**dop** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_common.rc) : *diropen .*
  * [**pathscompare** *<b>\[Paths comparison for most environments\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_common.rc) : *pathscompare &lt;path_left&gt; &lt;path_right&gt;*
  * [**urlopen** *<b>\[URL opener for most environments\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_common.rc) : *urlopen &lt;url&gt;*
  * [**desktoppath** *<b>\[Acquire desktop path for most environments\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_common.rc)
  * [**processownercheck** *<b>\[Returns if a process is owned by someone\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_common.rc) : *processownercheck &lt;process_name&gt; &lt;owner&gt;*

---
### [&nbsp;Documentation: [android_host_edit.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_edit.rc)&nbsp;]
  * [**editreplacematch** *<b>\[Edit by replacing matches\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_edit.rc) : *editreplacematch &lt;"match_line"&gt; &lt;"to_write"&gt; &lt;"files"&gt;*
  * [**editremovematch** *<b>\[Edit by removing matches\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_edit.rc) : *editremovematch &lt;"match_line"&gt; &lt;"files"&gt;*
  * [**editinsertabove** *<b>\[Edit by inserting above\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_edit.rc) : *editinsertabove &lt;"match_line"&gt; &lt;"to_insert"&gt; &lt;"files"&gt;*
  * [**editinsertbelow** *<b>\[Edit by inserting below\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_edit.rc) : *editinsertbelow &lt;"match_line"&gt; &lt;"to_insert"&gt; &lt;"files"&gt;*
  * [**editreplacemultiline** *<b>\[Edit by replacing multiple lines\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_edit.rc) : *editreplacemultiline &lt;"match_first"&gt; &lt;"match_last"&gt; &lt;"replace"&gt; &lt;"files"&gt;*
  * [**edittrimoutput** *<b>\[Edit by triming output line rewrites\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_edit.rc) : *edittrimoutput &lt;"files"&gt;*

---
### [&nbsp;Documentation: [android_host_grep.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_grep.rc)&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_host_common.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_host_grep.rc)
  ```
  * [**g** *<b>\[Grep through sources\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_grep.rc) : *g [inputs]*
  * [**gs** *<b>\[Grep through sources and binaries\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_grep.rc) : *gs [inputs]*
  * [**gce** *<b>\[Grep and edit through sources and binaries\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_grep.rc) : *gce &lt;inputs&gt;*
  * [**gck** *<b>\[Grep through kernel configurations\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_grep.rc) : *gck [inputs]*
  * [**gca** *<b>\[Grep through Android makefiles\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_grep.rc) : *gca [inputs]*
  * [**gcmanifest** *<b>\[Grep through Android Manifests\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_grep.rc) : *gcmanifest [inputs]*
  * [**gcrc** *<b>\[Grep through Android .rc files\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_grep.rc) : *gcrc [inputs]*
  * [**gcsep** *<b>\[Grep through Android sepolicies\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_grep.rc) : *gcsep [inputs]*
  * [**gcxml** *<b>\[Grep through Android .xml files\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_grep.rc) : *gcxml [inputs]*
  * [**gccontexts** *<b>\[Grep through Android sepolicies contexts\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_grep.rc) : *gccontexts [inputs]*
  * [**grepi** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_grep.rc) : *grep -ai*
  * [**gcmodules** *<b>\[List all LOCAL_MODULE elements\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_grep.rc) : *gcmodules [path]*
  * [**gcphony** *<b>\[List all PHONY rules\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_grep.rc)
  * [**stringsparams** *<b>\[Get the strings command parameters for variants\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_grep.rc)

---
### [&nbsp;Documentation: [android_host_linux.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_linux.rc)&nbsp;]
  * [**bashup** *<b>\[Reload ~/.bashrc\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_linux.rc)
  * [**bashe** *<b>\[Edit ~/.bashrc\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_linux.rc)
  * [**cls** *<b>\[Clean terminal screen\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_linux.rc)
  * [**toclip** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_linux.rc) : *xclip -selection c*
  * [**findn** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_linux.rc) : *find -name*
  * [**rsynca** *<b>\[Mirror a path to another\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_linux.rc) : *rsynca &lt;path1&gt; &lt;path2&gt;*
  * [**rsyncf** *<b>\[Mirror a path to another based on size only\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_linux.rc) : *rsyncf &lt;path1&gt; &lt;path2&gt;*
  * [**pcinfo** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_linux.rc) : *inxi -Fxz*
  * [**findnewer** *<b>\[Search files newer than a date\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_linux.rc) : *findnewer &lt;20160123&gt;*
  * [**cpioext** *<b>\[Extract cpio file\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_linux.rc) : *cpioext &lt;cpio_file_to_extract&gt;*
  * [**videoresize** *<b>\[Resize video dimensions\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_linux.rc) : *videoresize &lt;video_file&gt;*
  * [**disableautomount** *<b>\[Linux USB automount disabler\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_linux.rc)
  * [**diffbin** *<b>\[Compare binary files\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_linux.rc) : *diffbin &lt;binary_left&gt; &lt;binary_right&gt; [first_n_lines]*
  * [**netspeed** *<b>\[Display network speeds\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_linux.rc)
  * [**netspeedtest** *<b>\[Run SpeedTest client\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_linux.rc)
  * [**drivespeedtest** *<b>\[Run drive write speed test\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_linux.rc) : *drivespeedtest &lt;test_file_path&gt;*
  * [**trimtrees** *<b>\[Hardlink duplicated files with trimtrees from cpansearch.perl.org\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_linux.rc) : *trimtrees &lt;paths&gt;*
  * [**buildlock** *<b>\[Mutex-locked command execution\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_linux.rc) : *buildlock &lt;command...&gt;*
  * [**fileschemesorter** *<b>\[Sort file against scheme file\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_linux.rc) : *fileschemesorter &lt;file_to_sort&gt; &lt;file_reference&gt;*
  * [**mtpmountdisable** *<b>\[Disable MTP automount\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_linux.rc)
  * [**cleanram** *<b>\[RAM caches cleanup\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_linux.rc)
  * [**cleanrambuild** *<b>\[RAM caches cleanup\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_linux.rc)
  * [**cleanramkill** *<b>\[Complete RAM cleanup including "java"\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_linux.rc) : *cleanramkill [bool_cleanram]*
  * [**networkrestart** *<b>\[Restart network manager\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_linux.rc)
  * [**isdone** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_linux.rc) : *notify-send "Process execution finished !*
  * [**topcpu** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_linux.rc) : *top -o %CPU*
  * [**topmem** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_linux.rc) : *top -o %MEM*

---
### [&nbsp;Documentation: [android_host_pushbullet.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_pushbullet.rc)&nbsp;]
  * [**pushb** *<b>\[Pushbullet notification helper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_pushbullet.rc) : *pushb [message]*
  * [**pushbsizes** *<b>\[Path sizes in Pushbullet notification\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_host_pushbullet.rc) : *pushbsizes &lt;paths&gt;*

---
### [&nbsp;Documentation: [android_kernel_builders.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_builders.rc)&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_repo_helpers.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_kernel_builders.rc)
  ```
  * [**makekernel** *<b>\[Kernel inline compiler\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_builders.rc) : *makekernel [platform_device_to_init / clean / mrproper] [toolchain_version] [make_parameters]*
  * [**kerneldefconfig** *<b>\[Select defconfig easily\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_builders.rc) : *kerneldefconfig [platform_device]*
  * [**kerneltoolchains** *<b>\[Select toolchains based on ARCH in Android build tree\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_builders.rc) : *kerneltoolchains [version]*

---
### [&nbsp;Documentation: [android_kernel_defconfig.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_defconfig.rc)&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_host_common.rc)
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
### [&nbsp;Documentation: [android_kernel_tools.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc)&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_devices.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_adb_tools.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_build_helpers.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_host_common.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_release_cleaners.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_kernel_tools.rc)
  ```
  * [**fboota** *<b>\[Advanced bootimage builder\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc) : *fboota [fastupl,flash,full,inject,push,recovery,sep,unsecure,zip]*
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
  * [**makesep** *<b>\[Compile sepolicies clean\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc) : *makesep [bool_inject]*
  * [**sepinject** *<b>\[Sepolicies files to boot partition injector\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc) : *sepinject &lt;root_path&gt;*
  * [**adbramdiskinject** *<b>\[Ramdisk files to boot partition injector\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc) : *adbramdiskinject &lt;files_paths&gt;*
  * [**bootimagedebuggable** *<b>\[Bootimage build unsecured patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_kernel_tools.rc) : *bootimagedebuggable &lt;device_product&gt; &lt;true/false&gt;*

---
### [&nbsp;Documentation: [android_release_builders.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_builders.rc)&nbsp;]
  * [**romautorelease** *<b>\[Advanced automated ROM builder\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_builders.rc) : *romautorelease &lt;device_name&gt; &lt;rom_tag&gt; [nowipe,j1/j2]*
  * [**autorelease** *<b>\[Helper menu access to autorelease* functions\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_builders.rc)
  * [**autobuild** *<b>\[Development automated ROM builder\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_builders.rc) : *autobuild &lt;device&gt;*

---
### [&nbsp;Documentation: [android_release_cleaners.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_cleaners.rc)&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_release_cleaners.rc)
  ```
  * [**outdevcl** *<b>\[Advanced ROM output cleaner for rebuilds\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_cleaners.rc) : *outdevcl &lt;devicename&gt; [bool_minimal]*
  * [**outbootdevcl** *<b>\[ROM output cleaner for bootimage rebuilds\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_cleaners.rc) : *outbootdevcl &lt;devicename&gt;*
  * [**outotadevcl** *<b>\[ROM output cleaner for OTA rebuilds\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_cleaners.rc) : *outotadevcl &lt;devicename&gt;*
  * [**outsepdevcl** *<b>\[ROM output cleaner for sepolicies rebuilds\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_cleaners.rc) : *outsepdevcl &lt;devicename&gt;*
  * [**outsystemdevcl** *<b>\[ROM output cleaner for system rebuilds\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_cleaners.rc) : *outsystemdevcl &lt;devicename&gt; [bool_minimal]*
  * [**outcommoncl** *<b>\[ROM output cleaner for common rebuilds\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_cleaners.rc)

---
### [&nbsp;Documentation: [android_release_helpers.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_helpers.rc)&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_adb_host.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_adb_tools.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_adb_installers.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_release_helpers.rc)
  ```
  * [**noninja** *<b>\[Run command without ninja\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_helpers.rc) : *noninja &lt;command...&gt;*
  * [**mmo** *<b>\[Build module without ninja\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_helpers.rc) : *mmo &lt;command...&gt;*
  * [**mmi** *<b>\[Build & install module without ninja\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_helpers.rc) : *mmi &lt;command...&gt;*
  * [**mmil** *<b>\[Build & list module without ninja\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_helpers.rc) : *mmil &lt;command...&gt;*
  * [**noccache** *<b>\[Run command without CCache\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_helpers.rc) : *noccache &lt;command...&gt;*

---
### [&nbsp;Documentation: [android_release_logs.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_logs.rc)&nbsp;]
  * [**romlogs** *<b>\[View ROMs build logs from romautorelease\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_logs.rc) : *romlogs &lt;device&gt; &lt;rom&gt; [logs_count_default_200]*

---
### [&nbsp;Documentation: [android_release_packages.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_packages.rc)&nbsp;]
  * [**signzip** *<b>\[Sign flashable zip\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_packages.rc) : *signzip &lt;zip_to_sign&gt; [signed_output_zip]*
  * [**signapk** *<b>\[Sign apk files\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_packages.rc) : *signapk &lt;apk_to_sign&gt; [signed_output_apk]*
  * [**mmmzip** *<b>\[Build module to flashable zip\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_packages.rc) : *mmmzip &lt;paths_or_modules&gt;*
  * [**systozip** *<b>\[System files to flashable zip\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_packages.rc) : *systozip &lt;files&gt;*
  * [**packzip** *<b>\[Files to flashable zip\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_packages.rc) : *packzip &lt;files&gt;*
  * [**gitzip** *<b>\[Git commit files to flashable zip\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_packages.rc) : *gitzip &lt;commit_sha1&gt;*
  * [**oeminjectorzip** *<b>\[OEM files to flashable injector zip\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_release_packages.rc) : *oeminjectorzip &lt;oem_image&gt;*

---
### [&nbsp;Documentation: [android_repo_builders.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_builders.rc)&nbsp;]
  * [**repotwrp** *<b>\[Advanced builder for TWRP\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_builders.rc) : *repotwrp {device} [nosync,nowipe,outcl,fota,local +fotareboot]*
  * [**repomrom** *<b>\[Advanced builder for MultiROM\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_builders.rc) : *repomrom {device} [nosync,nowipe,outcl,fota,local +fotareboot]*

---
### [&nbsp;Documentation: [android_repo_changelog.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_changelog.rc)&nbsp;]
  * [**repochangelog** *<b>\[Generate ROM changelogs\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_changelog.rc) : *repochangelog &lt;days_count&gt; [project1_path,project2_path,...]*

---
### [&nbsp;Documentation: [android_repo_changes.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_changes.rc)&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_repo_changes.rc)
  ```
  * [**repochanges** *<b>\[Detect all repo projects differences\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_changes.rc) : *repochanges ["filter_projects"]*

---
### [&nbsp;Documentation: [android_repo_cleaners.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_cleaners.rc)&nbsp;]
  * [**repoclean** *<b>\[Delete contents from 'out' folder\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_cleaners.rc) : *repoclean [out_folder]*
  * [**repodestroy** *<b>\[Delete complete repo apart from local_manifests\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_cleaners.rc)
  * [**repodevclean** *<b>\[Delete contents from 'out/target/product' folder\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_cleaners.rc)
  * [**repoprojectscleaner** *<b>\[Run inside an Android repo root\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_cleaners.rc)
  * [**repotagscleaner** *<b>\[Run inside an Android repo root\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_cleaners.rc)
  * [**repoheadscleaner** *<b>\[Cleanup repo projects refs/ contents\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_cleaners.rc)
  * [**reposyrm** *<b>\[Project repo sync with removal\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_cleaners.rc) : *reposyrm &lt;project/relative/path&gt;*
  * [**reposyrmf** *<b>\[Project repo sync with forced removal\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_cleaners.rc) : *reposyrmf &lt;project/relative/path&gt;*
  * [**repopathsizes** *<b>\[Repo project paths sizes\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_cleaners.rc) : *repopathsizes &lt;project/relative/path&gt;*
  * [**repocleancache** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_cleaners.rc) : *if [ ! -z "${CCACHE_DIR}" ]; then rm -rfv "${CCACHE_DIR}/"*; fi*

---
### [&nbsp;Documentation: [android_repo_compare.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_compare.rc)&nbsp;]
  * [**repocomparetags** *<b>\[Helper to compare release tags\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_compare.rc) : *repocomparetags &lt;base_tag_or_HEAD&gt; &lt;compare_tag_or_HEAD&gt;*

---
### [&nbsp;Documentation: [android_repo_helpers.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc)&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_host_common.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_repo_cleaners.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_repo_helpers.rc)
  ```
  * [**gettop** *<b>\[Get repo root path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc)
  * [**croot** *<b>\[Access repo root path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc)
  * [**repos** *<b>\[Prepare LineageOS device environment\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc) : *repos &lt;device_name&gt;*
  * [**reporoomserv** *<b>\[Manifest and local_manifests editor\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc)
  * [**reposy** *<b>\[Optimized relevant repo sync\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc)
  * [**reposysafe** *<b>\[Safeguarded repo projects sync\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc)
  * [**reposybranch** *<b>\[Individual repo projects sync\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc)
  * [**repoprune** *<b>\[Apply repo-wide prune cleanup\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc)
  * [**reposycl** *<b>\[Cleaned optimized relevant repo sync\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc)
  * [**repoforeach** *<b>\[Run commands for each project\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc)
  * [**repocache** *<b>\[CCache watcher and configuration\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc) : *repocache [cache_maximum_size]*
  * [**repogetbranch** *<b>\[Get repo project branch\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc)
  * [**repolistexclude** *<b>\[Get repo list fields to exclude with search\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc) : *repolistexclude [word_to_search]*
  * [**reposwitcher** *<b>\[Helper to switch between local_manifests_* folders\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_helpers.rc) : *reposwitcher [bool_init]*

---
### [&nbsp;Documentation: [android_repo_init.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_init.rc)&nbsp;]
  * [**repoinitaosp** *<b>\[repo init for AOSP\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_init.rc) : *repoinitaosp &lt;branch_id&gt; [referenced,clean,light/shallow,example]*
  * [**repoinitlineage** *<b>\[repo init for LineageOS\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_init.rc) : *repoinitlineage &lt;13.0/14.1/15.0/15.1&gt; [referenced,clean,light/shallow,example]*
  * [**repoinitrr** *<b>\[repo init for ResurrectionRemix\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_init.rc) : *repoinitrr &lt;nougat&gt; [referenced,clean,light/shallow]*
  * [**repoinittwrp** *<b>\[repo init for TWRP\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_init.rc) : *repoinittwrp &lt;twrp-{X.X}&gt; [referenced,clean,light/shallow]*
  * [**repoinitcleaner** *<b>\[repo init cleaner\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_init.rc) : *repoinitcleaner [clean]*
  * [**repoinitsafecleaner** *<b>\[repo init safety cleaner\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_init.rc) : *repoinitsafecleaner [clean]*
  * [**repoinit** *<b>\[repo init menu\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_init.rc) : *repoinit [bool_manually]*

---
### [&nbsp;Documentation: [android_repo_projects.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_projects.rc)&nbsp;]
  * [**gitrap** *<b>\[Development projects selector\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_projects.rc)
  * [**gitraplineagesony8996** *<b>\[LineageOS Sony 8996 development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_projects.rc)
  * [**gitrapaospsony8960n** *<b>\[AOSP Sony 8960 Nougat development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_projects.rc)
  * [**gitrapaospsony8960o** *<b>\[AOSP Sony 8960 O development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_projects.rc)
  * [**gitrapaospsony8960master** *<b>\[AOSP Sony 8960 Master development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_projects.rc)
  * [**gitrapaospsonysodp** *<b>\[AOSP Sony SODP development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_projects.rc)
  * [**gitrapaospcaf** *<b>\[AOSP-CAF development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_projects.rc)
  * [**gitraplineagesony8960master** *<b>\[LineageOS Sony 8960 Master development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_projects.rc)
  * [**gitraplineagesonysodp** *<b>\[LineageOS Sony SODP development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_projects.rc)
  * [**gitrapmultirom** *<b>\[MultiROM Sony development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_projects.rc)
  * [**gitraptwrp** *<b>\[TWRP Sony development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_projects.rc)

---
### [&nbsp;Documentation: [android_repo_referenced.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_referenced.rc)&nbsp;]
  * [**reporeferencedaosp** *<b>\[AOSP referenced repo commands launcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_referenced.rc) : *reporeferencedaosp &lt;"command_to_run"&gt; &lt;"device1 device2 ..."&gt;*
  * [**reporeferencedlineage** *<b>\[LineageOS referenced repo commands launcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_referenced.rc) : *reporeferencedlineage &lt;"command_to_run"&gt; &lt;"device1 device2 ..."&gt;*
  * [**reporefupdate** *<b>\[Upload new projects manifests\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_referenced.rc) : *reporefupdate [bool_automated]*
  * [**reporefsync** *<b>\[Download new projects manifests\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_referenced.rc) : *reporefsync [bool_dry_run]*
  * [**reporefrefresh** *<b>\[Download and upload new projects manifests\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_referenced.rc)
  * [**reporeflinker** *<b>\[Helper to symlink local_manifests to Developments\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_repo_referenced.rc)

---
### [&nbsp;Documentation: [android_rom_aicp.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_aicp.rc)&nbsp;]
  * [**gitcpaicp** *<b>\[Automated upstream to AICP device merger\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_aicp.rc)

---
### [&nbsp;Documentation: [android_rom_aospcaf.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_aospcaf.rc)&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_projects.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_aosp_aospcaf.rc)
  ```
  * [**aospcafpatcher** *<b>\[AOSP-CAF Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_aospcaf.rc) : *aospcafpatcher [specific_paths]*

---
### [&nbsp;Documentation: [android_rom_helpers.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_helpers.rc)&nbsp;]
  * [**rompatcher** *<b>\[Helper menu access to *patcher functions\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_helpers.rc)
  * [**romrebaser** *<b>\[Helper menu access to *rebaser functions\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_helpers.rc)

---
### [&nbsp;Documentation: [android_rom_images.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_images.rc)&nbsp;]
  * [**androidextractimage** *<b>\[Android filesystem.img extractor\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_images.rc) : *androidextractimage &lt;file.img&gt; &lt;output_path&gt;*

---
### [&nbsp;Documentation: [android_rom_lineageoms.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_lineageoms.rc)&nbsp;]
  * [**lineageomspatcher** *<b>\[LineageOMS Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_lineageoms.rc)

---
### [&nbsp;Documentation: [android_rom_lineageos.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_lineageos.rc)&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_git_remotes.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_host_common.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_projects.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_lineageos.rc)
  ```
  * [**lineagewebjekyll** *<b>\[Jekyll web helper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_lineageos.rc) : *lineagewebjekyll [bool_install]*
  * [**lineagecvetracker** *<b>\[CVE tracker instance helper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_lineageos.rc) : *lineagecvetracker [bool_install]*

---
### [&nbsp;Documentation: [android_rom_projects.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_projects.rc)&nbsp;]
  * [**gitbranchpusher** *<b>\[Push to project specific branch\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_projects.rc) : *gitbranchpusher [y/n] [remote_url] [branch]*
  * [**androidprojectpaths** *<b>\[Android project remote paths list\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_projects.rc) : *androidprojectpaths &lt;owner&gt; &lt;project_name&gt;*
  * [**androidprojectpatcher** *<b>\[Android project patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_projects.rc) : *androidprojectpatcher &lt;owner&gt; &lt;project_name&gt; &lt;email&gt; [specific_path]*
  * [**androidprojectrebaser** *<b>\[Android project rebaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_projects.rc) : *androidprojectrebaser &lt;owner&gt; &lt;project_branch&gt; &lt;"project_paths::name::upstream::branch"&gt; [specific_path]*
  * [**androidprojectforeach** *<b>\[Android project paths commands runner\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_projects.rc) : *androidprojectforeach &lt;owner&gt; &lt;project_name&gt; &lt;"commands"&gt;*
  * [**androidprojectsync** *<b>\[Android project paths repo syncer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_projects.rc) : *androidprojectsync &lt;owner&gt; &lt;project_name&gt;*
  * [**androidprojectungraft** *<b>\[Android project paths ungrafter\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_projects.rc) : *androidprojectungraft &lt;owner&gt; &lt;project_name&gt;*
  * [**androidprojectunshallow** *<b>\[Android project paths unshallower\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_rom_projects.rc) : *androidprojectunshallow &lt;owner&gt; &lt;project_name&gt;*

---
### [&nbsp;Documentation: [android_shortcuts.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc)&nbsp;]
  * [**cdd** *<b>\[Access device sources\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cdd &lt;device_name&gt;*
  * [**cdp** *<b>\[Access repo project sources\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cdp [project_name]*
  * [**cdman** *<b>\[Access manifests path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc)
  * [**cdlocman** *<b>\[Access local manifests path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc)
  * [**toout** *<b>\[Get device build output path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *toout &lt;device_name&gt;*
  * [**cdout** *<b>\[Access device build output path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cdout [device_name]*
  * [**getand** *<b>\[Get AndroidDev drive\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc)
  * [**torompaths** *<b>\[Get ROM device variant path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *torompaths &lt;rom_name&gt; [device]*
  * [**pathchanged** *<b>\[Run command and notify path changes\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *pathchanged &lt;command&gt; &lt;parameters&gt;*
  * [**toaosp** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *torompaths 'AOSP' "${1}"*
  * [**tolineage** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *torompaths 'LineageOS' "${1}"*
  * [**toaospcaf** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *toaosp 'AOSP' 'CAF'*
  * [**tomultirom** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *torompaths 'MultiROM'*
  * [**torr** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *torompaths 'ResurrectionRemix' "${1}"*
  * [**totwrp** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *torompaths 'TWRP'*
  * [**cdaosp** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd "$(toaosp "${1}")"*
  * [**cdl** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd "$(tolineage "${1}")"*
  * [**cdlineage** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd "$(tolineage "${1}")"*
  * [**cdaospcaf** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd "$(toaospcaf)"*
  * [**cdmultirom** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd "$(tomultirom)"*
  * [**cdrr** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd "$(torr "${1}")"*
  * [**cdtwrp** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd "$(totwrp)"*
  * [**cdand** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd "$(getand)"*
  * [**cddesk** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd "$(desktoppath)"*
  * [**cddev** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd "$(getand)/Development/${1}"*
  * [**cddevaosp** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd "$(getand)/Development/aosp_"*"${1}"*
  * [**cddevlineage** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd "$(getand)/Development/lineage_"*"${1}"*
  * [**cddevmrom** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd "$(getand)/Development/multirom_development_sony"*
  * [**cddevtwrp** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd "$(getand)/Development/twrp_development_sony"*
  * [**cdprojects** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd "$(getand)/Projects/${1}"*
  * [**cdref** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd "$(getand)/References/${1}"*
  * [**cdrefapk** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd "$(getand)/References/apk"*
  * [**cdrefdev** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd "$(getand)/References/Devices/"${1:+*${1}}*
  * [**cdserv** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd "$(getand)/Server"*
  * [**adbapks** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cdrefapk; adbapkinstall*
  * [**cdandfiles** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cd "${ANDROID_FILES_PATH}/"*
  * [**impaospcaf** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *rsync -arv --delete --delete-after "$(toaospcaf "${1}")" "./${1}"*
  * [**implineage** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *rsync -arv --delete --delete-after "$(tolineage "${1}")" "./${1}"*
  * [**cpaosp** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cp -fv "./${1}" "$(toaosp "${2}")/${1}"*
  * [**cplineage** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *cp -fv "./${1}" "$(tolineage "${2}")/${1}"*
  * [**meldaosp** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *pathscompare "./${1}" "$(toaosp "${2}")/${1}"*
  * [**meldaospsony** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *pathscompare "./${1}" "$(toaosp sony)/${1}"*
  * [**meldaospcaf** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *pathscompare "./${1}" "$(toaospcaf)/${1}"*
  * [**meldlineage** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *pathscompare "./${1}" "$(tolineage "${2}")/${1}"*
  * [**meldmrom** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *pathscompare "./${1}" "$(tomultirom)/${1}"*
  * [**meldtwrp** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *pathscompare "./${1}" "$(totwrp)/${1}"*
  * [**nout** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *diropen "$(toout "${1}")"*
  * [**aospsyncall** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *reporeferencedaosp "reposy"*
  * [**lineagesyncall** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *reporeferencedlineage "reposy"*
  * [**meldril** *<b>\[Compare device to hardware/{ril\|ril-caf}\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *meldril [bool_caf]*
  * [**cdmromboot** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *croot; cd ./system/extras/libbootimg/*
  * [**cdmromcore** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *croot; cd ./system/extras/multirom/*
  * [**cdlsdk** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *croot; cd ./lineage-sdk/*
  * [**cdrecovery** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *croot; cd ./bootable/recovery/*
  * [**cdsepolicy** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_shortcuts.rc) : *croot; cd ./system/sepolicy/*

---
### [&nbsp;Documentation: [android_ssh_remote.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_ssh_remote.rc)&nbsp;]
  * [**sshremote** *<b>\[Get the configured SSH target\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_ssh_remote.rc)
  * [**sshserv** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_ssh_remote.rc) : *ssh $(sshremote)*
  * [**sshsync** *<b>\[Mirror remote server folder\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_ssh_remote.rc) : *sshsync &lt;up/down&gt; &lt;local_path&gt; &lt;remote_path&gt; [params]*

---
### [&nbsp;Documentation: [android_tools.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_tools.rc)&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_host_edit.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_host_grep.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_host_common.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_tools.rc)
  ```
  * [**binaryeditor** *<b>\[Binary files parser and editor\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_tools.rc) : *binaryeditor &lt;patternsearch&gt; [binariespath] [replacement]*
  * [**binarysearch** *<b>\[Binary files parser and searcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_tools.rc) : *binarysearch &lt;patternsearch&gt; [binariespath]*
  * [**librarieshunter** *<b>\[Libraries linkage analyzer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_tools.rc) : *librarieshunter &lt;binariespath&gt;*
  * [**librarieschecker** *<b>\[Unreferenced libraries analyzer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_tools.rc) : *librarieschecker &lt;prebuilts_path&gt;*
  * [**haste** *<b>\[Share hastebin logs\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_tools.rc) : *haste &lt;file&gt; or \| haste*
  * [**pbin** *<b>\[Share Pastebin logs\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_tools.rc) : *pbin &lt;file&gt; or \| pbin*
  * [**pbinperm** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_tools.rc) : *PASTEBIN_EXPIRE=N pbin*
  * [**overlaycompare** *<b>\[Compare device overlays against sources\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_tools.rc) : *overlaycompare &lt;overlay_file_path&gt;*
  * [**remotescript** *<b>\[Remote script launcher with confirmations\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_tools.rc) : *remotescript &lt;url&gt; [bool_automated]*
  * [**wip** *<b>\[Work in progress commands to store and use\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_tools.rc) : *wip [commands to store]*

---
### [&nbsp;Documentation: [android_uploads_basketbuild.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_basketbuild.rc)&nbsp;]
  * [**uploadbasketbuild** *<b>\[File to BasketBuild server uploader\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_basketbuild.rc) : *uploadbasketbuild &lt;file_path&gt; [target_folder]*
  * [**downloadbasketbuild** *<b>\[Download from BasketBuild\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_basketbuild.rc) : *downloadbasketbuild &lt;remote_path&gt;*
  * [**uploadprivatebasketbuild** *<b>\[Upload to private BasketBuild\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_basketbuild.rc) : *uploadprivatebasketbuild &lt;device_name&gt;*
  * [**syncbasketbuild** *<b>\[Folder with BasketBuild server syncer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_basketbuild.rc) : *syncbasketbuild &lt;local_path&gt; &lt;remote_path&gt; &lt;--download/--upload&gt;*

---
### [&nbsp;Documentation: [android_uploads_common.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_common.rc)&nbsp;]
  * [**fileupl** *<b>\[File to release server uploader\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_common.rc) : *fileupl &lt;file_path&gt; [target_folder]*
  * [**fileget** *<b>\[File from release server downloader\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_common.rc) : *fileget &lt;remote_path&gt; [boot_remove_remote]*
  * [**fastupl** *<b>\[Fast private file to server uploader\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_common.rc) : *fastupl &lt;file_path&gt; [none/zip/bootimage]*

---
### [&nbsp;Documentation: [android_uploads_ftp.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_ftp.rc)&nbsp;]
  * [**uploadftp** *<b>\[File to FTP server uploader\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_ftp.rc) : *uploadftp &lt;file_path&gt; [target_folder] [uploadftp_variant]*
  * [**downloadftp** *<b>\[Download from FTP\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_ftp.rc) : *downloadftp &lt;remote_path&gt; [uploadftp_variant]*
  * [**syncftp** *<b>\[Folder with FTP server syncer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_ftp.rc) : *syncftp &lt;local_path&gt; &lt;remote_path&gt; &lt;--download/--upload&gt; [uploadftp_variant]*

---
### [&nbsp;Documentation: [android_uploads_helpers.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_helpers.rc)&nbsp;]
  * [**mmmupl** *<b>\[Make zip and upload\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_helpers.rc) : *mmmupl &lt;package_or_path&gt; [bool_partial_build]*
  * [**devuplboot** *<b>\[Upload ROM bootimage\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_helpers.rc) : *devuplboot &lt;device&gt;*
  * [**devuplrom** *<b>\[Upload ROM build\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_helpers.rc) : *devuplrom &lt;device&gt; [folder_path]*
  * [**pushbrom** *<b>\[Notify build success\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_helpers.rc) : *pushbrom &lt;device_name&gt; [rom_name]*
  * [**makep** *<b>\[Use "makes" with Pushbullet notification\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_helpers.rc) : *makep &lt;parameters&gt;*

---
### [&nbsp;Documentation: [android_uploads_local.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_local.rc)&nbsp;]
  * [**androidfilesadd** *<b>\[Add file to AndroidFiles\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_local.rc) : *androidfilesadd &lt;file_path&gt; &lt;target_folder&gt;*
  * [**androidfilessync** *<b>\[Sync AndroidFiles folder\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_local.rc) : *androidfilessync &lt;--upload/--download&gt;*
  * [**androidfilesdownload** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_local.rc) : *androidfilessync --download*
  * [**androidfilesupload** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_local.rc) : *androidfilessync --upload*
  * [**androidfilescd** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_local.rc) : *cd "${ANDROID_FILES_PATH}/*
  * [**androidfilesopen** *<b>\[Open AndroidFiles folder\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_local.rc)

---
### [&nbsp;Documentation: [android_uploads_mega.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_mega.rc)&nbsp;]
  * [**uploadmega** *<b>\[Upload to MEGA.nz\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_mega.rc) : *uploadmega &lt;file_path&gt; [target_folder]*
  * [**downloadmega** *<b>\[Download from MEGA.nz\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_mega.rc) : *downloadmega &lt;remote_path&gt; [boot_remove_remote]*
  * [**uploadprivatemega** *<b>\[Upload to private MEGA.nz\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_mega.rc) : *uploadprivatemega &lt;device_name&gt;*
  * [**syncmega** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_mega.rc) : *megamirror*
  * [**listmega** *<b>\[List remote files on MEGA.nz\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_uploads_mega.rc) : *listmega [options]*

---
### [&nbsp;Documentation: [extensions/deprecated/android_repo_helpers.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/deprecated/android_repo_helpers.rc)&nbsp;]
  * [**reposaosp** *<b>\[Prepare AOSP device environment\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/deprecated/android_repo_helpers.rc) : *reposaosp &lt;device_name&gt;*

---
### [&nbsp;Documentation: [extensions/lineage_next/android_rom_lineageos.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/lineage_next/android_rom_lineageos.rc)&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_projects.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/extensions/lineage_next/android_rom_lineageos.rc)
  ```
  * [**lineagenextrebaser** *<b>\[LineageOS Next Rebaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/lineage_next/android_rom_lineageos.rc) : *lineagenextrebaser [specific_paths]*

---
### [&nbsp;Documentation: [extensions/megatools/megatools_mirror.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/megatools/megatools_mirror.rc)&nbsp;]
  * [**megamirror** *<b>\[MEGA mirror syncer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/megatools/megatools_mirror.rc) : *megamirror &lt;local_folder&gt; &lt;remote_folder&gt; &lt;--upload/--download&gt; [--copy,-y/-n]*

---
### [&nbsp;Documentation: [extensions/megatools/megatools_reload.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/megatools/megatools_reload.rc)&nbsp;]
  * [**meganzreload** *<b>\[Reload Mega.nz account and keys\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/megatools/megatools_reload.rc)

---
### [&nbsp;Documentation: [extensions/semc_msm7x30/android_autorelease.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/semc_msm7x30/android_autorelease.rc)&nbsp;]
  * [**autoreleaselegacyxperia** *<b>\[Automated LegacyXperia 7x30 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/semc_msm7x30/android_autorelease.rc) : *autoreleaselegacyxperia [devices]*

---
### [&nbsp;Documentation: [extensions/semc_msm7x30/android_rom_legacyxperia.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/semc_msm7x30/android_rom_legacyxperia.rc)&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_kernel_defconfig.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/extensions/semc_msm7x30/android_rom_legacyxperia.rc)
  ```
  * [**lineagelxpatcher** *<b>\[LineageOS LegacyXperia Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/semc_msm7x30/android_rom_legacyxperia.rc) : *lineagelxpatcher [local_manifests_branch]*
  * [**lxrepopick** *<b>\[LineageOS LegacyXperia repopick tool\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/semc_msm7x30/android_rom_legacyxperia.rc) : *lxrepopick &lt;commit_id&gt;*
  * [**lxdefconfig** *<b>\[Edit all lx defconfigs\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/semc_msm7x30/android_rom_legacyxperia.rc)

---
### [&nbsp;Documentation: [extensions/sony_msm8960/android_autorelease.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_autorelease.rc)&nbsp;]
  * [**autoreleaseaospsony8960o** *<b>\[Automated AOSP Oreo Sony 8960 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_autorelease.rc) : *autoreleaseaospsony8960o [devices]*
  * [**autoreleaselineagesony8960** *<b>\[Automated LineageOS Sony 8960 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_autorelease.rc) : *autoreleaselineagesony8960 [devices]*
  * [**autoreleaselineagesony8960o** *<b>\[Automated LineageOS 15.0 Sony 8960 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_autorelease.rc) : *autoreleaselineagesony8960o [devices]*
  * [**autoreleaserrsony8960** *<b>\[Automated RR Sony 8960 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_autorelease.rc) : *autoreleaserrsony8960 [devices]*
  * [**autoreleasecafsony8960** *<b>\[Automated AOSP-CAF Sony 8960 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_autorelease.rc) : *autoreleasecafsony8960 [devices]*
  * [**autoreleaseaospsony8960master** *<b>\[Automated AOSP Master Sony 8960 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_autorelease.rc) : *autoreleaseaospsony8960master &lt;devices&gt;*
  * [**autoreleaselineagesony8960master** *<b>\[Automated LineageOS Sony 8960 Master releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_autorelease.rc) : *autoreleaselineagesony8960master &lt;devices&gt;*

---
### [&nbsp;Documentation: [extensions/sony_msm8960/android_lineageos.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_lineageos.rc)&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_projects.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/extensions/sony_msm8960/android_lineageos.rc)
  ```
  * [**lineagesony8960oreopatcher** *<b>\[LineageOS 8960 Oreo Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_lineageos.rc) : *lineagesony8960oreopatcher [version=15.0]*
  * [**lineagesony8960rebaser** *<b>\[LineageOS Devices Rebaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_lineageos.rc) : *lineagesony8960rebaser [specific_paths]*

---
### [&nbsp;Documentation: [extensions/sony_msm8960/android_rom_aosp_sony8960.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_rom_aosp_sony8960.rc)&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_projects.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/extensions/sony_msm8960/android_rom_aosp_sony8960.rc)
  ```
  * [**aospsony8960npatcher** *<b>\[AOSP 8960 Nougat Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_rom_aosp_sony8960.rc) : *aospsony8960npatcher [specific_paths]*
  * [**aospsony8960opatcher** *<b>\[AOSP 8960 O Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_rom_aosp_sony8960.rc) : *aospsony8960opatcher [specific_paths]*
  * [**aospsony8960omr1patcher** *<b>\[AOSP 8960 O MR1 Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_rom_aosp_sony8960.rc) : *aospsony8960omr1patcher [specific_paths]*
  * [**aospsony8960masterpatcher** *<b>\[AOSP 8960 Master Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_rom_aosp_sony8960.rc) : *aospsony8960masterpatcher [specific_paths]*

---
### [&nbsp;Documentation: [extensions/sony_msm8960/android_shortcuts.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_shortcuts.rc)&nbsp;]
  * [**cdspdev** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_shortcuts.rc) : *cd "$(pwd \| sed 's/(.*)Android([^/]*/[^/]*).*/1Android2/device/sony/huashan/g')"*
  * [**cdspker** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_shortcuts.rc) : *cd "$(pwd \| sed 's/(.*)Android([^/]*/[^/]*).*/1Android2/kernel/sony/msm8960t/g')"*
  * [**cdblueker** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_shortcuts.rc) : *cd "$(pwd \| sed 's/(.*)Android([^/]*/[^/]*).*/1Android2/kernel/sony/msm8x60/g')"*
  * [**cdvendsony** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_shortcuts.rc) : *cd "$(pwd \| sed 's/(.*)Android([^/]*/[^/]*).*/1Android2/vendor/sony/g')"*
  * [**meldblue** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_shortcuts.rc) : *pathscompare "./${1}" "../blue-common/${1}"*

---
### [&nbsp;Documentation: [extensions/sony_msm8960/android_tools_release.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_tools_release.rc)&nbsp;]
  * [**autoreleasemultiromsony8960** *<b>\[Automated MultiROM Sony 8960 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_tools_release.rc) : *autoreleasemultiromsony8960 [devices]*
  * [**autoreleasetwrpsony8960** *<b>\[Automated TWRP Sony 8960 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/android_tools_release.rc) : *autoreleasetwrpsony8960 [devices]*

---
### [&nbsp;Documentation: [extensions/sony_msm8996/android_autorelease.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/android_autorelease.rc)&nbsp;]
  * [**autoreleaseaospsodp8996** *<b>\[Automated AOSP Sony SODP 8996 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/android_autorelease.rc) : *autoreleaseaospsodp8996 [devices]*

---
### [&nbsp;Documentation: [extensions/sony_msm8996/android_kernel_builders.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/android_kernel_builders.rc)&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_host_common.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_kernel_builders.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/extensions/sony_msm8996/android_kernel_builders.rc)
  ```
  * [**makekernelcopyleft** *<b>\[Kernel inline compiler for Sony Copyleft\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/android_kernel_builders.rc) : *makekernelcopyleft [platform_device_to_init / clean / mrproper] [make_parameters]*
  * [**kernelcopyleftmerger** *<b>\[Sony Copyleft kernel archive merge helper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/android_kernel_builders.rc) : *kernelcopyleftmerger &lt;archive_tar_bz2&gt;*

---
### [&nbsp;Documentation: [extensions/sony_msm8996/android_rom_aosp_sonysodp.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/android_rom_aosp_sonysodp.rc)&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_projects.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/extensions/sony_msm8996/android_rom_aosp_sonysodp.rc)
  ```
  * [**aospsonysodppatcher** *<b>\[AOSP SONY SODP Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/android_rom_aosp_sonysodp.rc) : *aospsonysodppatcher [specific_paths]*
  * [**aospsonysodprebaser** *<b>\[AOSP SONY SODP Rebaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/android_rom_aosp_sonysodp.rc) : *aospsonysodprebaser &lt;master/n-mr1&gt; [specific_paths]*
  * [**sonyaospkernelupdate** *<b>\[Automated Sony SODP kernel updater for AOSP\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/android_rom_aosp_sonysodp.rc) : *sonyaospkernelupdate &lt;device_name&gt;*

---
### [&nbsp;Documentation: [extensions/sony_msm8996/android_rom_lineageos_sony8996.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/android_rom_lineageos_sony8996.rc)&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/android_rom_projects.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/extensions/sony_msm8996/android_rom_lineageos_sony8996.rc)
  ```
  * [**lineagesony8996patcher** *<b>\[LineageOS Sony 8996 Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/android_rom_lineageos_sony8996.rc) : *lineagesony8996patcher [specific_paths]*

---
### [&nbsp;Documentation: [extensions/sony_msm8996/android_rom_lineageos_sonysodp.rc](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/android_rom_lineageos_sonysodp.rc)&nbsp;]
  ```Shell
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
### [&nbsp;Documentation: [install_repo.sh](https://github.com/AdrianDC/android_development_shell_tools/blob/master/install_repo.sh)&nbsp;]
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/install_repo.sh)
  ```
  * [**\./install_repo.sh** *<b>\[Automated install of Android repo requirements\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/install_repo.sh)

---
* #### Automatically generated by [shtoolsreadme](https://github.com/AdrianDC/android_development_shell_tools/blob/master/android_development_shell_tools.rc) for [android_development_shell_tools](https://github.com/AdrianDC/android_development_shell_tools)
<!-- Functions End -->
