[SIZE=4][B][ Samples ] Committing modifications with git ([URL=http://adriandc.github.io/android_development_shell_tools/#documentation-android_git_commitrc]git_commit[/URL])[/B][/SIZE]

[LIST]
[*]Add new code changes with confirmation (y: Yes / n: No / d: Skip file / q: Stop)
   [FONT="Courier New"][I]`gitap`[/I][/FONT]

[*]Commit changes (with GPG signing if enabled)
   [FONT="Courier New"][I]`gitc`[/I][/FONT]

[*]Add Change-Id to the commit (optional, once per project)
   [FONT="Courier New"][I]`gitcid`[/I][/FONT]

[*]Add all files without patch, including untracked files
   [FONT="Courier New"][I]`gitaa`[/I][/FONT]

[*]Amend changes to the commit without message changes
   [FONT="Courier New"][I]`gitcae`[/I][/FONT]

[*]Amend changes and message of the commit
   [FONT="Courier New"][I]`gitca`[/I][/FONT]

[*]Sign-off the commit with your identifications
   [FONT="Courier New"][I]`gitcs`[/I][/FONT]
[/LIST]


[SIZE=4][B][ Samples ] Cherry-pick and fix conflicts ([URL=http://adriandc.github.io/android_development_shell_tools/#documentation-android_git_fetchrc]git_fetch[/URL], [URL=http://adriandc.github.io/android_development_shell_tools/#documentation-android_git_mergerc]git_merge[/URL])[/B][/SIZE]

[LIST]
[*]Cherry-pick a commit SHA1 reference (already fetched)
   [FONT="Courier New"][I]`gitcp SHA1_number`[/I][/FONT]

[*]Cherry-pick a commit with an URL (GitHub, ...)
   [FONT="Courier New"][I]`gitcpup commit_url`[/I][/FONT]

[*]Open the merge tool to fix conflicts (with meld for example)
   [FONT="Courier New"][I]`gitmt`[/I][/FONT]

[*]Open the file editor for manual conflicts fixing
   [FONT="Courier New"][I]`gitmte`[/I][/FONT]

[*]Commit the picked and resolved commit
   [FONT="Courier New"][I]`gitc`[/I][/FONT]
[/LIST]

[SIZE=4][B][ Samples ] Rebase commits and cleanup ([URL=http://adriandc.github.io/android_development_shell_tools/#documentation-android_git_commitrc]git_commit[/URL], [URL=http://adriandc.github.io/android_development_shell_tools/#documentation-android_git_rebaserc]git_rebase[/URL])[/B][/SIZE]

[LIST]
[*]Reorder the last 8 commits (interactively)
   [FONT="Courier New"][I]`gitr 8`[/I][/FONT]

[*]Reorder since a commit SHA1 reference (interactively)
   [FONT="Courier New"][I]`gitrt SHA1_number`[/I][/FONT]

[*]Continue the commits rebase
   [FONT="Courier New"][I]`gitrc`[/I][/FONT]

[*]Skip the commit from rebase
   [FONT="Courier New"][I]`gitrs`[/I][/FONT]

[*]Abort the commits rebase
   [FONT="Courier New"][I]`gitra`[/I][/FONT]

[*]Delete all unmerged differences
   [FONT="Courier New"][I]`gitcl`[/I][/FONT]

[*]Reset to a specific SHA1 reference
   [FONT="Courier New"][I]`gitrt SHA1_number`[/I][/FONT]

[*]Reset to a FETCH_HEAD after fetching
   [FONT="Courier New"][I]`gitrh`[/I][/FONT]

[*]Remove the last commit from HEAD
   [FONT="Courier New"][I]`gitro`[/I][/FONT]

[*]Amend the last comment into the previous one
   [FONT="Courier New"][I]`gitsl`[/I][/FONT]
[/LIST]

[SIZE=4][B][ Samples ] Search through files ([URL=http://adriandc.github.io/android_development_shell_tools/#documentation-android_host_greprc]host_grep[/URL], [URL=http://adriandc.github.io/android_development_shell_tools/#documentation-android_toolsrc]tools[/URL])[/B][/SIZE]

[LIST]
[*]Search directory for a word or multiple words
   [FONT="Courier New"][I]`gs word_to_search`[/I][/FONT]
   [FONT="Courier New"][I]`gs 'words to search`[/I][/FONT]

[*]Search in all Android.mk files
   [FONT="Courier New"][I]`gca word_to_search`[/I][/FONT]
   [FONT="Courier New"][I]`gca 'words to search'`[/I][/FONT]

[*]Search inside binary files (like libraries)
   [FONT="Courier New"][I]`binarysearch word`[/I][/FONT]

[*]Replace inside binary files (like libraries)
   [FONT="Courier New"][I]`binaryeditor word new_word`[/I][/FONT]
[/LIST]

[SIZE=4][B][ Samples ] Android devices and ROM helpers ([URL=http://adriandc.github.io/android_development_shell_tools/#documentation-android_repo_helpersrc]repo_helpers[/URL], [URL=http://adriandc.github.io/android_development_shell_tools/#documentation-android_toolsrc]tools[/URL])[/B][/SIZE]

[LIST]
[*]Return to repository root
   [FONT="Courier New"][I]`croot`[/I][/FONT]

[*]Open repository manifests
   [FONT="Courier New"][I]`reporoomserv`[/I][/FONT]

[*]Sync repository with optimized flags
   [FONT="Courier New"][I]`reposy`[/I][/FONT]

[*]Initiate device environments based on LineageOS
   [FONT="Courier New"][I]`repos device_codename`[/I][/FONT]

[*]Initiate device environments based on AOSP
   [FONT="Courier New"][I]`reposaosp device_codename`[/I][/FONT]

[*]Switch between multiple local_manifests_* folders
   [FONT="Courier New"][I]`reposwitcher`[/I][/FONT]

[*]See the CCache status and usage while building
   [FONT="Courier New"][I]`repocache`[/I][/FONT]

[*]Compare device overlays with their original .xml
   [FONT="Courier New"][I]`overlaycompare path/to/overlay.xml`[/I][/FONT]
[/LIST]

[SIZE=4][B][ Samples ] Packages and ROM compilations helpers ([URL=http://adriandc.github.io/android_development_shell_tools/#documentation-android_release_helpersrc]release_helpers[/URL], [URL=http://adriandc.github.io/android_development_shell_tools/#documentation-android_release_packagesrc]release_packages[/URL])[/B][/SIZE]

[LIST]
[*]Properly cleanup necessary outputs for rebuilds
   [FONT="Courier New"][I]`outdevcl device_name`[/I][/FONT]

[*]Build a package quickly without ninja
   [FONT="Courier New"][I]`mmo paths_or_module_names`[/I][/FONT]

[*]Build a package quickly and install results
   [FONT="Courier New"][I]`mmi paths_or_module_names`[/I][/FONT]

[*]Build a package quickly and package into .zip
   [FONT="Courier New"][I]`mmmzip paths_or_module_names`[/I][/FONT]

[*]Package a git commit into a .zip
   [FONT="Courier New"][I]`gitzip SHA1_number`[/I][/FONT]

[*]Sign a zip for secured recoveries
   [FONT="Courier New"][I]`signzip zip_to_sign.zip`[/I][/FONT]
[/LIST]
