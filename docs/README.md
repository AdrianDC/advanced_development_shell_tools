# Android Development Shell Tools #

 * Project created by [Adrian DC](https://github.com/AdrianDC) - 2015-2018

 * GitHub description of the project: [About the project...](project.md)
   <br />
   Previews of a few regular functions: [Project previews...](previews.md)
   <br />
   Samples of commands usage per context: [Project samples...](samples.md)
   <br />
   User outputs from shtools* commands: [Project shtools...](shtools.md)
   <br />
   XDA-Developers thread for this project : [Android Development Shell Tools](http://forum.xda-developers.com/-/-/-t3622382)

 * The 'android_development_shell_tools' is a project meant to provide
   <br />
   multiple advanced functions and shortcuts to ease Android development

 * The sources written and shared here are either meant to be used as they are,
   <br />
   or to serve as a reference for commands and functions an Android developer needs

 * To keep a local clone of 'android_development_shell_tools' updated with upstream changes,
   <br />
   simply run the *`shtoolssync;`* command and the updates will be downloaded

 * Scripts flagged "Standalone Import Ready" and starting with *`source <(curl -Ls...`*
   <br />
   are able to be directly sourced through the provided commands in any terminal
   <br />
   without the need of this project being synced locally or loaded in a root context

---

### [ How to load and install the project ] ###

 * **Clone the project locally with git:**
   <br />
   *`git clone https://github.com/AdrianDC/android_development_shell_tools -b master;`*

 * **Load the project in the current Shell terminal:**
   <br />
   *`source /path/to/folder/android_development_shell_tools.rc;`*

 * **Permanently load the project:** Open *`~/.bashrc`*, adapt and add:
   ```Shell
   export ANDROID_DEV_DRIVE='/media/../AndroidDev';
   source '/.../android_development_shell_tools.rc';
   ```
 * **The *`ANDROID_DEV_DRIVE`* variable** is a folder used for Android ROMs and kernels.
   <br />
   You do not *need* it, but a few functions rely on it to ease things.

---

### [ Functions detailed documentation ] ([+/-](javascript:toggle_documentation())) ###

<!-- Functions Start -->
<details>
<summary class="group_header">
#### <span class="group_label">Android Development Shell Tools</span> ####
</summary>

> ### Documentation: <span class="group_label">project/access.rc</span> ###
>
  * **shtoolsget** [*<b>\[Get android_development_shell_tools path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/access.rc)
  * **shtoolscd** [*<b>\[Access android_development_shell_tools path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/access.rc)
  * **shtoolssync** [*<b>\[Download new android_development_shell_tools changes\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/access.rc)
  * **shtoolsup** [*<b>\[Reloads android_development_shell_tools scripts\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/access.rc)

---
> ### Documentation: <span class="group_label">project/developer.rc</span> ###
>
  * **shtoolscheck** *[bool_ignore]* [*<b>\[Run ShellCheck on the project\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/developer.rc)
  * **shtoolspush** *[bool_ignore_readme]* [*<b>\[Commit new changes to android_development_shell_tools\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/developer.rc)
  * **shtoolsamend** *[bool_ignore_readme] [bool_ignore_message]* [*<b>\[Amend new changes to android_development_shell_tools\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/developer.rc)
  * **shtoolsconf** [*<b>\[Edit android_development_shell_tools configuration\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/developer.rc)

---
> ### Documentation: <span class="group_label">project/docs.rc</span> ###
>
  * **shtoolsdocs** *[bool_install]* [*<b>\[Instantiate android_development_shell_tools documentation\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/docs.rc)
  * **shtoolsforum** [*<b>\[Refresh README.forum project presentation\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/docs.rc)
  * **shtoolsreadme** [*<b>\[Refresh README.md functions usages\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/docs.rc)

---
> ### Documentation: <span class="group_label">project/history.rc</span> ###
>
  * **shtoolsstats** [*<b>\[Statistics on the project files\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/history.rc)
  * **shtoolsdiff** [*<b>\[Compare with upstream android_development_shell_tools\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/history.rc)
  * **shtoolslog** *[commits_count]* [*<b>\[Display android_development_shell_tools history\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/history.rc)
  * **shtoolsshow** *[offset_count]* [*<b>\[Display android_development_shell_tools commit\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/history.rc)
  * **shtoolsreset** [*<b>\[Reset project to remote HEAD\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/history.rc)

---
> ### Documentation: <span class="group_label">project/interfaces.rc</span> ###
>
  * **shtools** [*<b>\[Entrypoint menu to android_development_shell_tools\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/interfaces.rc)
  * **shtools-** [*<b>\[Options menu for android_development_shell_tools\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/interfaces.rc)
  * **shtoolskits** *[init]* [*<b>\[Toolkits selection for android_development_shell_tools\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/interfaces.rc)
  * **shtoolsnews** [*<b>\[Display android_development_shell_tools news notifications\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/interfaces.rc)

---
> ### Documentation: <span class="group_label">project/search.rc</span> ###
>
  * **shtoolse** *&lt;words&gt; &lt;to&gt; &lt;search&gt;* [*<b>\[Direct access to related sources\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/search.rc)
  * **shtoolsf** *&lt;function_or_alias&gt;* [*<b>\[Direct access to related function or alias sources\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/project/search.rc)

---
</details>

<details>
<summary class="group_header">
#### <span class="group_label">Android ADB Tools</span> ####
</summary>

> ### Documentation: <span class="group_label">sources/android_adb/assets.rc</span> ###
>
  * **adbdatabase** *&lt;/data/.../sqlite.db&gt;* [*<b>\[Android sqlite3 database opener\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/assets.rc)
  * **sepaud** *&lt;logs_file&gt; [context_search]* [*<b>\[Logs sepolicy analyzer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/assets.rc)
  * **sepmsg** *&lt;logs_file&gt; &lt;context&gt; [grep]* [*<b>\[Logs sepolicy message extractor\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/assets.rc)
  * **adbintents** *adb shell 'dumpsys package r' &gt; intents.txt* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/assets.rc)
  * **adbcamera** [*<b>\[Enable and launch camera applications\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/assets.rc)
  * **adbkp** *&lt;process_name&gt;* [*<b>\[Kill process by name\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/assets.rc)
  * **adbpk** [*<b>\[Android mediaserver debug logger\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/assets.rc)
  * **adbms** [*<b>\[Android mediaserver debug stracer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/assets.rc)
  * **ndkstack** *ndk-stack -sym "${ANDROID_DEV_DRIVE}/out/target/product/huashan/symbols" -dump* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/assets.rc)
  * **adbwtch** *adbr; while true; do adb shell "cat '${1}'"; done* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/assets.rc)
  * **adbdu** [*<b>\[Android /data/ sizes study\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/assets.rc)
  * **adbpropradiolog** *&lt;value&gt;* [*<b>\[Radio debug property overrider\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/assets.rc)
  * **adbalsa** [*<b>\[Audio cards advanced study\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/assets.rc)
  * **adbtinymix** [*<b>\[Run tinymix on the device\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/assets.rc)
  * **adbeditmanifest** [*<b>\[Edit adb /system/vendor/manifest.xml file\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/assets.rc)
  * **adbinputs** [*<b>\[Dump all input devices\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/assets.rc)
  * **adbreadevents** *&lt;event_number&gt;* [*<b>\[Read input events\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/assets.rc)

---
> ### Documentation: <span class="group_label">sources/android_adb/debug.rc</span> ###
>
  * **adbst** *&lt;process_name&gt; [parameters] [bool_wait]* [*<b>\[strace\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/debug.rc)
  * **adbstf** *&lt;process_name&gt;* [*<b>\[Followed strace\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/debug.rc)
  * **adbstw** *&lt;process_name&gt;* [*<b>\[Waiting strace\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/debug.rc)
  * **adbstacktombstone** [*<b>\[ADB tombstone debugger with stack\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/debug.rc)
  * **adbbootchart** [*<b>\[Bootchart debug helper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/debug.rc)

---
> ### Documentation: <span class="group_label">sources/android_adb/device.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_adb/tools.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_adb/device.rc)
  ```
  * **adbpo** [*<b>\[Power-off device through adb\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/device.rc)
  * **adbre** [*<b>\[Reboot device through adb\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/device.rc)
  * **adbrh** [*<b>\[Hot-reboot device through adb\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/device.rc)
  * **adbrr** [*<b>\[Reboot device to recovery through adb\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/device.rc)
  * **adbrb** [*<b>\[Reboot device to bootloader through adb\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/device.rc)
  * **adbw** [*<b>\[Wait for device through adb\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/device.rc)

---
> ### Documentation: <span class="group_label">sources/android_adb/flash.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_adb/tools.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_devices/target.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_adb/flash.rc)
  ```
  * **adbbootdump** [*<b>\[Dump bootimage from device\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/flash.rc)
  * **adbbootcut** *&lt;file_path&gt;* [*<b>\[Trim bootimage dump\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/flash.rc)
  * **adbrecoveryinstall** *&lt;file_path&gt;* [*<b>\[Inject and reboot recovery\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/flash.rc)

---
> ### Documentation: <span class="group_label">sources/android_adb/installers.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_adb/tools.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_repo/helpers.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_adb/installers.rc)
  ```
  * **adbpushfile** *&lt;file_path&gt; &lt;file_target&gt;* [*<b>\[Push files through adb\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/installers.rc)
  * **adbif** *&lt;command...&gt;* [*<b>\[Modules build listener and installed\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/installers.rc)
  * **adbil** *&lt;command...&gt;* [*<b>\[Modules build listener and lister\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/installers.rc)
  * **adbi** *adbro; adbif "${@}"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/installers.rc)
  * **adbpf** *&lt;file_paths&gt;* [*<b>\[Advanced recursive adb files pusher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/installers.rc)
  * **adbp** *adbro; adbpf "${@}"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/installers.rc)
  * **adbpu** *adbro; adbpushfile "${@}"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/installers.rc)
  * **adbppr** [*<b>\[adb automated PACKAGES_RESULTS files pusher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/installers.rc)
  * **adbside** *&lt;file_zip&gt; [boot_reboot]* [*<b>\[adb sideload helper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/installers.rc)
  * **adbsiderom** *&lt;rom_zip_or_bootimage&gt; &lt;device&gt; [boot_no_reboot]* [*<b>\[adb sideload ROM with addons helper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/installers.rc)
  * **adbpi** *&lt;file_path&gt;* [*<b>\[Automated file pusher and installer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/installers.rc)
  * **adbu** *&lt;package_name_or_file&gt;* [*<b>\[Force optimization of a package\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/installers.rc)
  * **adbgitpf** *&lt;commit_sha1&gt;* [*<b>\[Push files through adb from commit\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/installers.rc)
  * **adbpmrom** *&lt;file&gt;* [*<b>\[MultiROM development file pusher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/installers.rc)
  * **adbpmromenc** *&lt;file&gt;* [*<b>\[MultiROM development encryption file pusher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/installers.rc)
  * **adbapkinstall** [*<b>\[Install available apk files from current path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/installers.rc)

---
> ### Documentation: <span class="group_label">sources/android_adb/logs.rc</span> ###
>
  * **adbl** *[all/crash/events/main/radio/system] [file_output] [bool_clean]* [*<b>\[adb Logcat helper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/logs.rc)
  * **adblr** [*<b>\[Logcat output relevant reader\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/logs.rc)
  * **adblpcln** *[file_adb.log]* [*<b>\[Logcat output public cleaner\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/logs.rc)
  * **adblcln** *[file_adb.log]* [*<b>\[Logcat output cleaner\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/logs.rc)
  * **adbdcln** *[file_adb.log]* [*<b>\[dmesg output cleaner\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/logs.rc)
  * **adbkcln** *[file_kmsg]* [*<b>\[Kernel logs output cleaner\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/logs.rc)
  * **adbstcln** *[file_adb.log]* [*<b>\[strace output cleaner\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/logs.rc)
  * **adblc** *adb logcat -c; adbl* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/logs.rc)
  * **adbk** *echo -n '' &gt; kmsg; adbsu cat /proc/kmsg \| tee -a kmsg* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/logs.rc)
  * **adbdm** *echo -n '' &gt; dmesg; adbsu dmesg \| tee -a dmesg* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/logs.rc)
  * **adbkd** *echo -n '' &gt; kmsg; adbsu cat /proc/kmsg \| tee -a kmsg* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/logs.rc)
  * **adbkl** *cls; echo -n '' &gt; last_kmsg; adbsu cat /proc/last_kmsg \| tee -a last_kmsg* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/logs.rc)
  * **adbpl** *cls; echo -n '' &gt; last_kmsg; adbsu cat /sys/fs/pstore/console-ramoops \| tee -a last_kmsg* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/logs.rc)
  * **adbrl** *cls; echo -n '' &gt; recovery_log; adbsu cat /tmp/recovery.log \| tee -a recovery_log* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/logs.rc)
  * **adbdumpsensors** *adbsu dumpsys sensorservice* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/logs.rc)
  * **adbtrampoline** *adbsu 'dmesg \| grep -i trampoline'* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/logs.rc)
  * **adbple** [*<b>\[ADB Ramoops Compressed Logger\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/logs.rc)

---
> ### Documentation: <span class="group_label">sources/android_adb/multirom.rc</span> ###
>
  * **adbmromselect** *[preselect]* [*<b>\[Select MultiROM installation for path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/multirom.rc)
  * **adbmrombootimage** *&lt;bootimage_path&gt; [preselect]* [*<b>\[MultiROM bootimage installer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/multirom.rc)
  * **adbmrominjector** *&lt;kernel_path&gt;* [*<b>\[MultiROM kernel image injector\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/multirom.rc)
  * **adbmromautoboot** [*<b>\[MultiROM autoboot selection\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/multirom.rc)
  * **adbmromedit** *&lt;relative_path&gt; [preselect]* [*<b>\[MultiROM secondary ROM file editor\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/multirom.rc)

---
> ### Documentation: <span class="group_label">sources/android_adb/shortcuts.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_adb/shortcuts.rc)
  ```
  * **adbs** *adb shell "${@}"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc)
  * **adbdf** *adb shell df -H "${@}"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc)
  * **adbsl** *adb shell ls -l "${@}"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc)
  * **adbslz** *adb shell ls -lZ "${@}"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc)
  * **adbsc** *adb shell cat "${@}"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc)
  * **adbsg** *adb shell getprop "${@}"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc)
  * **adbsw** *&lt;"data"&gt; &lt;path&gt;* [*<b>\[Write a string to path through adb\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc)
  * **adbblkp** *adb shell ls -l /dev/block/bootdevice/by-name/* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc)
  * **adbfotarandom** *adb root; adb shell dd if=/dev/random of=/dev/block/platform/msm_sdcc.1/by-name/FOTAKernel* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc)
  * **adbfotazero** *adb root; adb shell dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/FOTAKernel* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc)
  * **adbmountcache** *adb shell mount -t ext4 /dev/block/platform/msm_sdcc.1/by-name/Cache /cache* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc)
  * **adbmountdata** *adb shell mount -t ext4 /dev/block/platform/msm_sdcc.1/by-name/Userdata /data* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc)
  * **adbmountmicrosd** *adb shell mkdir -p /storage/ext; adb shell mount -t ext4 /dev/block/mmcblk1p1 /storage/ext* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc)
  * **adbsgdisk** *adb shell sgdisk &#8208;&#8208;print /dev/block/mmcblk0* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc)
  * **adbumountcache** *adb shell umount /cache* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc)
  * **adbumountdata** *adb shell umount /data* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc)
  * **adbumountmicrosd** *adb shell umount /storage/ext* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc)
  * **adbmount** *adbmountcache; adbmountdata; adbmountmicrosd* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc)
  * **adbumount** *adbumountcache; adbumountdata; adbumountmicrosd* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc)
  * **adbinfomem** *adb shell dumpsys meminfo* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc)
  * **adbrcbin** *adb shell restorecon -R /sbin* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc)
  * **adbemergencycalls** *adb shell setprop ril.ecclist "${@}"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc)
  * **adbemergencylist** *adb shell getprop ril.ecclist* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc)
  * **adbservices** *adb shell service list* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc)

---
> ### Documentation: <span class="group_label">sources/android_adb/syncer.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_adb/syncer.rc)
  ```
  * **adbpushsync** *&lt;local_path&gt; &lt;target_path&gt;* [*<b>\[Folders adb push syncer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/syncer.rc)

---
> ### Documentation: <span class="group_label">sources/android_adb/tools.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/host/common.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_adb/tools.rc)
  ```
  * **adbscr** [*<b>\[Take a screenshot from connected device\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/tools.rc)
  * **adbr** [*<b>\[adb root and remount rw system\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/tools.rc)
  * **adbready** [*<b>\[ADB ready checker\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/tools.rc)
  * **adbro** [*<b>\[Verified adb root and remount rw system\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/tools.rc)
  * **adbsudo** [*<b>\[ADB sudo toggle helper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/tools.rc)
  * **adbcmd** [*<b>\[Return adb command based on alias\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/tools.rc)
  * **adbrstock** [*<b>\[Stock ROM adb root access\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/tools.rc)
  * **adbwait** *[delay_secs]* [*<b>\[adb wait for device\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/tools.rc)
  * **adbsu** *&lt;command...&gt;* [*<b>\[Run on root adb shell without remounts\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/tools.rc)
  * **adbsur** *&lt;command...&gt;* [*<b>\[Run on root adb shell with remounts\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/tools.rc)
  * **adbco** *[ipaddress_once]* [*<b>\[Helper for adb network access\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/tools.rc)
  * **adbedit** *[file_path]* [*<b>\[Edit adb file, default on /system/build.prop\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/tools.rc)

---
> ### Documentation: <span class="group_label">sources/android_adb/updater.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_adb/updater.rc)
  ```
  * **adbupdate** [*<b>\[adb binary update from upstream\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_adb/updater.rc)

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
  * **makej** *&lt;parameters&gt;* [*<b>\[Helper to 'make -jPROCESSORS'\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_build/make.rc)
  * **makes** *&lt;parameters&gt;* [*<b>\[Helper to 'make -jPROCESSORS' with SCHED_BATCH\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_build/make.rc)

---
</details>

<details>
<summary class="group_header">
#### <span class="group_label">Android Devices Definitions</span> ####
</summary>

> ### Documentation: <span class="group_label">sources/android_devices/target.rc</span> ###
>
  * **androiddevicestarget** *[boot/system/...] [device]* [*<b>\[Devices targets mapper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_devices/target.rc)
  * **codenametotarget** *&lt;codename&gt;* [*<b>\[Codename to build target\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_devices/target.rc)
  * **repogetdevice** [*<b>\[Detect device name from repo environment\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_devices/target.rc)

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
  * **makekernel** *[platform_device_to_init / clean / mrproper] [toolchain_version] [make_parameters]* [*<b>\[Kernel inline compiler\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/builders.rc)
  * **kerneldefconfig** *[platform_device]* [*<b>\[Select defconfig easily\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/builders.rc)
  * **kerneltoolchains** *[version]* [*<b>\[Select toolchains based on ARCH in Android build tree\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/builders.rc)

---
> ### Documentation: <span class="group_label">sources/android_kernel/defconfig.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/host/common.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_kernel/defconfig.rc)
  ```
  * **makedefconf** *&lt;device_name&gt; [bool_full_config] [diff_config] [force_config=value]* [*<b>\[Advanced defconfig helper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/defconfig.rc)
  * **kernelconfigupdater** *&lt;CONFIG_NAME=VALUE_or_# CONFIG_NAME is not set&gt;* [*<b>\[Kernel config updater\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/defconfig.rc)
  * **makedefconfset** *&lt;device_name&gt; [force_config=value]* [*<b>\[Kernel defconfig configuration setter\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/defconfig.rc)

---
> ### Documentation: <span class="group_label">sources/android_kernel/editors.rc</span> ###
>
  * **boottools** *&lt;boot.img&gt;* [*<b>\[Android bootimage editor\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/editors.rc)
  * **bootelf** *&lt;boot.img&gt;* [*<b>\[Sony ELF 8960 bootimage editor\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/editors.rc)

---
> ### Documentation: <span class="group_label">sources/android_kernel/helpers.rc</span> ###
>
  * **makekernelinjector** *&lt;device_names&gt;* [*<b>\[Helper to makekernel with injector zip\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/helpers.rc)
  * **gitcpupprima** *gitcpup "${1}" 'CORE' 'drivers/staging/prima/CORE'* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/helpers.rc)

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
  * **fboota** *[fastupl,flash,full,inject,push,recovery,sep,unsecure,zip]* [*<b>\[Advanced bootimage builder\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/tools.rc)
  * **fboot** *&lt;bootimage&gt;* [*<b>\[fastboot bootimage flashed\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/tools.rc)
  * **fboots** *&lt;system_img&gt;* [*<b>\[fastboot systemimage flashed\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/tools.rc)
  * **fbootr** [*<b>\[Fastboot reboot\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/tools.rc)
  * **bootinfo** *&lt;boot_img_file&gt;* [*<b>\[Bootimage structure and information parser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/tools.rc)
  * **adbbootinfo** [*<b>\[Kernel bbootimg analyzer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/tools.rc)
  * **adbfotainfo** [*<b>\[FOTA bbootimg analyzer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/tools.rc)
  * **fbootk** *&lt;kernelpath&gt; [bool_fota]* [*<b>\[Kernel image to boot partition injector\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/tools.rc)
  * **frecovery** *&lt;image&gt;* [*<b>\[Flash recovery with fastboot\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/tools.rc)
  * **adbbootpush** *&lt;image&gt;* [*<b>\[Inject bootimage to partition\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/tools.rc)
  * **adbfotapush** *&lt;image&gt;* [*<b>\[Inject FOTA to partition\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/tools.rc)
  * **adbrecoverypush** *&lt;image&gt;* [*<b>\[Inject recovery to partition\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/tools.rc)
  * **kernelinjectorzip** *&lt;device&gt; &lt;kernel_file_path&gt; [kernel_sources_for_modules]* [*<b>\[Kernel to injector zip packager\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/tools.rc)
  * **bootzip** *&lt;device&gt; &lt;boot_img_path&gt; [bool_push_to_device]* [*<b>\[Bootimage to zip packager\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/tools.rc)
  * **makesep** *[bool_inject]* [*<b>\[Compile sepolicies clean\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/tools.rc)
  * **sepinject** *&lt;root_path&gt;* [*<b>\[Sepolicies files to boot partition injector\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/tools.rc)
  * **adbramdiskinject** *&lt;files_paths&gt;* [*<b>\[Ramdisk files to boot partition injector\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/tools.rc)
  * **bootimagedebuggable** *&lt;device_product&gt; &lt;true/false&gt;* [*<b>\[Bootimage build unsecured patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_kernel/tools.rc)

---
</details>

<details>
<summary class="group_header">
#### <span class="group_label">Android Release Tools</span> ####
</summary>

> ### Documentation: <span class="group_label">sources/android_release/builders.rc</span> ###
>
  * **romautorelease** *&lt;device_name&gt; &lt;rom_tag&gt; [nowipe,j1/j2]* [*<b>\[Advanced automated ROM builder\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/builders.rc)
  * **autorelease** [*<b>\[Helper menu access to autorelease* functions\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/builders.rc)
  * **romlogs** *&lt;device&gt; &lt;rom&gt; [logs_count_default_200]* [*<b>\[View ROMs build logs from romautorelease\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/builders.rc)
  * **autobuild** *&lt;device&gt;* [*<b>\[Development automated ROM builder\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/builders.rc)

---
> ### Documentation: <span class="group_label">sources/android_release/cleaners.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_release/cleaners.rc)
  ```
  * **outdevcl** *&lt;devicename&gt; [bool_minimal]* [*<b>\[Advanced ROM output cleaner for rebuilds\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/cleaners.rc)
  * **outbootdevcl** *&lt;devicename&gt;* [*<b>\[ROM output cleaner for bootimage rebuilds\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/cleaners.rc)
  * **outotadevcl** *&lt;devicename&gt;* [*<b>\[ROM output cleaner for OTA rebuilds\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/cleaners.rc)
  * **outsepdevcl** *&lt;devicename&gt;* [*<b>\[ROM output cleaner for sepolicies rebuilds\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/cleaners.rc)
  * **outsystemdevcl** *&lt;devicename&gt; [bool_minimal]* [*<b>\[ROM output cleaner for system rebuilds\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/cleaners.rc)
  * **outcommoncl** [*<b>\[ROM output cleaner for common rebuilds\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/cleaners.rc)

---
> ### Documentation: <span class="group_label">sources/android_release/helpers.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_adb/tools.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_adb/installers.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_release/helpers.rc)
  ```
  * **noninja** *&lt;command...&gt;* [*<b>\[Run command without ninja\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/helpers.rc)
  * **mmo** *&lt;command...&gt;* [*<b>\[Build module without ninja\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/helpers.rc)
  * **mmi** *&lt;command...&gt;* [*<b>\[Build & install module without ninja\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/helpers.rc)
  * **mmil** *&lt;command...&gt;* [*<b>\[Build & list module without ninja\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/helpers.rc)
  * **noccache** *&lt;command...&gt;* [*<b>\[Run command without CCache\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/helpers.rc)

---
> ### Documentation: <span class="group_label">sources/android_release/packages.rc</span> ###
>
  * **signzip** *&lt;zip_to_sign&gt; [signed_output_zip]* [*<b>\[Sign flashable zip\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/packages.rc)
  * **signapk** *&lt;apk_to_sign&gt; [signed_output_apk]* [*<b>\[Sign apk files\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/packages.rc)
  * **mmmzip** *&lt;paths_or_modules&gt;* [*<b>\[Build module to flashable zip\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/packages.rc)
  * **systozip** *&lt;files&gt;* [*<b>\[System files to flashable zip\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/packages.rc)
  * **packzip** *&lt;files&gt;* [*<b>\[Files to flashable zip\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/packages.rc)
  * **gitzip** *&lt;commit_sha1&gt;* [*<b>\[Git commit files to flashable zip\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/packages.rc)
  * **oeminjectorzip** *&lt;oem_image&gt;* [*<b>\[OEM files to flashable injector zip\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_release/packages.rc)

---
</details>

<details>
<summary class="group_header">
#### <span class="group_label">Android Repository Tools</span> ####
</summary>

> ### Documentation: <span class="group_label">sources/android_repo/builders.rc</span> ###
>
  * **repotwrp** *{device} [nosync,nowipe,outcl,fota,local +fotareboot]* [*<b>\[Advanced builder for TWRP\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/builders.rc)
  * **repomrom** *{device} [nosync,nowipe,outcl,fota,local +fotareboot]* [*<b>\[Advanced builder for MultiROM\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/builders.rc)

---
> ### Documentation: <span class="group_label">sources/android_repo/changelog.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_repo/changelog.rc)
  ```
  * **repochangelog** *&lt;days_count&gt; [project1_path,project2_path,...]* [*<b>\[Generate ROM changelogs\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/changelog.rc)

---
> ### Documentation: <span class="group_label">sources/android_repo/changes.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_repo/changes.rc)
  ```
  * **repochanges** *["filter_projects"]* [*<b>\[Detect all repo projects differences\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/changes.rc)

---
> ### Documentation: <span class="group_label">sources/android_repo/cleaners.rc</span> ###
>
  * **repoclean** *[out_folder]* [*<b>\[Delete contents from 'out' folder\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/cleaners.rc)
  * **repodestroy** [*<b>\[Delete complete repo apart from local_manifests\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/cleaners.rc)
  * **repodevclean** [*<b>\[Delete contents from 'out/target/product' folder\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/cleaners.rc)
  * **repoprojectscleaner** [*<b>\[Run inside an Android repo root\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/cleaners.rc)
  * **repotagscleaner** [*<b>\[Run inside an Android repo root\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/cleaners.rc)
  * **repoheadscleaner** [*<b>\[Cleanup repo projects refs/ contents\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/cleaners.rc)
  * **reposyrm** *&lt;project/relative/path&gt;* [*<b>\[Project repo sync with removal\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/cleaners.rc)
  * **reposyrmf** *&lt;project/relative/path&gt;* [*<b>\[Project repo sync with forced removal\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/cleaners.rc)
  * **repopathsizes** *&lt;project/relative/path&gt;* [*<b>\[Repo project paths sizes\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/cleaners.rc)
  * **repocleancache** : *if [ ! -z "${CCACHE_DIR}" ]; then rm -rfv "${CCACHE_DIR}/"*; fi* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/cleaners.rc)

---
> ### Documentation: <span class="group_label">sources/android_repo/compare.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_repo/compare.rc)
  ```
  * **repocomparetags** *&lt;base_tag_or_HEAD&gt; &lt;compare_tag_or_HEAD&gt;* [*<b>\[Helper to compare release tags\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/compare.rc)

---
> ### Documentation: <span class="group_label">sources/android_repo/helpers.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/host/common.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_repo/cleaners.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_repo/helpers.rc)
  ```
  * **gettop** [*<b>\[Get repo root path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/helpers.rc)
  * **croot** [*<b>\[Access repo root path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/helpers.rc)
  * **repos** *&lt;device_name&gt;* [*<b>\[Prepare Android device environment\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/helpers.rc)
  * **reporoomserv** [*<b>\[Manifest and local_manifests editor\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/helpers.rc)
  * **reposy** [*<b>\[Optimized relevant repo sync\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/helpers.rc)
  * **reposysafe** [*<b>\[Safeguarded repo projects sync\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/helpers.rc)
  * **reposybranch** [*<b>\[Individual repo projects sync\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/helpers.rc)
  * **repoprune** [*<b>\[Apply repo-wide prune cleanup\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/helpers.rc)
  * **reposycl** [*<b>\[Cleaned optimized relevant repo sync\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/helpers.rc)
  * **repoforeach** [*<b>\[Run commands for each project\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/helpers.rc)
  * **repocache** *[cache_maximum_size]* [*<b>\[CCache watcher and configuration\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/helpers.rc)
  * **repogetbranch** [*<b>\[Get repo project branch\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/helpers.rc)
  * **repolistexclude** *[word_to_search]* [*<b>\[Get repo list fields to exclude with search\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/helpers.rc)
  * **reposwitcher** *[bool_init]* [*<b>\[Helper to switch between local_manifests_* folders\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/helpers.rc)

---
> ### Documentation: <span class="group_label">sources/android_repo/init.rc</span> ###
>
  * **repoinitaosp** *&lt;branch_id&gt; [referenced,clean,light/shallow,example]* [*<b>\[repo init for AOSP\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/init.rc)
  * **repoinitlineage** *&lt;13.0/14.1/15.0/15.1&gt; [referenced,clean,light/shallow,example]* [*<b>\[repo init for LineageOS\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/init.rc)
  * **repoinitrr** *&lt;nougat&gt; [referenced,clean,light/shallow]* [*<b>\[repo init for ResurrectionRemix\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/init.rc)
  * **repoinittwrp** *&lt;twrp-{X.X}&gt; [referenced,clean,light/shallow]* [*<b>\[repo init for TWRP\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/init.rc)
  * **repoinitcleaner** *[clean]* [*<b>\[repo init cleaner\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/init.rc)
  * **repoinitsafecleaner** *[clean]* [*<b>\[repo init safety cleaner\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/init.rc)
  * **repoinit** *[bool_manually]* [*<b>\[repo init menu\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/init.rc)

---
> ### Documentation: <span class="group_label">sources/android_repo/projects.rc</span> ###
>
  * **gitrap** [*<b>\[Development projects selector\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/projects.rc)
  * **gitraplineagesony8996** [*<b>\[LineageOS Sony 8996 development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/projects.rc)
  * **gitrapaospsony8960n** [*<b>\[AOSP Sony 8960 Nougat development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/projects.rc)
  * **gitrapaospsony8960o** [*<b>\[AOSP Sony 8960 O development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/projects.rc)
  * **gitrapaospsony8960master** [*<b>\[AOSP Sony 8960 Master development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/projects.rc)
  * **gitrapaospsonysodp** [*<b>\[AOSP Sony SODP development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/projects.rc)
  * **gitrapaospcaf** [*<b>\[AOSP-CAF development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/projects.rc)
  * **gitraplineagesony8960master** [*<b>\[LineageOS Sony 8960 Master development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/projects.rc)
  * **gitraplineagesonysodp** [*<b>\[LineageOS Sony SODP development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/projects.rc)
  * **gitrapmultirom** [*<b>\[MultiROM Sony development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/projects.rc)
  * **gitraptwrp** [*<b>\[TWRP Sony development project remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/projects.rc)

---
> ### Documentation: <span class="group_label">sources/android_repo/referenced.rc</span> ###
>
  * **reporeferencedaosp** *&lt;"command_to_run"&gt; &lt;"device1 device2 ..."&gt;* [*<b>\[AOSP referenced repo commands launcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/referenced.rc)
  * **reporeferencedlineage** *&lt;"command_to_run"&gt; &lt;"device1 device2 ..."&gt;* [*<b>\[LineageOS referenced repo commands launcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/referenced.rc)
  * **reporefupdate** *[bool_automated]* [*<b>\[Upload new projects manifests\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/referenced.rc)
  * **reporefsync** *[bool_dry_run]* [*<b>\[Download new projects manifests\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/referenced.rc)
  * **reporefrefresh** [*<b>\[Download and upload new projects manifests\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/referenced.rc)
  * **reporeflinker** [*<b>\[Helper to symlink local_manifests to Developments\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/referenced.rc)

---
> ### Documentation: <span class="group_label">sources/android_repo/shortcuts.rc</span> ###
>
  * **cdd** *&lt;device_name&gt;* [*<b>\[Access device sources\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdp** *[project_name]* [*<b>\[Access repo project sources\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdman** [*<b>\[Access manifests path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdlocman** [*<b>\[Access local manifests path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **toout** *&lt;device_name&gt;* [*<b>\[Get device build output path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdout** *[device_name]* [*<b>\[Access device build output path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **getand** [*<b>\[Get AndroidDev drive\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **torompaths** *&lt;rom_name&gt; [device]* [*<b>\[Get ROM device variant path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **pathchanged** *&lt;command&gt; &lt;parameters&gt;* [*<b>\[Run command and notify path changes\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **toaosp** *torompaths 'AOSP' "${1}"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **tolineage** *torompaths 'LineageOS' "${1}"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **toaospcaf** *toaosp 'AOSP' 'CAF'* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **tomultirom** *torompaths 'MultiROM'* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **torr** *torompaths 'ResurrectionRemix' "${1}"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **totwrp** *torompaths 'TWRP'* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdaosp** *cd "$(toaosp "${1}")"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdl** *cd "$(tolineage "${1}")"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdlineage** *cd "$(tolineage "${1}")"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdaospcaf** *cd "$(toaospcaf)"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdmultirom** *cd "$(tomultirom)"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdrr** *cd "$(torr "${1}")"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdtwrp** *cd "$(totwrp)"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdand** *cd "$(getand)"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cddesk** *cd "$(desktoppath)"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cddev** *cd "$(getand)/Development/${1}"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cddevaosp** *cd "$(getand)/Development/aosp_"*"${1}"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cddevlineage** *cd "$(getand)/Development/lineage_"*"${1}"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cddevmrom** *cd "$(getand)/Development/multirom_development_sony"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cddevtwrp** *cd "$(getand)/Development/twrp_development_sony"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdprojects** *cd "$(getand)/Projects/${1}"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdref** *cd "$(getand)/References/${1}"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdrefapk** *cd "$(getand)/References/apk"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdrefdev** *cd "$(getand)/References/Devices/"${1:+*${1}}* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdserv** *cd "$(getand)/Server"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **adbapks** *cdrefapk; adbapkinstall* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdandfiles** *cd "${ANDROID_FILES_PATH}/"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **impaospcaf** *rsync -arv &#8208;&#8208;delete &#8208;&#8208;delete-after "$(toaospcaf "${1}")" "./${1}"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **implineage** *rsync -arv &#8208;&#8208;delete &#8208;&#8208;delete-after "$(tolineage "${1}")" "./${1}"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cpaosp** *cp -fv "./${1}" "$(toaosp "${2}")/${1}"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cplineage** *cp -fv "./${1}" "$(tolineage "${2}")/${1}"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **meldaosp** *pathscompare "./${1}" "$(toaosp "${2}")/${1}"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **meldaospsony** *pathscompare "./${1}" "$(toaosp sony)/${1}"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **meldaospcaf** *pathscompare "./${1}" "$(toaospcaf)/${1}"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **meldlineage** *pathscompare "./${1}" "$(tolineage "${2}")/${1}"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **meldmrom** *pathscompare "./${1}" "$(tomultirom)/${1}"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **meldtwrp** *pathscompare "./${1}" "$(totwrp)/${1}"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **nout** *diropen "$(toout "${1}")"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **aospsyncall** *reporeferencedaosp "reposy"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **lineagesyncall** *reporeferencedlineage "reposy"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **meldril** *[bool_caf]* [*<b>\[Compare device to hardware/{ril\|ril-caf}\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdmromboot** *croot; cd ./system/extras/libbootimg/* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdmromcore** *croot; cd ./system/extras/multirom/* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdlsdk** *croot; cd ./lineage-sdk/* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdrecovery** *croot; cd ./bootable/recovery/* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdsepolicy** *croot; cd ./system/sepolicy/* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)

---
</details>

<details>
<summary class="group_header">
#### <span class="group_label">Android ROM Tools</span> ####
</summary>

> ### Documentation: <span class="group_label">sources/android_rom/aicp.rc</span> ###
>
  * **gitcpaicp** [*<b>\[Automated upstream to AICP device merger\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_rom/aicp.rc)

---
> ### Documentation: <span class="group_label">sources/android_rom/aospcaf.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_rom/projects.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_rom/aospcaf.rc)
  ```
  * **aospcafpatcher** *[specific_paths]* [*<b>\[AOSP-CAF Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_rom/aospcaf.rc)

---
> ### Documentation: <span class="group_label">sources/android_rom/helpers.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/host/grep.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/host/common.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_rom/helpers.rc)
  ```
  * **librarieshunter** *&lt;binariespath&gt;* [*<b>\[Libraries linkage analyzer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_rom/helpers.rc)
  * **librarieschecker** *&lt;prebuilts_path&gt;* [*<b>\[Unreferenced libraries analyzer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_rom/helpers.rc)
  * **overlaycompare** *&lt;overlay_file_path&gt;* [*<b>\[Compare device overlays against sources\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_rom/helpers.rc)

---
> ### Documentation: <span class="group_label">sources/android_rom/images.rc</span> ###
>
  * **androidextractimage** *&lt;file.img&gt; &lt;output_path&gt;* [*<b>\[Android filesystem.img extractor\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_rom/images.rc)

---
> ### Documentation: <span class="group_label">sources/android_rom/lineageoms.rc</span> ###
>
  * **lineageomspatcher** [*<b>\[LineageOMS Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_rom/lineageoms.rc)

---
> ### Documentation: <span class="group_label">sources/android_rom/lineageos.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/host/common.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_rom/lineageos.rc)
  ```
  * **lineagewebjekyll** *[bool_install]* [*<b>\[Jekyll web helper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_rom/lineageos.rc)
  * **lineagecvetracker** *[bool_install]* [*<b>\[CVE tracker instance helper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_rom/lineageos.rc)

---
> ### Documentation: <span class="group_label">sources/android_rom/projects.rc</span> ###
>
  * **gitbranchpusher** *[y/n] [remote_url] [branch]* [*<b>\[Push to project specific branch\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_rom/projects.rc)
  * **androidprojectpaths** *&lt;owner&gt; &lt;project_name&gt;* [*<b>\[Android project remote paths list\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_rom/projects.rc)
  * **androidprojectpatcher** *&lt;owner&gt; &lt;project_name&gt; &lt;email&gt; [specific_path]* [*<b>\[Android project patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_rom/projects.rc)
  * **androidprojectrebaser** *&lt;owner&gt; &lt;project_branch&gt; &lt;"project_paths::name::upstream::branch"&gt; [specific_path]* [*<b>\[Android project rebaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_rom/projects.rc)
  * **androidprojectforeach** *&lt;owner&gt; &lt;project_name&gt; &lt;"commands"&gt;* [*<b>\[Android project paths commands runner\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_rom/projects.rc)
  * **androidprojectsync** *&lt;owner&gt; &lt;project_name&gt;* [*<b>\[Android project paths repo syncer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_rom/projects.rc)
  * **androidprojectungraft** *&lt;owner&gt; &lt;project_name&gt;* [*<b>\[Android project paths ungrafter\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_rom/projects.rc)
  * **androidprojectunshallow** *&lt;owner&gt; &lt;project_name&gt;* [*<b>\[Android project paths unshallower\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_rom/projects.rc)
  * **rompatcher** [*<b>\[Helper menu access to *patcher functions\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_rom/projects.rc)
  * **romrebaser** [*<b>\[Helper menu access to *rebaser functions\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/android_rom/projects.rc)

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
  * **gerritreview** *&lt;gerrit_ssh_or_http&gt; &lt;project_name_or_.&gt; &lt;github_name_or_.&gt; &lt;drafts/for/heads&gt; [branch]* [*<b>\[Gerrit review uploader\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/review.rc)

---
> ### Documentation: <span class="group_label">sources/gerrit/shortcuts.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/gerrit/review.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/gerrit/ssh.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/gerrit/shortcuts.rc)
  ```
  * **gitpr** : *gerritreview ssh://$(gerritusername)@review.lineageos.org:29418 LineageOS . for* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc)
  * **gitprh** : *gerritreview http://review.lineageos.org LineageOS . for* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc)
  * **gitpr14** : *gerritreview ssh://$(gerritusername)@review.lineageos.org:29418 LineageOS . for cm-14.1* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc)
  * **gitpr15** : *gerritreview ssh://$(gerritusername)@review.lineageos.org:29418 LineageOS . for lineage-15.1* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc)
  * **gitprd** : *gerritreview ssh://$(gerritusername)@review.lineageos.org:29418 LineageOS . drafts* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc)
  * **gitprdh** : *gerritreview http://review.lineageos.org LineageOS . drafts* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc)
  * **gitpg** : *gerritreview ssh://$(gerritusername)@review.lineageos.org:29418 LineageOS . heads* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc)
  * **gitpgh** : *gerritreview http://review.lineageos.org LineageOS . heads* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc)
  * **gitprg** : *gitpr; gitpg* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc)
  * **gitprgy** : *echo -n "ynyn" \| gitpr; echo -n "yny" \| gitpg* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc)
  * **gitpraosp** : *gerritreview https://android.googlesource.com aosp . for* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc)
  * **gitpraospma** : *gerritreview https://android.googlesource.com aosp . for master* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc)
  * **gitprdaosp** : *gerritreview https://android.googlesource.com aosp . drafts* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc)
  * **gitprdaospma** : *gerritreview https://android.googlesource.com aosp . drafts master* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc)
  * **gitpraicp** : *gerritreview ssh://$(gerritusername)@gerrit.aicp-rom.com:29418 AICP . for n7.1* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc)
  * **gitprhaicp** : *gerritreview http://gerrit.aicp-rom.com AICP . for n7.1* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc)
  * **gitprdaicp** : *gerritreview ssh://$(gerritusername)@gerrit.aicp-rom.com:29418 AICP . drafts n7.1* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc)
  * **gitprdhaicp** : *gerritreview http://gerrit.aicp-rom.com AICP . drafts n7.1* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc)
  * **gitpgaicp** : *gerritreview ssh://$(gerritusername)@gerrit.aicp-rom.com:29418 AICP . heads n7.1* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc)
  * **gitpghaicp** : *gerritreview http://gerrit.aicp-rom.com AICP . heads n7.1* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc)
  * **gitprgaicp** : *gitpraicp; gitpgaicp* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc)
  * **gitprghaicp** : *gitprhaicp; gitpghaicp* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc)
  * **gitpr7** : *gerritreview ssh://radian.dc@review.msm7x30.org:29418 LegacyXperia . for* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc)
  * **gitpr7h** : *gerritreview http://review.msm7x30.org LegacyXperia . for* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc)
  * **gitpr7d** : *gerritreview ssh://radian.dc@review.msm7x30.org:29418 LegacyXperia . drafts* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc)
  * **gitpr7dh** : *gerritreview http://review.msm7x30.org LegacyXperia . drafts* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc)
  * **gitpromni** : *gerritreview ssh://$(gerritusername)@gerrit.omnirom.org:29418 . OmniROM for android-8.1* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc)
  * **gitprhomni** : *gerritreview http://gerrit.omnirom.org . OmniROM for android-8.1* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc)
  * **gitprdomni** : *gerritreview ssh://$(gerritusername)@gerrit.omnirom.org:29418 . OmniROM drafts android-8.1* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc)
  * **gitprdhomni** : *gerritreview http://gerrit.omnirom.org . OmniROM drafts android-8.1* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc)
  * **gitprtwrp** : *gerritreview ssh://$(gerritusername)@gerrit.twrp.me:29418 . TeamWin for android-6.0* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc)
  * **gitprdtwrp** : *gerritreview ssh://$(gerritusername)@gerrit.twrp.me:29418 . TeamWin drafts android-6.0* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/shortcuts.rc)

---
> ### Documentation: <span class="group_label">sources/gerrit/ssh.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/gerrit/ssh.rc)
  ```
  * **gerritusername** [*<b>\[Gerrit username getter\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/ssh.rc)
  * **gerritssh** *[branch] [change_id_reverser]* [*<b>\[Advanced Gerrit SSH interface\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/gerrit/ssh.rc)

---
</details>

<details>
<summary class="group_header">
#### <span class="group_label">Git Development Tools</span> ####
</summary>

> ### Documentation: <span class="group_label">sources/git/cleaners.rc</span> ###
>
  * **gits** : *git stash* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/cleaners.rc)
  * **gitsp** : *git stash -p* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/cleaners.rc)
  * **gitsu** : *git stash -u* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/cleaners.rc)
  * **gitspop** : *git stash pop* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/cleaners.rc)
  * **gitcleantags** *&lt;branch_to_keep&gt;* [*<b>\[Cleanup unrequired git tags\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/cleaners.rc)
  * **gitonebranch** [*<b>\[Git remove non-default remote branches\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/cleaners.rc)

---
> ### Documentation: <span class="group_label">sources/git/commit.rc</span> ###
>
  * **gitshow** : *git show -M &#8208;&#8208;name-status* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitshf** : *git show -M &#8208;&#8208;pretty=fuller* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitshl** *git show &#8208;&#8208;oneline &#8208;&#8208;name-only "${1}" \| tail -n +2 \| cut -c $((1+${2:-0}))-* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitap** : *git add -p* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitaa** : *git add . -Av* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitan** : *git add . -An* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitaaf** : *git add . -Afv* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitanf** : *git add . -Afn* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitanp** : *git config core.fileMode false; git add -p; git config &#8208;&#8208;unset core.fileMode* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gite** *fileedit "${1}"; echo -n ' Done ? [Enter] '; read -r; git add "${1}"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitbd** : *git branch -D* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitbv** : *git fetch ${gitreviewdefault} $(git rev-parse &#8208;&#8208;abbrev-ref HEAD); git branch -vv* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitch** : *git checkout* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitcp** : *git cherry-pick* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitcpc** : *git reset; git cherry-pick &#8208;&#8208;continue* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitcpa** *for sha1 in "${@}"; do echo ''; echo "${sha1}"; git cherry-pick "${sha1}"; done* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitcpf** *git fetch "${1}" "${2}"; git cherry-pick FETCH_HEAD* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitcpr** *git show "${1}" &#8208;&#8208;no-color \| sed "s/${2}/${3}/g" \| patch* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitfcp** *&lt;path&gt; [amount_of_commits]* [*<b>\[Git cherry-pick from path\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitc** : *git commit $(gitgpgparam)* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitce** : *git commit $(gitgpgparam) &#8208;&#8208;allow-empty* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitcs** : *git commit $(gitgpgparam) -s* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitca** : *git commit $(gitgpgparam) &#8208;&#8208;amend* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitcae** : *git commit $(gitgpgparam) &#8208;&#8208;amend &#8208;&#8208;no-edit* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitcad** : *git commit $(gitgpgparam) &#8208;&#8208;amend &#8208;&#8208;no-edit &#8208;&#8208;date="$(date -R)* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitrevert** : *git revert $(gitgpgparam) &#8208;&#8208;no-edit* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitfix** [*<b>\[Fix git commit issues\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitcauthor** [*<b>\[Apply own author to commit\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitcamarker** [*<b>\[Apply marker commit to author/committer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitcid** [*<b>\[Apply commit-msg hook to commit\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitcidupstream** [*<b>\[Load commit-msg hook from upstream\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitrh** : *git reset FETCH_HEAD &#8208;&#8208;hard* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **githd** : *git reset HEAD &#8208;&#8208;hard* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitcl** : *git cherry-pick &#8208;&#8208;abort 2&gt;/dev/null; git am &#8208;&#8208;abort 2&gt;/dev/null; git reset HEAD &#8208;&#8208;hard; git stash -u* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitro** : *git reset HEAD^ &#8208;&#8208;hard* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitsl** : *git reset HEAD^; gitap; gitcae* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitrl** : *git revert HEAD -n; git commit -m "Revert"; git reset HEAD^; git add -p* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitri** : *git reset HEAD^* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitrt** : *git reset &#8208;&#8208;hard* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitsquashes** *&lt;commits_count&gt;* [*<b>\[Get formatted squash message\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/commit.rc)

---
> ### Documentation: <span class="group_label">sources/git/config.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/git/config.rc)
  ```
  * **githubusername** [*<b>\[GitHub username getter\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc)
  * **gitconfeditor** *&lt;app_name&gt;* [*<b>\[Configure Git editor application\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc)
  * **gitconfmergetool** *&lt;app_name&gt;* [*<b>\[Configure Git merge tool handling\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc)
  * **gitconffilecrlf** *&lt;auto/detect/input&gt;* [*<b>\[Configure Git file CR/LF EOL handling\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc)
  * **gitconffileperms** *&lt;detect/ignore&gt;* [*<b>\[Configure Git file permissions handling\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc)
  * **gitconfcolors** *&lt;always/auto/never&gt;* [*<b>\[Configure Git colors handling\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc)
  * **gitconfcommitstats** *&lt;show/quick/hide&gt;* [*<b>\[Configure Git commits stats visibility\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc)
  * **gitconfpager** *&lt;less/more/none&gt;* [*<b>\[Configure Git pager handling\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc)
  * **gitconfcredentials** *&lt;cache/cache --timeout=X/store/wincred&gt;* [*<b>\[Configure Git credentials handling\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc)
  * **gitconfgpgkey** *&lt;gpg_key_id&gt;* [*<b>\[Configure Git GPG signing key\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc)
  * **gitconfconflictsrepeat** *&lt;enable/disable&gt;* [*<b>\[Configure Git conflicts repeated handling\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc)
  * **gitconfdiffrenames** *&lt;basic/detect/ignore&gt;* [*<b>\[Configure Git diff renames handling\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc)
  * **gitconfgpgsignature** *&lt;enable/disable&gt;* [*<b>\[Configure Git GPG signature usage\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc)
  * **gpglist** : *gpg &#8208;&#8208;list-secret-keys &#8208;&#8208;keyid-format LONG* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc)
  * **gpgsilent** : *echo "no-tty" &gt;&gt; ~/.gnupg/gpg.conf* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc)
  * **githi** : *git update-index &#8208;&#8208;assume-unchanged* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc)
  * **gitsh** : *git update-index &#8208;&#8208;no-assume-unchanged* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc)
  * **gitgpgparam** [*<b>\[Returns the GPG signature flag if enabled\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc)
  * **gitfilter** *&lt;parameters&gt;* [*<b>\[Use git commands with filters\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc)
  * **gitnofilter** *&lt;parameters&gt;* [*<b>\[Use git commands without filters\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/config.rc)

---
> ### Documentation: <span class="group_label">sources/git/fetch.rc</span> ###
>
  * **gitfetchtreset** *[remote] [branch]* [*<b>\[Git fetch and reset hard\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/fetch.rc)
  * **gitfcu** *&lt;url&gt; [branch]* [*<b>\[Git fetch url and reset\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/fetch.rc)
  * **gitfurl** *&lt;url&gt;* [*<b>\[Git fetch from full url\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/fetch.rc)
  * **gitunshallow** [*<b>\[Git fetch and unshallow project\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/fetch.rc)
  * **gitf** : *git fetch* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/fetch.rc)
  * **gitfmr** : *git fetch origin; git reset origin/master* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/fetch.rc)
  * **gitfs** : *git fetch origin; git reset origin/$(git rev-parse &#8208;&#8208;abbrev-ref HEAD); git stash* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/fetch.rc)
  * **gitfsu** : *git fetch origin; git reset origin/$(git rev-parse &#8208;&#8208;abbrev-ref HEAD); git stash -p* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/fetch.rc)
  * **gitfgr** : *gitfetchtreset github* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/fetch.rc)
  * **gitfor** : *gitremoteverify origin gitrao; gitfetchtreset origin* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/fetch.rc)
  * **gitfar** : *gitremoteverify $(githubusername) gitraa; gitfetchtreset $(githubusername)* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/fetch.rc)
  * **gitfprivr** : *gitfetchtreset private* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/fetch.rc)

---
> ### Documentation: <span class="group_label">sources/git/history.rc</span> ###
>
  * **gitlo** : *git log &#8208;&#8208;pretty=oneline &#8208;&#8208;abbrev-commit* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/history.rc)
  * **gitlod** : *git log &#8208;&#8208;pretty=oneline &#8208;&#8208;abbrev-commit &#8208;&#8208;* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/history.rc)
  * **gitloo** : *git log &#8208;&#8208;pretty=format:"%C(yellow)%h %Cred%ad %Creset%s" &#8208;&#8208;date=short &#8208;&#8208;all &#8208;&#8208;* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/history.rc)
  * **gitlosign** : *git log &#8208;&#8208;show-signature* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/history.rc)
  * **gitlos** *&lt;path_or_.&gt; ["search string input"] [search_max_count]* [*<b>\[Search string in git history\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/history.rc)
  * **gitdi** [*<b>\[Show git differences status\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/history.rc)
  * **gitdfs** *&lt;sha1commit&gt;* [*<b>\[git diff status of an SHA1\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/history.rc)
  * **gitdf** *&lt;sha1commit&gt; &lt;filepath&gt;* [*<b>\[git diffs from an SHA1\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/history.rc)
  * **gitfindsha1** *&lt;remote/branch&gt; &lt;"title text to search"&gt;* [*<b>\[git search commit by title contents\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/history.rc)

---
> ### Documentation: <span class="group_label">sources/git/merge.rc</span> ###
>
  * **gitmt** : *git mergetool* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/merge.rc)
  * **gitmte** [*<b>\[Merge tool with manual conflicts resolution\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/merge.rc)
  * **gitmtr** *&lt;referenced_path&gt;* [*<b>\[Merge tool with reference project sources\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/merge.rc)

---
> ### Documentation: <span class="group_label">sources/git/pick.rc</span> ###
>
  * **gitcpu** *&lt;githuburltocommit&gt; [branch]* [*<b>\[Git URL commit cherry-picker\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/pick.rc)
  * **gitmerges** *&lt;commit_sha1&gt; [count]* [*<b>\[Attempt to merge commit history\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/pick.rc)
  * **gitcpo** *&lt;branch&gt; &lt;amount_of_commits&gt;* [*<b>\[GitHub origin cherry-picker\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/pick.rc)
  * **gitcpup** *[url]* [*<b>\[Git URL patch applier\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/pick.rc)
  * **gitcpur** *&lt;url&gt; &lt;search_text&gt; &lt;replace_text&gt;* [*<b>\[Git URL retargeted patch applier\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/pick.rc)

---
> ### Documentation: <span class="group_label">sources/git/push.rc</span> ###
>
  * **gitpf** : *git push -f* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/push.rc)
  * **gitpu** *[remote] [branch] [input]* [*<b>\[Git push to validated remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/push.rc)
  * **gitpurl** *&lt;url&gt;* [*<b>\[Git pull to full url\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/push.rc)
  * **gitpa** : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername)* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/push.rc)
  * **gitpama** : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) master* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/push.rc)
  * **gitpa14** : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) cm-14.1* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/push.rc)
  * **gitpa15** : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) lineage-15.1* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/push.rc)
  * **gitpal** : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) local_manifests* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/push.rc)
  * **gitpaman** : *gitremoteverify $(githubusername) gitraa && gitpu $(githubusername) manifests* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/push.rc)
  * **gitpo** : *gitremoteverify origin false && gitpu origin* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/push.rc)
  * **gitpom** : *gitremoteverify origin false && gitpu origin master* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/push.rc)
  * **gitpp** : *gitremoteverify project gitrap && gitpu project* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/push.rc)
  * **gitppm** : *gitremoteverify project gitrap && gitpu project master* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/push.rc)
  * **gitppriv** : *gitremoteverify private false && gitpu private* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/push.rc)
  * **gitpprivm** : *gitremoteverify private false && gitpu private master* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/push.rc)

---
> ### Documentation: <span class="group_label">sources/git/rebase.rc</span> ###
>
  * **gitra** : *git rebase &#8208;&#8208;abort* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/rebase.rc)
  * **gitrc** : *git rebase &#8208;&#8208;continue* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/rebase.rc)
  * **gitre** : *git rebase &#8208;&#8208;edit-todo* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/rebase.rc)
  * **gitrs** : *git rebase &#8208;&#8208;skip* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/rebase.rc)
  * **gitrf** *git rebase "${1}^" -i* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/rebase.rc)
  * **gitr** *git rebase "HEAD~${1:-5}" -i* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/rebase.rc)
  * **gitrall** *git rebase -i HEAD~$(($(git rev-list &#8208;&#8208;count HEAD) - 1))* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/rebase.rc)
  * **gitrfedit** *GIT_SEQUENCE_EDITOR="sed -i -e 's/pick/edit/g'" git rebase "${1}" -i* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/rebase.rc)
  * **gitredit** *GIT_SEQUENCE_EDITOR="sed -i -e 's/pick/edit/g'" git rebase "HEAD~${1:-5}" -i* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/rebase.rc)
  * **gitrb** *branch=${1:-$(repogetbranch)}; git fetch github "${branch}"; git rebase "github/${branch}"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/rebase.rc)
  * **gitrbo** *branch=${1:-$(repogetbranch)}; gitremoteverify origin gitrao; git fetch origin "${branch}"; git rebase "origin/${branch}"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/rebase.rc)

---
> ### Documentation: <span class="group_label">sources/git/remotes.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/git/config.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/git/remotes.rc)
  ```
  * **gitrv** : *git remote -v* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/remotes.rc)
  * **gitremoteset** *&lt;remote_name&gt; &lt;remote_url&gt;* [*<b>\[Git remote setter\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/remotes.rc)
  * **gitremoteadaptset** *&lt;remote_name&gt; &lt;remote_github&gt; [prefix_removal] [bool_prefix_android] [bool_underscore_to_dash]* [*<b>\[Git remote adapter\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/remotes.rc)
  * **gitremoteverify** *&lt;remote_name&gt; "command_to_run_if_missing"* [*<b>\[Git remote verifier\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/remotes.rc)
  * **gitraa** [*<b>\[Add GitHub Username remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/remotes.rc)
  * **gitrai** *gitremoteadaptset 'aicp' 'AICP' 'android_'* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/remotes.rc)
  * **gitraon** *gitremoteadaptset 'next' 'lineage-next'* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/remotes.rc)
  * **gitraoo** *gitremoteadaptset 'origin' "${1}"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/remotes.rc)
  * **gitraot** *gitremoteadaptset 'origin' 'TheMuppets'* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/remotes.rc)
  * **gitrat** *gitremoteadaptset 'twrp' 'TeamWin'* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/remotes.rc)
  * **gitral** *gitremoteset lineage "${1}"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/remotes.rc)
  * **gitrapriv** *gitremoteset private "${1}"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/remotes.rc)
  * **gitraau** : *git remote set-url $(githubusername)* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/remotes.rc)
  * **gitraou** : *git remote set-url origin* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/remotes.rc)
  * **gitrao** [*<b>\[Add LineageOS origin remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/remotes.rc)
  * **gitrax** [*<b>\[Add XperiaMultiROM xperia remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/remotes.rc)
  * **gitramd** [*<b>\[Add MultiROM-Dev mromdev remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/remotes.rc)
  * **gitraos** [*<b>\[Add sonyxperiadev origin remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/remotes.rc)

---
> ### Documentation: <span class="group_label">sources/git/stats.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/git/config.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/git/remotes.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/git/tools.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/git/stats.rc)
  ```
  * **gitstat** *&lt;remote&gt; &lt;branch&gt; [stats_only]* [*<b>\[Git history with remote comparator\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/stats.rc)
  * **gitst** : *gitremoteverify origin gitrao && gitstat origin lineage-15.1* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/stats.rc)
  * **gitsto** : *gitremoteverify origin gitrao && gitstat origin $(git rev-parse &#8208;&#8208;abbrev-ref HEAD)* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/stats.rc)
  * **gitstom** : *gitremoteverify origin gitrao && gitstat origin master* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/stats.rc)
  * **gitsta** : *gitremoteverify $(githubusername) gitraa && gitstat $(githubusername) lineage-15.1* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/stats.rc)
  * **gitstam** : *gitremoteverify $(githubusername) gitraa && gitstat $(githubusername) master* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/stats.rc)
  * **gitstg** : *gitremoteverify github false && gitstat github* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/stats.rc)
  * **gitstaosp** : *gitremoteverify aosp false && gitstat aosp master* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/stats.rc)

---
> ### Documentation: <span class="group_label">sources/git/tools.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/git/tools.rc)
  ```
  * **gitgetremote** *[branch_grep]* [*<b>\[Get git primary remote\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/tools.rc)
  * **gitgetbranch** [*<b>\[Get git primary branch\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/git/tools.rc)

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
  * **bashup** [*<b>\[Reload ~/.bashrc\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/bash.rc)
  * **bashe** [*<b>\[Edit ~/.bashrc\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/bash.rc)
  * **cls** [*<b>\[Clean terminal screen\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/bash.rc)

---
> ### Documentation: <span class="group_label">sources/host/binary.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/host/grep.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/host/binary.rc)
  ```
  * **binaryeditor** *&lt;patternsearch&gt; [binariespath] [replacement]* [*<b>\[Binary files parser and editor\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/binary.rc)
  * **binarysearch** *&lt;patternsearch&gt; [binariespath]* [*<b>\[Binary files parser and searcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/binary.rc)

---
> ### Documentation: <span class="group_label">sources/host/common.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/host/common.rc)
  ```
  * **fileedit** *&lt;paths&gt;* [*<b>\[Files editor for most environments\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/common.rc)
  * **fe** : *fileedit* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/common.rc)
  * **fen** : *FILEEDIT_TOUCH_NEW_FILE=true fileedit* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/common.rc)
  * **diropen** *&lt;path&gt;* [*<b>\[Directory opener for most environments\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/common.rc)
  * **dop** : *diropen .* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/common.rc)
  * **pathscompare** *&lt;path_left&gt; &lt;path_right&gt;* [*<b>\[Paths comparison for most environments\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/common.rc)
  * **urlopen** *&lt;url&gt;* [*<b>\[URL opener for most environments\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/common.rc)
  * **desktoppath** [*<b>\[Acquire desktop path for most environments\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/common.rc)
  * **processownercheck** *&lt;process_name&gt; &lt;owner&gt;* [*<b>\[Returns if a process is owned by someone\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/common.rc)

---
> ### Documentation: <span class="group_label">sources/host/edit.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/host/edit.rc)
  ```
  * **editreplacematch** *&lt;"match_line"&gt; &lt;"to_write"&gt; &lt;"files"&gt;* [*<b>\[Edit by replacing matches\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/edit.rc)
  * **editremovematch** *&lt;"match_line"&gt; &lt;"files"&gt;* [*<b>\[Edit by removing matches\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/edit.rc)
  * **editremoveupto** *&lt;"match_line"&gt; &lt;"files"&gt;* [*<b>\[Edit by removing lines up to first match\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/edit.rc)
  * **editinsertabove** *&lt;"match_line"&gt; &lt;"to_insert"&gt; &lt;"files"&gt;* [*<b>\[Edit by inserting above\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/edit.rc)
  * **editinsertbelow** *&lt;"match_line"&gt; &lt;"to_insert"&gt; &lt;"files"&gt;* [*<b>\[Edit by inserting below\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/edit.rc)
  * **editreplacemultiline** *&lt;"match_first"&gt; &lt;"match_last"&gt; &lt;"replace"&gt; &lt;"files"&gt;* [*<b>\[Edit by replacing multiple lines\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/edit.rc)
  * **edittrimoutput** *&lt;"files"&gt;* [*<b>\[Edit by triming output line rewrites\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/edit.rc)

---
> ### Documentation: <span class="group_label">sources/host/find.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/host/find.rc)
  ```
  * **findn** : *find -name* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/find.rc)
  * **findfilteredprojectfiles** *[path] [params]* [*<b>\[Find filtered project files\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/find.rc)
  * **findnewer** *&lt;20160123&gt;* [*<b>\[Search files newer than a date\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/find.rc)

---
> ### Documentation: <span class="group_label">sources/host/grep.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/host/find.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/host/common.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/host/grep.rc)
  ```
  * **g** *[inputs]* [*<b>\[Grep through sources\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/grep.rc)
  * **gs** *[inputs]* [*<b>\[Grep through sources and binaries\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/grep.rc)
  * **gce** *&lt;inputs&gt;* [*<b>\[Grep and edit through sources and binaries\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/grep.rc)
  * **gck** *[inputs]* [*<b>\[Grep through kernel configurations\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/grep.rc)
  * **gca** *[inputs]* [*<b>\[Grep through Android makefiles\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/grep.rc)
  * **gcmanifest** *[inputs]* [*<b>\[Grep through Android Manifests\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/grep.rc)
  * **gcrc** *[inputs]* [*<b>\[Grep through Android .rc files\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/grep.rc)
  * **gcsep** *[inputs]* [*<b>\[Grep through Android sepolicies\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/grep.rc)
  * **gcxml** *[inputs]* [*<b>\[Grep through Android .xml files\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/grep.rc)
  * **gccontexts** *[inputs]* [*<b>\[Grep through Android sepolicies contexts\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/grep.rc)
  * **grepi** : *grep -ai* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/grep.rc)
  * **gcmodules** *[path]* [*<b>\[List all LOCAL_MODULE elements\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/grep.rc)
  * **gcphony** [*<b>\[List all PHONY rules\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/grep.rc)
  * **stringsgetall** *[params]* [*<b>\[Run strings command based on host variants\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/grep.rc)

---
> ### Documentation: <span class="group_label">sources/host/linux.rc</span> ###
>
  * **toclip** *xclip -selection c* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/linux.rc)
  * **rsynca** *&lt;path1&gt; &lt;path2&gt;* [*<b>\[Mirror a path to another\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/linux.rc)
  * **rsyncf** *&lt;path1&gt; &lt;path2&gt;* [*<b>\[Mirror a path to another based on size only\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/linux.rc)
  * **pcinfo** : *inxi -Fxz* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/linux.rc)
  * **cpioext** *&lt;cpio_file_to_extract&gt;* [*<b>\[Extract cpio file\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/linux.rc)
  * **videoresize** *&lt;video_file&gt;* [*<b>\[Resize video dimensions\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/linux.rc)
  * **disableautomount** [*<b>\[Linux USB automount disabler\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/linux.rc)
  * **diffbin** *&lt;binary_left&gt; &lt;binary_right&gt; [first_n_lines]* [*<b>\[Compare binary files\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/linux.rc)
  * **netspeed** [*<b>\[Display network speeds\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/linux.rc)
  * **netspeedtest** [*<b>\[Run SpeedTest client\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/linux.rc)
  * **drivespeedtest** *&lt;test_file_path&gt;* [*<b>\[Run drive write speed test\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/linux.rc)
  * **buildlock** *&lt;command...&gt;* [*<b>\[Mutex-locked command execution\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/linux.rc)
  * **fileschemesorter** *&lt;file_to_sort&gt; &lt;file_reference&gt;* [*<b>\[Sort file against scheme file\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/linux.rc)
  * **mtpmountdisable** [*<b>\[Disable MTP automount\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/linux.rc)
  * **networkrestart** [*<b>\[Restart network manager\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/linux.rc)
  * **isdone** : *notify-send "Process execution finished !* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/linux.rc)
  * **topcpu** : *top -o %CPU* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/linux.rc)
  * **topmem** : *top -o %MEM* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/linux.rc)

---
> ### Documentation: <span class="group_label">sources/host/pushbullet.rc</span> ###
>
  * **pushb** *[message]* [*<b>\[Pushbullet notification helper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/pushbullet.rc)
  * **pushbsizes** *&lt;paths&gt;* [*<b>\[Path sizes in Pushbullet notification\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/pushbullet.rc)

---
> ### Documentation: <span class="group_label">sources/host/tools.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/host/edit.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/host/tools.rc)
  ```
  * **haste** *&lt;file&gt; or \| haste* [*<b>\[Share hastebin logs\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/tools.rc)
  * **pbin** *&lt;file&gt; or \| pbin* [*<b>\[Share Pastebin logs\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/tools.rc)
  * **pbinperm** : *PASTEBIN_EXPIRE=N pbin* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/tools.rc)
  * **remotescript** *&lt;url&gt; [bool_automated]* [*<b>\[Remote script launcher with confirmations\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/tools.rc)
  * **wip** *[commands to store]* [*<b>\[Work in progress commands to store and use\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/host/tools.rc)

---
</details>

<details>
<summary class="group_header">
#### <span class="group_label">SSH Server Tools</span> ####
</summary>

> ### Documentation: <span class="group_label">sources/ssh/remote.rc</span> ###
>
  * **sshremote** [*<b>\[Get the configured SSH target\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/ssh/remote.rc)
  * **sshserv** : *ssh $(sshremote)* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/ssh/remote.rc)
  * **sshsync** *&lt;up/down&gt; &lt;local_path&gt; &lt;remote_path&gt; [params]* [*<b>\[Mirror remote server folder\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/ssh/remote.rc)

---
</details>

<details>
<summary class="group_header">
#### <span class="group_label">File Uploads Helpers</span> ####
</summary>

> ### Documentation: <span class="group_label">sources/uploads/basketbuild.rc</span> ###
>
  * **uploadbasketbuild** *&lt;file_path&gt; [target_folder]* [*<b>\[File to BasketBuild server uploader\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/basketbuild.rc)
  * **downloadbasketbuild** *&lt;remote_path&gt;* [*<b>\[Download from BasketBuild\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/basketbuild.rc)
  * **uploadprivatebasketbuild** *&lt;device_name&gt;* [*<b>\[Upload to private BasketBuild\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/basketbuild.rc)
  * **syncbasketbuild** *&lt;local_path&gt; &lt;remote_path&gt; &lt;--download/--upload&gt;* [*<b>\[Folder with BasketBuild server syncer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/basketbuild.rc)

---
> ### Documentation: <span class="group_label">sources/uploads/common.rc</span> ###
>
  * **fileupl** *&lt;file_path&gt; [target_folder]* [*<b>\[File to release server uploader\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/common.rc)
  * **fileget** *&lt;remote_path&gt; [boot_remove_remote]* [*<b>\[File from release server downloader\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/common.rc)
  * **fastupl** *&lt;file_path&gt; [none/zip/bootimage]* [*<b>\[Fast private file to server uploader\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/common.rc)

---
> ### Documentation: <span class="group_label">sources/uploads/ftp.rc</span> ###
>
  * **uploadftp** *&lt;file_path&gt; [target_folder] [uploadftp_variant]* [*<b>\[File to FTP server uploader\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/ftp.rc)
  * **downloadftp** *&lt;remote_path&gt; [uploadftp_variant]* [*<b>\[Download from FTP\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/ftp.rc)
  * **syncftp** *&lt;local_path&gt; &lt;remote_path&gt; &lt;--download/--upload&gt; [uploadftp_variant]* [*<b>\[Folder with FTP server syncer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/ftp.rc)

---
> ### Documentation: <span class="group_label">sources/uploads/helpers.rc</span> ###
>
  * **mmmupl** *&lt;package_or_path&gt; [bool_partial_build]* [*<b>\[Make zip and upload\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/helpers.rc)
  * **devuplboot** *&lt;device&gt;* [*<b>\[Upload ROM bootimage\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/helpers.rc)
  * **devuplrom** *&lt;device&gt; [folder_path]* [*<b>\[Upload ROM build\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/helpers.rc)
  * **pushbrom** *&lt;device_name&gt; [rom_name]* [*<b>\[Notify build success\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/helpers.rc)
  * **makep** *&lt;parameters&gt;* [*<b>\[Use "makes" with Pushbullet notification\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/helpers.rc)

---
> ### Documentation: <span class="group_label">sources/uploads/local.rc</span> ###
>
  * **androidfilesadd** *&lt;file_path&gt; &lt;target_folder&gt;* [*<b>\[Add file to AndroidFiles\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/local.rc)
  * **androidfilessync** *&lt;--upload/--download&gt;* [*<b>\[Sync AndroidFiles folder\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/local.rc)
  * **androidfilesdownload** : *androidfilessync &#8208;&#8208;download* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/local.rc)
  * **androidfilesupload** : *androidfilessync &#8208;&#8208;upload* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/local.rc)
  * **androidfilescd** : *cd "${ANDROID_FILES_PATH}/* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/local.rc)
  * **androidfilesopen** [*<b>\[Open AndroidFiles folder\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/local.rc)

---
> ### Documentation: <span class="group_label">sources/uploads/mega.rc</span> ###
>
  * **uploadmega** *&lt;file_path&gt; [target_folder]* [*<b>\[Upload to MEGA.nz\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/mega.rc)
  * **downloadmega** *&lt;remote_path&gt; [boot_remove_remote]* [*<b>\[Download from MEGA.nz\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/mega.rc)
  * **uploadprivatemega** *&lt;device_name&gt;* [*<b>\[Upload to private MEGA.nz\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/mega.rc)
  * **syncmega** : *megamirror* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/mega.rc)
  * **listmega** *[options]* [*<b>\[List remote files on MEGA.nz\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/sources/uploads/mega.rc)

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
  * **lineagenextrebaser** *[specific_paths]* [*<b>\[LineageOS Next Rebaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/lineage_next/lineageos.rc)

---
</details>

<details>
<summary class="group_header">
#### <span class="group_label">Linux Host Extensions</span> ####
</summary>

> ### Documentation: <span class="group_label">extensions/linux/cleaners.rc</span> ###
>
  * **cleanram** [*<b>\[RAM caches cleanup\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/linux/cleaners.rc)
  * **cleanrambuild** [*<b>\[RAM caches cleanup\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/linux/cleaners.rc)
  * **cleanramkill** *[bool_cleanram]* [*<b>\[Complete RAM cleanup including "java"\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/linux/cleaners.rc)

---
</details>

<details>
<summary class="group_header">
#### <span class="group_label">MEGA Storage Extensions</span> ####
</summary>

> ### Documentation: <span class="group_label">extensions/megatools/mirror.rc</span> ###
>
  * **megamirror** *&lt;local_folder&gt; &lt;remote_folder&gt; &lt;--upload/--download&gt; [--copy,-y/-n]* [*<b>\[MEGA mirror syncer\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/megatools/mirror.rc)

---
> ### Documentation: <span class="group_label">extensions/megatools/reload.rc</span> ###
>
  * **meganzreload** [*<b>\[Reload Mega.nz account and keys\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/megatools/reload.rc)

---
</details>

<details>
<summary class="group_header">
#### <span class="group_label">LegacyXperia MSM7x30 Extensions</span> ####
</summary>

> ### Documentation: <span class="group_label">extensions/semc_msm7x30/autorelease.rc</span> ###
>
  * **autoreleaselegacyxperia** *[devices]* [*<b>\[Automated LegacyXperia 7x30 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/semc_msm7x30/autorelease.rc)

---
> ### Documentation: <span class="group_label">extensions/semc_msm7x30/legacyxperia.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_kernel/defconfig.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/extensions/semc_msm7x30/legacyxperia.rc)
  ```
  * **lineagelxpatcher** *[local_manifests_branch]* [*<b>\[LineageOS LegacyXperia Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/semc_msm7x30/legacyxperia.rc)
  * **lxrepopick** *&lt;commit_id&gt;* [*<b>\[LineageOS LegacyXperia repopick tool\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/semc_msm7x30/legacyxperia.rc)
  * **lxdefconfig** [*<b>\[Edit all lx defconfigs\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/semc_msm7x30/legacyxperia.rc)

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
  * **aospsony8960npatcher** *[specific_paths]* [*<b>\[AOSP 8960 Nougat Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/aosp_sony8960.rc)
  * **aospsony8960opatcher** *[specific_paths]* [*<b>\[AOSP 8960 O Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/aosp_sony8960.rc)
  * **aospsony8960omr1patcher** *[specific_paths]* [*<b>\[AOSP 8960 O MR1 Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/aosp_sony8960.rc)
  * **aospsony8960masterpatcher** *[specific_paths]* [*<b>\[AOSP 8960 Master Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/aosp_sony8960.rc)

---
> ### Documentation: <span class="group_label">extensions/sony_msm8960/autorelease.rc</span> ###
>
  * **autoreleaseaospsony8960o** *[devices]* [*<b>\[Automated AOSP Oreo Sony 8960 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/autorelease.rc)
  * **autoreleaselineagesony8960** *[devices]* [*<b>\[Automated LineageOS Sony 8960 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/autorelease.rc)
  * **autoreleaselineagesony8960o** *[devices]* [*<b>\[Automated LineageOS 15.0 Sony 8960 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/autorelease.rc)
  * **autoreleaserrsony8960** *[devices]* [*<b>\[Automated RR Sony 8960 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/autorelease.rc)
  * **autoreleasecafsony8960** *[devices]* [*<b>\[Automated AOSP-CAF Sony 8960 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/autorelease.rc)
  * **autoreleaseaospsony8960master** *&lt;devices&gt;* [*<b>\[Automated AOSP Master Sony 8960 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/autorelease.rc)
  * **autoreleaselineagesony8960master** *&lt;devices&gt;* [*<b>\[Automated LineageOS Sony 8960 Master releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/autorelease.rc)

---
> ### Documentation: <span class="group_label">extensions/sony_msm8960/lineageos.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_rom/projects.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/extensions/sony_msm8960/lineageos.rc)
  ```
  * **lineagesony8960oreopatcher** *[version=15.1]* [*<b>\[LineageOS 8960 Oreo Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/lineageos.rc)
  * **lineagesony8960rebaser** *[specific_paths]* [*<b>\[LineageOS Devices Rebaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/lineageos.rc)

---
> ### Documentation: <span class="group_label">extensions/sony_msm8960/release.rc</span> ###
>
  * **autoreleasemultiromsony8960** *[devices]* [*<b>\[Automated MultiROM Sony 8960 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/release.rc)
  * **autoreleasetwrpsony8960** *[devices]* [*<b>\[Automated TWRP Sony 8960 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/release.rc)

---
> ### Documentation: <span class="group_label">extensions/sony_msm8960/shortcuts.rc</span> ###
>
  * **cdspker** *cd "$(pwd \| sed 's/(.*)Android([^/]*/[^/]*).*/1Android2/kernel/sony/msm8960t/g')"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/shortcuts.rc)
  * **cdblueker** *cd "$(pwd \| sed 's/(.*)Android([^/]*/[^/]*).*/1Android2/kernel/sony/msm8x60/g')"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/shortcuts.rc)
  * **cdvendsony** *cd "$(pwd \| sed 's/(.*)Android([^/]*/[^/]*).*/1Android2/vendor/sony/g')"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/shortcuts.rc)
  * **meldblue** *pathscompare "./${1}" "../blue-common/${1}"* [*(Function)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8960/shortcuts.rc)

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
  * **aospsonysodppatcher** *[specific_paths]* [*<b>\[AOSP SONY SODP Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/aosp_sonysodp.rc)
  * **aospsonysodprebaser** *&lt;master/n-mr1&gt; [specific_paths]* [*<b>\[AOSP SONY SODP Rebaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/aosp_sonysodp.rc)
  * **sonyaospkernelupdate** *&lt;device_name&gt;* [*<b>\[Automated Sony SODP kernel updater for AOSP\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/aosp_sonysodp.rc)

---
> ### Documentation: <span class="group_label">extensions/sony_msm8996/autorelease.rc</span> ###
>
  * **autoreleaseaospsodp8996** *[devices]* [*<b>\[Automated AOSP Sony SODP 8996 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/autorelease.rc)

---
> ### Documentation: <span class="group_label">extensions/sony_msm8996/builders.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_kernel/builders.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/host/common.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/extensions/sony_msm8996/builders.rc)
  ```
  * **makekernelcopyleft** *[platform_device_to_init / clean / mrproper] [make_parameters]* [*<b>\[Kernel inline compiler for Sony Copyleft\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/builders.rc)
  * **kernelcopyleftmerger** *&lt;archive_tar_bz2&gt;* [*<b>\[Sony Copyleft kernel archive merge helper\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/builders.rc)

---
> ### Documentation: <span class="group_label">extensions/sony_msm8996/lineageos_sony8996.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_rom/projects.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/extensions/sony_msm8996/lineageos_sony8996.rc)
  ```
  * **lineagesony8996patcher** *[specific_paths]* [*<b>\[LineageOS Sony 8996 Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/lineageos_sony8996.rc)

---
> ### Documentation: <span class="group_label">extensions/sony_msm8996/lineageos_sonysodp.rc</span> ###
>
  ```Shell
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/sources/android_rom/projects.rc)
source <(curl -Ls https://github.com/AdrianDC/android_development_shell_tools/raw/master/extensions/sony_msm8996/lineageos_sonysodp.rc)
  ```
  * **lineagesonysodppatcher** *[specific_paths]* [*<b>\[LineageOS SONY SODP Patcher\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/lineageos_sonysodp.rc)
  * **lineagesonysodprebaser** *[specific_paths]* [*<b>\[LineageOS SONY SODP Rebaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/lineageos_sonysodp.rc)

---
> ### Documentation: <span class="group_label">extensions/sony_msm8996/release.rc</span> ###
>
  * **autoreleasemultiromsony8996** *[devices]* [*<b>\[Automated MultiROM Sony 8996 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/release.rc)
  * **autoreleasetwrpsony8996** *[devices]* [*<b>\[Automated TWRP Sony 8996 releaser\]</b>*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/release.rc)

---
> ### Documentation: <span class="group_label">extensions/sony_msm8996/shortcuts.rc</span> ###
>
  * **sonysodpkernelrebase** : *git fetch https://github.com/sonyxperiadev/kernel aosp/LA.UM.5.5.r1; git rebase FETCH_HEAD; gitpa* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/shortcuts.rc)
  * **doradefconf** : *makedefconf msm-perf dora common* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/shortcuts.rc)
  * **dorazipkernel** : *kernelinjectorzip dora arch/arm64/boot/Image.gz-dtb .* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/shortcuts.rc)
  * **kaguradefconf** : *makedefconf msm-perf kagura common* [*(Alias)*](https://github.com/AdrianDC/android_development_shell_tools/blob/master/extensions/sony_msm8996/shortcuts.rc)

---
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
