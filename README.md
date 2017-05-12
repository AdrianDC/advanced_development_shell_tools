# Android Development Shell Scripts
 * Project created by [Adrian DC](https://github.com/AdrianDC) - 2015-2017

 * The 'android_development_shell_tools' is a project meant to provide
   <br />
   multiple advanced functions and shortcuts to ease Android development

 * The sources written and shared here are either meant to be used as they are,
   <br />
   or to serve as a reference for commands and functions an Android developer needs

 * Scripts flagged "Standalone Import Ready" and starting with *`source <(curl -Ls...`*
   <br />
   are able to be directly sourced through the provided commands in any terminal
   <br />
   without the need of this project being synced locally or loaded in a root context

 * The "addons/" folder can hold self-coded scripts based on the scripts from
   <br />
   'android_development_shell_tools' and be included along the regular ones.
   <br />
   These scripts will not be lost with 'shtoolssync' and will stay in "addons/".
   <br />
   *(Keeping a copy or symlinking addons scripts is recommended for safety)*


### [ Automated functions documentation ]

 * Read the [functions references from android_development_shell_tools](http://adriandc.github.io/android_development_shell_tools)


### [ Permanent installation for terminals ]
 * Open the `~/.bashrc` file
 * Adapt and add the following lines:
   ```Shell
   export ANDROID_DEV_DRIVE=/media/../AndroidDev;
   source "/.../android_development_shell_tools.rc";
   ```
