<!-- Center -->
![Advanced Development Shell Tools](https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/docs/assets/res/logo.png)
<!-- /Center -->


 * Created by [Adrian DC](https://github.com/AdrianDC) - 2015-2019

 * Project description : [About...](project.md)
   <br />
   Regularly used functions : [Previews...](previews.md)
   <br />
   Some commands examples : [Samples...](samples.md)
   <br />
   Project user functions : [Handlers...](shtools.md)
   <br />
   XDA-Developers forum : [Thread...](http://forum.xda-developers.com/-/-/-t3622382)

 * This project is meant to provide multiple advanced functions and shortcuts to **ease Android, Git and Linux developments**

 * The sources written and shared here are either meant to be used as they are, or to serve as a **reference for commands and functions a Shell developer needs**

 * **"Standalone Import Ready"** scripts starting with *`source <(curl -Ls...`* can be directly sourced through the provided commands from a Shell without this project

<details style="margin-bottom: 1.5em;">
<summary>
#### See how to install and update the project
</summary>

 * **Clone the project locally with git**
   ```Shell
   git clone https://github.com/AdrianDC/advanced_development_shell_tools -b master;
   ```
 * **Load the project in a Shell terminal**
   ```Shell
   source /path/to/folder/advanced_development_shell_tools.rc;
   ```
 * **Permanently load the project**
   <br />
   Open *`~/.bashrc`*, adapt and add:
   ```Shell
   export ANDROID_DEV_DRIVE='/media/../AndroidDev';
   source '/.../advanced_development_shell_tools.rc';
   ```
   **`ANDROID_DEV_DRIVE`**: Optional folder for Android functions.
   <br />
 * **Synchronize new project additions**
   ```Shell
   shtoolssync;
   ```
</details>

---

### [ Functions documentation ] ([+/-](javascript:toggle_documentation())) ###

<!-- Functions Start -->
<details class='group_details'>
<summary class="group_header">
#### <span class="group_category">Shell Tools &bull; </span><span class="group_label">Advanced Development Shell Tools</span> ####
</summary>

> ### <span class="group_label">[project/access.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/project/access.rc)</span> ###
>
  * **shtoolsget** [*<b>\[Get&nbsp;the&nbsp;project&nbsp;path\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/project/access.rc)
  * **shtoolscd** [*<b>\[Access&nbsp;the&nbsp;project&nbsp;path\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/project/access.rc)
  * **shtoolssync** [*<b>\[Synchronize&nbsp;the&nbsp;project&nbsp;new&nbsp;changes\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/project/access.rc)
  * **shtoolsup** [*<b>\[Reloads&nbsp;the&nbsp;project&nbsp;scripts\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/project/access.rc)

---
> ### <span class="group_label">[project/developer.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/project/developer.rc)</span> ###
>
  * **shtoolscheck** *[bool_ignore]* [*<b>\[Run&nbsp;ShellCheck&nbsp;on&nbsp;the&nbsp;project\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/project/developer.rc)
  * **shtoolspush** *[bool_ignore_readme]* [*<b>\[Commit&nbsp;new&nbsp;changes&nbsp;to&nbsp;the&nbsp;project\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/project/developer.rc)
  * **shtoolsamend** *[bool_ignore_readme] [bool_ignore_message]* [*<b>\[Amend&nbsp;new&nbsp;changes&nbsp;to&nbsp;the&nbsp;project\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/project/developer.rc)
  * **shtoolsconf** [*<b>\[Edit&nbsp;the&nbsp;project&nbsp;configuration\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/project/developer.rc)

---
> ### <span class="group_label">[project/docs.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/project/docs.rc)</span> ###
>
  * **shtoolsdocs** *[bool_install]* [*<b>\[Instantiate&nbsp;the&nbsp;project&nbsp;documentation\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/project/docs.rc)
  * **shtoolsforum** [*<b>\[Refresh&nbsp;README.forum&nbsp;project&nbsp;presentation\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/project/docs.rc)
  * **shtoolsreadme** [*<b>\[Refresh&nbsp;README.md&nbsp;functions&nbsp;usages\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/project/docs.rc)

---
> ### <span class="group_label">[project/history.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/project/history.rc)</span> ###
>
  * **shtoolsstats** [*<b>\[Statistics&nbsp;on&nbsp;the&nbsp;project&nbsp;files\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/project/history.rc)
  * **shtoolsdiff** [*<b>\[Compare&nbsp;with&nbsp;the&nbsp;upstream&nbsp;project\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/project/history.rc)
  * **shtoolslog** *[commits_count]* [*<b>\[Display&nbsp;the&nbsp;project&nbsp;history\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/project/history.rc)
  * **shtoolsshow** *[offset_count]* [*<b>\[Display&nbsp;a&nbsp;project&nbsp;commit\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/project/history.rc)

---
> ### <span class="group_label">[project/interfaces.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/project/interfaces.rc)</span> ###
>
  * **shtools** [*<b>\[Entrypoint&nbsp;menu&nbsp;to&nbsp;the&nbsp;project\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/project/interfaces.rc)
  * **shtools-** [*<b>\[Options&nbsp;menu&nbsp;for&nbsp;the&nbsp;project\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/project/interfaces.rc)
  * **shtoolskits** *[init]* [*<b>\[Toolkits&nbsp;selection&nbsp;for&nbsp;the&nbsp;project\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/project/interfaces.rc)
  * **shtoolsnews** *[since_days]* [*<b>\[Display&nbsp;the&nbsp;project&nbsp;news&nbsp;notifications\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/project/interfaces.rc)

---
> ### <span class="group_label">[project/search.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/project/search.rc)</span> ###
>
  * **shtoolse** *&lt;words&gt; &lt;to&gt; &lt;search&gt;* [*<b>\[Direct&nbsp;access&nbsp;to&nbsp;related&nbsp;sources\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/project/search.rc)
  * **shtoolsf** *&lt;function_or_alias&gt;* [*<b>\[Direct&nbsp;access&nbsp;to&nbsp;related&nbsp;function&nbsp;or&nbsp;alias&nbsp;sources\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/project/search.rc)

---
</details>

<details class='group_details'>
<summary class="group_header">
#### <span class="group_category">Android &bull; </span><span class="group_label">ADB Tools</span> ####
</summary>

> ### <span class="group_label">[sources/android_adb/assets.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/assets.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_adb/tools.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_adb/assets.rc)
  ```
>  </div>
  * **adbdatabase** *&lt;/data/.../sqlite.db&gt;* [*<b>\[Android&nbsp;sqlite3&nbsp;database&nbsp;opener\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/assets.rc)
  * **sepaud** *&lt;logs_file&gt; [context_search]* [*<b>\[Logs&nbsp;sepolicy&nbsp;analyzer\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/assets.rc)
  * **sepmsg** *&lt;logs_file&gt; &lt;context&gt; [grep]* [*<b>\[Logs&nbsp;sepolicy&nbsp;message&nbsp;extractor\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/assets.rc)
  * **adbintents** [*<b>\[List&nbsp;Android&nbsp;intents&nbsp;through&nbsp;adb\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/assets.rc)
  * **adbcamera** [*<b>\[Enable&nbsp;and&nbsp;launch&nbsp;camera&nbsp;applications\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/assets.rc)
  * **adbsuwbypass** [*<b>\[Bypass&nbsp;the&nbsp;Android&nbsp;Setup&nbsp;Wizard\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/assets.rc)
  * **adbkp** *&lt;process_name&gt;* [*<b>\[Kill&nbsp;process&nbsp;by&nbsp;name\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/assets.rc)
  * **adbrun** *&lt;executable_path&gt; [params]* [*<b>\[Run&nbsp;a&nbsp;device&nbsp;through&nbsp;adb\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/assets.rc)
  * **adbdu** [*<b>\[Android&nbsp;/data/&nbsp;sizes&nbsp;study\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/assets.rc)
  * **adbpropradiolog** *&lt;value&gt;* [*<b>\[Radio&nbsp;debug&nbsp;property&nbsp;overrider\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/assets.rc)
  * **adbalsa** [*<b>\[Audio&nbsp;cards&nbsp;advanced&nbsp;study\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/assets.rc)
  * **adbtinymix** [*<b>\[Run&nbsp;tinymix&nbsp;on&nbsp;the&nbsp;device\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/assets.rc)
  * **adbeditmanifest** [*<b>\[Edit&nbsp;adb&nbsp;/system/vendor/manifest.xml&nbsp;file\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/assets.rc)
  * **adbinputs** [*<b>\[Dump&nbsp;all&nbsp;input&nbsp;devices\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/assets.rc)
  * **adbreadevents** *&lt;event_number&gt;* [*<b>\[Read&nbsp;input&nbsp;events\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/assets.rc)

---
> ### <span class="group_label">[sources/android_adb/debug.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/debug.rc)</span> ###
>
  * **adbst** *&lt;process_name&gt; [parameters] [bool_wait]* [*<b>\[strace\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/debug.rc)
  * **adbstf** *&lt;process_name&gt;* [*<b>\[Followed&nbsp;strace\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/debug.rc)
  * **adbstw** *&lt;process_name&gt;* [*<b>\[Waiting&nbsp;strace\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/debug.rc)
  * **adbstacktombstone** [*<b>\[ADB&nbsp;tombstone&nbsp;debugger&nbsp;with&nbsp;stack\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/debug.rc)
  * **adbbootchart** [*<b>\[Bootchart&nbsp;debug&nbsp;helper\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/debug.rc)

---
> ### <span class="group_label">[sources/android_adb/device.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/device.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_adb/tools.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_adb/device.rc)
  ```
>  </div>
  * **adbpo** [*<b>\[Power-off&nbsp;device&nbsp;through&nbsp;adb\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/device.rc)
  * **adbre** [*<b>\[Reboot&nbsp;device&nbsp;through&nbsp;adb\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/device.rc)
  * **adbrh** [*<b>\[Hot-reboot&nbsp;device&nbsp;through&nbsp;adb\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/device.rc)
  * **adbrr** [*<b>\[Reboot&nbsp;device&nbsp;to&nbsp;recovery&nbsp;through&nbsp;adb\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/device.rc)
  * **adbrb** [*<b>\[Reboot&nbsp;device&nbsp;to&nbsp;bootloader&nbsp;through&nbsp;adb\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/device.rc)
  * **adbw** [*<b>\[Wait&nbsp;for&nbsp;device&nbsp;through&nbsp;adb\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/device.rc)
  * **adbgetenforced** [*<b>\[Get&nbsp;device&nbsp;enforced&nbsp;status&nbsp;through&nbsp;adb\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/device.rc)
  * **adbsetenforced** [*<b>\[Set&nbsp;device&nbsp;enforced&nbsp;through&nbsp;adb\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/device.rc)
  * **adbsetpermissive** [*<b>\[Set&nbsp;device&nbsp;permissive&nbsp;through&nbsp;adb\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/device.rc)

---
> ### <span class="group_label">[sources/android_adb/flash.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/flash.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_adb/tools.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_build/target.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_adb/flash.rc)
  ```
>  </div>
  * **adbbootdump** [*<b>\[Dump&nbsp;bootimage&nbsp;from&nbsp;device\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/flash.rc)
  * **adbbootcut** *&lt;file_path&gt;* [*<b>\[Trim&nbsp;bootimage&nbsp;dump\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/flash.rc)
  * **adbrecoveryinstall** *&lt;file_path&gt;* [*<b>\[Inject&nbsp;and&nbsp;reboot&nbsp;recovery\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/flash.rc)

---
> ### <span class="group_label">[sources/android_adb/installers.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/installers.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_adb/tools.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_repo/helpers.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_adb/installers.rc)
  ```
>  </div>
  * **adbpushfile** *&lt;file_path&gt; &lt;file_target&gt;* [*<b>\[Push&nbsp;files&nbsp;through&nbsp;adb\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/installers.rc)
  * **adbpu** *&lt;file_path&gt; &lt;file_target&gt;* [*<b>\[Push&nbsp;files&nbsp;through&nbsp;rooted&nbsp;adb\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/installers.rc)
  * **adbif** *&lt;command...&gt;* [*<b>\[Android&nbsp;modules&nbsp;build&nbsp;and&nbsp;install\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/installers.rc)
  * **adbil** *&lt;command...&gt;* [*<b>\[Modules&nbsp;build&nbsp;listener&nbsp;and&nbsp;lister\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/installers.rc)
  * **adbi** *&lt;command...&gt;* [*<b>\[Android&nbsp;modules&nbsp;build&nbsp;and&nbsp;rooted&nbsp;install\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/installers.rc)
  * **adbpf** *&lt;file_paths&gt;* [*<b>\[Advanced&nbsp;recursive&nbsp;adb&nbsp;files&nbsp;pusher\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/installers.rc)
  * **adbp** [*<b>\[Advanced&nbsp;recursive&nbsp;rooted&nbsp;adb&nbsp;files&nbsp;pusher\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/installers.rc)
  * **adbppr** [*<b>\[adb&nbsp;automated&nbsp;PACKAGES_RESULTS&nbsp;files&nbsp;pusher\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/installers.rc)
  * **adbside** *&lt;file_zip&gt; [boot_reboot]* [*<b>\[adb&nbsp;sideload&nbsp;helper\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/installers.rc)
  * **adbsiderom** *&lt;rom_zip_or_bootimage&gt; &lt;device&gt; [boot_no_reboot]* [*<b>\[adb&nbsp;sideload&nbsp;ROM&nbsp;with&nbsp;addons&nbsp;helper\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/installers.rc)
  * **adbpi** *&lt;file_path&gt;* [*<b>\[Automated&nbsp;file&nbsp;pusher&nbsp;and&nbsp;installer\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/installers.rc)
  * **adbu** *&lt;package_name_or_file&gt;* [*<b>\[Force&nbsp;optimization&nbsp;of&nbsp;a&nbsp;package\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/installers.rc)
  * **adbgitpf** *&lt;commit_sha1&gt;* [*<b>\[Push&nbsp;files&nbsp;through&nbsp;adb&nbsp;from&nbsp;commit\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/installers.rc)
  * **adbpmrom** *&lt;file&gt;* [*<b>\[MultiROM&nbsp;development&nbsp;file&nbsp;pusher\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/installers.rc)
  * **adbpmromenc** *&lt;file&gt;* [*<b>\[MultiROM&nbsp;development&nbsp;encryption&nbsp;file&nbsp;pusher\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/installers.rc)
  * **adbapkinstall** [*<b>\[Install&nbsp;available&nbsp;apk&nbsp;files&nbsp;from&nbsp;current&nbsp;path\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/installers.rc)

---
> ### <span class="group_label">[sources/android_adb/logs.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/logs.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_adb/tools.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_adb/logs.rc)
  ```
>  </div>
  * **adbl** *[all/crash/events/main/radio/system] [file_output] [bool_clean]* [*<b>\[adb&nbsp;Logcat&nbsp;helper\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/logs.rc)
  * **adblr** [*<b>\[Logcat&nbsp;output&nbsp;relevant&nbsp;reader\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/logs.rc)
  * **adblpcln** *[file_adb.log]* [*<b>\[Logcat&nbsp;output&nbsp;public&nbsp;cleaner\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/logs.rc)
  * **adblcln** *[file_adb.log]* [*<b>\[Logcat&nbsp;output&nbsp;cleaner\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/logs.rc)
  * **adbdcln** *[file_adb.log]* [*<b>\[dmesg&nbsp;output&nbsp;cleaner\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/logs.rc)
  * **adbkcln** *[file_kmsg]* [*<b>\[Kernel&nbsp;logs&nbsp;output&nbsp;cleaner\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/logs.rc)
  * **adbstcln** *[file_adb.log]* [*<b>\[strace&nbsp;output&nbsp;cleaner\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/logs.rc)
  * **adblc** *adb logcat -c; adbl* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/logs.rc)
  * **adbk** *echo -n '' &gt; kmsg; adbsu cat /proc/kmsg \| tee -a kmsg* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/logs.rc)
  * **adbdm** *echo -n '' &gt; dmesg; adbsu dmesg \| tee -a dmesg* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/logs.rc)
  * **adbkd** *echo -n '' &gt; kmsg; adbsu cat /proc/kmsg \| tee -a kmsg* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/logs.rc)
  * **adbkl** *cls; echo -n '' &gt; last_kmsg; adbsu cat /proc/last_kmsg \| tee -a last_kmsg* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/logs.rc)
  * **adbpl** *cls; echo -n '' &gt; last_kmsg; adbsu cat /sys/fs/pstore/console-ramoops \| tee -a last_kmsg* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/logs.rc)
  * **adbrl** *cls; echo -n '' &gt; recovery_log; adbsu cat /tmp/recovery.log \| tee -a recovery_log* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/logs.rc)
  * **adbdumpsensors** *adbsu dumpsys sensorservice* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/logs.rc)
  * **adbtrampoline** *adbsu 'dmesg \| grep -i trampoline'* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/logs.rc)
  * **adbple** [*<b>\[ADB&nbsp;Ramoops&nbsp;Compressed&nbsp;Logger\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/logs.rc)

---
> ### <span class="group_label">[sources/android_adb/multirom.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/multirom.rc)</span> ###
>
  * **adbmromselect** *[preselect]* [*<b>\[Select&nbsp;MultiROM&nbsp;installation&nbsp;for&nbsp;path\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/multirom.rc)
  * **adbmrombootimage** *&lt;bootimage_path&gt; [preselect]* [*<b>\[MultiROM&nbsp;bootimage&nbsp;installer\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/multirom.rc)
  * **adbmrominjector** *&lt;kernel_path&gt;* [*<b>\[MultiROM&nbsp;kernel&nbsp;image&nbsp;injector\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/multirom.rc)
  * **adbmromautoboot** [*<b>\[MultiROM&nbsp;autoboot&nbsp;selection\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/multirom.rc)
  * **adbmromedit** *&lt;relative_path&gt; [preselect]* [*<b>\[MultiROM&nbsp;secondary&nbsp;ROM&nbsp;file&nbsp;editor\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/multirom.rc)

---
> ### <span class="group_label">[sources/android_adb/shortcuts.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_adb/shortcuts.rc)
  ```
>  </div>
  * **adbs** *adb shell "${@}"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc)
  * **adbdf** *adb shell df -H "${@}"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc)
  * **adbsl** *adb shell ls -l "${@}"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc)
  * **adbslz** *adb shell ls -lZ "${@}"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc)
  * **adbsc** *adb shell cat "${@}"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc)
  * **adbsg** *adb shell getprop "${@}"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc)
  * **adbsw** *&lt;"data"&gt; &lt;path&gt;* [*<b>\[Write&nbsp;a&nbsp;string&nbsp;to&nbsp;path&nbsp;through&nbsp;adb\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc)
  * **adbblkp** *adb shell ls -l /dev/block/bootdevice/by-name/* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc)
  * **adbsgdisk** *adb shell sgdisk &#8208;&#8208;print /dev/block/mmcblk0* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc)
  * **adbinfomem** *adb shell dumpsys meminfo* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc)
  * **adbemergencycalls** *adb shell setprop ril.ecclist "${@}"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc)
  * **adbemergencylist** *adb shell getprop ril.ecclist* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc)
  * **adbservices** *adb shell service list* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/shortcuts.rc)

---
> ### <span class="group_label">[sources/android_adb/syncer.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/syncer.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_adb/syncer.rc)
  ```
>  </div>
  * **adbpushsync** *&lt;local_path&gt; &lt;target_path&gt;* [*<b>\[Folders&nbsp;adb&nbsp;push&nbsp;syncer\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/syncer.rc)
  * **adbpullapks** [*<b>\[Pull&nbsp;all&nbsp;installed&nbsp;apks&nbsp;through&nbsp;adb\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/syncer.rc)

---
> ### <span class="group_label">[sources/android_adb/tools.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/tools.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/host/common.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_adb/tools.rc)
  ```
>  </div>
  * **adbscr** [*<b>\[Take&nbsp;a&nbsp;screenshot&nbsp;from&nbsp;connected&nbsp;device\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/tools.rc)
  * **adbr** [*<b>\[adb&nbsp;root&nbsp;and&nbsp;remount&nbsp;rw&nbsp;system\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/tools.rc)
  * **adbready** [*<b>\[ADB&nbsp;ready&nbsp;checker\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/tools.rc)
  * **adbro** [*<b>\[Verified&nbsp;adb&nbsp;root&nbsp;and&nbsp;remount&nbsp;rw&nbsp;system\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/tools.rc)
  * **adbsudo** [*<b>\[ADB&nbsp;sudo&nbsp;toggle&nbsp;helper\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/tools.rc)
  * **adbcmd** [*<b>\[Return&nbsp;adb&nbsp;command&nbsp;based&nbsp;on&nbsp;alias\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/tools.rc)
  * **adbrstock** [*<b>\[Stock&nbsp;ROM&nbsp;adb&nbsp;root&nbsp;access\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/tools.rc)
  * **adbwait** *[delay_secs]* [*<b>\[adb&nbsp;wait&nbsp;for&nbsp;device\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/tools.rc)
  * **adbsu** *&lt;command...&gt;* [*<b>\[Run&nbsp;on&nbsp;root&nbsp;adb&nbsp;shell&nbsp;without&nbsp;remounts\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/tools.rc)
  * **adbsur** *&lt;command...&gt;* [*<b>\[Run&nbsp;on&nbsp;root&nbsp;adb&nbsp;shell&nbsp;with&nbsp;remounts\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/tools.rc)
  * **adbco** *[ipaddress_once]* [*<b>\[Helper&nbsp;for&nbsp;adb&nbsp;network&nbsp;access\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/tools.rc)
  * **adbedit** *[file_path]* [*<b>\[Edit&nbsp;adb&nbsp;file,&nbsp;default&nbsp;on&nbsp;/system/build.prop\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/tools.rc)

---
> ### <span class="group_label">[sources/android_adb/updater.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/updater.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_adb/updater.rc)
  ```
>  </div>
  * **adbupdate** [*<b>\[adb&nbsp;binary&nbsp;update&nbsp;from&nbsp;upstream\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_adb/updater.rc)

---
</details>

<details class='group_details'>
<summary class="group_header">
#### <span class="group_category">Android &bull; </span><span class="group_label">Build Wrappers</span> ####
</summary>

> ### <span class="group_label">[sources/android_build/make.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_build/make.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_build/make.rc)
  ```
>  </div>
  * **makej** *&lt;parameters&gt;* [*<b>\[Helper&nbsp;to&nbsp;'make&nbsp;-jPROCESSORS'\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_build/make.rc)
  * **makes** *&lt;parameters&gt;* [*<b>\[Helper&nbsp;to&nbsp;'make&nbsp;-jPROCESSORS'&nbsp;with&nbsp;SCHED_BATCH\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_build/make.rc)

---
> ### <span class="group_label">[sources/android_build/target.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_build/target.rc)</span> ###
>
  * **androiddevicestarget** *[boot/system/...] [device]* [*<b>\[Devices&nbsp;targets&nbsp;mapper\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_build/target.rc)
  * **codenametotarget** *&lt;codename&gt;* [*<b>\[Codename&nbsp;to&nbsp;build&nbsp;target\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_build/target.rc)
  * **repogetdevice** [*<b>\[Detect&nbsp;device&nbsp;name&nbsp;from&nbsp;repo&nbsp;environment\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_build/target.rc)

---
</details>

<details class='group_details'>
<summary class="group_header">
#### <span class="group_category">Android &bull; </span><span class="group_label">Kernel Tools</span> ####
</summary>

> ### <span class="group_label">[sources/android_kernel/builders.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_kernel/builders.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_repo/helpers.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_kernel/builders.rc)
  ```
>  </div>
  * **makekernel** *[platform_device_to_init / clean / mrproper] [toolchain_version] [make_parameters]* [*<b>\[Kernel&nbsp;inline&nbsp;compiler\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_kernel/builders.rc)
  * **kerneldefconfig** *[platform_device]* [*<b>\[Select&nbsp;defconfig&nbsp;easily\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_kernel/builders.rc)
  * **kerneltoolchains** *[version]* [*<b>\[Select&nbsp;toolchains&nbsp;based&nbsp;on&nbsp;ARCH&nbsp;in&nbsp;Android&nbsp;build&nbsp;tree\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_kernel/builders.rc)

---
> ### <span class="group_label">[sources/android_kernel/defconfig.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_kernel/defconfig.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/host/common.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_kernel/defconfig.rc)
  ```
>  </div>
  * **makedefconf** *&lt;device_name&gt; [bool_full_config] [diff_config] [force_config=value]* [*<b>\[Advanced&nbsp;defconfig&nbsp;helper\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_kernel/defconfig.rc)
  * **kernelconfigupdater** *&lt;CONFIG_NAME=VALUE_or_# CONFIG_NAME is not set&gt;* [*<b>\[Kernel&nbsp;config&nbsp;updater\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_kernel/defconfig.rc)
  * **makedefconfset** *&lt;device_name&gt; [force_config=value]* [*<b>\[Kernel&nbsp;defconfig&nbsp;configuration&nbsp;setter\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_kernel/defconfig.rc)

---
> ### <span class="group_label">[sources/android_kernel/editors.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_kernel/editors.rc)</span> ###
>
  * **boottools** *&lt;boot.img&gt;* [*<b>\[Android&nbsp;bootimage&nbsp;editor\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_kernel/editors.rc)
  * **bootelf** *&lt;boot.img&gt;* [*<b>\[Sony&nbsp;ELF&nbsp;8960&nbsp;bootimage&nbsp;editor\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_kernel/editors.rc)

---
> ### <span class="group_label">[sources/android_kernel/helpers.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_kernel/helpers.rc)</span> ###
>
  * **makekernelinjector** *&lt;device_names&gt;* [*<b>\[Helper&nbsp;to&nbsp;makekernel&nbsp;with&nbsp;injector&nbsp;zip\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_kernel/helpers.rc)
  * **gitcpupprima** *&lt;url&gt;* [*<b>\[Git&nbsp;URL&nbsp;prima&nbsp;patch&nbsp;applier&nbsp;on&nbsp;a&nbsp;kernel\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_kernel/helpers.rc)

---
> ### <span class="group_label">[sources/android_kernel/tools.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_kernel/tools.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_adb/tools.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_build/helpers.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_build/target.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/host/common.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_release/cleaners.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_kernel/tools.rc)
  ```
>  </div>
  * **fboota** *[fastupl,flash,full,inject,mrom,push,recovery,sep,unsecure,zip]* [*<b>\[Advanced&nbsp;bootimage&nbsp;builder\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_kernel/tools.rc)
  * **fboot** *&lt;bootimage&gt;* [*<b>\[fastboot&nbsp;bootimage&nbsp;flashed\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_kernel/tools.rc)
  * **fboots** *&lt;system_img&gt;* [*<b>\[fastboot&nbsp;systemimage&nbsp;flashed\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_kernel/tools.rc)
  * **fbootr** [*<b>\[Fastboot&nbsp;reboot\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_kernel/tools.rc)
  * **bootinfo** *&lt;boot_img_file&gt;* [*<b>\[Bootimage&nbsp;structure&nbsp;and&nbsp;information&nbsp;parser\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_kernel/tools.rc)
  * **adbbootinfo** [*<b>\[Kernel&nbsp;bbootimg&nbsp;analyzer\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_kernel/tools.rc)
  * **adbfotainfo** [*<b>\[FOTA&nbsp;bbootimg&nbsp;analyzer\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_kernel/tools.rc)
  * **fbootk** *&lt;kernelpath&gt; [bool_fota]* [*<b>\[Kernel&nbsp;image&nbsp;to&nbsp;boot&nbsp;partition&nbsp;injector\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_kernel/tools.rc)
  * **frecovery** *&lt;image&gt;* [*<b>\[Flash&nbsp;recovery&nbsp;with&nbsp;fastboot\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_kernel/tools.rc)
  * **adbbootpush** *&lt;image&gt;* [*<b>\[Inject&nbsp;bootimage&nbsp;to&nbsp;partition\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_kernel/tools.rc)
  * **adbfotapush** *&lt;image&gt;* [*<b>\[Inject&nbsp;FOTA&nbsp;to&nbsp;partition\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_kernel/tools.rc)
  * **adbrecoverypush** *&lt;image&gt;* [*<b>\[Inject&nbsp;recovery&nbsp;to&nbsp;partition\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_kernel/tools.rc)
  * **kernelinjectorzip** *&lt;device&gt; &lt;kernel_file_path&gt; [kernel_sources_for_modules]* [*<b>\[Kernel&nbsp;to&nbsp;injector&nbsp;zip&nbsp;packager\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_kernel/tools.rc)
  * **bootzip** *&lt;device&gt; &lt;boot_img_path&gt; [bool_push_to_device]* [*<b>\[Bootimage&nbsp;to&nbsp;zip&nbsp;packager\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_kernel/tools.rc)
  * **makesep** *[bool_inject]* [*<b>\[Compile&nbsp;sepolicies&nbsp;clean\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_kernel/tools.rc)
  * **sepinject** *&lt;root_path&gt;* [*<b>\[Sepolicies&nbsp;files&nbsp;to&nbsp;boot&nbsp;partition&nbsp;injector\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_kernel/tools.rc)
  * **adbramdiskinject** *&lt;files_paths&gt;* [*<b>\[Ramdisk&nbsp;files&nbsp;to&nbsp;boot&nbsp;partition&nbsp;injector\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_kernel/tools.rc)
  * **bootimagedebuggable** *&lt;device_product&gt; &lt;true/false&gt;* [*<b>\[Bootimage&nbsp;build&nbsp;unsecured&nbsp;patcher\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_kernel/tools.rc)

---
</details>

<details class='group_details'>
<summary class="group_header">
#### <span class="group_category">Android &bull; </span><span class="group_label">Release Tools</span> ####
</summary>

> ### <span class="group_label">[sources/android_release/builders.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_release/builders.rc)</span> ###
>
  * **romautorelease** *&lt;device_name&gt; &lt;rom_tag&gt; [nowipe,j1/j2]* [*<b>\[Advanced&nbsp;automated&nbsp;ROM&nbsp;builder\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_release/builders.rc)
  * **autorelease** [*<b>\[Helper&nbsp;menu&nbsp;access&nbsp;to&nbsp;autorelease*&nbsp;functions\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_release/builders.rc)
  * **romlogs** *&lt;device&gt; &lt;rom&gt; [logs_count_default_200]* [*<b>\[View&nbsp;ROMs&nbsp;build&nbsp;logs&nbsp;from&nbsp;romautorelease\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_release/builders.rc)
  * **autobuild** *&lt;device&gt; [bool_nocleanram]* [*<b>\[Development&nbsp;automated&nbsp;ROM&nbsp;builder\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_release/builders.rc)

---
> ### <span class="group_label">[sources/android_release/cleaners.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_release/cleaners.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_release/cleaners.rc)
  ```
>  </div>
  * **outdevcl** *&lt;devicename&gt; [minimal/full]* [*<b>\[Advanced&nbsp;ROM&nbsp;output&nbsp;cleaner&nbsp;for&nbsp;rebuilds\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_release/cleaners.rc)
  * **outbootdevcl** *&lt;devicename&gt;* [*<b>\[ROM&nbsp;output&nbsp;cleaner&nbsp;for&nbsp;bootimage&nbsp;rebuilds\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_release/cleaners.rc)
  * **outotadevcl** *&lt;devicename&gt;* [*<b>\[ROM&nbsp;output&nbsp;cleaner&nbsp;for&nbsp;OTA&nbsp;rebuilds\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_release/cleaners.rc)
  * **outsepdevcl** *&lt;devicename&gt;* [*<b>\[ROM&nbsp;output&nbsp;cleaner&nbsp;for&nbsp;sepolicies&nbsp;rebuilds\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_release/cleaners.rc)
  * **outsystemdevcl** *&lt;devicename&gt; [bool_minimal]* [*<b>\[ROM&nbsp;output&nbsp;cleaner&nbsp;for&nbsp;system&nbsp;rebuilds\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_release/cleaners.rc)
  * **outproductdevcl** *&lt;devicename&gt;* [*<b>\[ROM&nbsp;product&nbsp;output&nbsp;cleaner&nbsp;for&nbsp;new&nbsp;builds\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_release/cleaners.rc)
  * **outcommoncl** [*<b>\[ROM&nbsp;output&nbsp;cleaner&nbsp;for&nbsp;common&nbsp;rebuilds\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_release/cleaners.rc)

---
> ### <span class="group_label">[sources/android_release/helpers.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_release/helpers.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_release/helpers.rc)
  ```
>  </div>
  * **noccache** *&lt;command...&gt;* [*<b>\[Run&nbsp;command&nbsp;without&nbsp;CCache\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_release/helpers.rc)

---
> ### <span class="group_label">[sources/android_release/packages.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_release/packages.rc)</span> ###
>
  * **signzip** *&lt;zip_to_sign&gt; [signed_output_zip]* [*<b>\[Sign&nbsp;flashable&nbsp;zip\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_release/packages.rc)
  * **signzips** *&lt;zip_1&gt; [zip_2] ...* [*<b>\[Sign&nbsp;flashable&nbsp;zips\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_release/packages.rc)
  * **signapk** *&lt;apk_to_sign&gt; [signed_output_apk]* [*<b>\[Sign&nbsp;an&nbsp;apk&nbsp;file\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_release/packages.rc)
  * **signapks** *&lt;apk_1&gt; [apk_2] ...* [*<b>\[Sign&nbsp;apk&nbsp;files\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_release/packages.rc)
  * **packzip** *&lt;files&gt;* [*<b>\[Files&nbsp;to&nbsp;flashable&nbsp;zip\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_release/packages.rc)
  * **packzippr** [*<b>\[Pack&nbsp;files&nbsp;from&nbsp;PACKAGES_RESULTS&nbsp;to&nbsp;a&nbsp;flashable&nbsp;zip\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_release/packages.rc)
  * **gitzip** *&lt;commit_sha1&gt;* [*<b>\[Git&nbsp;commit&nbsp;files&nbsp;to&nbsp;flashable&nbsp;zip\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_release/packages.rc)
  * **oeminjectorzip** *&lt;oem_image&gt;* [*<b>\[OEM&nbsp;files&nbsp;to&nbsp;flashable&nbsp;injector&nbsp;zip\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_release/packages.rc)

---
</details>

<details class='group_details'>
<summary class="group_header">
#### <span class="group_category">Android &bull; </span><span class="group_label">Repository Tools</span> ####
</summary>

> ### <span class="group_label">[sources/android_repo/builders.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/builders.rc)</span> ###
>
  * **repotwrp** *{device} [nosync,nowipe,outcl,fota,local +fotareboot]* [*<b>\[Advanced&nbsp;builder&nbsp;for&nbsp;TWRP\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/builders.rc)
  * **repomrom** *{device} [nosync,nowipe,outcl,fota,local +fotareboot]* [*<b>\[Advanced&nbsp;builder&nbsp;for&nbsp;MultiROM\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/builders.rc)

---
> ### <span class="group_label">[sources/android_repo/changelog.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/changelog.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_repo/changelog.rc)
  ```
>  </div>
  * **repochangelog** *&lt;days_count&gt; [project1_path,project2_path,...]* [*<b>\[Generate&nbsp;ROM&nbsp;changelogs\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/changelog.rc)

---
> ### <span class="group_label">[sources/android_repo/changes.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/changes.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_repo/changes.rc)
  ```
>  </div>
  * **repochanges** *["filter_projects"]* [*<b>\[Detect&nbsp;all&nbsp;repo&nbsp;projects&nbsp;differences\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/changes.rc)

---
> ### <span class="group_label">[sources/android_repo/cleaners.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/cleaners.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_repo/helpers.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_repo/cleaners.rc)
  ```
>  </div>
  * **repoclean** *[out_folder]* [*<b>\[Delete&nbsp;contents&nbsp;from&nbsp;'out'&nbsp;folder\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/cleaners.rc)
  * **repodestroy** [*<b>\[Delete&nbsp;complete&nbsp;repo&nbsp;apart&nbsp;from&nbsp;local_manifests\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/cleaners.rc)
  * **repodevclean** [*<b>\[Delete&nbsp;contents&nbsp;from&nbsp;'out/target/product'&nbsp;folder\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/cleaners.rc)
  * **repoprojectscleaner** [*<b>\[Run&nbsp;inside&nbsp;an&nbsp;Android&nbsp;repo&nbsp;root\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/cleaners.rc)
  * **repotagscleaner** [*<b>\[Run&nbsp;inside&nbsp;an&nbsp;Android&nbsp;repo&nbsp;root\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/cleaners.rc)
  * **repoheadscleaner** [*<b>\[Cleanup&nbsp;repo&nbsp;projects&nbsp;refs/&nbsp;contents\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/cleaners.rc)
  * **reposyrm** *&lt;project/relative/path&gt;* [*<b>\[Project&nbsp;repo&nbsp;sync&nbsp;with&nbsp;removal\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/cleaners.rc)
  * **reposyrmf** *&lt;project/relative/path&gt;* [*<b>\[Project&nbsp;repo&nbsp;sync&nbsp;with&nbsp;forced&nbsp;removal\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/cleaners.rc)
  * **repopathsizes** *&lt;project/relative/path&gt;* [*<b>\[Repo&nbsp;project&nbsp;paths&nbsp;sizes\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/cleaners.rc)

---
> ### <span class="group_label">[sources/android_repo/compare.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/compare.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_repo/compare.rc)
  ```
>  </div>
  * **repocomparetags** *&lt;base_tag_or_HEAD&gt; &lt;compare_tag_or_HEAD&gt;* [*<b>\[Helper&nbsp;to&nbsp;compare&nbsp;release&nbsp;tags\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/compare.rc)
  * **repocompareril** *[bool_caf]* [*<b>\[Compare&nbsp;device&nbsp;to&nbsp;hardware/{ril\|ril-caf}\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/compare.rc)

---
> ### <span class="group_label">[sources/android_repo/helpers.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/helpers.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/host/common.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_repo/cleaners.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_repo/helpers.rc)
  ```
>  </div>
  * **gettop** [*<b>\[Get&nbsp;repo&nbsp;root&nbsp;path\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/helpers.rc)
  * **croot** [*<b>\[Access&nbsp;repo&nbsp;root&nbsp;path\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/helpers.rc)
  * **repos** *&lt;device_name&gt;* [*<b>\[Prepare&nbsp;Android&nbsp;device&nbsp;environment\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/helpers.rc)
  * **reporoomserv** [*<b>\[Manifest&nbsp;and&nbsp;local_manifests&nbsp;editor\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/helpers.rc)
  * **reposy** [*<b>\[Optimized&nbsp;relevant&nbsp;repo&nbsp;sync\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/helpers.rc)
  * **reposysafe** [*<b>\[Safeguarded&nbsp;repo&nbsp;projects&nbsp;sync\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/helpers.rc)
  * **reposybranch** [*<b>\[Individual&nbsp;repo&nbsp;projects&nbsp;sync\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/helpers.rc)
  * **repoprune** [*<b>\[Apply&nbsp;repo-wide&nbsp;prune&nbsp;cleanup\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/helpers.rc)
  * **reposycl** [*<b>\[Cleaned&nbsp;optimized&nbsp;relevant&nbsp;repo&nbsp;sync\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/helpers.rc)
  * **repoforeach** [*<b>\[Run&nbsp;commands&nbsp;for&nbsp;each&nbsp;project\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/helpers.rc)
  * **repolistexclude** *[word_to_search]* [*<b>\[Get&nbsp;repo&nbsp;list&nbsp;fields&nbsp;to&nbsp;exclude&nbsp;with&nbsp;search\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/helpers.rc)

---
> ### <span class="group_label">[sources/android_repo/init.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/init.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_repo/init.rc)
  ```
>  </div>
  * **repoinitaosp** *&lt;branch_id&gt; [referenced,clean,light/shallow,example]* [*<b>\[repo&nbsp;init&nbsp;for&nbsp;AOSP\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/init.rc)
  * **repoinitlineage** *&lt;X.X&gt; [referenced,clean,light/shallow,example]* [*<b>\[repo&nbsp;init&nbsp;for&nbsp;LineageOS\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/init.rc)
  * **repoinitrr** *&lt;nougat&gt; [referenced,clean,light/shallow]* [*<b>\[repo&nbsp;init&nbsp;for&nbsp;ResurrectionRemix\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/init.rc)
  * **repoinittwrp** *&lt;twrp-{X.X}&gt; [referenced,clean,light/shallow]* [*<b>\[repo&nbsp;init&nbsp;for&nbsp;TWRP\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/init.rc)
  * **repoinitcleaner** *[clean]* [*<b>\[repo&nbsp;init&nbsp;cleaner\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/init.rc)
  * **repoinitsafecleaner** *[clean]* [*<b>\[repo&nbsp;init&nbsp;safety&nbsp;cleaner\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/init.rc)
  * **repoinit** *[bool_manually]* [*<b>\[repo&nbsp;init&nbsp;menu\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/init.rc)

---
> ### <span class="group_label">[sources/android_repo/referenced.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/referenced.rc)</span> ###
>
  * **reporefupdate** *[bool_automated]* [*<b>\[Upload&nbsp;new&nbsp;projects&nbsp;manifests\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/referenced.rc)
  * **reporefsync** *[bool_dry_run]* [*<b>\[Download&nbsp;new&nbsp;projects&nbsp;manifests\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/referenced.rc)
  * **reporefrefresh** [*<b>\[Download&nbsp;and&nbsp;upload&nbsp;new&nbsp;projects&nbsp;manifests\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/referenced.rc)
  * **reporeflinker** [*<b>\[Helper&nbsp;to&nbsp;symlink&nbsp;local_manifests&nbsp;to&nbsp;Developments\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/referenced.rc)
  * **reposwitcher** *[bool_init]* [*<b>\[Helper&nbsp;to&nbsp;switch&nbsp;between&nbsp;local_manifests_*&nbsp;folders\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/referenced.rc)

---
> ### <span class="group_label">[sources/android_repo/shortcuts.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)</span> ###
>
  * **cdd** *&lt;device_name&gt;* [*<b>\[Access&nbsp;device&nbsp;sources\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdp** *[project_name]* [*<b>\[Access&nbsp;repo&nbsp;project&nbsp;sources\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdman** [*<b>\[Access&nbsp;manifests&nbsp;path\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdlocman** [*<b>\[Access&nbsp;local&nbsp;manifests&nbsp;path\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **toout** *&lt;device_name&gt;* [*<b>\[Get&nbsp;device&nbsp;build&nbsp;output&nbsp;path\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdout** *[device_name]* [*<b>\[Access&nbsp;device&nbsp;build&nbsp;output&nbsp;path\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **getand** [*<b>\[Get&nbsp;AndroidDev&nbsp;drive\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **torompaths** *&lt;rom_name&gt; [device]* [*<b>\[Get&nbsp;ROM&nbsp;device&nbsp;variant&nbsp;path\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **pathchanged** *&lt;command&gt; &lt;parameters&gt;* [*<b>\[Run&nbsp;command&nbsp;and&nbsp;notify&nbsp;path&nbsp;changes\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **toaosp** *torompaths 'AOSP' "${1}"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **tolineage** *torompaths 'LineageOS' "${1}"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **toaospcaf** *toaosp 'AOSP' 'CAF'* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **tomultirom** *torompaths 'MultiROM'* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **torr** *torompaths 'ResurrectionRemix' "${1}"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **totwrp** *torompaths 'TWRP'* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdaosp** *cd "$(toaosp "${1}")"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdlineage** *cd "$(tolineage "${1}")"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdaospcaf** *cd "$(toaospcaf)"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdmultirom** *cd "$(tomultirom)"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdrr** *cd "$(torr "${1}")"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdtwrp** *cd "$(totwrp)"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdand** *cd "$(getand)"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cddev** *cd "$(getand)/Development/${1}"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cddevaosp** *cd "$(getand)/Development/aosp_"*"${1}"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cddevlineage** *cd "$(getand)/Development/lineage_"*"${1}"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cddevmrom** *cd "$(getand)/Development/multirom_development_sony"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cddevtwrp** *cd "$(getand)/Development/twrp_development_sony"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdprojects** *cd "$(getand)/Projects/${1}"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdref** *cd "$(getand)/References/${1}"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdrefapk** *cd "$(getand)/References/apk"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdrefdev** *cd "$(getand)/References/Devices/"${1:+*${1}}* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **adbapks** *cdrefapk; adbapkinstall* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cpaosp** *cp -fv "./${1}" "$(toaosp "${2}")/${1}"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cplineage** *cp -fv "./${1}" "$(tolineage "${2}")/${1}"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **meldaosp** *pathscompare "./${1}" "$(toaosp "${2}")/${1}"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **meldaospsony** *pathscompare "./${1}" "$(toaosp sony)/${1}"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **meldaospcaf** *pathscompare "./${1}" "$(toaospcaf)/${1}"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **meldlineage** *pathscompare "./${1}" "$(tolineage "${2}")/${1}"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **meldmrom** *pathscompare "./${1}" "$(tomultirom)/${1}"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **meldtwrp** *pathscompare "./${1}" "$(totwrp)/${1}"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **nout** *diropen "$(toout "${1}")"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdmromboot** *croot; cd ./system/extras/libbootimg/* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdmromcore** *croot; cd ./system/extras/multirom/* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdlsdk** *croot; cd ./lineage-sdk/* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdrecovery** *croot; cd ./bootable/recovery/* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)
  * **cdsepolicy** *croot; cd ./system/sepolicy/* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/shortcuts.rc)

---
> ### <span class="group_label">[sources/android_repo/tools.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/tools.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_repo/tools.rc)
  ```
>  </div>
  * **repocache** *[size_max/clean/reinit/wipe]* [*<b>\[CCache&nbsp;watcher&nbsp;and&nbsp;configuration\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_repo/tools.rc)

---
</details>

<details class='group_details'>
<summary class="group_header">
#### <span class="group_category">Android &bull; </span><span class="group_label">ROM Tools</span> ####
</summary>

> ### <span class="group_label">[sources/android_rom/helpers.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_rom/helpers.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/host/grep.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/host/common.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_rom/helpers.rc)
  ```
>  </div>
  * **librarieshunter** *&lt;binariespath&gt;* [*<b>\[Libraries&nbsp;linkage&nbsp;analyzer\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_rom/helpers.rc)
  * **librarieschecker** *&lt;prebuilts_path&gt;* [*<b>\[Unreferenced&nbsp;libraries&nbsp;analyzer\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_rom/helpers.rc)
  * **overlaycompare** *&lt;overlay_file_path&gt;* [*<b>\[Compare&nbsp;device&nbsp;overlays&nbsp;against&nbsp;sources\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_rom/helpers.rc)

---
> ### <span class="group_label">[sources/android_rom/images.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_rom/images.rc)</span> ###
>
  * **androidextractimage** *&lt;file.img&gt; &lt;output_path&gt;* [*<b>\[Android&nbsp;filesystem.img&nbsp;extractor\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_rom/images.rc)

---
> ### <span class="group_label">[sources/android_rom/projects.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_rom/projects.rc)</span> ###
>
  * **gitbranchpusher** *[y/n/d/s] [remote_url] [branch]* [*<b>\[Push&nbsp;to&nbsp;project&nbsp;specific&nbsp;branch\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_rom/projects.rc)
  * **androidprojectpaths** *&lt;owner&gt; &lt;project_name&gt;* [*<b>\[Android&nbsp;project&nbsp;remote&nbsp;paths&nbsp;list\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_rom/projects.rc)
  * **androidprojectpatcher** *&lt;owner&gt; &lt;project_name&gt; &lt;email&gt; [specific_path]* [*<b>\[Android&nbsp;project&nbsp;patcher\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_rom/projects.rc)
  * **androidprojectrebaser** *&lt;owner&gt; &lt;project_branch&gt; &lt;"project_paths::name::upstream::branch"&gt; [specific_path]* [*<b>\[Android&nbsp;project&nbsp;rebaser\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_rom/projects.rc)
  * **androidprojectforeach** *&lt;owner&gt; &lt;project_name&gt; &lt;"commands"&gt;* [*<b>\[Android&nbsp;project&nbsp;paths&nbsp;commands&nbsp;runner\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_rom/projects.rc)
  * **androidprojectsync** *&lt;owner&gt; &lt;project_name&gt;* [*<b>\[Android&nbsp;project&nbsp;paths&nbsp;repo&nbsp;syncer\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_rom/projects.rc)
  * **androidprojectungraft** *&lt;owner&gt; &lt;project_name&gt;* [*<b>\[Android&nbsp;project&nbsp;paths&nbsp;ungrafter\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_rom/projects.rc)
  * **androidprojectunshallow** *&lt;owner&gt; &lt;project_name&gt;* [*<b>\[Android&nbsp;project&nbsp;paths&nbsp;unshallower\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_rom/projects.rc)
  * **rompatcher** [*<b>\[Helper&nbsp;menu&nbsp;access&nbsp;to&nbsp;*patcher&nbsp;functions\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_rom/projects.rc)
  * **romrebaser** [*<b>\[Helper&nbsp;menu&nbsp;access&nbsp;to&nbsp;*rebaser&nbsp;functions\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/android_rom/projects.rc)

---
</details>

<details class='group_details'>
<summary class="group_header">
#### <span class="group_category">Docker &bull; </span><span class="group_label">Docker Helpers</span> ####
</summary>

> ### <span class="group_label">[sources/docker/helpers.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/docker/helpers.rc)</span> ###
>
  * **dockerrunhere** : *docker run -it -v "${PWD}/..:${PWD}/.." -w "${PWD}" &#8208;&#8208;rm* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/docker/helpers.rc)
  * **dockerimages** : *docker images &#8208;&#8208;format='{{.Repository}}:{{.Tag}}' \| sort -n* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/docker/helpers.rc)

---
</details>

<details class='group_details'>
<summary class="group_header">
#### <span class="group_category">Git &bull; </span><span class="group_label">Gerrit Tools</span> ####
</summary>

> ### <span class="group_label">[sources/gerrit/repopicks.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/gerrit/repopicks.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/gerrit/ssh.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/gerrit/repopicks.rc)
  ```
>  </div>
  * **gerritrepopicks** *&lt;change_number&gt; [branch]* [*<b>\[Gerrit&nbsp;repopicks&nbsp;automated&nbsp;extractor\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/gerrit/repopicks.rc)

---
> ### <span class="group_label">[sources/gerrit/review.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/gerrit/review.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/git/tools.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/gerrit/review.rc)
  ```
>  </div>
  * **gerritreview** *&lt;gerrit_ssh_or_http&gt; &lt;project_name_or_.&gt; &lt;github_name_or_.&gt; &lt;drafts/for/heads&gt; [branch]* [*<b>\[Gerrit&nbsp;review&nbsp;uploader\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/gerrit/review.rc)

---
> ### <span class="group_label">[sources/gerrit/ssh.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/gerrit/ssh.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/gerrit/ssh.rc)
  ```
>  </div>
  * **gerritusername** [*<b>\[Gerrit&nbsp;username&nbsp;getter\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/gerrit/ssh.rc)
  * **gerritssh** *[branch] [change_id_reverser]* [*<b>\[Advanced&nbsp;Gerrit&nbsp;SSH&nbsp;interface\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/gerrit/ssh.rc)

---
</details>

<details class='group_details'>
<summary class="group_header">
#### <span class="group_category">Git &bull; </span><span class="group_label">Development Tools</span> ####
</summary>

> ### <span class="group_label">[sources/git/cleaners.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/cleaners.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/git/config.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/git/cleaners.rc)
  ```
>  </div>
  * **gits** : *git stash* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/cleaners.rc)
  * **gitsp** : *git stash -p* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/cleaners.rc)
  * **gitspop** : *git stash pop* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/cleaners.rc)
  * **gitsu** [*<b>\[Git&nbsp;stash&nbsp;with&nbsp;untracked&nbsp;files\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/cleaners.rc)
  * **gitcleantags** *&lt;branch_to_keep&gt;* [*<b>\[Cleanup&nbsp;unrequired&nbsp;git&nbsp;tags\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/cleaners.rc)
  * **gitonebranch** *&lt;remote&gt;* [*<b>\[Git&nbsp;remove&nbsp;non-default&nbsp;remote&nbsp;branches\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/cleaners.rc)
  * **gitignoreclean** *[bool_dry_run]* [*<b>\[Cleanup&nbsp;untracked&nbsp;paths&nbsp;from&nbsp;Git&nbsp;.gitignore\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/cleaners.rc)

---
> ### <span class="group_label">[sources/git/commit.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/git/cleaners.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/git/config.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/host/common.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/git/commit.rc)
  ```
>  </div>
  * **gitshow** : *git show -M &#8208;&#8208;name-status* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitshf** : *git show -M &#8208;&#8208;pretty=fuller* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitshl** *git show &#8208;&#8208;oneline &#8208;&#8208;name-only "${1}" \| tail -n +2 \| cut -c $((1+${2:-0}))-* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitshall** *[shal1]* [*<b>\[Show&nbsp;a&nbsp;git&nbsp;commit&nbsp;with&nbsp;all&nbsp;chars\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitap** : *git add -p* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitaa** : *git add -Av* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitan** : *git add -An* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitav** : *git add -Av* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitaaf** : *git add -Afv* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitanf** : *git add -Afn* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitanp** : *git config core.fileMode false; git add -p; git config &#8208;&#8208;unset core.fileMode* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gite** *fileedit "${1}"; echo -n ' Done ? [Enter] '; read -r; git add "${1}"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitbd** : *git branch -D* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitbv** : *git fetch ${gitreviewdefault} $(git rev-parse &#8208;&#8208;abbrev-ref HEAD); git branch -vv* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitch** : *git checkout* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitcp** : *git cherry-pick* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitcpc** : *git reset; git cherry-pick &#8208;&#8208;continue* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitcpa** *for sha1 in "${@}"; do echo ''; echo "${sha1}"; git cherry-pick "${sha1}"; done* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitcpf** *git fetch "${1}" "${2}"; git cherry-pick "FETCH_HEAD~${3:-0}^..FETCH_HEAD"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitcpr** *git show "${1}" &#8208;&#8208;no-color \| sed "s#${2}#${3}#g" \| patch* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitfcp** *&lt;path&gt; [amount_of_commits]* [*<b>\[Git&nbsp;cherry-pick&nbsp;from&nbsp;path\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitc** : *git commit $(gitgpgparam)* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitce** : *git commit $(gitgpgparam) &#8208;&#8208;allow-empty* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitcs** : *git commit $(gitgpgparam) -s* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitca** : *git commit $(gitgpgparam) &#8208;&#8208;amend* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitcae** : *GIT_EDITOR="sed -i "/^#/d"" git commit $(gitgpgparam) &#8208;&#8208;amend* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitcad** : *GIT_EDITOR="sed -i "/^#/d"" git commit $(gitgpgparam) &#8208;&#8208;amend &#8208;&#8208;date="$(date -R)"* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitrevert** : *GIT_EDITOR="sed -i "/^#/d"" git revert $(gitgpgparam)* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitfix** [*<b>\[Fix&nbsp;git&nbsp;commit&nbsp;issues\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitcauthor** [*<b>\[Apply&nbsp;own&nbsp;author&nbsp;to&nbsp;commit\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitcaownership** *&lt;from_SHA1&gt;* [*<b>\[Apply&nbsp;ownership&nbsp;from&nbsp;a&nbsp;commit\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitcamarker** [*<b>\[Apply&nbsp;marker&nbsp;commit&nbsp;to&nbsp;author/committer\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitcid** [*<b>\[Apply&nbsp;commit-msg&nbsp;hook&nbsp;to&nbsp;commit\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitcidupstream** [*<b>\[Load&nbsp;commit-msg&nbsp;hook&nbsp;from&nbsp;upstream\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitec** [*<b>\[Edit&nbsp;all&nbsp;files&nbsp;from&nbsp;a&nbsp;commit\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitrh** : *git reset FETCH_HEAD &#8208;&#8208;hard* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **githd** : *git reset HEAD &#8208;&#8208;hard* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitcl** : *git reset HEAD &#8208;&#8208;hard; gitsu* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitcla** : *git cherry-pick &#8208;&#8208;abort 2&gt;/dev/null; git am &#8208;&#8208;abort 2&gt;/dev/null; git reset HEAD &#8208;&#8208;hard; gitsu* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitro** : *git reset HEAD^ &#8208;&#8208;hard* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitsl** : *git reset HEAD^; gitap; gitcae* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitrl** : *git revert HEAD -n; git commit -m "Revert"; git reset HEAD^; git add -p* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitri** : *git reset HEAD^* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitrt** : *git reset &#8208;&#8208;hard* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)
  * **gitsquashes** *&lt;commits_count&gt;* [*<b>\[Get&nbsp;formatted&nbsp;squash&nbsp;message\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/commit.rc)

---
> ### <span class="group_label">[sources/git/config.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/config.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/git/config.rc)
  ```
>  </div>
  * **githubusername** [*<b>\[GitHub&nbsp;username&nbsp;getter\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/config.rc)
  * **gitconfuser** *&lt;"name"&gt; &lt;"email"&gt;* [*<b>\[Configure&nbsp;Git&nbsp;user&nbsp;and&nbsp;email\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/config.rc)
  * **gitu** [*<b>\[Add&nbsp;and&nbsp;switch&nbsp;between&nbsp;git&nbsp;users\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/config.rc)
  * **gitconfeditor** *&lt;app_name/default&gt;* [*<b>\[Configure&nbsp;Git&nbsp;editor&nbsp;application\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/config.rc)
  * **gitconfmergetool** *&lt;app_name&gt;* [*<b>\[Configure&nbsp;Git&nbsp;merge&nbsp;tool&nbsp;handling\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/config.rc)
  * **gitconffilecrlf** *&lt;auto/detect/input/warn&gt; [bool_local]* [*<b>\[Configure&nbsp;Git&nbsp;file&nbsp;CR/LF&nbsp;EOL&nbsp;handling\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/config.rc)
  * **gitconffileperms** *&lt;detect/ignore&gt;* [*<b>\[Configure&nbsp;Git&nbsp;file&nbsp;permissions&nbsp;handling\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/config.rc)
  * **gitconfcolors** *&lt;always/auto/never&gt;* [*<b>\[Configure&nbsp;Git&nbsp;colors&nbsp;handling\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/config.rc)
  * **gitconfcommitstats** *&lt;show/quick/hide&gt;* [*<b>\[Configure&nbsp;Git&nbsp;commits&nbsp;stats&nbsp;visibility\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/config.rc)
  * **gitconfpager** *&lt;less/more/none&gt;* [*<b>\[Configure&nbsp;Git&nbsp;pager&nbsp;handling\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/config.rc)
  * **gitconfcredentials** *&lt;cache/cache &#8208;&#8208;timeout=X/store/wincred&gt;* [*<b>\[Configure&nbsp;Git&nbsp;credentials&nbsp;handling\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/config.rc)
  * **gitconfgpgkey** *&lt;gpg_key_id&gt;* [*<b>\[Configure&nbsp;Git&nbsp;GPG&nbsp;signing&nbsp;key\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/config.rc)
  * **gitconfconflictsrepeat** *&lt;enable/disable&gt;* [*<b>\[Configure&nbsp;Git&nbsp;conflicts&nbsp;repeated&nbsp;handling\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/config.rc)
  * **gitconfdiffrenames** *&lt;basic/detect/ignore&gt;* [*<b>\[Configure&nbsp;Git&nbsp;diff&nbsp;renames&nbsp;handling\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/config.rc)
  * **gitconfgpgsignature** *&lt;enable/disable&gt;* [*<b>\[Configure&nbsp;Git&nbsp;GPG&nbsp;signature&nbsp;usage\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/config.rc)
  * **gpglist** : *gpg &#8208;&#8208;list-secret-keys &#8208;&#8208;keyid-format LONG* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/config.rc)
  * **gpgsilent** : *echo "no-tty" &gt;&gt; ~/.gnupg/gpg.conf* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/config.rc)
  * **githi** : *git update-index &#8208;&#8208;assume-unchanged* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/config.rc)
  * **gitsh** : *git update-index &#8208;&#8208;no-assume-unchanged* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/config.rc)
  * **gitgpgparam** [*<b>\[Returns&nbsp;the&nbsp;GPG&nbsp;signature&nbsp;flag&nbsp;if&nbsp;enabled\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/config.rc)
  * **gitfilter** *&lt;parameters&gt;* [*<b>\[Use&nbsp;git&nbsp;commands&nbsp;with&nbsp;filters\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/config.rc)
  * **gitnofilter** *&lt;parameters&gt;* [*<b>\[Use&nbsp;git&nbsp;commands&nbsp;without&nbsp;filters\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/config.rc)

---
> ### <span class="group_label">[sources/git/fetch.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/fetch.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/git/remotes.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/git/tools.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/git/tags.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/git/fetch.rc)
  ```
>  </div>
  * **gitf** : *git fetch* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/fetch.rc)
  * **gitfor** : *gitremoteverify origin gitrao; gitfr origin* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/fetch.rc)
  * **gitfar** : *gitremoteverify $(githubusername) gitraa; gitfr $(githubusername)* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/fetch.rc)
  * **gitfprivr** : *gitfr private* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/fetch.rc)
  * **gitfu** *[remote] [branch]* [*<b>\[Git&nbsp;fetch&nbsp;from&nbsp;validated&nbsp;remote\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/fetch.rc)
  * **gitfr** *[remote] [branch]* [*<b>\[Git&nbsp;fetch&nbsp;and&nbsp;reset&nbsp;hard\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/fetch.rc)
  * **gitftr** *[remote] [branch]* [*<b>\[Git&nbsp;fetch&nbsp;with&nbsp;tags&nbsp;and&nbsp;reset&nbsp;hard\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/fetch.rc)
  * **gitfurl** *&lt;url&gt;* [*<b>\[Git&nbsp;fetch&nbsp;from&nbsp;full&nbsp;url\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/fetch.rc)
  * **gitunshallow** [*<b>\[Git&nbsp;fetch&nbsp;and&nbsp;unshallow&nbsp;project\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/fetch.rc)

---
> ### <span class="group_label">[sources/git/history.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/history.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/git/history.rc)
  ```
>  </div>
  * **gitlo** : *git log &#8208;&#8208;pretty=oneline &#8208;&#8208;abbrev-commit* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/history.rc)
  * **gitlod** : *git log &#8208;&#8208;pretty=oneline &#8208;&#8208;abbrev-commit &#8208;&#8208;* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/history.rc)
  * **gitloo** : *git log &#8208;&#8208;pretty=format:"%C(yellow)%h %Cred%ad %Creset%s" &#8208;&#8208;date=short &#8208;&#8208;all &#8208;&#8208;* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/history.rc)
  * **gitlor** : *git log &#8208;&#8208;pretty=format:"%C(yellow)%h %Cred%ad %Creset%s %Cgreen%d" &#8208;&#8208;date=short &#8208;&#8208;all &#8208;&#8208;* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/history.rc)
  * **gitlosign** : *git log &#8208;&#8208;show-signature* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/history.rc)
  * **gitlos** *&lt;path_or_.&gt; ["search string input"] [search_max_count]* [*<b>\[Search&nbsp;string&nbsp;in&nbsp;git&nbsp;history\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/history.rc)
  * **gitlc** *[SHA1]* [*<b>\[Show&nbsp;histories&nbsp;from&nbsp;a&nbsp;commit's&nbsp;files\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/history.rc)
  * **gitdi** *[SHA1]* [*<b>\[Show&nbsp;git&nbsp;differences&nbsp;status\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/history.rc)
  * **gitdiffw** : *git diff &#8208;&#8208;color-words* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/history.rc)
  * **gitdiffc** : *git diff &#8208;&#8208;color-words=.* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/history.rc)
  * **gitdfs** *&lt;sha1commit&gt;* [*<b>\[git&nbsp;diff&nbsp;status&nbsp;of&nbsp;an&nbsp;SHA1\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/history.rc)
  * **gitdf** *&lt;sha1commit&gt; &lt;filepath&gt;* [*<b>\[git&nbsp;diffs&nbsp;from&nbsp;an&nbsp;SHA1\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/history.rc)
  * **gitdiffall** [*<b>\[Show&nbsp;a&nbsp;git&nbsp;diff&nbsp;with&nbsp;all&nbsp;chars\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/history.rc)
  * **gitfindsha1** *&lt;remote/branch&gt; &lt;"title text to search"&gt;* [*<b>\[git&nbsp;search&nbsp;commit&nbsp;by&nbsp;title&nbsp;contents\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/history.rc)

---
> ### <span class="group_label">[sources/git/merge.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/merge.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/host/common.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/git/merge.rc)
  ```
>  </div>
  * **gitmt** : *git mergetool* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/merge.rc)
  * **gitmte** [*<b>\[Merge&nbsp;tool&nbsp;with&nbsp;manual&nbsp;conflicts&nbsp;resolution\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/merge.rc)
  * **gitmtr** *&lt;referenced_path&gt;* [*<b>\[Merge&nbsp;tool&nbsp;with&nbsp;reference&nbsp;project&nbsp;sources\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/merge.rc)
  * **gitmtbasic** [*<b>\[Merge&nbsp;tool&nbsp;with&nbsp;basic&nbsp;additions&nbsp;resolution\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/merge.rc)

---
> ### <span class="group_label">[sources/git/pick.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/pick.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/git/pick.rc)
  ```
>  </div>
  * **gitcpu** *&lt;githuburltocommit&gt; [branch]* [*<b>\[Git&nbsp;URL&nbsp;commit&nbsp;cherry-picker\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/pick.rc)
  * **gitmerges** *&lt;commit_sha1&gt; [count]* [*<b>\[Attempt&nbsp;to&nbsp;merge&nbsp;commit&nbsp;history\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/pick.rc)
  * **gitcpo** *&lt;branch&gt; &lt;amount_of_commits&gt;* [*<b>\[Git&nbsp;origin&nbsp;cherry-picker\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/pick.rc)
  * **gitcpup** *[url]* [*<b>\[Git&nbsp;URL&nbsp;patch&nbsp;applier\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/pick.rc)
  * **gitcpuf** *&lt;patch_file&gt;* [*<b>\[Git&nbsp;patch&nbsp;from&nbsp;file&nbsp;applier\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/pick.rc)
  * **gitcpur** *&lt;url&gt; &lt;search_text&gt; &lt;replace_text&gt;* [*<b>\[Git&nbsp;URL&nbsp;retargeted&nbsp;patch&nbsp;applier\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/pick.rc)

---
> ### <span class="group_label">[sources/git/push.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/push.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/git/stats.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/git/tools.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/git/push.rc)
  ```
>  </div>
  * **gitpf** : *git push -f* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/push.rc)
  * **gitpu** *[remote] [branch] [-y/-n/-d/-f/-t/&#8208;&#8208;tags]* [*<b>\[Git&nbsp;push&nbsp;to&nbsp;validated&nbsp;remote\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/push.rc)
  * **gitput** : *gitpu -t* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/push.rc)
  * **gitpurl** *&lt;url&gt;* [*<b>\[Git&nbsp;pull&nbsp;to&nbsp;full&nbsp;url\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/push.rc)

---
> ### <span class="group_label">[sources/git/rebase.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/rebase.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/git/remotes.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/git/stats.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/git/tools.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/git/rebase.rc)
  ```
>  </div>
  * **gitra** : *git rebase &#8208;&#8208;abort* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/rebase.rc)
  * **gitrc** : *git rebase &#8208;&#8208;continue* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/rebase.rc)
  * **gitre** : *git rebase &#8208;&#8208;edit-todo* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/rebase.rc)
  * **gitrs** : *git rebase &#8208;&#8208;skip* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/rebase.rc)
  * **gitrf** *&lt;sha1&gt;* [*<b>\[Git&nbsp;rebase&nbsp;from&nbsp;a&nbsp;given&nbsp;commit\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/rebase.rc)
  * **gitr** *[count]* [*<b>\[Git&nbsp;rebase&nbsp;the&nbsp;last&nbsp;commits\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/rebase.rc)
  * **gitrall** [*<b>\[Git&nbsp;rebase&nbsp;all&nbsp;commits\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/rebase.rc)
  * **gitrfedit** *&lt;sha1&gt;* [*<b>\[Git&nbsp;rebase&nbsp;and&nbsp;edit&nbsp;from&nbsp;a&nbsp;given&nbsp;commit\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/rebase.rc)
  * **gitredit** *[count]* [*<b>\[Git&nbsp;rebase&nbsp;and&nbsp;edit&nbsp;the&nbsp;last&nbsp;commits\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/rebase.rc)
  * **gitrbl** *[remote] [branch]* [*<b>\[Git&nbsp;rebase&nbsp;all&nbsp;local&nbsp;commits\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/rebase.rc)
  * **gitrb** *[remote] [branch]* [*<b>\[Git&nbsp;rebase&nbsp;over&nbsp;remote&nbsp;branch\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/rebase.rc)
  * **gitrbo** : *gitrb origin* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/rebase.rc)

---
> ### <span class="group_label">[sources/git/remotes.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/remotes.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/git/config.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/git/remotes.rc)
  ```
>  </div>
  * **gitrv** : *git remote -v* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/remotes.rc)
  * **gitremoteset** *&lt;remote_name&gt; &lt;remote_url&gt;* [*<b>\[Git&nbsp;remote&nbsp;setter\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/remotes.rc)
  * **gitremoteadaptset** *&lt;remote_name&gt; &lt;remote_github&gt; [prefix_removal] [bool_prefix_android] [bool_underscore_to_dash]* [*<b>\[Git&nbsp;remote&nbsp;adapter\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/remotes.rc)
  * **gitremoteverify** *&lt;remote_name&gt; "command_to_run_if_missing"* [*<b>\[Git&nbsp;remote&nbsp;verifier\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/remotes.rc)
  * **gitraa** [*<b>\[Add&nbsp;GitHub&nbsp;Username&nbsp;remote\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/remotes.rc)
  * **gitraorigin** *gitremoteset 'origin' "${1}"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/remotes.rc)
  * **gitrapriv** *gitremoteset 'private' "${1}"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/remotes.rc)

---
> ### <span class="group_label">[sources/git/stats.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/stats.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/git/config.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/git/remotes.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/git/tools.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/git/stats.rc)
  ```
>  </div>
  * **gitstat** *[remote] [branch] [stats_only]* [*<b>\[Git&nbsp;history&nbsp;with&nbsp;remote&nbsp;comparator\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/stats.rc)
  * **gitst** : *gitstat* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/stats.rc)
  * **gitsto** : *gitremoteverify origin gitrao && gitstat origin $(git rev-parse &#8208;&#8208;abbrev-ref HEAD)* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/stats.rc)
  * **gitstom** : *gitremoteverify origin gitrao && gitstat origin master* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/stats.rc)
  * **gitsta** : *gitremoteverify $(githubusername) gitraa && gitstat $(githubusername) lineage-16.0* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/stats.rc)
  * **gitstam** : *gitremoteverify $(githubusername) gitraa && gitstat $(githubusername) master* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/stats.rc)
  * **gitstg** : *gitremoteverify github false && gitstat github* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/stats.rc)
  * **gitstaosp** : *gitremoteverify aosp false && gitstat aosp master* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/stats.rc)

---
> ### <span class="group_label">[sources/git/tags.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/tags.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/git/tags.rc)
  ```
>  </div>
  * **gittagdescribe** [*<b>\[Describe&nbsp;git&nbsp;history&nbsp;relative&nbsp;to&nbsp;tags\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/tags.rc)

---
> ### <span class="group_label">[sources/git/tools.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/tools.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/git/tools.rc)
  ```
>  </div>
  * **gitgetremote** [*<b>\[Get&nbsp;git&nbsp;remote\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/tools.rc)
  * **gitgetbranch** *&lt;remote&gt;* [*<b>\[Get&nbsp;git&nbsp;branch\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/tools.rc)
  * **gitgetreporemote** [*<b>\[Get&nbsp;git&nbsp;repo&nbsp;project&nbsp;remote\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/tools.rc)
  * **gitgetrepobranch** *&lt;remote&gt;* [*<b>\[Get&nbsp;git&nbsp;repo&nbsp;project&nbsp;branch\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/git/tools.rc)

---
</details>

<details class='group_details'>
<summary class="group_header">
#### <span class="group_category">Host &bull; </span><span class="group_label">Development Tools</span> ####
</summary>

> ### <span class="group_label">[sources/host/aliases.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/aliases.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/host/aliases.rc)
  ```
>  </div>
  * **ll** : *ls -la* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/aliases.rc)

---
> ### <span class="group_label">[sources/host/binary.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/binary.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/host/grep.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/host/binary.rc)
  ```
>  </div>
  * **binaryeditor** *&lt;patternsearch&gt; [binariespath] [replacement]* [*<b>\[Binary&nbsp;files&nbsp;parser&nbsp;and&nbsp;editor\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/binary.rc)
  * **binarysearch** *&lt;patternsearch&gt; [binariespath]* [*<b>\[Binary&nbsp;files&nbsp;parser&nbsp;and&nbsp;searcher\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/binary.rc)

---
> ### <span class="group_label">[sources/host/common.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/common.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/host/common.rc)
  ```
>  </div>
  * **fileedit** *&lt;paths&gt;* [*<b>\[Files&nbsp;editor&nbsp;for&nbsp;most&nbsp;environments\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/common.rc)
  * **fe** : *fileedit* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/common.rc)
  * **fen** : *FILEEDIT_TOUCH_NEW_FILE=true fileedit* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/common.rc)
  * **diropen** *[path]* [*<b>\[Directory&nbsp;opener&nbsp;for&nbsp;most&nbsp;environments\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/common.rc)
  * **dop** : *diropen* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/common.rc)
  * **pathscompare** *&lt;path_left&gt; &lt;path_right&gt; [&#8208;&#8208;wait]* [*<b>\[Paths&nbsp;comparison&nbsp;for&nbsp;most&nbsp;environments\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/common.rc)
  * **urlopen** *&lt;url&gt;* [*<b>\[URL&nbsp;opener&nbsp;for&nbsp;most&nbsp;environments\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/common.rc)
  * **desktoppath** [*<b>\[Acquire&nbsp;desktop&nbsp;path&nbsp;for&nbsp;most&nbsp;environments\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/common.rc)
  * **cddesk** [*<b>\[Access&nbsp;desktop&nbsp;path&nbsp;for&nbsp;most&nbsp;environments\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/common.rc)
  * **processownercheck** *&lt;process_name&gt; &lt;owner&gt;* [*<b>\[Returns&nbsp;if&nbsp;a&nbsp;process&nbsp;is&nbsp;owned&nbsp;by&nbsp;someone\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/common.rc)

---
> ### <span class="group_label">[sources/host/edit.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/edit.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/host/edit.rc)
  ```
>  </div>
  * **editreplacelines** *&lt;"match_line"&gt; &lt;"to_write"&gt; &lt;"files"&gt;* [*<b>\[Edit&nbsp;by&nbsp;replacing&nbsp;lines\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/edit.rc)
  * **editreplacematch** *&lt;"match_line"&gt; &lt;"to_write"&gt; &lt;"files"&gt;* [*<b>\[Edit&nbsp;by&nbsp;replacing&nbsp;matches\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/edit.rc)
  * **editremovelines** *&lt;"match_line"&gt; &lt;"files"&gt;* [*<b>\[Edit&nbsp;by&nbsp;removing&nbsp;lines\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/edit.rc)
  * **editremovematch** *&lt;"match_line"&gt; &lt;"files"&gt;* [*<b>\[Edit&nbsp;by&nbsp;removing&nbsp;matches\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/edit.rc)
  * **editremovetrailingspaces** *&lt;"files"&gt;* [*<b>\[Edit&nbsp;by&nbsp;removing&nbsp;trailing&nbsp;spaces\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/edit.rc)
  * **editremoveupto** *&lt;"match_line"&gt; &lt;"files"&gt;* [*<b>\[Edit&nbsp;by&nbsp;removing&nbsp;lines&nbsp;up&nbsp;to&nbsp;first&nbsp;match\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/edit.rc)
  * **editremovefrom** *&lt;"match_line"&gt; &lt;"files"&gt;* [*<b>\[Edit&nbsp;by&nbsp;removing&nbsp;lines&nbsp;from&nbsp;first&nbsp;match\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/edit.rc)
  * **editinsertabove** *&lt;"match_line"&gt; &lt;"to_insert"&gt; &lt;"files"&gt;* [*<b>\[Edit&nbsp;by&nbsp;inserting&nbsp;above\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/edit.rc)
  * **editinsertbelow** *&lt;"match_line"&gt; &lt;"to_insert"&gt; &lt;"files"&gt;* [*<b>\[Edit&nbsp;by&nbsp;inserting&nbsp;below\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/edit.rc)
  * **editreplacemultiline** *&lt;"match_first"&gt; &lt;"match_last"&gt; &lt;"replace"&gt; &lt;"files"&gt;* [*<b>\[Edit&nbsp;by&nbsp;replacing&nbsp;multiple&nbsp;lines\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/edit.rc)
  * **edittrimoutput** *&lt;"files"&gt;* [*<b>\[Edit&nbsp;by&nbsp;triming&nbsp;output&nbsp;line&nbsp;rewrites\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/edit.rc)
  * **fileschemesorter** *&lt;file_to_sort&gt; &lt;file_reference&gt;* [*<b>\[Sort&nbsp;file&nbsp;against&nbsp;scheme&nbsp;file\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/edit.rc)

---
> ### <span class="group_label">[sources/host/find.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/find.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/host/find.rc)
  ```
>  </div>
  * **findn** : *find -name* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/find.rc)
  * **findhidden** *[path] [depth]* [*<b>\[Find&nbsp;hidden&nbsp;files&nbsp;in&nbsp;a&nbsp;path\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/find.rc)
  * **findfilteredprojectfiles** *[path] [params]* [*<b>\[Find&nbsp;filtered&nbsp;project&nbsp;files\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/find.rc)
  * **findnewer** *&lt;20160123&gt;* [*<b>\[Search&nbsp;files&nbsp;newer&nbsp;than&nbsp;a&nbsp;date\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/find.rc)

---
> ### <span class="group_label">[sources/host/grep.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/grep.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/host/find.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/host/common.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/host/grep.rc)
  ```
>  </div>
  * **g** *[inputs]* [*<b>\[Grep&nbsp;through&nbsp;sources\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/grep.rc)
  * **gb** *[inputs]* [*<b>\[Grep&nbsp;through&nbsp;binaries\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/grep.rc)
  * **gs** *[inputs]* [*<b>\[Grep&nbsp;through&nbsp;sources&nbsp;and&nbsp;binaries\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/grep.rc)
  * **gce** *&lt;inputs&gt;* [*<b>\[Grep&nbsp;and&nbsp;edit&nbsp;through&nbsp;sources&nbsp;and&nbsp;binaries\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/grep.rc)
  * **gck** *[inputs]* [*<b>\[Grep&nbsp;through&nbsp;kernel&nbsp;configurations\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/grep.rc)
  * **gcs** *[inputs]* [*<b>\[Grep&nbsp;through&nbsp;all&nbsp;code&nbsp;sources\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/grep.rc)
  * **gca** *[inputs]* [*<b>\[Grep&nbsp;through&nbsp;all&nbsp;build&nbsp;makefiles\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/grep.rc)
  * **gcmanifest** *[inputs]* [*<b>\[Grep&nbsp;through&nbsp;Android&nbsp;Manifests\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/grep.rc)
  * **gcrc** *[inputs]* [*<b>\[Grep&nbsp;through&nbsp;Android&nbsp;.rc&nbsp;files\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/grep.rc)
  * **gcsep** *[inputs]* [*<b>\[Grep&nbsp;through&nbsp;Android&nbsp;sepolicies\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/grep.rc)
  * **gcxml** *[inputs]* [*<b>\[Grep&nbsp;through&nbsp;Android&nbsp;.xml&nbsp;files\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/grep.rc)
  * **gccontexts** *[inputs]* [*<b>\[Grep&nbsp;through&nbsp;Android&nbsp;sepolicies&nbsp;contexts\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/grep.rc)
  * **gcdocker** *[inputs]* [*<b>\[Grep&nbsp;through&nbsp;Docker&nbsp;files\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/grep.rc)
  * **gcgitlabci** *[inputs]* [*<b>\[Grep&nbsp;through&nbsp;GitLab&nbsp;CI&nbsp;files\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/grep.rc)
  * **grepi** : *grep -ai* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/grep.rc)
  * **gcmodules** *[path]* [*<b>\[List&nbsp;all&nbsp;LOCAL_MODULE&nbsp;elements\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/grep.rc)
  * **gcphony** [*<b>\[List&nbsp;all&nbsp;PHONY&nbsp;rules\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/grep.rc)
  * **stringsgetall** *[params]* [*<b>\[Run&nbsp;strings&nbsp;command&nbsp;based&nbsp;on&nbsp;host&nbsp;variants\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/grep.rc)

---
> ### <span class="group_label">[sources/host/linux.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/linux.rc)</span> ###
>
  * **toclip** *xclip -selection c* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/linux.rc)
  * **rsynca** *&lt;path1&gt; &lt;path2&gt;* [*<b>\[Mirror&nbsp;a&nbsp;path&nbsp;to&nbsp;another\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/linux.rc)
  * **rsyncf** *&lt;path1&gt; &lt;path2&gt;* [*<b>\[Mirror&nbsp;a&nbsp;path&nbsp;to&nbsp;another&nbsp;based&nbsp;on&nbsp;size&nbsp;only\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/linux.rc)
  * **pcinfo** : *inxi -Fxz* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/linux.rc)
  * **cpioext** *&lt;cpio_file_to_extract&gt;* [*<b>\[Extract&nbsp;cpio&nbsp;file\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/linux.rc)
  * **videoresize** *&lt;video_file&gt;* [*<b>\[Resize&nbsp;video&nbsp;dimensions\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/linux.rc)
  * **disableautomount** [*<b>\[Linux&nbsp;USB&nbsp;automount&nbsp;disabler\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/linux.rc)
  * **reownas** *[other_user_name]* [*<b>\[Reown&nbsp;current&nbsp;folder&nbsp;recursively\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/linux.rc)
  * **diffbin** *&lt;binary_left&gt; &lt;binary_right&gt; [first_n_lines]* [*<b>\[Compare&nbsp;binary&nbsp;files\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/linux.rc)
  * **drivespeedtest** *&lt;test_file_path&gt;* [*<b>\[Run&nbsp;drive&nbsp;write&nbsp;speed&nbsp;test\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/linux.rc)
  * **mtpmountdisable** [*<b>\[Disable&nbsp;MTP&nbsp;automount\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/linux.rc)
  * **networkrestart** [*<b>\[Restart&nbsp;network&nbsp;manager\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/linux.rc)
  * **tmpclean** [*<b>\[Cleanup&nbsp;/tmp&nbsp;from&nbsp;old&nbsp;leftovers\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/linux.rc)
  * **isdone** : *notify-send "Process execution finished !"* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/linux.rc)
  * **topcpu** : *top -o %CPU* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/linux.rc)
  * **topmem** : *top -o %MEM* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/linux.rc)

---
> ### <span class="group_label">[sources/host/network.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/network.rc)</span> ###
>
  * **netspeed** [*<b>\[Display&nbsp;network&nbsp;speeds\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/network.rc)
  * **netspeedtest** [*<b>\[Run&nbsp;SpeedTest&nbsp;client\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/network.rc)
  * **getremoteip** [*<b>\[Get&nbsp;remote&nbsp;ip&nbsp;through&nbsp;ipecho.net\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/network.rc)

---
> ### <span class="group_label">[sources/host/pushbullet.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/pushbullet.rc)</span> ###
>
  * **pushb** *[message]* [*<b>\[Pushbullet&nbsp;notification&nbsp;helper\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/pushbullet.rc)
  * **pushbsizes** *&lt;paths&gt;* [*<b>\[Path&nbsp;sizes&nbsp;in&nbsp;Pushbullet&nbsp;notification\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/pushbullet.rc)

---
> ### <span class="group_label">[sources/host/terminal.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/terminal.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/host/common.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/host/terminal.rc)
  ```
>  </div>
  * **shconfig** [*<b>\[Get&nbsp;~/.&lt;shell&gt;rc&nbsp;configuration\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/terminal.rc)
  * **shup** [*<b>\[Reload&nbsp;~/.&lt;shell&gt;rc&nbsp;configuration\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/terminal.rc)
  * **she** [*<b>\[Edit&nbsp;~/.&lt;shell&gt;rc&nbsp;configuration\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/terminal.rc)
  * **shpath** [*<b>\[Shell&nbsp;path&nbsp;getter\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/terminal.rc)
  * **shminimal** [*<b>\[Shell&nbsp;with&nbsp;SH_MINIMAL&nbsp;defined\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/terminal.rc)
  * **cls** [*<b>\[Clean&nbsp;terminal&nbsp;screen\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/terminal.rc)

---
> ### <span class="group_label">[sources/host/tools.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/tools.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/host/edit.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/host/tools.rc)
  ```
>  </div>
  * **haste** *&lt;file&gt; or \| haste* [*<b>\[Share&nbsp;hastebin&nbsp;logs\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/tools.rc)
  * **pbin** *&lt;file&gt; or \| pbin* [*<b>\[Share&nbsp;Pastebin&nbsp;logs\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/tools.rc)
  * **pbinperm** : *PASTEBIN_EXPIRE=N pbin* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/tools.rc)
  * **dogbin** *&lt;file&gt; or \| dogbin* [*<b>\[Share&nbsp;dogbin&nbsp;logs\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/tools.rc)
  * **remotescript** *&lt;url&gt; [bool_automated]* [*<b>\[Remote&nbsp;script&nbsp;launcher&nbsp;with&nbsp;confirmations\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/tools.rc)
  * **buildlock** *&lt;command...&gt;* [*<b>\[Mutex-locked&nbsp;command&nbsp;execution\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/tools.rc)
  * **wip** *[commands to store]* [*<b>\[Work&nbsp;in&nbsp;progress&nbsp;commands&nbsp;to&nbsp;store&nbsp;and&nbsp;use\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/host/tools.rc)

---
</details>

<details class='group_details'>
<summary class="group_header">
#### <span class="group_category">SQLite &bull; </span><span class="group_label">Development Tools</span> ####
</summary>

> ### <span class="group_label">[sources/sqlite/converter.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/sqlite/converter.rc)</span> ###
>
  * **sqlite2csv** *&lt;.sqlite&gt; &lt;output_dir&gt;* [*<b>\[Convert&nbsp;SQLite&nbsp;database&nbsp;to&nbsp;.csv&nbsp;files\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/sqlite/converter.rc)

---
</details>

<details class='group_details'>
<summary class="group_header">
#### <span class="group_category">SSH &bull; </span><span class="group_label">Server Tools</span> ####
</summary>

> ### <span class="group_label">[sources/ssh/remote.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/ssh/remote.rc)</span> ###
>
  * **sshremote** [*<b>\[Get&nbsp;the&nbsp;configured&nbsp;SSH&nbsp;target\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/ssh/remote.rc)
  * **sshserv** : *ssh $(sshremote)* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/ssh/remote.rc)
  * **sshsync** *&lt;up/down&gt; &lt;local_path&gt; &lt;remote_path&gt; [params]* [*<b>\[Mirror&nbsp;remote&nbsp;server&nbsp;folder\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/ssh/remote.rc)

---
</details>

<details class='group_details'>
<summary class="group_header">
#### <span class="group_category">Files &bull; </span><span class="group_label">Uploads Helpers</span> ####
</summary>

> ### <span class="group_label">[sources/uploads/basketbuild.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/uploads/basketbuild.rc)</span> ###
>
  * **uploadbasketbuild** *&lt;file_path&gt; [target_folder]* [*<b>\[File&nbsp;to&nbsp;BasketBuild&nbsp;server&nbsp;uploader\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/uploads/basketbuild.rc)
  * **downloadbasketbuild** *&lt;remote_path&gt;* [*<b>\[Download&nbsp;from&nbsp;BasketBuild\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/uploads/basketbuild.rc)
  * **uploadprivatebasketbuild** *&lt;device_name&gt;* [*<b>\[Upload&nbsp;to&nbsp;private&nbsp;BasketBuild\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/uploads/basketbuild.rc)
  * **syncbasketbuild** *&lt;local_path&gt; &lt;remote_path&gt; &lt;&#8208;&#8208;download/&#8208;&#8208;upload&gt;* [*<b>\[Folder&nbsp;with&nbsp;BasketBuild&nbsp;server&nbsp;syncer\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/uploads/basketbuild.rc)

---
> ### <span class="group_label">[sources/uploads/common.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/uploads/common.rc)</span> ###
>
  * **fileupl** *&lt;file_path&gt; [target_folder]* [*<b>\[File&nbsp;to&nbsp;release&nbsp;server&nbsp;uploader\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/uploads/common.rc)
  * **fileget** *&lt;remote_path&gt; [boot_remove_remote]* [*<b>\[File&nbsp;from&nbsp;release&nbsp;server&nbsp;downloader\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/uploads/common.rc)
  * **fastupl** *&lt;file_path&gt; [none/zip/bootimage]* [*<b>\[Fast&nbsp;private&nbsp;file&nbsp;to&nbsp;server&nbsp;uploader\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/uploads/common.rc)

---
> ### <span class="group_label">[sources/uploads/ftp.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/uploads/ftp.rc)</span> ###
>
  * **uploadftp** *&lt;file_path&gt; [target_folder] [uploadftp_variant]* [*<b>\[File&nbsp;to&nbsp;FTP&nbsp;server&nbsp;uploader\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/uploads/ftp.rc)
  * **downloadftp** *&lt;remote_path&gt; [uploadftp_variant]* [*<b>\[Download&nbsp;from&nbsp;FTP\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/uploads/ftp.rc)
  * **syncftp** *&lt;local_path&gt; &lt;remote_path&gt; &lt;&#8208;&#8208;download/&#8208;&#8208;upload&gt; [uploadftp_variant]* [*<b>\[Folder&nbsp;with&nbsp;FTP&nbsp;server&nbsp;syncer\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/uploads/ftp.rc)

---
> ### <span class="group_label">[sources/uploads/helpers.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/uploads/helpers.rc)</span> ###
>
  * **devuplboot** *&lt;device&gt;* [*<b>\[Upload&nbsp;ROM&nbsp;bootimage\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/uploads/helpers.rc)
  * **devuplrom** *&lt;device&gt; [folder_path]* [*<b>\[Upload&nbsp;ROM&nbsp;build\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/uploads/helpers.rc)
  * **pushbrom** *&lt;device_name&gt; [rom_name]* [*<b>\[Notify&nbsp;build&nbsp;success\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/uploads/helpers.rc)
  * **makep** *&lt;parameters&gt;* [*<b>\[Use&nbsp;"makes"&nbsp;with&nbsp;Pushbullet&nbsp;notification\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/uploads/helpers.rc)

---
> ### <span class="group_label">[sources/uploads/local.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/uploads/local.rc)</span> ###
>
  * **androidfilesadd** *&lt;file_path&gt; &lt;target_folder&gt;* [*<b>\[Add&nbsp;file&nbsp;to&nbsp;AndroidFiles\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/uploads/local.rc)
  * **androidfilessync** *&lt;&#8208;&#8208;upload/&#8208;&#8208;download&gt;* [*<b>\[Sync&nbsp;AndroidFiles&nbsp;folder\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/uploads/local.rc)
  * **androidfilesdownload** : *androidfilessync &#8208;&#8208;download* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/uploads/local.rc)
  * **androidfilesupload** : *androidfilessync &#8208;&#8208;upload* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/uploads/local.rc)
  * **androidfilescd** : *cd "${ANDROID_FILES_PATH}/"* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/uploads/local.rc)
  * **androidfilesopen** [*<b>\[Open&nbsp;AndroidFiles&nbsp;folder\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/uploads/local.rc)

---
> ### <span class="group_label">[sources/uploads/mega.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/uploads/mega.rc)</span> ###
>
  * **uploadmega** *&lt;file_path&gt; [target_folder]* [*<b>\[Upload&nbsp;to&nbsp;MEGA.nz\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/uploads/mega.rc)
  * **downloadmega** *&lt;remote_path&gt; [boot_remove_remote]* [*<b>\[Download&nbsp;from&nbsp;MEGA.nz\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/uploads/mega.rc)
  * **uploadprivatemega** *&lt;device_name&gt;* [*<b>\[Upload&nbsp;to&nbsp;private&nbsp;MEGA.nz\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/sources/uploads/mega.rc)

---
</details>

<details class='group_details'>
<summary class="group_header">
#### <span class="group_category">Extensions &bull; </span><span class="group_label">Build Wrappers</span> ####
</summary>

> ### <span class="group_label">[extensions/android_build/make.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_build/make.rc)</span> ###
>
  * **makei** : *adbi makes* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_build/make.rc)
  * **makel** : *adbil makes* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_build/make.rc)
  * **makez** *adbil makes "${@}"; packzippr* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_build/make.rc)

---
</details>

<details class='group_details'>
<summary class="group_header">
#### <span class="group_category">Extensions &bull; </span><span class="group_label">Android ROM Helpers</span> ####
</summary>

> ### <span class="group_label">[extensions/android_rom/aicp.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_rom/aicp.rc)</span> ###
>
  * **gitcpaicp** [*<b>\[Automated&nbsp;upstream&nbsp;to&nbsp;AICP&nbsp;device&nbsp;merger\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_rom/aicp.rc)

---
> ### <span class="group_label">[extensions/android_rom/aospcaf.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_rom/aospcaf.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_rom/projects.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/extensions/android_rom/aospcaf.rc)
  ```
>  </div>
  * **aospcafpatcher** *[specific_paths]* [*<b>\[AOSP-CAF&nbsp;Patcher\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_rom/aospcaf.rc)

---
> ### <span class="group_label">[extensions/android_rom/gerrit.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_rom/gerrit.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/gerrit/review.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/gerrit/ssh.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/extensions/android_rom/gerrit.rc)
  ```
>  </div>
  * **gitpr** : *gerritreview ssh://$(gerritusername)@review.lineageos.org:29418 LineageOS . for* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_rom/gerrit.rc)
  * **gitprh** : *gerritreview http://review.lineageos.org LineageOS . for* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_rom/gerrit.rc)
  * **gitpr14** : *gerritreview ssh://$(gerritusername)@review.lineageos.org:29418 LineageOS . for cm-14.1* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_rom/gerrit.rc)
  * **gitpr15** : *gerritreview ssh://$(gerritusername)@review.lineageos.org:29418 LineageOS . for lineage-15.1* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_rom/gerrit.rc)
  * **gitpr16** : *gerritreview ssh://$(gerritusername)@review.lineageos.org:29418 LineageOS . for lineage-16.0* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_rom/gerrit.rc)
  * **gitpg** : *gerritreview ssh://$(gerritusername)@review.lineageos.org:29418 LineageOS . heads* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_rom/gerrit.rc)
  * **gitpgh** : *gerritreview http://review.lineageos.org LineageOS . heads* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_rom/gerrit.rc)
  * **gitprg** : *gitpr; gitpg* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_rom/gerrit.rc)
  * **gitprgy** : *echo -n "ynyn" \| gitpr; echo -n "yny" \| gitpg* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_rom/gerrit.rc)
  * **gitpraosp** : *gerritreview https://android.googlesource.com aosp . for* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_rom/gerrit.rc)
  * **gitpraospma** : *gerritreview https://android.googlesource.com aosp . for master* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_rom/gerrit.rc)
  * **gitprdaosp** : *gerritreview https://android.googlesource.com aosp . drafts* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_rom/gerrit.rc)
  * **gitprdaospma** : *gerritreview https://android.googlesource.com aosp . drafts master* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_rom/gerrit.rc)
  * **gitpraicp** : *gerritreview ssh://$(gerritusername)@gerrit.aicp-rom.com:29418 AICP . for n7.1* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_rom/gerrit.rc)
  * **gitprhaicp** : *gerritreview http://gerrit.aicp-rom.com AICP . for n7.1* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_rom/gerrit.rc)
  * **gitprdaicp** : *gerritreview ssh://$(gerritusername)@gerrit.aicp-rom.com:29418 AICP . drafts n7.1* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_rom/gerrit.rc)
  * **gitprdhaicp** : *gerritreview http://gerrit.aicp-rom.com AICP . drafts n7.1* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_rom/gerrit.rc)
  * **gitpgaicp** : *gerritreview ssh://$(gerritusername)@gerrit.aicp-rom.com:29418 AICP . heads n7.1* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_rom/gerrit.rc)
  * **gitpghaicp** : *gerritreview http://gerrit.aicp-rom.com AICP . heads n7.1* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_rom/gerrit.rc)
  * **gitprgaicp** : *gitpraicp; gitpgaicp* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_rom/gerrit.rc)
  * **gitprghaicp** : *gitprhaicp; gitpghaicp* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_rom/gerrit.rc)
  * **gitprtwrp** : *gerritreview ssh://$(gerritusername)@gerrit.twrp.me:29418 . TeamWin for android-6.0* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_rom/gerrit.rc)
  * **gitprdtwrp** : *gerritreview ssh://$(gerritusername)@gerrit.twrp.me:29418 . TeamWin drafts android-6.0* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_rom/gerrit.rc)

---
> ### <span class="group_label">[extensions/android_rom/lineageoms.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_rom/lineageoms.rc)</span> ###
>
  * **lineageomspatcher** [*<b>\[LineageOMS&nbsp;Patcher\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_rom/lineageoms.rc)

---
> ### <span class="group_label">[extensions/android_rom/lineageos.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_rom/lineageos.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/host/common.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/extensions/android_rom/lineageos.rc)
  ```
>  </div>
  * **lineagewebjekyll** *[bool_install]* [*<b>\[Jekyll&nbsp;web&nbsp;helper\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_rom/lineageos.rc)
  * **lineagecvetracker** *[bool_install]* [*<b>\[CVE&nbsp;tracker&nbsp;instance&nbsp;helper\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_rom/lineageos.rc)

---
> ### <span class="group_label">[extensions/android_rom/remotes.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_rom/remotes.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/git/config.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/git/remotes.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/extensions/android_rom/remotes.rc)
  ```
>  </div>
  * **gitrao** [*<b>\[Add&nbsp;LineageOS&nbsp;origin&nbsp;remote\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_rom/remotes.rc)
  * **gitraos** [*<b>\[Add&nbsp;sonyxperiadev&nbsp;origin&nbsp;remote\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_rom/remotes.rc)
  * **gitrap** [*<b>\[Development&nbsp;projects&nbsp;selector\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/android_rom/remotes.rc)

---
</details>

<details class='group_details'>
<summary class="group_header">
#### <span class="group_category">Extensions &bull; </span><span class="group_label">Byobu Helpers</span> ####
</summary>

> ### <span class="group_label">[extensions/byobu/helpers.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/byobu/helpers.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/extensions/byobu/helpers.rc)
  ```
>  </div>
  * **byobusessionscleanup** [*<b>\[Exit&nbsp;all&nbsp;unattached&nbsp;byobu&nbsp;sessions\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/byobu/helpers.rc)

---
</details>

<details class='group_details'>
<summary class="group_header">
#### <span class="group_category">Extensions &bull; </span><span class="group_label">Linux Host</span> ####
</summary>

> ### <span class="group_label">[extensions/linux/cleaners.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/linux/cleaners.rc)</span> ###
>
  * **cleanram** [*<b>\[RAM&nbsp;caches&nbsp;cleanup\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/linux/cleaners.rc)
  * **cleanrambuild** [*<b>\[RAM&nbsp;caches&nbsp;cleanup\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/linux/cleaners.rc)
  * **cleanramkill** *[bool_cleanram]* [*<b>\[Complete&nbsp;RAM&nbsp;cleanup&nbsp;including&nbsp;"java"\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/linux/cleaners.rc)

---
> ### <span class="group_label">[extensions/linux/rpm.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/linux/rpm.rc)</span> ###
>
  * **rpmfindlist** [*<b>\[Find&nbsp;all&nbsp;.rpm&nbsp;files&nbsp;and&nbsp;list&nbsp;contents\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/linux/rpm.rc)
  * **rpmfindstorage** [*<b>\[Find&nbsp;RPM&nbsp;packages&nbsp;storage&nbsp;sorted&nbsp;usage\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/linux/rpm.rc)

---
> ### <span class="group_label">[extensions/linux/virtualbox.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/linux/virtualbox.rc)</span> ###
>
  * **virtualboxroot** [*<b>\[Launch&nbsp;VirtualBox&nbsp;as&nbsp;root\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/linux/virtualbox.rc)
  * **virtualboxmodulessign** [*<b>\[Sign&nbsp;VirtualBox&nbsp;modules\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/linux/virtualbox.rc)

---
</details>

<details class='group_details'>
<summary class="group_header">
#### <span class="group_category">Extensions &bull; </span><span class="group_label">MEGA Storage</span> ####
</summary>

> ### <span class="group_label">[extensions/mega/mirror.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/mega/mirror.rc)</span> ###
>
  * **megamirror** *&lt;local_folder&gt; &lt;remote_folder&gt; &lt;&#8208;&#8208;upload/&#8208;&#8208;download&gt; [&#8208;&#8208;copy,-y/-n]* [*<b>\[MEGA&nbsp;mirror&nbsp;syncer\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/mega/mirror.rc)

---
> ### <span class="group_label">[extensions/mega/reload.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/mega/reload.rc)</span> ###
>
  * **meganzreload** [*<b>\[Reload&nbsp;Mega.nz&nbsp;account&nbsp;and&nbsp;keys\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/mega/reload.rc)

---
</details>

<details class='group_details'>
<summary class="group_header">
#### <span class="group_category">Extensions &bull; </span><span class="group_label">Sony MSM8960</span> ####
</summary>

> ### <span class="group_label">[extensions/sony_msm8960/aosp_sony8960.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8960/aosp_sony8960.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_rom/projects.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/extensions/sony_msm8960/aosp_sony8960.rc)
  ```
>  </div>
  * **aospsony8960npatcher** *[specific_paths]* [*<b>\[AOSP&nbsp;Sony&nbsp;8960&nbsp;Nougat&nbsp;Patcher\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8960/aosp_sony8960.rc)
  * **aospsony8960opatcher** *[specific_paths]* [*<b>\[AOSP&nbsp;Sony&nbsp;8960&nbsp;O&nbsp;Patcher\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8960/aosp_sony8960.rc)
  * **aospsony8960omr1patcher** *[specific_paths]* [*<b>\[AOSP&nbsp;Sony&nbsp;8960&nbsp;O&nbsp;MR1&nbsp;Patcher\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8960/aosp_sony8960.rc)
  * **aospsony8960ppatcher** *[specific_paths]* [*<b>\[AOSP&nbsp;Sony&nbsp;8960&nbsp;P&nbsp;Patcher\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8960/aosp_sony8960.rc)
  * **aospsony8960qpatcher** *[specific_paths]* [*<b>\[AOSP&nbsp;Sony&nbsp;8960&nbsp;Q&nbsp;Patcher\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8960/aosp_sony8960.rc)
  * **aospsony8960masterpatcher** *[specific_paths]* [*<b>\[AOSP&nbsp;Sony&nbsp;8960&nbsp;Master&nbsp;Patcher\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8960/aosp_sony8960.rc)

---
> ### <span class="group_label">[extensions/sony_msm8960/autorelease.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8960/autorelease.rc)</span> ###
>
  * **autoreleaseaospsony8960o** *[devices]* [*<b>\[Automated&nbsp;AOSP&nbsp;Oreo&nbsp;Sony&nbsp;8960&nbsp;releaser\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8960/autorelease.rc)
  * **autoreleaseaospsony8960p** *[devices]* [*<b>\[Automated&nbsp;AOSP&nbsp;Oreo&nbsp;Sony&nbsp;8960&nbsp;releaser\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8960/autorelease.rc)
  * **autoreleaselineagesony8960o** *[devices]* [*<b>\[Automated&nbsp;LineageOS&nbsp;Oreo&nbsp;Sony&nbsp;8960&nbsp;releaser\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8960/autorelease.rc)
  * **autoreleaselineagesony8960p** *[devices]* [*<b>\[Automated&nbsp;LineageOS&nbsp;Pie&nbsp;Sony&nbsp;8960&nbsp;releaser\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8960/autorelease.rc)

---
> ### <span class="group_label">[extensions/sony_msm8960/lineageos.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8960/lineageos.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_rom/projects.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/extensions/sony_msm8960/lineageos.rc)
  ```
>  </div>
  * **lineagesony8960patcher** *[specific_paths]* [*<b>\[LineageOS&nbsp;8960&nbsp;Oreo&nbsp;Patcher\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8960/lineageos.rc)
  * **lineagesony8960rebaser** *[specific_paths]* [*<b>\[LineageOS&nbsp;Devices&nbsp;Rebaser\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8960/lineageos.rc)

---
> ### <span class="group_label">[extensions/sony_msm8960/release.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8960/release.rc)</span> ###
>
  * **autoreleasemultiromsony8960** *[devices]* [*<b>\[Automated&nbsp;MultiROM&nbsp;Sony&nbsp;8960&nbsp;releaser\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8960/release.rc)
  * **autoreleasetwrpsony8960** *[devices]* [*<b>\[Automated&nbsp;TWRP&nbsp;Sony&nbsp;8960&nbsp;releaser\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8960/release.rc)

---
> ### <span class="group_label">[extensions/sony_msm8960/shortcuts.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8960/shortcuts.rc)</span> ###
>
  * **cdspker** *cd "$(pwd \| sed 's/(.*)Android([^/]*/[^/]*).*/1Android2/kernel/sony/msm8960t/g')"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8960/shortcuts.rc)
  * **cdblueker** *cd "$(pwd \| sed 's/(.*)Android([^/]*/[^/]*).*/1Android2/kernel/sony/msm8x60/g')"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8960/shortcuts.rc)
  * **cdvendsony** *cd "$(pwd \| sed 's/(.*)Android([^/]*/[^/]*).*/1Android2/vendor/sony/g')"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8960/shortcuts.rc)
  * **meldblue** *pathscompare "./${1}" "../blue-common/${1}"* [*<b>(Inline)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8960/shortcuts.rc)

---
</details>

<details class='group_details'>
<summary class="group_header">
#### <span class="group_category">Extensions &bull; </span><span class="group_label">Sony MSM8996</span> ####
</summary>

> ### <span class="group_label">[extensions/sony_msm8996/aosp_sonysodp.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8996/aosp_sonysodp.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_rom/projects.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/extensions/sony_msm8996/aosp_sonysodp.rc)
  ```
>  </div>
  * **aospsonysodppatcher** *[specific_paths]* [*<b>\[AOSP&nbsp;SONY&nbsp;SODP&nbsp;Patcher\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8996/aosp_sonysodp.rc)
  * **aospsonysodprebaser** *&lt;master/n-mr1&gt; [specific_paths]* [*<b>\[AOSP&nbsp;SONY&nbsp;SODP&nbsp;Rebaser\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8996/aosp_sonysodp.rc)
  * **sonyaospkernelupdate** *&lt;device_name&gt;* [*<b>\[Automated&nbsp;Sony&nbsp;SODP&nbsp;kernel&nbsp;updater&nbsp;for&nbsp;AOSP\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8996/aosp_sonysodp.rc)

---
> ### <span class="group_label">[extensions/sony_msm8996/autorelease.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8996/autorelease.rc)</span> ###
>
  * **autoreleaseaospsodp8996** *[devices]* [*<b>\[Automated&nbsp;AOSP&nbsp;Sony&nbsp;SODP&nbsp;8996&nbsp;releaser\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8996/autorelease.rc)

---
> ### <span class="group_label">[extensions/sony_msm8996/builders.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8996/builders.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_kernel/builders.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/git/cleaners.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/host/common.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/extensions/sony_msm8996/builders.rc)
  ```
>  </div>
  * **makekernelcopyleft** *[platform_device_to_init / clean / mrproper] [make_parameters]* [*<b>\[Kernel&nbsp;inline&nbsp;compiler&nbsp;for&nbsp;Sony&nbsp;Copyleft\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8996/builders.rc)
  * **kernelcopyleftmerger** *&lt;archive_tar_bz2&gt;* [*<b>\[Sony&nbsp;Copyleft&nbsp;kernel&nbsp;archive&nbsp;merge&nbsp;helper\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8996/builders.rc)

---
> ### <span class="group_label">[extensions/sony_msm8996/lineageos_sony8996.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8996/lineageos_sony8996.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_rom/projects.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/extensions/sony_msm8996/lineageos_sony8996.rc)
  ```
>  </div>
  * **lineagesony8996patcher** *[specific_paths]* [*<b>\[LineageOS&nbsp;Sony&nbsp;8996&nbsp;Patcher\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8996/lineageos_sony8996.rc)

---
> ### <span class="group_label">[extensions/sony_msm8996/lineageos_sonysodp.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8996/lineageos_sonysodp.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/sources/android_rom/projects.rc)
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/extensions/sony_msm8996/lineageos_sonysodp.rc)
  ```
>  </div>
  * **lineagesonysodppatcher** *[specific_paths]* [*<b>\[LineageOS&nbsp;SONY&nbsp;SODP&nbsp;Patcher\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8996/lineageos_sonysodp.rc)
  * **lineagesonysodprebaser** *[specific_paths]* [*<b>\[LineageOS&nbsp;SONY&nbsp;SODP&nbsp;Rebaser\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8996/lineageos_sonysodp.rc)

---
> ### <span class="group_label">[extensions/sony_msm8996/release.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8996/release.rc)</span> ###
>
  * **autoreleasemultiromsony8996** *[devices]* [*<b>\[Automated&nbsp;MultiROM&nbsp;Sony&nbsp;8996&nbsp;releaser\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8996/release.rc)
  * **autoreleasetwrpsony8996** *[devices]* [*<b>\[Automated&nbsp;TWRP&nbsp;Sony&nbsp;8996&nbsp;releaser\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8996/release.rc)

---
> ### <span class="group_label">[extensions/sony_msm8996/shortcuts.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8996/shortcuts.rc)</span> ###
>
  * **sonysodpkernelrebase** : *git fetch https://github.com/sonyxperiadev/kernel aosp/LA.UM.5.5.r1; git rebase FETCH_HEAD; gitpa* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8996/shortcuts.rc)
  * **doradefconf** : *makedefconf msm-perf dora common* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8996/shortcuts.rc)
  * **dorazipkernel** : *kernelinjectorzip dora arch/arm64/boot/Image.gz-dtb .* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8996/shortcuts.rc)
  * **kaguradefconf** : *makedefconf msm-perf kagura common* [*<b>(Alias)</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/sony_msm8996/shortcuts.rc)

---
</details>

<details class='group_details'>
<summary class="group_header">
#### <span class="group_category">Extensions &bull; </span><span class="group_label">SyncThing Tools</span> ####
</summary>

> ### <span class="group_label">[extensions/syncthing/cleaners.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/syncthing/cleaners.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/extensions/syncthing/cleaners.rc)
  ```
>  </div>
  * **stignorefromgit** *[bool_dry_run]* [*<b>\[Rebuild&nbsp;SyncThing&nbsp;.stignore*&nbsp;from&nbsp;.gitignore\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/syncthing/cleaners.rc)
  * **stignoreclean** *[bool_dry_run]* [*<b>\[Cleanup&nbsp;untracked&nbsp;paths&nbsp;from&nbsp;SyncThing&nbsp;.stignore*\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/syncthing/cleaners.rc)
  * **stignorecheck** [*<b>\[Check&nbsp;untracked&nbsp;paths&nbsp;from&nbsp;SyncThing&nbsp;.stignore*\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/syncthing/cleaners.rc)

---
> ### <span class="group_label">[extensions/syncthing/helpers.rc](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/syncthing/helpers.rc)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/extensions/syncthing/helpers.rc)
  ```
>  </div>
  * **stconflictslist** [*<b>\[List&nbsp;conflicts&nbsp;from&nbsp;SyncThing&nbsp;folders\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/syncthing/helpers.rc)
  * **stconflictsclean** [*<b>\[Clean&nbsp;conflicts&nbsp;from&nbsp;SyncThing&nbsp;folders\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/syncthing/helpers.rc)
  * **stconflictsresolve** [*<b>\[Resolve&nbsp;conflicts&nbsp;from&nbsp;SyncThing&nbsp;folders\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/extensions/syncthing/helpers.rc)

---
</details>

<details class='group_details'>
<summary class="group_header">
#### <span class="group_category">Scripts &bull; </span><span class="group_label">Android Repository</span> ####
</summary>

> ### <span class="group_label">[scripts/android_repo/install.sh](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/scripts/android_repo/install.sh)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/scripts/android_repo/install.sh)
  ```
>  </div>
  * [**\./install.sh** *<b>\[Automated&nbsp;install&nbsp;of&nbsp;Android&nbsp;repo&nbsp;requirements\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/scripts/android_repo/install.sh)

---
</details>

<details class='group_details'>
<summary class="group_header">
#### <span class="group_category">Scripts &bull; </span><span class="group_label">Linux Host</span> ####
</summary>

> ### <span class="group_label">[scripts/linux/cleanram.sh](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/scripts/linux/cleanram.sh)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/scripts/linux/cleanram.sh)
  ```
>  </div>
  * [**\./cleanram.sh** *<b>\[RAM&nbsp;caches&nbsp;cleanup\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/scripts/linux/cleanram.sh)

---
> ### <span class="group_label">[scripts/linux/cleanrambuild.sh](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/scripts/linux/cleanrambuild.sh)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/scripts/linux/cleanrambuild.sh)
  ```
>  </div>
  * [**\./cleanrambuild.sh** *<b>\[Build&nbsp;RAM&nbsp;processes&nbsp;cleanup\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/scripts/linux/cleanrambuild.sh)

---
> ### <span class="group_label">[scripts/linux/reboot.sh](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/scripts/linux/reboot.sh)</span> ###
>
>  <div class='standalone-import'>
  ```Shell
source <(curl -Ls1 https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/scripts/linux/reboot.sh)
  ```
>  </div>
  * [**\./reboot.sh** *<b>\[Crontab&nbsp;script&nbsp;to&nbsp;reboot&nbsp;when&nbsp;not&nbsp;building\]&nbsp;</b>*](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/scripts/linux/reboot.sh)

---
</details>

<div class="group_footer">
<br />

---
* _Automatically generated by [shtoolsreadme](https://github.com/AdrianDC/advanced_development_shell_tools/blob/master/project/docs.rc) for [advanced_development_shell_tools](https://github.com/AdrianDC/advanced_development_shell_tools)_
</div>
<!-- Functions End -->
