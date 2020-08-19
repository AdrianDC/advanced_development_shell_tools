[CENTER][IMG]https://github.com/AdrianDC/advanced_development_shell_tools/raw/master/docs/assets/res/logo.png?timestamp=1545587767[/IMG][/CENTER]


[SIZE=5][B][U]Disclaimer[/U][/B][/SIZE]

[INDENT][LIST]
[*]No wrong use or side effect of this project shall involve the responsibility of its developers.
   The scripts are shared as they are. Improvements are regularly done based on personal use
   and developers reports, but no instantaneous changes shall be requested by anyone.
[/LIST][/INDENT]


[SIZE=5][B][U]About the project[/U][/B][/SIZE]

[INDENT][LIST]
[*]The project [URL=https://github.com/AdrianDC/advanced_development_shell_tools][B]advanced_development_shell_tools[/B][/URL] started in 2015
   to [B]ease Android and Linux developments, ADB usage, Git commands and related projects.[/B]
   Originally a private set of scripts, I made the project evolve towards
   a publically shareable set of tools that can be [B]easily used and even configured[/B]
   by anyone interested in using advanced development tools and in winning time.
   It provides [B]many functions and shortcuts to ease Android development[/B].

[*]The sources written and shared here are either [B]meant to be used as they are[/B],
   or to [B]serve as a reference for commands and functions[/B] an Android developer needs.
   [B]Developers or beginners[/B] interested in shell commands and scripting
   can look into my sources and find documented [B]commands and syntaxes[/B],
   which can be used as a reference for shell scripting and help making their own.
[/LIST][/INDENT]


[SIZE=5][B][U]How to update with upstream changes[/U][/B][/SIZE]

[INDENT][LIST]
[*][B]To keep a local sync of 'advanced_development_shell_tools' updated with upstream changes[/B],
   simply run the [B][FONT="Courier New"][I]`shtoolssync`[/I][/FONT][/B] command and the updates will be downloaded.
   Local modifications will be lost through the update (read about [FONT="Courier New"][I]`git stash pop`[/I][/FONT] in that case)
   and the [B]newest commits / improvements will be added[/B] to your available tools.
[/LIST][/INDENT]


[SIZE=5][B][U]About the documentation and structure[/U][/B][/SIZE]

[INDENT][LIST]
[*]The linked [B]documentation holds a reference point to all functions and macros[/B]
   that this project provides, with details on their usage purpose,
    and if present, the [B][FONT="Courier New"][I]`<required>` or `[optional]`[/I][/FONT] parameters[/B] available.

[*][B]The documentation is completely dynamically built.[/B]

[*]Scripts flagged [B]"Standalone Import Ready"[/B] and starting with [B][FONT="Courier New"][I]`source <(curl -Ls...`[/I][/FONT][/B]
   are able to be directly sourced through the provided commands in any terminal
   [B]without the need of this project being installed locally[/B] or loaded in the shell.
[/LIST][/INDENT]


[SIZE=5][B][U]Project and documentations[/U][/B][/SIZE]

[INDENT][LIST]
[*][B]Documentation and references :[/B] [URL=http://adriandc.github.io/advanced_development_shell_tools]advanced_development_shell_tools[/URL]
[*][B]Sources on GitHub :[/B] [URL=https://github.com/AdrianDC/advanced_development_shell_tools]advanced_development_shell_tools[/URL]
[/LIST][/INDENT]


[SIZE=5][B][U]How to install the project[/U][/B][/SIZE]

[INDENT][LIST]
[*][B]Clone the project locally with git:[/B]
   [I][FONT="Courier New"][I]`git clone https://github.com/AdrianDC/advanced_development_shell_tools -b master`[/I][/FONT][/I]

[*][B]Load the project in the current Shell terminal:[/B]
   [I][FONT="Courier New"][I]`source /path/to/folder/advanced_development_shell_tools.rc`[/I][/FONT][/I]

[*][B]Permanently load the project:[/B] Open [I][FONT="Courier New"][I]`~/.bashrc`[/I][/FONT][/I], adapt and add:
   [CODE]
   export ANDROID_DEV_DRIVE='/media/../AndroidDev'
   source '/.../advanced_development_shell_tools.rc'
   [/CODE]
[*][B]The [I][FONT="Courier New"][I]`ANDROID_DEV_DRIVE`[/I][/FONT][/I] variable[/B] is a folder used for Android ROMs and kernels.
   You do not [I]need[/I] it, but a few functions rely on it to ease things.
[/LIST][/INDENT]


[SIZE=5][B][U]How to contribute to the project[/U][/B][/SIZE]

[INDENT][LIST]
[*]Perform the [B]scripts modifications, fixes or additions[/B]
[*]Validate the code thanks to ShellCheck with [B][FONT="Courier New"][I]`shtoolscheck`[/I][/FONT][/B]
[*]Update README.md documentation with [B][FONT="Courier New"][I]`shtoolsreadme`[/I][/FONT][/B]
[*][B]Commit the changes[/B] with git (refer to older commits for style)
[*]Push your changes and [B]create a pull-request[/B] once ready
[/LIST][/INDENT]


[SIZE=5][B][U]Project contributors and modules[/U][/B][/SIZE]

[INDENT][LIST]
[*][URL=https://github.com/AdrianDC]AdrianDC[/URL] : advanced_development_shell_tools creator and main developer
[*][URL=https://github.com/Caio99BR]Caio99BR[/URL] : advanced_development_shell_tools user and contributor
[*][URL=https://github.com/multirom-dev/libbootimg/graphs/contributors]multirom-dev[/URL] : libbootimg evolutions originally by [URL=https://github.com/Tasssadar]Tassadar[/URL]
[*][URL=https://github.com/xiaolu/mkbootimg_tools]xiaolu[/URL] : mkbootimg_tools submodule original developer
[/LIST][/INDENT]

