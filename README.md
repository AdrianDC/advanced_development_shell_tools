<!-- Center -->
![Advanced Development Shell Tools](https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/docs/assets/res/logo.png)
<!-- /Center -->


### __Disclaimer__ ###

<!-- Indent -->
<!-- List -->
 * No wrong use or side effect of this project shall involve the responsibility of its developers.
   The scripts are shared as they are. Improvements are regularly done based on personal use
   and developers reports, but no instantaneous changes shall be requested by anyone.
<!-- /List -->
<!-- /Indent -->

---

### __About the project__ ###

<!-- Indent -->
<!-- List -->
 * The project [**advanced_development_shell_tools**](https://github.com/AdrianDC/advanced_development_shell_tools) started in 2015
   <br />
   to **ease Android and Linux developments, ADB usage, Git commands and related projects.**
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
   **Developers or beginners** interested in shell commands and scripting
   <br />
   can look into my sources and find documented **commands and syntaxes**,
   <br />
   which can be used as a reference for shell scripting and help making their own.
<!-- /List -->
<!-- /Indent -->

---

### __How to update with upstream changes__ ###

<!-- Indent -->
<!-- List -->
 * **To keep a local sync of 'advanced_development_shell_tools' updated with upstream changes**,
   <br />
   simply run the **`shtoolssync`** command and the updates will be downloaded.
   <br />
   Local modifications will be lost through the update (read about `git stash pop` in that case)
   <br />
   and the **newest commits / improvements will be added** to your available tools.
<!-- /List -->
<!-- /Indent -->

---

### __About the documentation and structure__ ###

<!-- Indent -->
<!-- List -->
 * The linked **documentation holds a reference point to all functions and macros**
   <br />
   that this project provides, with details on their usage purpose,
   <br />
    and if present, the **`<required>` or `[optional]` parameters** available.

 * **The documentation is completely dynamically built.**

 * Scripts flagged **"Standalone Import Ready"** and starting with **`source <(curl -Ls...`**
   <br />
   are able to be directly sourced through the provided commands in any terminal
   <br />
   **without the need of this project being installed locally** or loaded in the shell.
<!-- /List -->
<!-- /Indent -->

---

### __Project and documentations__ ###

<!-- Indent -->
<!-- List -->
 * **Documentation and references :** [advanced_development_shell_tools](http://adriandc.github.io/advanced_development_shell_tools)
 * **Sources on GitHub :** [advanced_development_shell_tools](https://github.com/AdrianDC/advanced_development_shell_tools)
<!-- /List -->
<!-- /Indent -->

---

### __How to install the project__ ###

<!-- Indent -->
<!-- List -->
 * **Clone the project locally with git:**
   <br />
   *`git clone https://github.com/AdrianDC/advanced_development_shell_tools -b master`*

 * **Load the project in the current Shell terminal:**
   <br />
   *`source /path/to/folder/advanced_development_shell_tools.rc`*

 * **Permanently load the project:** Open *`~/.bashrc`*, adapt and add:
   ```Shell
   export ANDROID_DEV_DRIVE='/media/../AndroidDev'
   source '/.../advanced_development_shell_tools.rc'
   ```
 * **The *`ANDROID_DEV_DRIVE`* variable** is a folder used for Android ROMs and kernels.
   <br />
   You do not *need* it, but a few functions rely on it to ease things.
<!-- /List -->
<!-- /Indent -->

---

### __How to contribute to the project__ ###

<!-- Indent -->
<!-- List -->
 * Perform the **scripts modifications, fixes or additions**
 * Validate the code thanks to ShellCheck with **`shtoolscheck`**
 * Update README.md documentation with **`shtoolsreadme`**
 * **Commit the changes** with git (refer to older commits for style)
 * Push your changes and **create a pull-request** once ready
<!-- /List -->
<!-- /Indent -->

---

### __Project contributors and modules__ ###

<!-- Indent -->
<!-- List -->
 * [AdrianDC](https://github.com/AdrianDC) : advanced_development_shell_tools creator and main developer
 * [Caio99BR](https://github.com/Caio99BR) : advanced_development_shell_tools user and contributor
 * [multirom-dev](https://github.com/multirom-dev/libbootimg/graphs/contributors) : libbootimg evolutions originally by [Tassadar](https://github.com/Tasssadar)
 * [xiaolu](https://github.com/xiaolu/mkbootimg_tools) : mkbootimg_tools submodule original developer
<!-- /List -->
<!-- /Indent -->

<br />
