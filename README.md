<!-- Center -->
![Android Development Shell Tools](https://github.com/AdrianDC/android_development_shell_tools/raw/master/docs/assets/res/logo.png)
<!-- /Center -->


### [ __Disclaimer__ ]

<!-- Indent -->
<!-- List -->
 * `No wrong use or side effect of this project shall involve the responsibility of its developers.`
   <br />
   `The scripts are shared as they are. Improvements are regularly done based on personal use`
   <br />
   `and developers reports, but no instantaneous changes shall be requested by anyone.`
   <br />
   <br />
   ```cpp
   #include <std_disclaimer.h>
   /*
    * Your warranty is now void.
    *
    * I am not responsible for bricked devices, dead SD cards,
    * thermonuclear war, or you getting fired because the alarm app failed. Please
    * do some research if you have any concerns about features included in this ROM
    * before flashing it! YOU are choosing to make these modifications, and if
    * you point the finger at me for messing up your device, I will laugh at you.
    */
   ```
<!-- /List -->
<!-- /Indent -->

<br />

### [ __About the project__ ]

<!-- Indent -->
<!-- List -->
 * **'android_development_shell_tools'** is a project I started in 2015
   <br />
   to **ease Android development, ADB usage, Git commands and related projects.**
   <br />
   Originally a private set of scripts, I made the project evolve towards
   <br />
   a publically shareable set of tools that can be **easily used and even configured**
   <br />
   by anyone interested in using advanced development tools and in winning time.
   <br />
   It provides **many functions and shortcuts to ease Android development**.

 * The sources written and shared here are either **meant to be used as they are**,
   <br />
   or to **serve as a reference for commands and functions** an Android developer needs.
   <br />
   **Developers or beginners** interested in Shell commands and scripting
   <br />
   can look into my sources and find documented **commands and syntaxes**,
   <br />
   which can be used as a reference of Shell scripting and help making their own.
<!-- /List -->
<!-- /Indent -->

<br />

### [ __How to update with upstream changes__ ]

<!-- Indent -->
<!-- List -->
 * **To keep a local sync of 'android_development_shell_tools' updated with upstream changes**,
   <br />
   simply run the **`shtoolssync`** command and the updates will be downloaded.
   <br />
   Local modifications will be lost through the update (read about `git stash pop` in that case)
   <br />
   and the **newest commits / improvements will be added** to your available tools.

 * If you intend to keep personal or unfinished functions along this project,
   <br />
   you can also look at the **[shell_users](https://github.com/AdrianDC/android_development_shell_tools/tree/shell_users)** branch, a minimal variant
   <br />
   that allows holding functions or macros separately (like credentials).
<!-- /List -->
<!-- /Indent -->

<br />

### [ __About the documentation and structure__ ]

<!-- Indent -->
<!-- List -->
 * The linked **documentation holds a reference point of all functions and macros**
   <br />
   that this project provides, which details of their purpose, and if present,
   <br />
   details on the **`<required>` or `[optional]` parameters** available.

 * **The documentation is completely dynamically built**, through a function I wrote
   <br />
   to parse the whole project and to create this unique reference point.
   <br />
   Functions and macros seen there will exist as presented in the documentation,
   <br />
   there is no risk of irregularities between the list and the actual sources.

 * Scripts flagged **"Standalone Import Ready"** and starting with **`source <(curl -Ls...`**
   <br />
   are able to be directly sourced through the provided commands in any terminal
   <br />
   **without the need of this project being synced locally** or loaded in a root context.
   <br />
   This can be useful when using a different computer, when running from a root Shell,
   <br />
   or even if you need a few functions for work to ease something.

 * **The "extensions/" folder can hold self-coded scripts folders** based on the scripts from
   <br />
   'android_development_shell_tools' and be included along the regular ones.
   <br />
   These scripts will not be lost with 'shtoolssync' and will stay in "extensions/".
   <br />
   *(Keeping a copy or symlinking extensions scripts is recommended for safety)*
   <br />
   If the new extension is generic enough for public use or interest,
   <br />
   I can easily consider merging it in the common upstream sources.
<!-- /List -->
<!-- /Indent -->

<br />

### [ __Project and documentations__ ]

<!-- Indent -->
<!-- List -->
 * **Documentation and references :** [android_development_shell_tools](http://adriandc.github.io/android_development_shell_tools)
 * **Sources on GitHub :** [android_development_shell_tools](https://github.com/AdrianDC/android_development_shell_tools)
<!-- /List -->
<!-- /Indent -->

<br />

### [ __How to install the project__ ]

<!-- Indent -->
<!-- List -->
 * **First, you need to clone this project locally**
   `git clone https://github.com/AdrianDC/android_development_shell_tools -b master`

 * To load the scripts, do `source <path/to/folder/android_development_shell_tools.rc`

 * **To permanently load the scripts** in your Shell terminals,
   <br />
   open the `~/.bashrc` file, adapt and add the following lines:
   ```Shell
   export ANDROID_DEV_DRIVE=/media/../AndroidDev;
   source "/.../android_development_shell_tools.rc";
   ```

 * **The `ANDROID_DEV_DRIVE` variable** is a reference folder I use
   <br />
   for all Android projects, repositories, kernels and ROMs.
   <br />
   You do not *need* it, but a few functions rely on it to ease things.
<!-- /List -->
<!-- /Indent -->

<br />

### [ __How to contribute to the project__ ]

<!-- Indent -->
<!-- List -->
 * Perform the **scripts modifications, fixes or additions**.

 * Update README.md documentation with **`shtoolsreadme`**.

 * **Commit the changes** with git (refer to older commits for style)

 * Push your changes and **create a pull-request** once ready
<!-- /List -->
<!-- /Indent -->

<br />

### [ __Project contributors and modules__ ]

<!-- Indent -->
<!-- List -->
 * [AdrianDC](https://github.com/AdrianDC) : android_development_shell_tools creator and main developer
 * [Caio99BR](https://github.com/Caio99BR) : android_development_shell_tools user and contributor
 * [multirom-dev](https://github.com/multirom-dev/libbootimg/graphs/contributors) : libbootimg evolutions originally by [Tassadar](https://github.com/Tasssadar)
 * [xiaolu](https://github.com/xiaolu/mkbootimg_tools) : mkbootimg_tools submodule original developer
<!-- /List -->
<!-- /Indent -->
