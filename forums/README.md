[CENTER][IMG]https://github.com/AdrianDC/android_development_shell_tools/raw/master/docs/assets/res/logo.png?timestamp=1515342372[/IMG][/CENTER]


[SIZE=5][B][U]Disclaimer[/U][/B][/SIZE]

[INDENT][LIST]
[*][FONT="Courier New"][I]`No wrong use or side effect of this project shall involve the responsibility of its developers.`[/I][/FONT]
   [FONT="Courier New"][I]`The scripts are shared as they are. Improvements are regularly done based on personal use`[/I][/FONT]
   [FONT="Courier New"][I]`and developers reports, but no instantaneous changes shall be requested by anyone.`[/I][/FONT]
   [CODE]
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
   [/CODE]
[/LIST][/INDENT]


[SIZE=5][B][U]About the project[/U][/B][/SIZE]

[INDENT][LIST]
[*][B]'android_development_shell_tools'[/B] is a project I started in 2015
   to [B]ease Android development, ADB usage, Git commands and related projects.[/B]
   Originally a private set of scripts, I made the project evolve towards
   a publically shareable set of tools that can be [B]easily used and even configured[/B]
   by anyone interested in using advanced development tools and in winning time.
   It provides [B]many functions and shortcuts to ease Android development[/B].

[*]The sources written and shared here are either [B]meant to be used as they are[/B],
   or to [B]serve as a reference for commands and functions[/B] an Android developer needs.
   [B]Developers or beginners[/B] interested in Shell commands and scripting
   can look into my sources and find documented [B]commands and syntaxes[/B],
   which can be used as a reference of Shell scripting and help making their own.
[/LIST][/INDENT]


[SIZE=5][B][U]How to update with upstream changes[/U][/B][/SIZE]

[INDENT][LIST]
[*][B]To keep a local sync of 'android_development_shell_tools' updated with upstream changes[/B],
   simply run the [B][FONT="Courier New"][I]`shtoolssync;`[/I][/FONT][/B] command and the updates will be downloaded.
   Local modifications will be lost through the update (read about [FONT="Courier New"][I]`git stash pop`[/I][/FONT] in that case)
   and the [B]newest commits / improvements will be added[/B] to your available tools.

[*]If you intend to keep personal or unfinished functions along this project,
   you can also look at the [B][URL=https://github.com/AdrianDC/android_development_shell_tools/tree/shell_users]shell_users[/URL][/B] branch, a minimal variant
   that allows holding functions or macros separately (like credentials).
[/LIST][/INDENT]


[SIZE=5][B][U]About the documentation and structure[/U][/B][/SIZE]

[INDENT][LIST]
[*]The linked [B]documentation holds a reference point to all functions and macros[/B]
   that this project provides, which details their purpose, and if present,
   details the [B][FONT="Courier New"][I]`<required>` or `[optional]`[/I][/FONT] parameters[/B] available.

[*][B]The documentation is completely dynamically built[/B], through a function I wrote
   to parse the whole project and to create this unique reference point.
   Functions and macros seen there will exist as presented in the documentation,
   there is no risk of irregularities between the list and the actual sources.

[*]Scripts flagged [B]"Standalone Import Ready"[/B] and starting with [B][FONT="Courier New"][I]`source <(curl -Ls...`[/I][/FONT][/B]
   are able to be directly sourced through the provided commands in any terminal
   [B]without the need of this project being synced locally[/B] or loaded in the Shell.
   This can be useful when using a different computer, when running from a root Shell,
   or even if you need a few functions for work to ease something.
[/LIST][/INDENT]


[SIZE=5][B][U]Project and documentations[/U][/B][/SIZE]

[INDENT][LIST]
[*][B]Documentation and references :[/B] [URL=http://adriandc.github.io/android_development_shell_tools]android_development_shell_tools[/URL]
[*][B]Sources on GitHub :[/B] [URL=https://github.com/AdrianDC/android_development_shell_tools]android_development_shell_tools[/URL]
[/LIST][/INDENT]


[SIZE=5][B][U]How to install the project[/U][/B][/SIZE]

[INDENT][LIST]
[*][B]Clone the project locally with git:[/B]
   [I][FONT="Courier New"][I]`git clone https://github.com/AdrianDC/android_development_shell_tools -b master;`[/I][/FONT][/I]

[*][B]Load the project in the current Shell terminal:[/B]
   [I][FONT="Courier New"][I]`source /path/to/folder/android_development_shell_tools.rc;`[/I][/FONT][/I]

[*][B]Permanently load the project:[/B] Open [I][FONT="Courier New"][I]`~/.bashrc`[/I][/FONT][/I], adapt and add:
   [CODE]
   export ANDROID_DEV_DRIVE='/media/../AndroidDev';
   source '/.../android_development_shell_tools.rc';
   [/CODE]
[*][B]The [I][FONT="Courier New"][I]`ANDROID_DEV_DRIVE`[/I][/FONT][/I] variable[/B] is a folder used for Android ROMs and kernels.
   You do not [I]need[/I] it, but a few functions rely on it to ease things.
[/LIST][/INDENT]


[SIZE=5][B][U]How to contribute to the project[/U][/B][/SIZE]

[INDENT][LIST]
[*]Perform the [B]scripts modifications, fixes or additions[/B].

[*]Update README.md documentation with [B][FONT="Courier New"][I]`shtoolsreadme;`[/I][/FONT][/B].

[*][B]Commit the changes[/B] with git (refer to older commits for style)

[*]Push your changes and [B]create a pull-request[/B] once ready
[/LIST][/INDENT]


[SIZE=5][B][U]Project contributors and modules[/U][/B][/SIZE]

[INDENT][LIST]
[*][URL=https://github.com/AdrianDC]AdrianDC[/URL] : android_development_shell_tools creator and main developer
[*][URL=https://github.com/Caio99BR]Caio99BR[/URL] : android_development_shell_tools user and contributor
[*][URL=https://github.com/multirom-dev/libbootimg/graphs/contributors]multirom-dev[/URL] : libbootimg evolutions originally by [URL=https://github.com/Tasssadar]Tassadar[/URL]
[*][URL=https://github.com/xiaolu/mkbootimg_tools]xiaolu[/URL] : mkbootimg_tools submodule original developer
[/LIST][/INDENT]

