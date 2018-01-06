# Android Development Shell Tools #

 * Project created by [Adrian DC](https://github.com/AdrianDC) - 2015-2018

 * GitHub description of the project: [About the project...](project.md)
   <br />
   Previews of a few regular functions: [Project previews...](previews.md)
   <br />
   Samples of commands usage per context: [Project samples...](samples.md)
   <br />
   XDA-Developers thread for this project : [Android Development Shell Tools](http://forum.xda-developers.com/-/-/-t3622382)

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

---

### [ Permanent installation for terminals ] ###
 * Open the `~/.bashrc` file, then adapt and add the following lines:
   ```Shell
   export ANDROID_DEV_DRIVE=/media/../AndroidDev;
   source "/.../android_development_shell_tools.rc";
   ```

---

### [ Functions detailed documentation ] ([+/-](javascript:toggle_documentation())) ###

<!-- Functions Start -->
<details>
<summary class="group_header">
#### <span class="group_label">Android Development Shell Tools</span> ####
</summary>

> ### Documentation: <span class="group_label">project/access.rc</span> ###
>
  * [**shtoolsget** *<b>\[Get android_development_shell_tools path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/access.rc)
  * [**shtoolscd** *<b>\[Access android_development_shell_tools path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/access.rc)
  * [**shtoolssync** *<b>\[Download new android_development_shell_tools changes\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/access.rc)
  * [**shtoolsup** *<b>\[Reloads android_development_shell_tools scripts\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/access.rc)

---
> ### Documentation: <span class="group_label">project/developer.rc</span> ###
>
  * [**shtoolscheck** *<b>\[Run ShellCheck on the project\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/developer.rc) : *shtoolscheck [bool_ignore]*
  * [**shtoolspush** *<b>\[Commit new changes to android_development_shell_tools\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/developer.rc) : *shtoolspush [bool_ignore_readme]*
  * [**shtoolsamend** *<b>\[Amend new changes to android_development_shell_tools\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/developer.rc) : *shtoolsamend [bool_ignore_readme] [bool_ignore_message]*
  * [**shtoolsmaster** *<b>\[Switch android_development_shell_tools to master branch\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/developer.rc)
  * [**shtoolsstaging** *<b>\[Switch android_development_shell_tools to staging branch\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/developer.rc)

---
> ### Documentation: <span class="group_label">project/docs.rc</span> ###
>
  * [**shtoolsdocs** *<b>\[Instantiate android_development_shell_tools documentation\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/docs.rc) : *shtoolsdocs [bool_install]*
  * [**shtoolsforum** *<b>\[Refresh README.forum project presentation\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/docs.rc)
  * [**shtoolsreadme** *<b>\[Refresh README.md functions usages\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/docs.rc)

---
> ### Documentation: <span class="group_label">project/history.rc</span> ###
>
  * [**shtoolsstats** *<b>\[Statistics on the project files\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/history.rc)
  * [**shtoolsdiff** *<b>\[Compare with upstream android_development_shell_tools\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/history.rc)
  * [**shtoolslog** *<b>\[Display android_development_shell_tools history\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/history.rc) : *shtoolslog [commits_count]*
  * [**shtoolsshow** *<b>\[Display android_development_shell_tools commit\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/history.rc) : *shtoolsshow [offset_count]*
  * [**shtoolsreset** *<b>\[Reset project to remote HEAD\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/history.rc)

---
> ### Documentation: <span class="group_label">project/interfaces.rc</span> ###
>
  * [**shtools** *<b>\[Entrypoint menu to android_development_shell_tools\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/interfaces.rc)
  * [**shtools-** *<b>\[Options menu for android_development_shell_tools\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/interfaces.rc)
  * [**shtoolskits** *<b>\[Toolkits selection for android_development_shell_tools\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/interfaces.rc) : *shtoolskits [init]*
  * [**shtoolsnews** *<b>\[Display android_development_shell_tools news notifications\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/interfaces.rc)

---
> ### Documentation: <span class="group_label">project/search.rc</span> ###
>
  * [**shtoolse** *<b>\[Direct access to related sources\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/search.rc) : *shtoolse &lt;words&gt; &lt;to&gt; &lt;search&gt;*
  * [**shtoolsf** *<b>\[Direct access to related function or alias sources\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/search.rc) : *shtoolsf &lt;function_or_alias&gt;*

---
</details>

<details>
<summary class="group_header">
#### <span class="group_label">Android ADB Tools</span> ####
</summary>

> ### Documentation: <span class="group_label">sources/android_adb/assets.rc</span> ###
>
  * [**adbdatabase** *<b>\[Android sqlite3 database opener\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/assets.rc) : *adbdatabase &lt;/data/.../sqlite.db&gt;*
  * [**sepaud** *<b>\[Logs sepolicy analyzer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/assets.rc) : *sepaud &lt;logs_file&gt; [context_search]*
  * [**sepmsg** *<b>\[Logs sepolicy message extractor\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/assets.rc) : *sepmsg &lt;logs_file&gt; &lt;context&gt; [grep]*
  * [**adbintents** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/assets.rc) : *adb shell 'dumpsys package r' &gt; intents.txt*
  * [**adbcamera** *<b>\[Enable and launch camera applications\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/assets.rc)
  * [**adbkp** *<b>\[Kill process by name\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/assets.rc) : *adbkp &lt;process_name&gt;*
  * [**adbpk** *<b>\[Android mediaserver debug logger\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/assets.rc)
  * [**adbms** *<b>\[Android mediaserver debug stracer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/assets.rc)
  * [**ndkstack** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/assets.rc) : *ndk-stack -sym "${ANDROID_DEV_DRIVE}/out/target/product/huashan/symbols" -dump*
  * [**adbwtch** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/assets.rc) : *adbr; while true; do adb shell "cat '${1}'"; done*
  * [**adbdu** *<b>\[Android /data/ sizes study\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/assets.rc)
  * [**adbpropradiolog** *<b>\[Radio debug property overrider\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/assets.rc) : *adbpropradiolog &lt;value&gt;*
  * [**adbalsa** *<b>\[Audio cards advanced study\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/assets.rc)
  * [**adbtinymix** *<b>\[Run tinymix on the device\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/assets.rc)
  * [**adbeditmanifest** *<b>\[Edit adb /system/vendor/manifest.xml file\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/assets.rc)
  * [**adbinputs** *<b>\[Dump all input devices\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/assets.rc)
  * [**adbreadevents** *<b>\[Read input events\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/assets.rc) : *adbreadevents &lt;event_number&gt;*

---
> ### Documentation: <span class="group_label">sources/android_adb/debug.rc</span> ###
>
  * [**adbst** *<b>\[strace\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/debug.rc) : *adbst &lt;process_name&gt; [parameters] [bool_wait]*
  * [**adbstf** *<b>\[Followed strace\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/debug.rc) : *adbstf &lt;process_name&gt;*
  * [**adbstw** *<b>\[Waiting strace\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/debug.rc) : *adbstw &lt;process_name&gt;*
  * [**adbstacktombstone** *<b>\[ADB tombstone debugger with stack\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/debug.rc)
  * [**adbbootchart** *<b>\[Bootchart debug helper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/debug.rc)

---
> ### Documentation: <span class="group_label">sources/android_adb/device.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_adb/tools.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_adb/device.rc)
  ```
  * [**adbpo** *<b>\[Power-off device through adb\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/device.rc)
  * [**adbre** *<b>\[Reboot device through adb\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/device.rc)
  * [**adbrh** *<b>\[Hot-reboot device through adb\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/device.rc)
  * [**adbrr** *<b>\[Reboot device to recovery through adb\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/device.rc)
  * [**adbrb** *<b>\[Reboot device to bootloader through adb\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/device.rc)
  * [**adbw** *<b>\[Wait for device through adb\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/device.rc)

---
> ### Documentation: <span class="group_label">sources/android_adb/flash.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_adb/tools.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_devices/target.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_adb/flash.rc)
  ```
  * [**adbbootdump** *<b>\[Dump bootimage from device\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/flash.rc)
  * [**adbbootcut** *<b>\[Trim bootimage dump\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/flash.rc) : *adbbootcut &lt;file_path&gt;*
  * [**adbrecoveryinstall** *<b>\[Inject and reboot recovery\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/flash.rc) : *adbrecoveryinstall &lt;file_path&gt;*

---
> ### Documentation: <span class="group_label">sources/android_adb/installers.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_adb/tools.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_repo/helpers.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_adb/installers.rc)
  ```
  * [**adbpushfile** *<b>\[Push files through adb\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/installers.rc) : *adbpushfile &lt;file_path&gt; &lt;file_target&gt;*
  * [**adbif** *<b>\[Modules build listener and installed\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/installers.rc) : *adbif &lt;command...&gt;*
  * [**adbil** *<b>\[Modules build listener and lister\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/installers.rc) : *adbil &lt;command...&gt;*
  * [**adbi** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/installers.rc) : *adbro; adbif "${@}"*
  * [**adbpf** *<b>\[Advanced recursive adb files pusher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/installers.rc) : *adbpf &lt;file_paths&gt;*
  * [**adbp** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/installers.rc) : *adbro; adbpf "${@}"*
  * [**adbpu** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/installers.rc) : *adbro; adbpushfile "${@}"*
  * [**adbppr** *<b>\[adb automated PACKAGES_RESULTS files pusher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/installers.rc)
  * [**adbside** *<b>\[adb sideload helper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/installers.rc) : *adbside &lt;file_zip&gt; [boot_reboot]*
  * [**adbsiderom** *<b>\[adb sideload ROM with addons helper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/installers.rc) : *adbsiderom &lt;rom_zip_or_bootimage&gt; &lt;device&gt; [boot_no_reboot]*
  * [**adbpi** *<b>\[Automated file pusher and installer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/installers.rc) : *adbpi &lt;file_path&gt;*
  * [**adbu** *<b>\[Force optimization of a package\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/installers.rc) : *adbu &lt;package_name_or_file&gt;*
  * [**adbgitpf** *<b>\[Push files through adb from commit\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/installers.rc) : *adbgitpf &lt;commit_sha1&gt;*
  * [**adbpmrom** *<b>\[MultiROM development file pusher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/installers.rc) : *adbpmrom &lt;file&gt;*
  * [**adbpmromenc** *<b>\[MultiROM development encryption file pusher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/installers.rc) : *adbpmromenc &lt;file&gt;*
  * [**adbapkinstall** *<b>\[Install available apk files from current path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/installers.rc)

---
> ### Documentation: <span class="group_label">sources/android_adb/logs.rc</span> ###
>
  * [**adbl** *<b>\[adb Logcat helper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/logs.rc) : *adbl [all/crash/events/main/radio/system] [file_output] [bool_clean]*
  * [**adblr** *<b>\[Logcat output relevant reader\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/logs.rc)
  * [**adblpcln** *<b>\[Logcat output public cleaner\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/logs.rc) : *adblpcln [file_adb.log]*
  * [**adblcln** *<b>\[Logcat output cleaner\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/logs.rc) : *adblcln [file_adb.log]*
  * [**adbdcln** *<b>\[dmesg output cleaner\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/logs.rc) : *adbdcln [file_adb.log]*
  * [**adbkcln** *<b>\[Kernel logs output cleaner\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/logs.rc) : *adbkcln [file_kmsg]*
  * [**adbstcln** *<b>\[strace output cleaner\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/logs.rc) : *adbstcln [file_adb.log]*
  * [**adblc** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/logs.rc) : *adb logcat -c; adbl*
  * [**adbk** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/logs.rc) : *echo -n '' &gt; kmsg; adbsu cat /proc/kmsg \| tee -a kmsg*
  * [**adbdm** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/logs.rc) : *echo -n '' &gt; dmesg; adbsu dmesg \| tee -a dmesg*
  * [**adbkd** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/logs.rc) : *echo -n '' &gt; kmsg; adbsu cat /proc/kmsg \| tee -a kmsg*
  * [**adbkl** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/logs.rc) : *cls; echo -n '' &gt; last_kmsg; adbsu cat /proc/last_kmsg \| tee -a last_kmsg*
  * [**adbpl** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/logs.rc) : *cls; echo -n '' &gt; last_kmsg; adbsu cat /sys/fs/pstore/console-ramoops \| tee -a last_kmsg*
  * [**adbrl** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/logs.rc) : *cls; echo -n '' &gt; recovery_log; adbsu cat /tmp/recovery.log \| tee -a recovery_log*
  * [**adbdumpsensors** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/logs.rc) : *adbsu dumpsys sensorservice*
  * [**adbtrampoline** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/logs.rc) : *adbsu 'dmesg \| grep -i trampoline'*
  * [**adbple** *<b>\[ADB Ramoops Compressed Logger\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/logs.rc)

---
> ### Documentation: <span class="group_label">sources/android_adb/multirom.rc</span> ###
>
  * [**adbmromselect** *<b>\[Select MultiROM installation for path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/multirom.rc) : *adbmromselect [preselect]*
  * [**adbmrombootimage** *<b>\[MultiROM bootimage installer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/multirom.rc) : *adbmrombootimage &lt;bootimage_path&gt; [preselect]*
  * [**adbmrominjector** *<b>\[MultiROM kernel image injector\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/multirom.rc) : *adbmrominjector &lt;kernel_path&gt;*
  * [**adbmromautoboot** *<b>\[MultiROM autoboot selection\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/multirom.rc)
  * [**adbmromedit** *<b>\[MultiROM secondary ROM file editor\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/multirom.rc) : *adbmromedit &lt;relative_path&gt; [preselect]*

---
> ### Documentation: <span class="group_label">sources/android_adb/shortcuts.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_adb/shortcuts.rc)
  ```
  * [**adbs** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc) : *adb shell "${@}"*
  * [**adbdf** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc) : *adb shell df -H "${@}"*
  * [**adbsl** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc) : *adb shell ls -l "${@}"*
  * [**adbslz** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc) : *adb shell ls -lZ "${@}"*
  * [**adbsc** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc) : *adb shell cat "${@}"*
  * [**adbsg** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc) : *adb shell getprop "${@}"*
  * [**adbsw** *<b>\[Write a string to path through adb\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc) : *adbsw &lt;"data"&gt; &lt;path&gt;*
  * [**adbblkp** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc) : *adb shell ls -l /dev/block/bootdevice/by-name/*
  * [**adbfotarandom** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc) : *adb root; adb shell dd if=/dev/random of=/dev/block/platform/msm_sdcc.1/by-name/FOTAKernel*
  * [**adbfotazero** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc) : *adb root; adb shell dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/FOTAKernel*
  * [**adbmountcache** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc) : *adb shell mount -t ext4 /dev/block/platform/msm_sdcc.1/by-name/Cache /cache*
  * [**adbmountdata** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc) : *adb shell mount -t ext4 /dev/block/platform/msm_sdcc.1/by-name/Userdata /data*
  * [**adbmountmicrosd** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc) : *adb shell mkdir -p /storage/ext; adb shell mount -t ext4 /dev/block/mmcblk1p1 /storage/ext*
  * [**adbsgdisk** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc) : *adb shell sgdisk &#8208;&#8208;print /dev/block/mmcblk0*
  * [**adbumountcache** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc) : *adb shell umount /cache*
  * [**adbumountdata** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc) : *adb shell umount /data*
  * [**adbumountmicrosd** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc) : *adb shell umount /storage/ext*
  * [**adbmount** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc) : *adbmountcache; adbmountdata; adbmountmicrosd*
  * [**adbumount** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc) : *adbumountcache; adbumountdata; adbumountmicrosd*
  * [**adbinfomem** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc) : *adb shell dumpsys meminfo*
  * [**adbrcbin** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc) : *adb shell restorecon -R /sbin*
  * [**adbemergencycalls** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc) : *adb shell setprop ril.ecclist "${@}"*
  * [**adbemergencylist** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc) : *adb shell getprop ril.ecclist*
  * [**adbservices** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc) : *adb shell service list*

---
> ### Documentation: <span class="group_label">sources/android_adb/syncer.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_adb/syncer.rc)
  ```
  * [**adbpushsync** *<b>\[Folders adb push syncer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/syncer.rc) : *adbpushsync &lt;local_path&gt; &lt;target_path&gt;*

---
> ### Documentation: <span class="group_label">sources/android_adb/tools.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/host/common.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_adb/tools.rc)
  ```
  * [**adbscr** *<b>\[Take a screenshot from connected device\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/tools.rc)
  * [**adbr** *<b>\[adb root and remount rw system\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/tools.rc)
  * [**adbready** *<b>\[ADB ready checker\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/tools.rc)
  * [**adbro** *<b>\[Verified adb root and remount rw system\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/tools.rc)
  * [**adbsudo** *<b>\[ADB sudo toggle helper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/tools.rc)
  * [**adbcmd** *<b>\[Return adb command based on alias\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/tools.rc)
  * [**adbrstock** *<b>\[Stock ROM adb root access\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/tools.rc)
  * [**adbwait** *<b>\[adb wait for device\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/tools.rc) : *adbwait [delay_secs]*
  * [**adbsu** *<b>\[Run on root adb shell without remounts\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/tools.rc) : *adbsu &lt;command...&gt;*
  * [**adbsur** *<b>\[Run on root adb shell with remounts\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/tools.rc) : *adbsur &lt;command...&gt;*
  * [**adbco** *<b>\[Helper for adb network access\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/tools.rc) : *adbco [ipaddress_once]*
  * [**adbedit** *<b>\[Edit adb file, default on /system/build.prop\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/tools.rc) : *adbedit [file_path]*

---
> ### Documentation: <span class="group_label">sources/android_adb/updater.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_adb/updater.rc)
  ```
  * [**adbupdate** *<b>\[adb binary update from upstream\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/updater.rc)

---
</details>

<details>
<summary class="group_header">
#### <span class="group_label">Android Build Wrappers</span> ####
</summary>

> ### Documentation: <span class="group_label">sources/android_build/make.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_build/make.rc)
  ```
  * [**makej** *<b>\[Helper to 'make -jPROCESSORS'\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_build/make.rc) : *makej &lt;parameters&gt;*
  * [**makes** *<b>\[Helper to 'make -jPROCESSORS' with SCHED_BATCH\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_build/make.rc) : *makes &lt;parameters&gt;*

---
</details>

<details>
<summary class="group_header">
#### <span class="group_label">Android Devices Definitions</span> ####
</summary>

> ### Documentation: <span class="group_label">sources/android_devices/target.rc</span> ###
>
  * [**androiddevicestarget** *<b>\[Devices targets mapper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_devices/target.rc) : *androiddevicestarget [boot/system/...] [device]*
  * [**codenametotarget** *<b>\[Codename to build target\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_devices/target.rc) : *codenametotarget &lt;codename&gt;*
  * [**repogetdevice** *<b>\[Detect device name from repo environment\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_devices/target.rc)

---
</details>

<details>
<summary class="group_header">
#### <span class="group_label">Android Kernel Tools</span> ####
</summary>

> ### Documentation: <span class="group_label">sources/android_kernel/builders.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_repo/helpers.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_kernel/builders.rc)
  ```
  * [**makekernel** *<b>\[Kernel inline compiler\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/builders.rc) : *makekernel [platform_device_to_init / clean / mrproper] [toolchain_version] [make_parameters]*
  * [**kerneldefconfig** *<b>\[Select defconfig easily\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/builders.rc) : *kerneldefconfig [platform_device]*
  * [**kerneltoolchains** *<b>\[Select toolchains based on ARCH in Android build tree\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/builders.rc) : *kerneltoolchains [version]*

---
> ### Documentation: <span class="group_label">sources/android_kernel/defconfig.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/host/common.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_kernel/defconfig.rc)
  ```
  * [**makedefconf** *<b>\[Advanced defconfig helper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/defconfig.rc) : *makedefconf &lt;device_name&gt; [bool_full_config] [diff_config] [force_config=value]*
  * [**kernelconfigupdater** *<b>\[Kernel config updater\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/defconfig.rc) : *kernelconfigupdater &lt;CONFIG_NAME=VALUE_or_# CONFIG_NAME is not set&gt;*
  * [**makedefconfset** *<b>\[Kernel defconfig configuration setter\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/defconfig.rc) : *makedefconfset &lt;device_name&gt; [force_config=value]*

---
> ### Documentation: <span class="group_label">sources/android_kernel/editors.rc</span> ###
>
  * [**boottools** *<b>\[Android bootimage editor\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/editors.rc) : *boottools &lt;boot.img&gt;*
  * [**bootelf** *<b>\[Sony ELF 8960 bootimage editor\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/editors.rc) : *bootelf &lt;boot.img&gt;*

---
> ### Documentation: <span class="group_label">sources/android_kernel/helpers.rc</span> ###
>
  * [**makekernelinjector** *<b>\[Helper to makekernel with injector zip\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/helpers.rc) : *makekernelinjector &lt;device_names&gt;*
  * [**gitcpupprima** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/helpers.rc) : *gitcpup "${1}" 'CORE' 'drivers/staging/prima/CORE'*

---
> ### Documentation: <span class="group_label">sources/android_kernel/tools.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_adb/tools.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_build/helpers.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_devices/target.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/host/common.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_release/cleaners.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_kernel/tools.rc)
  ```
  * [**fboota** *<b>\[Advanced bootimage builder\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/tools.rc) : *fboota [fastupl,flash,full,inject,push,recovery,sep,unsecure,zip]*
  * [**fboot** *<b>\[fastboot bootimage flashed\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/tools.rc) : *fboot &lt;bootimage&gt;*
  * [**fboots** *<b>\[fastboot systemimage flashed\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/tools.rc) : *fboots &lt;system_img&gt;*
  * [**fbootr** *<b>\[Fastboot reboot\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/tools.rc)
  * [**bootinfo** *<b>\[Bootimage structure and information parser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/tools.rc) : *bootinfo &lt;boot_img_file&gt;*
  * [**adbbootinfo** *<b>\[Kernel bbootimg analyzer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/tools.rc)
  * [**adbfotainfo** *<b>\[FOTA bbootimg analyzer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/tools.rc)
  * [**fbootk** *<b>\[Kernel image to boot partition injector\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/tools.rc) : *fbootk &lt;kernelpath&gt; [bool_fota]*
  * [**frecovery** *<b>\[Flash recovery with fastboot\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/tools.rc) : *frecovery &lt;image&gt;*
  * [**adbbootpush** *<b>\[Inject bootimage to partition\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/tools.rc) : *adbbootpush &lt;image&gt;*
  * [**adbfotapush** *<b>\[Inject FOTA to partition\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/tools.rc) : *adbfotapush &lt;image&gt;*
  * [**adbrecoverypush** *<b>\[Inject recovery to partition\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/tools.rc) : *adbrecoverypush &lt;image&gt;*
  * [**kernelinjectorzip** *<b>\[Kernel to injector zip packager\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/tools.rc) : *kernelinjectorzip &lt;device&gt; &lt;kernel_file_path&gt; [kernel_sources_for_modules]*
  * [**bootzip** *<b>\[Bootimage to zip packager\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/tools.rc) : *bootzip &lt;device&gt; &lt;boot_img_path&gt; [bool_push_to_device]*
  * [**makesep** *<b>\[Compile sepolicies clean\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/tools.rc) : *makesep [bool_inject]*
  * [**sepinject** *<b>\[Sepolicies files to boot partition injector\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/tools.rc) : *sepinject &lt;root_path&gt;*
  * [**adbramdiskinject** *<b>\[Ramdisk files to boot partition injector\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/tools.rc) : *adbramdiskinject &lt;files_paths&gt;*
  * [**bootimagedebuggable** *<b>\[Bootimage build unsecured patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/tools.rc) : *bootimagedebuggable &lt;device_product&gt; &lt;true/false&gt;*

---
</details>

<details>
<summary class="group_header">
#### <span class="group_label">Android Release Tools</span> ####
</summary>

> ### Documentation: <span class="group_label">sources/android_release/builders.rc</span> ###
>
  * [**romautorelease** *<b>\[Advanced automated ROM builder\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/builders.rc) : *romautorelease &lt;device_name&gt; &lt;rom_tag&gt; [nowipe,j1/j2]*
  * [**autorelease** *<b>\[Helper menu access to autorelease* functions\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/builders.rc)
  * [**romlogs** *<b>\[View ROMs build logs from romautorelease\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/builders.rc) : *romlogs &lt;device&gt; &lt;rom&gt; [logs_count_default_200]*
  * [**autobuild** *<b>\[Development automated ROM builder\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/builders.rc) : *autobuild &lt;device&gt;*

---
> ### Documentation: <span class="group_label">sources/android_release/cleaners.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_release/cleaners.rc)
  ```
  * [**outdevcl** *<b>\[Advanced ROM output cleaner for rebuilds\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/cleaners.rc) : *outdevcl &lt;devicename&gt; [bool_minimal]*
  * [**outbootdevcl** *<b>\[ROM output cleaner for bootimage rebuilds\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/cleaners.rc) : *outbootdevcl &lt;devicename&gt;*
  * [**outotadevcl** *<b>\[ROM output cleaner for OTA rebuilds\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/cleaners.rc) : *outotadevcl &lt;devicename&gt;*
  * [**outsepdevcl** *<b>\[ROM output cleaner for sepolicies rebuilds\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/cleaners.rc) : *outsepdevcl &lt;devicename&gt;*
  * [**outsystemdevcl** *<b>\[ROM output cleaner for system rebuilds\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/cleaners.rc) : *outsystemdevcl &lt;devicename&gt; [bool_minimal]*
  * [**outcommoncl** *<b>\[ROM output cleaner for common rebuilds\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/cleaners.rc)

---
> ### Documentation: <span class="group_label">sources/android_release/helpers.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_adb/tools.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_adb/installers.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_release/helpers.rc)
  ```
  * [**noninja** *<b>\[Run command without ninja\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/helpers.rc) : *noninja &lt;command...&gt;*
  * [**mmo** *<b>\[Build module without ninja\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/helpers.rc) : *mmo &lt;command...&gt;*
  * [**mmi** *<b>\[Build & install module without ninja\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/helpers.rc) : *mmi &lt;command...&gt;*
  * [**mmil** *<b>\[Build & list module without ninja\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/helpers.rc) : *mmil &lt;command...&gt;*
  * [**noccache** *<b>\[Run command without CCache\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/helpers.rc) : *noccache &lt;command...&gt;*

---
> ### Documentation: <span class="group_label">sources/android_release/packages.rc</span> ###
>
  * [**signzip** *<b>\[Sign flashable zip\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/packages.rc) : *signzip &lt;zip_to_sign&gt; [signed_output_zip]*
  * [**signapk** *<b>\[Sign apk files\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/packages.rc) : *signapk &lt;apk_to_sign&gt; [signed_output_apk]*
  * [**mmmzip** *<b>\[Build module to flashable zip\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/packages.rc) : *mmmzip &lt;paths_or_modules&gt;*
  * [**systozip** *<b>\[System files to flashable zip\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/packages.rc) : *systozip &lt;files&gt;*
  * [**packzip** *<b>\[Files to flashable zip\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/packages.rc) : *packzip &lt;files&gt;*
  * [**gitzip** *<b>\[Git commit files to flashable zip\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/packages.rc) : *gitzip &lt;commit_sha1&gt;*
  * [**oeminjectorzip** *<b>\[OEM files to flashable injector zip\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/packages.rc) : *oeminjectorzip &lt;oem_image&gt;*

---
</details>

<details>
<summary class="group_header">
#### <span class="group_label">Android Repository Tools</span> ####
</summary>

> ### Documentation: <span class="group_label">sources/android_repo/builders.rc</span> ###
>
  * [**repotwrp** *<b>\[Advanced builder for TWRP\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/builders.rc) : *repotwrp {device} [nosync,nowipe,outcl,fota,local +fotareboot]*
  * [**repomrom** *<b>\[Advanced builder for MultiROM\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/builders.rc) : *repomrom {device} [nosync,nowipe,outcl,fota,local +fotareboot]*

---
> ### Documentation: <span class="group_label">sources/android_repo/changelog.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_repo/changelog.rc)
  ```
  * [**repochangelog** *<b>\[Generate ROM changelogs\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/changelog.rc) : *repochangelog &lt;days_count&gt; [project1_path,project2_path,...]*

---
> ### Documentation: <span class="group_label">sources/android_repo/changes.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_repo/changes.rc)
  ```
  * [**repochanges** *<b>\[Detect all repo projects differences\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/changes.rc) : *repochanges ["filter_projects"]*

---
> ### Documentation: <span class="group_label">sources/android_repo/cleaners.rc</span> ###
>
  * [**repoclean** *<b>\[Delete contents from 'out' folder\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/cleaners.rc) : *repoclean [out_folder]*
  * [**repodestroy** *<b>\[Delete complete repo apart from local_manifests\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/cleaners.rc)
  * [**repodevclean** *<b>\[Delete contents from 'out/target/product' folder\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/cleaners.rc)
  * [**repoprojectscleaner** *<b>\[Run inside an Android repo root\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/cleaners.rc)
  * [**repotagscleaner** *<b>\[Run inside an Android repo root\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/cleaners.rc)
  * [**repoheadscleaner** *<b>\[Cleanup repo projects refs/ contents\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/cleaners.rc)
  * [**reposyrm** *<b>\[Project repo sync with removal\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/cleaners.rc) : *reposyrm &lt;project/relative/path&gt;*
  * [**reposyrmf** *<b>\[Project repo sync with forced removal\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/cleaners.rc) : *reposyrmf &lt;project/relative/path&gt;*
  * [**repopathsizes** *<b>\[Repo project paths sizes\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/cleaners.rc) : *repopathsizes &lt;project/relative/path&gt;*
  * [**repocleancache** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/cleaners.rc) : *if [ ! -z "${CCACHE_DIR}" ]; then rm -rfv "${CCACHE_DIR}/"*; fi*

---
> ### Documentation: <span class="group_label">sources/android_repo/compare.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_repo/compare.rc)
  ```
  * [**repocomparetags** *<b>\[Helper to compare release tags\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/compare.rc) : *repocomparetags &lt;base_tag_or_HEAD&gt; &lt;compare_tag_or_HEAD&gt;*

---
> ### Documentation: <span class="group_label">sources/android_repo/helpers.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/host/common.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_repo/cleaners.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_repo/helpers.rc)
  ```
  * [**gettop** *<b>\[Get repo root path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/helpers.rc)
  * [**croot** *<b>\[Access repo root path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/helpers.rc)
  * [**repos** *<b>\[Prepare Android device environment\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/helpers.rc) : *repos &lt;device_name&gt;*
  * [**reporoomserv** *<b>\[Manifest and local_manifests editor\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/helpers.rc)
  * [**reposy** *<b>\[Optimized relevant repo sync\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/helpers.rc)
  * [**reposysafe** *<b>\[Safeguarded repo projects sync\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/helpers.rc)
  * [**reposybranch** *<b>\[Individual repo projects sync\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/helpers.rc)
  * [**repoprune** *<b>\[Apply repo-wide prune cleanup\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/helpers.rc)
  * [**reposycl** *<b>\[Cleaned optimized relevant repo sync\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/helpers.rc)
  * [**repoforeach** *<b>\[Run commands for each project\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/helpers.rc)
  * [**repocache** *<b>\[CCache watcher and configuration\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/helpers.rc) : *repocache [cache_maximum_size]*
  * [**repogetbranch** *<b>\[Get repo project branch\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/helpers.rc)
  * [**repolistexclude** *<b>\[Get repo list fields to exclude with search\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/helpers.rc) : *repolistexclude [word_to_search]*
  * [**reposwitcher** *<b>\[Helper to switch between local_manifests_* folders\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/helpers.rc) : *reposwitcher [bool_init]*

---
> ### Documentation: <span class="group_label">sources/android_repo/init.rc</span> ###
>
  * [**repoinitaosp** *<b>\[repo init for AOSP\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/init.rc) : *repoinitaosp &lt;branch_id&gt; [referenced,clean,light/shallow,example]*
  * [**repoinitlineage** *<b>\[repo init for LineageOS\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/init.rc) : *repoinitlineage &lt;13.0/14.1/15.0/15.1&gt; [referenced,clean,light/shallow,example]*
  * [**repoinitrr** *<b>\[repo init for ResurrectionRemix\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/init.rc) : *repoinitrr &lt;nougat&gt; [referenced,clean,light/shallow]*
  * [**repoinittwrp** *<b>\[repo init for TWRP\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/init.rc) : *repoinittwrp &lt;twrp-{X.X}&gt; [referenced,clean,light/shallow]*
  * [**repoinitcleaner** *<b>\[repo init cleaner\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/init.rc) : *repoinitcleaner [clean]*
  * [**repoinitsafecleaner** *<b>\[repo init safety cleaner\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/init.rc) : *repoinitsafecleaner [clean]*
  * [**repoinit** *<b>\[repo init menu\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/init.rc) : *repoinit [bool_manually]*

---
> ### Documentation: <span class="group_label">sources/android_repo/projects.rc</span> ###
>
  * [**gitrap** *<b>\[Development projects selector\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/projects.rc)
  * [**gitraplineagesony8996** *<b>\[LineageOS Sony 8996 development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/projects.rc)
  * [**gitrapaospsony8960n** *<b>\[AOSP Sony 8960 Nougat development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/projects.rc)
  * [**gitrapaospsony8960o** *<b>\[AOSP Sony 8960 O development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/projects.rc)
  * [**gitrapaospsony8960master** *<b>\[AOSP Sony 8960 Master development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/projects.rc)
  * [**gitrapaospsonysodp** *<b>\[AOSP Sony SODP development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/projects.rc)
  * [**gitrapaospcaf** *<b>\[AOSP-CAF development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/projects.rc)
  * [**gitraplineagesony8960master** *<b>\[LineageOS Sony 8960 Master development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/projects.rc)
  * [**gitraplineagesonysodp** *<b>\[LineageOS Sony SODP development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/projects.rc)
  * [**gitrapmultirom** *<b>\[MultiROM Sony development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/projects.rc)
  * [**gitraptwrp** *<b>\[TWRP Sony development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/projects.rc)

---
> ### Documentation: <span class="group_label">sources/android_repo/referenced.rc</span> ###
>
  * [**reporeferencedaosp** *<b>\[AOSP referenced repo commands launcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/referenced.rc) : *reporeferencedaosp &lt;"command_to_run"&gt; &lt;"device1 device2 ..."&gt;*
  * [**reporeferencedlineage** *<b>\[LineageOS referenced repo commands launcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/referenced.rc) : *reporeferencedlineage &lt;"command_to_run"&gt; &lt;"device1 device2 ..."&gt;*
  * [**reporefupdate** *<b>\[Upload new projects manifests\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/referenced.rc) : *reporefupdate [bool_automated]*
  * [**reporefsync** *<b>\[Download new projects manifests\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/referenced.rc) : *reporefsync [bool_dry_run]*
  * [**reporefrefresh** *<b>\[Download and upload new projects manifests\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/referenced.rc)
  * [**reporeflinker** *<b>\[Helper to symlink local_manifests to Developments\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/referenced.rc)

---
> ### Documentation: <span class="group_label">sources/android_repo/shortcuts.rc</span> ###
>
  * [**cdd** *<b>\[Access device sources\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *cdd &lt;device_name&gt;*
  * [**cdp** *<b>\[Access repo project sources\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *cdp [project_name]*
  * [**cdman** *<b>\[Access manifests path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * [**cdlocman** *<b>\[Access local manifests path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * [**toout** *<b>\[Get device build output path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *toout &lt;device_name&gt;*
  * [**cdout** *<b>\[Access device build output path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *cdout [device_name]*
  * [**getand** *<b>\[Get AndroidDev drive\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * [**torompaths** *<b>\[Get ROM device variant path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *torompaths &lt;rom_name&gt; [device]*
  * [**pathchanged** *<b>\[Run command and notify path changes\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *pathchanged &lt;command&gt; &lt;parameters&gt;*
  * [**toaosp** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *torompaths 'AOSP' "${1}"*
  * [**tolineage** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *torompaths 'LineageOS' "${1}"*
  * [**toaospcaf** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *toaosp 'AOSP' 'CAF'*
  * [**tomultirom** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *torompaths 'MultiROM'*
  * [**torr** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *torompaths 'ResurrectionRemix' "${1}"*
  * [**totwrp** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *torompaths 'TWRP'*
  * [**cdaosp** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *cd "$(toaosp "${1}")"*
  * [**cdl** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *cd "$(tolineage "${1}")"*
  * [**cdlineage** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *cd "$(tolineage "${1}")"*
  * [**cdaospcaf** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *cd "$(toaospcaf)"*
  * [**cdmultirom** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *cd "$(tomultirom)"*
  * [**cdrr** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *cd "$(torr "${1}")"*
  * [**cdtwrp** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *cd "$(totwrp)"*
  * [**cdand** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *cd "$(getand)"*
  * [**cddesk** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *cd "$(desktoppath)"*
  * [**cddev** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *cd "$(getand)/Development/${1}"*
  * [**cddevaosp** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *cd "$(getand)/Development/aosp_"*"${1}"*
  * [**cddevlineage** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *cd "$(getand)/Development/lineage_"*"${1}"*
  * [**cddevmrom** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *cd "$(getand)/Development/multirom_development_sony"*
  * [**cddevtwrp** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *cd "$(getand)/Development/twrp_development_sony"*
  * [**cdprojects** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *cd "$(getand)/Projects/${1}"*
  * [**cdref** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *cd "$(getand)/References/${1}"*
  * [**cdrefapk** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *cd "$(getand)/References/apk"*
  * [**cdrefdev** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *cd "$(getand)/References/Devices/"${1:+*${1}}*
  * [**cdserv** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *cd "$(getand)/Server"*
  * [**adbapks** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *cdrefapk; adbapkinstall*
  * [**cdandfiles** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *cd "${ANDROID_FILES_PATH}/"*
  * [**impaospcaf** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *rsync -arv &#8208;&#8208;delete &#8208;&#8208;delete-after "$(toaospcaf "${1}")" "./${1}"*
  * [**implineage** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *rsync -arv &#8208;&#8208;delete &#8208;&#8208;delete-after "$(tolineage "${1}")" "./${1}"*
  * [**cpaosp** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *cp -fv "./${1}" "$(toaosp "${2}")/${1}"*
  * [**cplineage** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *cp -fv "./${1}" "$(tolineage "${2}")/${1}"*
  * [**meldaosp** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *pathscompare "./${1}" "$(toaosp "${2}")/${1}"*
  * [**meldaospsony** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *pathscompare "./${1}" "$(toaosp sony)/${1}"*
  * [**meldaospcaf** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *pathscompare "./${1}" "$(toaospcaf)/${1}"*
  * [**meldlineage** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *pathscompare "./${1}" "$(tolineage "${2}")/${1}"*
  * [**meldmrom** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *pathscompare "./${1}" "$(tomultirom)/${1}"*
  * [**meldtwrp** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *pathscompare "./${1}" "$(totwrp)/${1}"*
  * [**nout** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *diropen "$(toout "${1}")"*
  * [**aospsyncall** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *reporeferencedaosp "reposy"*
  * [**lineagesyncall** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *reporeferencedlineage "reposy"*
  * [**meldril** *<b>\[Compare device to hardware/{ril\|ril-caf}\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *meldril [bool_caf]*
  * [**cdmromboot** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *croot; cd ./system/extras/libbootimg/*
  * [**cdmromcore** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *croot; cd ./system/extras/multirom/*
  * [**cdlsdk** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *croot; cd ./lineage-sdk/*
  * [**cdrecovery** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *croot; cd ./bootable/recovery/*
  * [**cdsepolicy** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc) : *croot; cd ./system/sepolicy/*

---
</details>

<details>
<summary class="group_header">
#### <span class="group_label">Android ROM Tools</span> ####
</summary>

> ### Documentation: <span class="group_label">sources/android_rom/aicp.rc</span> ###
>
  * [**gitcpaicp** *<b>\[Automated upstream to AICP device merger\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_rom/aicp.rc)

---
> ### Documentation: <span class="group_label">sources/android_rom/aospcaf.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_rom/projects.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_rom/aospcaf.rc)
  ```
  * [**aospcafpatcher** *<b>\[AOSP-CAF Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_rom/aospcaf.rc) : *aospcafpatcher [specific_paths]*

---
> ### Documentation: <span class="group_label">sources/android_rom/helpers.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/host/grep.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/host/common.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_rom/helpers.rc)
  ```
  * [**librarieshunter** *<b>\[Libraries linkage analyzer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_rom/helpers.rc) : *librarieshunter &lt;binariespath&gt;*
  * [**librarieschecker** *<b>\[Unreferenced libraries analyzer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_rom/helpers.rc) : *librarieschecker &lt;prebuilts_path&gt;*
  * [**overlaycompare** *<b>\[Compare device overlays against sources\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_rom/helpers.rc) : *overlaycompare &lt;overlay_file_path&gt;*

---
> ### Documentation: <span class="group_label">sources/android_rom/images.rc</span> ###
>
  * [**androidextractimage** *<b>\[Android filesystem.img extractor\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_rom/images.rc) : *androidextractimage &lt;file.img&gt; &lt;output_path&gt;*

---
> ### Documentation: <span class="group_label">sources/android_rom/lineageoms.rc</span> ###
>
  * [**lineageomspatcher** *<b>\[LineageOMS Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_rom/lineageoms.rc)

---
> ### Documentation: <span class="group_label">sources/android_rom/lineageos.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/git/remotes.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/host/common.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_rom/projects.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_rom/lineageos.rc)
  ```
  * [**lineagewebjekyll** *<b>\[Jekyll web helper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_rom/lineageos.rc) : *lineagewebjekyll [bool_install]*
  * [**lineagecvetracker** *<b>\[CVE tracker instance helper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_rom/lineageos.rc) : *lineagecvetracker [bool_install]*

---
> ### Documentation: <span class="group_label">sources/android_rom/projects.rc</span> ###
>
  * [**gitbranchpusher** *<b>\[Push to project specific branch\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_rom/projects.rc) : *gitbranchpusher [y/n] [remote_url] [branch]*
  * [**androidprojectpaths** *<b>\[Android project remote paths list\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_rom/projects.rc) : *androidprojectpaths &lt;owner&gt; &lt;project_name&gt;*
  * [**androidprojectpatcher** *<b>\[Android project patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_rom/projects.rc) : *androidprojectpatcher &lt;owner&gt; &lt;project_name&gt; &lt;email&gt; [specific_path]*
  * [**androidprojectrebaser** *<b>\[Android project rebaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_rom/projects.rc) : *androidprojectrebaser &lt;owner&gt; &lt;project_branch&gt; &lt;"project_paths::name::upstream::branch"&gt; [specific_path]*
  * [**androidprojectforeach** *<b>\[Android project paths commands runner\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_rom/projects.rc) : *androidprojectforeach &lt;owner&gt; &lt;project_name&gt; &lt;"commands"&gt;*
  * [**androidprojectsync** *<b>\[Android project paths repo syncer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_rom/projects.rc) : *androidprojectsync &lt;owner&gt; &lt;project_name&gt;*
  * [**androidprojectungraft** *<b>\[Android project paths ungrafter\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_rom/projects.rc) : *androidprojectungraft &lt;owner&gt; &lt;project_name&gt;*
  * [**androidprojectunshallow** *<b>\[Android project paths unshallower\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_rom/projects.rc) : *androidprojectunshallow &lt;owner&gt; &lt;project_name&gt;*
  * [**rompatcher** *<b>\[Helper menu access to *patcher functions\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_rom/projects.rc)
  * [**romrebaser** *<b>\[Helper menu access to *rebaser functions\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_rom/projects.rc)

---
</details>

<details>
<summary class="group_header">
#### <span class="group_label">Git Gerrit Tools</span> ####
</summary>

> ### Documentation: <span class="group_label">sources/gerrit/review.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/gerrit/review.rc)
  ```
  * [**gerritreview** *<b>\[Gerrit review uploader\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/review.rc) : *gerritreview &lt;gerrit_ssh_or_http&gt; &lt;project_name_or_.&gt; &lt;github_name_or_.&gt; &lt;drafts/for/heads&gt; [branch]*

---
> ### Documentation: <span class="group_label">sources/gerrit/shortcuts.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/gerrit/review.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/gerrit/ssh.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/gerrit/shortcuts.rc)
  ```
  * [**gitpr** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc) : *gerritreview ssh://$(gerritusername)@review.lineageos.org:29418 LineageOS . for*
  * [**gitprh** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc) : *gerritreview http://review.lineageos.org LineageOS . for*
  * [**gitpr14** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc) : *gerritreview ssh://$(gerritusername)@review.lineageos.org:29418 LineageOS . for cm-14.1*
  * [**gitpr15** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc) : *gerritreview ssh://$(gerritusername)@review.lineageos.org:29418 LineageOS . for lineage-15.0*
  * [**gitprd** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc) : *gerritreview ssh://$(gerritusername)@review.lineageos.org:29418 LineageOS . drafts*
  * [**gitprdh** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc) : *gerritreview http://review.lineageos.org LineageOS . drafts*
  * [**gitpg** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc) : *gerritreview ssh://$(gerritusername)@review.lineageos.org:29418 LineageOS . heads*
  * [**gitpgh** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc) : *gerritreview http://review.lineageos.org LineageOS . heads*
  * [**gitprg** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc) : *gitpr; gitpg*
  * [**gitprgy** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc) : *echo -n "ynyn" \| gitpr; echo -n "yny" \| gitpg*
  * [**gitpraosp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc) : *gerritreview https://android.googlesource.com aosp . for*
  * [**gitpraospma** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc) : *gerritreview https://android.googlesource.com aosp . for master*
  * [**gitprdaosp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc) : *gerritreview https://android.googlesource.com aosp . drafts*
  * [**gitprdaospma** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc) : *gerritreview https://android.googlesource.com aosp . drafts master*
  * [**gitpraicp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc) : *gerritreview ssh://$(gerritusername)@gerrit.aicp-rom.com:29418 AICP . for n7.1*
  * [**gitprhaicp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc) : *gerritreview http://gerrit.aicp-rom.com AICP . for n7.1*
  * [**gitprdaicp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc) : *gerritreview ssh://$(gerritusername)@gerrit.aicp-rom.com:29418 AICP . drafts n7.1*
  * [**gitprdhaicp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc) : *gerritreview http://gerrit.aicp-rom.com AICP . drafts n7.1*
  * [**gitpgaicp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc) : *gerritreview ssh://$(gerritusername)@gerrit.aicp-rom.com:29418 AICP . heads n7.1*
  * [**gitpghaicp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc) : *gerritreview http://gerrit.aicp-rom.com AICP . heads n7.1*
  * [**gitprgaicp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc) : *gitpraicp; gitpgaicp*
  * [**gitprghaicp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc) : *gitprhaicp; gitpghaicp*
  * [**gitpr7** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc) : *gerritreview ssh://radian.dc@review.msm7x30.org:29418 LegacyXperia . for*
  * [**gitpr7h** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc) : *gerritreview http://review.msm7x30.org LegacyXperia . for*
  * [**gitpr7d** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc) : *gerritreview ssh://radian.dc@review.msm7x30.org:29418 LegacyXperia . drafts*
  * [**gitpr7dh** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc) : *gerritreview http://review.msm7x30.org LegacyXperia . drafts*
  * [**gitpromni** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc) : *gerritreview ssh://$(gerritusername)@gerrit.omnirom.org:29418 . OmniROM for android-7.1*
  * [**gitprhomni** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc) : *gerritreview http://gerrit.omnirom.org . OmniROM for android-7.1*
  * [**gitprdomni** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc) : *gerritreview ssh://$(gerritusername)@gerrit.omnirom.org:29418 . OmniROM drafts android-7.1*
  * [**gitprdhomni** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc) : *gerritreview http://gerrit.omnirom.org . OmniROM drafts android-7.1*
  * [**gitprtwrp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc) : *gerritreview ssh://$(gerritusername)@gerrit.twrp.me:29418 . TeamWin for android-6.0*
  * [**gitprdtwrp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc) : *gerritreview ssh://$(gerritusername)@gerrit.twrp.me:29418 . TeamWin drafts android-6.0*

---
> ### Documentation: <span class="group_label">sources/gerrit/ssh.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/gerrit/ssh.rc)
  ```
  * [**gerritusername** *<b>\[Gerrit username getter\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/ssh.rc)
  * [**gerritssh** *<b>\[Advanced Gerrit SSH interface\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/ssh.rc) : *gerritssh [branch] [change_id_reverser]*

---
</details>

<details>
<summary class="group_header">
#### <span class="group_label">Git Development Tools</span> ####
</summary>

> ### Documentation: <span class="group_label">sources/git/cleaners.rc</span> ###
>
  * [**gits** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/cleaners.rc) : *git stash*
  * [**gitsp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/cleaners.rc) : *git stash -p*
  * [**gitsu** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/cleaners.rc) : *git stash -u*
  * [**gitspop** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/cleaners.rc) : *git stash pop*
  * [**gitcleantags** *<b>\[Cleanup unrequired git tags\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/cleaners.rc) : *gitcleantags &lt;branch_to_keep&gt;*
  * [**gitonebranch** *<b>\[Git remove non-default remote branches\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/cleaners.rc)

---
> ### Documentation: <span class="group_label">sources/git/commit.rc</span> ###
>
  * [**gitshow** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc) : *git show -M &#8208;&#8208;name-status*
  * [**gitshf** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc) : *git show -M &#8208;&#8208;pretty=fuller*
  * [**gitshl** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc) : *git show &#8208;&#8208;oneline &#8208;&#8208;name-only "${1}" \| tail -n +2 \| cut -c $((1+${2:-0}))-*
  * [**gitap** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc) : *git add -p*
  * [**gitaa** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc) : *git add . -Afv*
  * [**gitan** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc) : *git add . -Afn*
  * [**gitanp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc) : *git config core.fileMode false; git add -p; git config &#8208;&#8208;unset core.fileMode*
  * [**gite** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc) : *fileedit "${1}"; echo -n ' Done ? [Enter] '; read -r; git add "${1}"*
  * [**gitbd** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc) : *git branch -D*
  * [**gitbv** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc) : *git fetch ${gitreviewdefault} $(git rev-parse &#8208;&#8208;abbrev-ref HEAD); git branch -vv*
  * [**gitch** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc) : *git checkout*
  * [**gitcp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc) : *git cherry-pick*
  * [**gitcpc** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc) : *git reset; git cherry-pick &#8208;&#8208;continue*
  * [**gitcpa** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc) : *for sha1 in "${@}"; do echo ''; echo "${sha1}"; git cherry-pick "${sha1}"; done*
  * [**gitcpf** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc) : *git fetch "${1}" "${2}"; git cherry-pick FETCH_HEAD*
  * [**gitcpr** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc) : *git show "${1}" &#8208;&#8208;no-color \| sed "s/${2}/${3}/g" \| patch*
  * [**gitfcp** *<b>\[Git cherry-pick from path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc) : *gitfcp &lt;path&gt; [amount_of_commits]*
  * [**gitc** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc) : *git commit $(gitgpgparam)*
  * [**gitce** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc) : *git commit $(gitgpgparam) &#8208;&#8208;allow-empty*
  * [**gitcs** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc) : *git commit $(gitgpgparam) -s*
  * [**gitca** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc) : *git commit $(gitgpgparam) &#8208;&#8208;amend*
  * [**gitcae** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc) : *git commit $(gitgpgparam) &#8208;&#8208;amend &#8208;&#8208;no-edit*
  * [**gitcad** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc) : *git commit $(gitgpgparam) &#8208;&#8208;amend &#8208;&#8208;no-edit &#8208;&#8208;date="$(date -R)*
  * [**gitrevert** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc) : *git revert $(gitgpgparam) &#8208;&#8208;no-edit*
  * [**gitfix** *<b>\[Fix git commit issues\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * [**gitcauthor** *<b>\[Apply own author to commit\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * [**gitcamarker** *<b>\[Apply marker commit to author/committer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * [**gitcid** *<b>\[Apply commit-msg hook to commit\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * [**gitcidupstream** *<b>\[Load commit-msg hook from upstream\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * [**gitrh** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc) : *git reset FETCH_HEAD &#8208;&#8208;hard*
  * [**githd** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc) : *git reset HEAD &#8208;&#8208;hard*
  * [**gitcl** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc) : *git cherry-pick &#8208;&#8208;abort 2&gt;/dev/null; git am &#8208;&#8208;abort 2&gt;/dev/null; git reset HEAD &#8208;&#8208;hard; git stash -u*
  * [**gitro** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc) : *git reset HEAD^ &#8208;&#8208;hard*
  * [**gitsl** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc) : *git reset HEAD^; gitap; gitcae*
  * [**gitrl** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc) : *git revert HEAD -n; git commit -m "Revert"; git reset HEAD^; git add -p*
  * [**gitri** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc) : *git reset HEAD^*
  * [**gitrt** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc) : *git reset &#8208;&#8208;hard*
  * [**gitsquashes** *<b>\[Get formatted squash message\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc) : *gitsquashes &lt;commits_count&gt;*

---
> ### Documentation: <span class="group_label">sources/git/config.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/git/config.rc)
  ```
  * [**githubusername** *<b>\[GitHub username getter\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc)
  * [**gitconfeditor** *<b>\[Configure Git editor application\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc) : *gitconfeditor &lt;app_name&gt;*
  * [**gitconfmergetool** *<b>\[Configure Git merge tool handling\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc) : *gitconfmergetool &lt;app_name&gt;*
  * [**gitconffilecrlf** *<b>\[Configure Git file CR/LF EOL handling\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc) : *gitconffilecrlf &lt;true/false/input&gt;*
  * [**gitconffileperms** *<b>\[Configure Git file permissions handling\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc) : *gitconffileperms &lt;true/false&gt;*
  * [**gitconfcolors** *<b>\[Configure Git colors handling\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc) : *gitconfcolors &lt;true/false/always&gt;*
  * [**gitconfcommitstats** *<b>\[Configure Git commits stats visibility\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc) : *gitconfcommitstats &lt;yes/quick/no&gt;*
  * [**gitconfpager** *<b>\[Configure Git pager handling\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc) : *gitconfpager &lt;less/more/false&gt;*
  * [**gitconfcredentials** *<b>\[Configure Git credentials handling\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc) : *gitconfcredentials &lt;cache/store/wincred&gt;*
  * [**gitconfgpgkey** *<b>\[Configure Git GPG signing key\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc) : *gitconfgpgkey &lt;gpg_key_id&gt;*
  * [**gitconfconflictsrepeat** *<b>\[Configure Git conflicts repeated handling\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc) : *gitconfconflictsrepeat &lt;true/false&gt;*
  * [**gitconfdiffrenames** *<b>\[Configure Git diff renames handling\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc) : *gitconfdiffrenames &lt;true/false/copies&gt;*
  * [**gitconfgpgsignature** *<b>\[Configure Git GPG signature usage\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc) : *gitconfgpgsignature &lt;true/false&gt;*
  * [**gpglist** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc) : *gpg &#8208;&#8208;list-secret-keys &#8208;&#8208;keyid-format LONG*
  * [**gpgsilent** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc) : *echo "no-tty" &gt;&gt; ~/.gnupg/gpg.conf*
  * [**githi** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc) : *git update-index &#8208;&#8208;assume-unchanged*
  * [**gitsh** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc) : *git update-index &#8208;&#8208;no-assume-unchanged*
  * [**gitgpgparam** *<b>\[Returns the GPG signature flag if enabled\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc)
  * [**gitfilter** *<b>\[Use git commands with filters\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc) : *gitfilter &lt;parameters&gt;*
  * [**gitnofilter** *<b>\[Use git commands without filters\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc) : *gitnofilter &lt;parameters&gt;*

---
> ### Documentation: <span class="group_label">sources/git/fetch.rc</span> ###
>
  * [**gitfetchtreset** *<b>\[Git fetch and reset hard\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/fetch.rc) : *gitfetchtreset [remote] [branch]*
  * [**gitfcu** *<b>\[Git fetch url and reset\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/fetch.rc) : *gitfcu &lt;url&gt; [branch]*
  * [**gitfurl** *<b>\[Git fetch from full url\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/fetch.rc) : *gitfurl &lt;url&gt;*
  * [**gitunshallow** *<b>\[Git fetch and unshallow project\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/fetch.rc)
  * [**gitf** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/fetch.rc) : *git fetch*
  * [**gitfmr** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/fetch.rc) : *git fetch origin; git reset origin/master*
  * [**gitfs** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/fetch.rc) : *git fetch origin; git reset origin/$(git rev-parse &#8208;&#8208;abbrev-ref HEAD); git stash*
  * [**gitfsu** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/fetch.rc) : *git fetch origin; git reset origin/$(git rev-parse &#8208;&#8208;abbrev-ref HEAD); git stash -p*
  * [**gitfgr** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/fetch.rc) : *gitfetchtreset github*
  * [**gitfor** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/fetch.rc) : *gitremoteverify origin gitrao; gitfetchtreset origin*
  * [**gitfar** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/fetch.rc) : *gitremoteverify $(githubusername) gitraa; gitfetchtreset $(githubusername)*
  * [**gitfprivr** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/fetch.rc) : *gitfetchtreset private*

---
> ### Documentation: <span class="group_label">sources/git/history.rc</span> ###
>
  * [**gitlo** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/history.rc) : *git log &#8208;&#8208;pretty=oneline &#8208;&#8208;abbrev-commit*
  * [**gitlod** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/history.rc) : *git log &#8208;&#8208;pretty=oneline &#8208;&#8208;abbrev-commit &#8208;&#8208;*
  * [**gitloo** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/history.rc) : *git log &#8208;&#8208;pretty=format:"%C(yellow)%h %Cred%ad %Creset%s" &#8208;&#8208;date=short &#8208;&#8208;all &#8208;&#8208;*
  * [**gitlosign** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/history.rc) : *git log &#8208;&#8208;show-signature*
  * [**gitlos** *<b>\[Search string in git history\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/history.rc) : *gitlos &lt;path_or_.&gt; ["search string input"] [search_max_count]*
  * [**gitdi** *<b>\[Show git differences status\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/history.rc)
  * [**gitdfs** *<b>\[git diff status of an SHA1\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/history.rc) : *gitdfs &lt;sha1commit&gt;*
  * [**gitdf** *<b>\[git diffs from an SHA1\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/history.rc) : *gitdf &lt;sha1commit&gt; &lt;filepath&gt;*
  * [**gitfindsha1** *<b>\[git search commit by title contents\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/history.rc) : *gitfindsha1 &lt;remote/branch&gt; &lt;"title text to search"&gt;*

---
> ### Documentation: <span class="group_label">sources/git/merge.rc</span> ###
>
  * [**gitmt** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/merge.rc) : *git mergetool*
  * [**gitmte** *<b>\[Merge tool with manual conflicts resolution\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/merge.rc)
  * [**gitmtr** *<b>\[Merge tool with reference project sources\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/merge.rc) : *gitmtr &lt;referenced_path&gt;*

---
> ### Documentation: <span class="group_label">sources/git/pick.rc</span> ###
>
  * [**gitcpu** *<b>\[Git URL commit cherry-picker\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/pick.rc) : *gitcpu &lt;githuburltocommit&gt; [branch]*
  * [**gitmerges** *<b>\[Attempt to merge commit history\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/pick.rc) : *gitmerges &lt;commit_sha1&gt; [count]*
  * [**gitcpo** *<b>\[GitHub origin cherry-picker\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/pick.rc) : *gitcpo &lt;branch&gt; &lt;amount_of_commits&gt;*
  * [**gitcpup** *<b>\[Git URL patch applier\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/pick.rc) : *gitcpup [url]*
  * [**gitcpur** *<b>\[Git URL retargeted patch applier\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/pick.rc) : *gitcpur &lt;url&gt; &lt;search_text&gt; &lt;replace_text&gt;*

---
> ### Documentation: <span class="group_label">sources/git/push.rc</span> ###
>
  * [**gitpf** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/push.rc) : *git push -f*
  * [**gitpu** *<b>\[Git push to validated remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/push.rc) : *gitpu [remote] [branch] [input]*
  * [**gitpurl** *<b>\[Git pull to full url\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/push.rc) : *gitpurl &lt;url&gt;*
  * [**gitpa** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/push.rc) : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername)*
  * [**gitpama** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/push.rc) : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) master*
  * [**gitpa14** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/push.rc) : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) cm-14.1*
  * [**gitpa15** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/push.rc) : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) lineage-15.0*
  * [**gitpal** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/push.rc) : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) local_manifests*
  * [**gitpaman** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/push.rc) : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) manifests*
  * [**gitpo** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/push.rc) : *gitremoteverify origin false && gitpu origin*
  * [**gitpom** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/push.rc) : *gitremoteverify origin false && gitpu origin master*
  * [**gitpp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/push.rc) : *gitremoteverify project gitrap && gitpu project*
  * [**gitppm** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/push.rc) : *gitremoteverify project gitrap && gitpu project master*
  * [**gitppriv** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/push.rc) : *gitremoteverify private false && gitpu private*
  * [**gitpprivm** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/push.rc) : *gitremoteverify private false && gitpu private master*

---
> ### Documentation: <span class="group_label">sources/git/rebase.rc</span> ###
>
  * [**gitra** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/rebase.rc) : *git rebase &#8208;&#8208;abort*
  * [**gitrc** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/rebase.rc) : *git rebase &#8208;&#8208;continue*
  * [**gitre** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/rebase.rc) : *git rebase &#8208;&#8208;edit-todo*
  * [**gitrs** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/rebase.rc) : *git rebase &#8208;&#8208;skip*
  * [**gitrf** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/rebase.rc) : *git rebase "${1}^" -i*
  * [**gitr** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/rebase.rc) : *git rebase "HEAD~${1:-5}" -i*
  * [**gitrall** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/rebase.rc) : *git rebase -i HEAD~$(($(git rev-list &#8208;&#8208;count HEAD) - 1))*
  * [**gitrfedit** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/rebase.rc) : *GIT_SEQUENCE_EDITOR="sed -i -e 's/pick/edit/g'" git rebase "${1}" -i*
  * [**gitredit** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/rebase.rc) : *GIT_SEQUENCE_EDITOR="sed -i -e 's/pick/edit/g'" git rebase "HEAD~${1:-5}" -i*
  * [**gitrb** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/rebase.rc) : *branch=${1:-$(repogetbranch)}; git fetch github "${branch}"; git rebase "github/${branch}"*
  * [**gitrbo** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/rebase.rc) : *branch=${1:-$(repogetbranch)}; gitremoteverify origin gitrao; git fetch origin "${branch}"; git rebase "origin/${branch}"*

---
> ### Documentation: <span class="group_label">sources/git/remotes.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/git/config.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/git/remotes.rc)
  ```
  * [**gitrv** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/remotes.rc) : *git remote -v*
  * [**gitremoteset** *<b>\[Git remote setter\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/remotes.rc) : *gitremoteset &lt;remote_name&gt; &lt;remote_url&gt;*
  * [**gitremoteadaptset** *<b>\[Git remote adapter\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/remotes.rc) : *gitremoteadaptset &lt;remote_name&gt; &lt;remote_github&gt; [prefix_removal] [bool_prefix_android] [bool_underscore_to_dash]*
  * [**gitremoteverify** *<b>\[Git remote verifier\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/remotes.rc) : *gitremoteverify &lt;remote_name&gt; "command_to_run_if_missing"*
  * [**gitraa** *<b>\[Add GitHub Username remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/remotes.rc)
  * [**gitrai** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/remotes.rc) : *gitremoteadaptset 'aicp' 'AICP' 'android_'*
  * [**gitraon** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/remotes.rc) : *gitremoteadaptset 'next' 'lineage-next'*
  * [**gitraoo** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/remotes.rc) : *gitremoteadaptset 'origin' "${1}"*
  * [**gitraot** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/remotes.rc) : *gitremoteadaptset 'origin' 'TheMuppets'*
  * [**gitrat** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/remotes.rc) : *gitremoteadaptset 'twrp' 'TeamWin'*
  * [**gitral** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/remotes.rc) : *gitremoteset lineage "${1}"*
  * [**gitrapriv** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/remotes.rc) : *gitremoteset private "${1}"*
  * [**gitraau** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/remotes.rc) : *git remote set-url $(githubusername)*
  * [**gitraou** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/remotes.rc) : *git remote set-url origin*
  * [**gitrao** *<b>\[Add LineageOS origin remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/remotes.rc)
  * [**gitrax** *<b>\[Add XperiaMultiROM xperia remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/remotes.rc)
  * [**gitramd** *<b>\[Add MultiROM-Dev mromdev remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/remotes.rc)
  * [**gitraos** *<b>\[Add sonyxperiadev origin remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/remotes.rc)

---
> ### Documentation: <span class="group_label">sources/git/stats.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/git/config.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/git/remotes.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/git/tools.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/git/stats.rc)
  ```
  * [**gitstat** *<b>\[Git history with remote comparator\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/stats.rc) : *gitstat &lt;remote&gt; &lt;branch&gt; [stats_only]*
  * [**gitst** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/stats.rc) : *gitremoteverify origin gitrao && gitstat origin lineage-15.0*
  * [**gitsto** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/stats.rc) : *gitremoteverify origin gitrao && gitstat origin $(git rev-parse &#8208;&#8208;abbrev-ref HEAD)*
  * [**gitstom** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/stats.rc) : *gitremoteverify origin gitrao && gitstat origin master*
  * [**gitsta** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/stats.rc) : *gitremoteverify $(githubusername) gitraa && gitstat $(githubusername) lineage-15.0*
  * [**gitstam** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/stats.rc) : *gitremoteverify $(githubusername) gitraa && gitstat $(githubusername) master*
  * [**gitstg** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/stats.rc) : *gitremoteverify github false && gitstat github*
  * [**gitstaosp** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/stats.rc) : *gitremoteverify aosp false && gitstat aosp master*

---
> ### Documentation: <span class="group_label">sources/git/tools.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/git/tools.rc)
  ```
  * [**gitgetremote** *<b>\[Get git primary remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/tools.rc) : *gitgetremote [branch_grep]*
  * [**gitgetbranch** *<b>\[Get git primary branch\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/tools.rc)

---
</details>

<details>
<summary class="group_header">
#### <span class="group_label">Host Development Tools</span> ####
</summary>

> ### Documentation: <span class="group_label">sources/host/bash.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/host/common.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/host/bash.rc)
  ```
  * [**bashup** *<b>\[Reload ~/.bashrc\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/bash.rc)
  * [**bashe** *<b>\[Edit ~/.bashrc\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/bash.rc)
  * [**cls** *<b>\[Clean terminal screen\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/bash.rc)

---
> ### Documentation: <span class="group_label">sources/host/binary.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/host/grep.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/host/binary.rc)
  ```
  * [**binaryeditor** *<b>\[Binary files parser and editor\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/binary.rc) : *binaryeditor &lt;patternsearch&gt; [binariespath] [replacement]*
  * [**binarysearch** *<b>\[Binary files parser and searcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/binary.rc) : *binarysearch &lt;patternsearch&gt; [binariespath]*

---
> ### Documentation: <span class="group_label">sources/host/common.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/host/common.rc)
  ```
  * [**fileedit** *<b>\[Files editor for most environments\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/common.rc) : *fileedit &lt;paths&gt;*
  * [**fe** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/common.rc) : *fileedit*
  * [**fen** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/common.rc) : *FILEEDIT_TOUCH_NEW_FILE=true fileedit*
  * [**diropen** *<b>\[Directory opener for most environments\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/common.rc) : *diropen &lt;path&gt;*
  * [**dop** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/common.rc) : *diropen .*
  * [**pathscompare** *<b>\[Paths comparison for most environments\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/common.rc) : *pathscompare &lt;path_left&gt; &lt;path_right&gt;*
  * [**urlopen** *<b>\[URL opener for most environments\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/common.rc) : *urlopen &lt;url&gt;*
  * [**desktoppath** *<b>\[Acquire desktop path for most environments\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/common.rc)
  * [**processownercheck** *<b>\[Returns if a process is owned by someone\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/common.rc) : *processownercheck &lt;process_name&gt; &lt;owner&gt;*

---
> ### Documentation: <span class="group_label">sources/host/edit.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/host/edit.rc)
  ```
  * [**editreplacematch** *<b>\[Edit by replacing matches\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/edit.rc) : *editreplacematch &lt;"match_line"&gt; &lt;"to_write"&gt; &lt;"files"&gt;*
  * [**editremovematch** *<b>\[Edit by removing matches\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/edit.rc) : *editremovematch &lt;"match_line"&gt; &lt;"files"&gt;*
  * [**editremoveupto** *<b>\[Edit by removing lines up to first match\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/edit.rc) : *editremoveupto &lt;"match_line"&gt; &lt;"files"&gt;*
  * [**editinsertabove** *<b>\[Edit by inserting above\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/edit.rc) : *editinsertabove &lt;"match_line"&gt; &lt;"to_insert"&gt; &lt;"files"&gt;*
  * [**editinsertbelow** *<b>\[Edit by inserting below\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/edit.rc) : *editinsertbelow &lt;"match_line"&gt; &lt;"to_insert"&gt; &lt;"files"&gt;*
  * [**editreplacemultiline** *<b>\[Edit by replacing multiple lines\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/edit.rc) : *editreplacemultiline &lt;"match_first"&gt; &lt;"match_last"&gt; &lt;"replace"&gt; &lt;"files"&gt;*
  * [**edittrimoutput** *<b>\[Edit by triming output line rewrites\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/edit.rc) : *edittrimoutput &lt;"files"&gt;*

---
> ### Documentation: <span class="group_label">sources/host/find.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/host/find.rc)
  ```
  * [**findn** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/find.rc) : *find -name*
  * [**findfilteredprojectfiles** *<b>\[Find filtered project files\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/find.rc) : *findfilteredprojectfiles [path] [params]*
  * [**findnewer** *<b>\[Search files newer than a date\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/find.rc) : *findnewer &lt;20160123&gt;*

---
> ### Documentation: <span class="group_label">sources/host/grep.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/host/find.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/host/common.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/host/grep.rc)
  ```
  * [**g** *<b>\[Grep through sources\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/grep.rc) : *g [inputs]*
  * [**gs** *<b>\[Grep through sources and binaries\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/grep.rc) : *gs [inputs]*
  * [**gce** *<b>\[Grep and edit through sources and binaries\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/grep.rc) : *gce &lt;inputs&gt;*
  * [**gck** *<b>\[Grep through kernel configurations\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/grep.rc) : *gck [inputs]*
  * [**gca** *<b>\[Grep through Android makefiles\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/grep.rc) : *gca [inputs]*
  * [**gcmanifest** *<b>\[Grep through Android Manifests\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/grep.rc) : *gcmanifest [inputs]*
  * [**gcrc** *<b>\[Grep through Android .rc files\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/grep.rc) : *gcrc [inputs]*
  * [**gcsep** *<b>\[Grep through Android sepolicies\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/grep.rc) : *gcsep [inputs]*
  * [**gcxml** *<b>\[Grep through Android .xml files\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/grep.rc) : *gcxml [inputs]*
  * [**gccontexts** *<b>\[Grep through Android sepolicies contexts\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/grep.rc) : *gccontexts [inputs]*
  * [**grepi** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/grep.rc) : *grep -ai*
  * [**gcmodules** *<b>\[List all LOCAL_MODULE elements\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/grep.rc) : *gcmodules [path]*
  * [**gcphony** *<b>\[List all PHONY rules\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/grep.rc)
  * [**stringsgetall** *<b>\[Run strings command based on host variants\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/grep.rc) : *stringsgetall [params]*

---
> ### Documentation: <span class="group_label">sources/host/linux.rc</span> ###
>
  * [**toclip** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/linux.rc) : *xclip -selection c*
  * [**rsynca** *<b>\[Mirror a path to another\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/linux.rc) : *rsynca &lt;path1&gt; &lt;path2&gt;*
  * [**rsyncf** *<b>\[Mirror a path to another based on size only\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/linux.rc) : *rsyncf &lt;path1&gt; &lt;path2&gt;*
  * [**pcinfo** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/linux.rc) : *inxi -Fxz*
  * [**cpioext** *<b>\[Extract cpio file\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/linux.rc) : *cpioext &lt;cpio_file_to_extract&gt;*
  * [**videoresize** *<b>\[Resize video dimensions\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/linux.rc) : *videoresize &lt;video_file&gt;*
  * [**disableautomount** *<b>\[Linux USB automount disabler\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/linux.rc)
  * [**diffbin** *<b>\[Compare binary files\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/linux.rc) : *diffbin &lt;binary_left&gt; &lt;binary_right&gt; [first_n_lines]*
  * [**netspeed** *<b>\[Display network speeds\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/linux.rc)
  * [**netspeedtest** *<b>\[Run SpeedTest client\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/linux.rc)
  * [**drivespeedtest** *<b>\[Run drive write speed test\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/linux.rc) : *drivespeedtest &lt;test_file_path&gt;*
  * [**buildlock** *<b>\[Mutex-locked command execution\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/linux.rc) : *buildlock &lt;command...&gt;*
  * [**fileschemesorter** *<b>\[Sort file against scheme file\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/linux.rc) : *fileschemesorter &lt;file_to_sort&gt; &lt;file_reference&gt;*
  * [**mtpmountdisable** *<b>\[Disable MTP automount\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/linux.rc)
  * [**networkrestart** *<b>\[Restart network manager\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/linux.rc)
  * [**isdone** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/linux.rc) : *notify-send "Process execution finished !*
  * [**topcpu** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/linux.rc) : *top -o %CPU*
  * [**topmem** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/linux.rc) : *top -o %MEM*

---
> ### Documentation: <span class="group_label">sources/host/pushbullet.rc</span> ###
>
  * [**pushb** *<b>\[Pushbullet notification helper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/pushbullet.rc) : *pushb [message]*
  * [**pushbsizes** *<b>\[Path sizes in Pushbullet notification\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/pushbullet.rc) : *pushbsizes &lt;paths&gt;*

---
> ### Documentation: <span class="group_label">sources/host/tools.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/host/edit.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/host/tools.rc)
  ```
  * [**haste** *<b>\[Share hastebin logs\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/tools.rc) : *haste &lt;file&gt; or \| haste*
  * [**pbin** *<b>\[Share Pastebin logs\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/tools.rc) : *pbin &lt;file&gt; or \| pbin*
  * [**pbinperm** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/tools.rc) : *PASTEBIN_EXPIRE=N pbin*
  * [**remotescript** *<b>\[Remote script launcher with confirmations\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/tools.rc) : *remotescript &lt;url&gt; [bool_automated]*
  * [**wip** *<b>\[Work in progress commands to store and use\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/tools.rc) : *wip [commands to store]*

---
</details>

<details>
<summary class="group_header">
#### <span class="group_label">SSH Server Tools</span> ####
</summary>

> ### Documentation: <span class="group_label">sources/ssh/remote.rc</span> ###
>
  * [**sshremote** *<b>\[Get the configured SSH target\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/ssh/remote.rc)
  * [**sshserv** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/ssh/remote.rc) : *ssh $(sshremote)*
  * [**sshsync** *<b>\[Mirror remote server folder\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/ssh/remote.rc) : *sshsync &lt;up/down&gt; &lt;local_path&gt; &lt;remote_path&gt; [params]*

---
</details>

<details>
<summary class="group_header">
#### <span class="group_label">File Uploads Helpers</span> ####
</summary>

> ### Documentation: <span class="group_label">sources/uploads/basketbuild.rc</span> ###
>
  * [**uploadbasketbuild** *<b>\[File to BasketBuild server uploader\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/basketbuild.rc) : *uploadbasketbuild &lt;file_path&gt; [target_folder]*
  * [**downloadbasketbuild** *<b>\[Download from BasketBuild\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/basketbuild.rc) : *downloadbasketbuild &lt;remote_path&gt;*
  * [**uploadprivatebasketbuild** *<b>\[Upload to private BasketBuild\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/basketbuild.rc) : *uploadprivatebasketbuild &lt;device_name&gt;*
  * [**syncbasketbuild** *<b>\[Folder with BasketBuild server syncer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/basketbuild.rc) : *syncbasketbuild &lt;local_path&gt; &lt;remote_path&gt; &lt;--download/--upload&gt;*

---
> ### Documentation: <span class="group_label">sources/uploads/common.rc</span> ###
>
  * [**fileupl** *<b>\[File to release server uploader\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/common.rc) : *fileupl &lt;file_path&gt; [target_folder]*
  * [**fileget** *<b>\[File from release server downloader\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/common.rc) : *fileget &lt;remote_path&gt; [boot_remove_remote]*
  * [**fastupl** *<b>\[Fast private file to server uploader\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/common.rc) : *fastupl &lt;file_path&gt; [none/zip/bootimage]*

---
> ### Documentation: <span class="group_label">sources/uploads/ftp.rc</span> ###
>
  * [**uploadftp** *<b>\[File to FTP server uploader\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/ftp.rc) : *uploadftp &lt;file_path&gt; [target_folder] [uploadftp_variant]*
  * [**downloadftp** *<b>\[Download from FTP\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/ftp.rc) : *downloadftp &lt;remote_path&gt; [uploadftp_variant]*
  * [**syncftp** *<b>\[Folder with FTP server syncer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/ftp.rc) : *syncftp &lt;local_path&gt; &lt;remote_path&gt; &lt;--download/--upload&gt; [uploadftp_variant]*

---
> ### Documentation: <span class="group_label">sources/uploads/helpers.rc</span> ###
>
  * [**mmmupl** *<b>\[Make zip and upload\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/helpers.rc) : *mmmupl &lt;package_or_path&gt; [bool_partial_build]*
  * [**devuplboot** *<b>\[Upload ROM bootimage\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/helpers.rc) : *devuplboot &lt;device&gt;*
  * [**devuplrom** *<b>\[Upload ROM build\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/helpers.rc) : *devuplrom &lt;device&gt; [folder_path]*
  * [**pushbrom** *<b>\[Notify build success\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/helpers.rc) : *pushbrom &lt;device_name&gt; [rom_name]*
  * [**makep** *<b>\[Use "makes" with Pushbullet notification\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/helpers.rc) : *makep &lt;parameters&gt;*

---
> ### Documentation: <span class="group_label">sources/uploads/local.rc</span> ###
>
  * [**androidfilesadd** *<b>\[Add file to AndroidFiles\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/local.rc) : *androidfilesadd &lt;file_path&gt; &lt;target_folder&gt;*
  * [**androidfilessync** *<b>\[Sync AndroidFiles folder\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/local.rc) : *androidfilessync &lt;--upload/--download&gt;*
  * [**androidfilesdownload** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/local.rc) : *androidfilessync &#8208;&#8208;download*
  * [**androidfilesupload** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/local.rc) : *androidfilessync &#8208;&#8208;upload*
  * [**androidfilescd** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/local.rc) : *cd "${ANDROID_FILES_PATH}/*
  * [**androidfilesopen** *<b>\[Open AndroidFiles folder\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/local.rc)

---
> ### Documentation: <span class="group_label">sources/uploads/mega.rc</span> ###
>
  * [**uploadmega** *<b>\[Upload to MEGA.nz\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/mega.rc) : *uploadmega &lt;file_path&gt; [target_folder]*
  * [**downloadmega** *<b>\[Download from MEGA.nz\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/mega.rc) : *downloadmega &lt;remote_path&gt; [boot_remove_remote]*
  * [**uploadprivatemega** *<b>\[Upload to private MEGA.nz\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/mega.rc) : *uploadprivatemega &lt;device_name&gt;*
  * [**syncmega** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/mega.rc) : *megamirror*
  * [**listmega** *<b>\[List remote files on MEGA.nz\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/mega.rc) : *listmega [options]*

---
</details>

<details>
<summary class="group_header">
#### <span class="group_label">LineageOS Next Extensions</span> ####
</summary>

> ### Documentation: <span class="group_label">extensions/lineage_next/lineageos.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_rom/projects.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/extensions/lineage_next/lineageos.rc)
  ```
  * [**lineagenextrebaser** *<b>\[LineageOS Next Rebaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/lineage_next/lineageos.rc) : *lineagenextrebaser [specific_paths]*

---
</details>

<details>
<summary class="group_header">
#### <span class="group_label">Linux Host Extensions</span> ####
</summary>

> ### Documentation: <span class="group_label">extensions/linux/cleaners.rc</span> ###
>
  * [**cleanram** *<b>\[RAM caches cleanup\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/linux/cleaners.rc)
  * [**cleanrambuild** *<b>\[RAM caches cleanup\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/linux/cleaners.rc)
  * [**cleanramkill** *<b>\[Complete RAM cleanup including "java"\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/linux/cleaners.rc) : *cleanramkill [bool_cleanram]*

---
</details>

<details>
<summary class="group_header">
#### <span class="group_label">MEGA Storage Extensions</span> ####
</summary>

> ### Documentation: <span class="group_label">extensions/megatools/mirror.rc</span> ###
>
  * [**megamirror** *<b>\[MEGA mirror syncer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/megatools/mirror.rc) : *megamirror &lt;local_folder&gt; &lt;remote_folder&gt; &lt;--upload/--download&gt; [--copy,-y/-n]*

---
> ### Documentation: <span class="group_label">extensions/megatools/reload.rc</span> ###
>
  * [**meganzreload** *<b>\[Reload Mega.nz account and keys\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/megatools/reload.rc)

---
</details>

<details>
<summary class="group_header">
#### <span class="group_label">LegacyXperia MSM7x30 Extensions</span> ####
</summary>

> ### Documentation: <span class="group_label">extensions/semc_msm7x30/autorelease.rc</span> ###
>
  * [**autoreleaselegacyxperia** *<b>\[Automated LegacyXperia 7x30 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/semc_msm7x30/autorelease.rc) : *autoreleaselegacyxperia [devices]*

---
> ### Documentation: <span class="group_label">extensions/semc_msm7x30/legacyxperia.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_kernel/defconfig.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/extensions/semc_msm7x30/legacyxperia.rc)
  ```
  * [**lineagelxpatcher** *<b>\[LineageOS LegacyXperia Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/semc_msm7x30/legacyxperia.rc) : *lineagelxpatcher [local_manifests_branch]*
  * [**lxrepopick** *<b>\[LineageOS LegacyXperia repopick tool\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/semc_msm7x30/legacyxperia.rc) : *lxrepopick &lt;commit_id&gt;*
  * [**lxdefconfig** *<b>\[Edit all lx defconfigs\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/semc_msm7x30/legacyxperia.rc)

---
</details>

<details>
<summary class="group_header">
#### <span class="group_label">Sony MSM8960 Extensions</span> ####
</summary>

> ### Documentation: <span class="group_label">extensions/sony_msm8960/aosp_sony8960.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_rom/projects.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/extensions/sony_msm8960/aosp_sony8960.rc)
  ```
  * [**aospsony8960npatcher** *<b>\[AOSP 8960 Nougat Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/aosp_sony8960.rc) : *aospsony8960npatcher [specific_paths]*
  * [**aospsony8960opatcher** *<b>\[AOSP 8960 O Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/aosp_sony8960.rc) : *aospsony8960opatcher [specific_paths]*
  * [**aospsony8960omr1patcher** *<b>\[AOSP 8960 O MR1 Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/aosp_sony8960.rc) : *aospsony8960omr1patcher [specific_paths]*
  * [**aospsony8960masterpatcher** *<b>\[AOSP 8960 Master Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/aosp_sony8960.rc) : *aospsony8960masterpatcher [specific_paths]*

---
> ### Documentation: <span class="group_label">extensions/sony_msm8960/autorelease.rc</span> ###
>
  * [**autoreleaseaospsony8960o** *<b>\[Automated AOSP Oreo Sony 8960 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/autorelease.rc) : *autoreleaseaospsony8960o [devices]*
  * [**autoreleaselineagesony8960** *<b>\[Automated LineageOS Sony 8960 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/autorelease.rc) : *autoreleaselineagesony8960 [devices]*
  * [**autoreleaselineagesony8960o** *<b>\[Automated LineageOS 15.0 Sony 8960 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/autorelease.rc) : *autoreleaselineagesony8960o [devices]*
  * [**autoreleaserrsony8960** *<b>\[Automated RR Sony 8960 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/autorelease.rc) : *autoreleaserrsony8960 [devices]*
  * [**autoreleasecafsony8960** *<b>\[Automated AOSP-CAF Sony 8960 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/autorelease.rc) : *autoreleasecafsony8960 [devices]*
  * [**autoreleaseaospsony8960master** *<b>\[Automated AOSP Master Sony 8960 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/autorelease.rc) : *autoreleaseaospsony8960master &lt;devices&gt;*
  * [**autoreleaselineagesony8960master** *<b>\[Automated LineageOS Sony 8960 Master releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/autorelease.rc) : *autoreleaselineagesony8960master &lt;devices&gt;*

---
> ### Documentation: <span class="group_label">extensions/sony_msm8960/lineageos.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_rom/projects.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/extensions/sony_msm8960/lineageos.rc)
  ```
  * [**lineagesony8960oreopatcher** *<b>\[LineageOS 8960 Oreo Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/lineageos.rc) : *lineagesony8960oreopatcher [version=15.0]*
  * [**lineagesony8960rebaser** *<b>\[LineageOS Devices Rebaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/lineageos.rc) : *lineagesony8960rebaser [specific_paths]*

---
> ### Documentation: <span class="group_label">extensions/sony_msm8960/release.rc</span> ###
>
  * [**autoreleasemultiromsony8960** *<b>\[Automated MultiROM Sony 8960 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/release.rc) : *autoreleasemultiromsony8960 [devices]*
  * [**autoreleasetwrpsony8960** *<b>\[Automated TWRP Sony 8960 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/release.rc) : *autoreleasetwrpsony8960 [devices]*

---
> ### Documentation: <span class="group_label">extensions/sony_msm8960/shortcuts.rc</span> ###
>
  * [**cdspker** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/shortcuts.rc) : *cd "$(pwd \| sed 's/(.*)Android([^/]*/[^/]*).*/1Android2/kernel/sony/msm8960t/g')"*
  * [**cdblueker** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/shortcuts.rc) : *cd "$(pwd \| sed 's/(.*)Android([^/]*/[^/]*).*/1Android2/kernel/sony/msm8x60/g')"*
  * [**cdvendsony** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/shortcuts.rc) : *cd "$(pwd \| sed 's/(.*)Android([^/]*/[^/]*).*/1Android2/vendor/sony/g')"*
  * [**meldblue** *(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/shortcuts.rc) : *pathscompare "./${1}" "../blue-common/${1}"*

---
</details>

<details>
<summary class="group_header">
#### <span class="group_label">Sony MSM8996 Extensions</span> ####
</summary>

> ### Documentation: <span class="group_label">extensions/sony_msm8996/aosp_sonysodp.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_rom/projects.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/extensions/sony_msm8996/aosp_sonysodp.rc)
  ```
  * [**aospsonysodppatcher** *<b>\[AOSP SONY SODP Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/aosp_sonysodp.rc) : *aospsonysodppatcher [specific_paths]*
  * [**aospsonysodprebaser** *<b>\[AOSP SONY SODP Rebaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/aosp_sonysodp.rc) : *aospsonysodprebaser &lt;master/n-mr1&gt; [specific_paths]*
  * [**sonyaospkernelupdate** *<b>\[Automated Sony SODP kernel updater for AOSP\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/aosp_sonysodp.rc) : *sonyaospkernelupdate &lt;device_name&gt;*

---
> ### Documentation: <span class="group_label">extensions/sony_msm8996/autorelease.rc</span> ###
>
  * [**autoreleaseaospsodp8996** *<b>\[Automated AOSP Sony SODP 8996 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/autorelease.rc) : *autoreleaseaospsodp8996 [devices]*

---
> ### Documentation: <span class="group_label">extensions/sony_msm8996/builders.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_kernel/builders.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/host/common.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/extensions/sony_msm8996/builders.rc)
  ```
  * [**makekernelcopyleft** *<b>\[Kernel inline compiler for Sony Copyleft\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/builders.rc) : *makekernelcopyleft [platform_device_to_init / clean / mrproper] [make_parameters]*
  * [**kernelcopyleftmerger** *<b>\[Sony Copyleft kernel archive merge helper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/builders.rc) : *kernelcopyleftmerger &lt;archive_tar_bz2&gt;*

---
> ### Documentation: <span class="group_label">extensions/sony_msm8996/lineageos_sony8996.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_rom/projects.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/extensions/sony_msm8996/lineageos_sony8996.rc)
  ```
  * [**lineagesony8996patcher** *<b>\[LineageOS Sony 8996 Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/lineageos_sony8996.rc) : *lineagesony8996patcher [specific_paths]*

---
> ### Documentation: <span class="group_label">extensions/sony_msm8996/lineageos_sonysodp.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_rom/projects.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/extensions/sony_msm8996/lineageos_sonysodp.rc)
  ```
  * [**lineagesonysodppatcher** *<b>\[LineageOS SONY SODP Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/lineageos_sonysodp.rc) : *lineagesonysodppatcher [specific_paths]*
  * [**lineagesonysodprebaser** *<b>\[LineageOS SONY SODP Rebaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/lineageos_sonysodp.rc) : *lineagesonysodprebaser [specific_paths]*

---
> ### Documentation: <span class="group_label">extensions/sony_msm8996/release.rc</span> ###
>
  * [**autoreleasemultiromsony8996** *<b>\[Automated MultiROM Sony 8996 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/release.rc) : *autoreleasemultiromsony8996 [devices]*
  * [**autoreleasetwrpsony8996** *<b>\[Automated TWRP Sony 8996 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/release.rc) : *autoreleasetwrpsony8996 [devices]*

---
> ### Documentation: <span class="group_label">extensions/sony_msm8996/shortcuts.rc</span> ###
>
  * [**sonysodpkernelrebase** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/shortcuts.rc) : *git fetch https://github.com/sonyxperiadev/kernel aosp/LA.UM.5.5.r1; git rebase FETCH_HEAD; gitpa*
  * [**doradefconf** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/shortcuts.rc) : *makedefconf msm-perf dora common*
  * [**dorazipkernel** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/shortcuts.rc) : *kernelinjectorzip dora arch/arm64/boot/Image.gz-dtb .*
  * [**kaguradefconf** *(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/shortcuts.rc) : *makedefconf msm-perf kagura common*

---
</details>

<details>
<summary class="group_header">
#### <span class="group_label">Template Example Extensions</span> ####
</summary>

</details>

<details>
<summary class="group_header">
#### <span class="group_label">Android Repository Scripts</span> ####
</summary>

> ### Documentation: <span class="group_label">scripts/android_repo/install.sh</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/scripts/android_repo/install.sh)
  ```
  * [**\./install.sh** *<b>\[Automated install of Android repo requirements\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/scripts/android_repo/install.sh)

---
</details>

<details>
<summary class="group_header">
#### <span class="group_label">Linux Host Scripts</span> ####
</summary>

> ### Documentation: <span class="group_label">scripts/linux/cleanram.sh</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/scripts/linux/cleanram.sh)
  ```
  * [**\./cleanram.sh** *<b>\[RAM caches cleanup\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/scripts/linux/cleanram.sh)

---
> ### Documentation: <span class="group_label">scripts/linux/cleanrambuild.sh</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/scripts/linux/cleanrambuild.sh)
  ```
  * [**\./cleanrambuild.sh** *<b>\[Build RAM processes cleanup\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/scripts/linux/cleanrambuild.sh)

---
> ### Documentation: <span class="group_label">scripts/linux/reboot.sh</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/scripts/linux/reboot.sh)
  ```
  * [**\./reboot.sh** *<b>\[Crontab script to reboot when not building\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/scripts/linux/reboot.sh)

---
</details>

<div class="group_footer">
<br />

---
* _Automatically generated by [shtoolsreadme](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/docs.rc) for [android_development_shell_tools](https://github.com/AdrianDC/android_development_shell_tools)_
</div>
<!-- Functions End -->
