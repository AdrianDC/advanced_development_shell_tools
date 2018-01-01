#### [ Samples ] Committing modifications with git ([git_commit](http://adriandc.github.io/android_development_shell_tools/#documentation-android_git_commitrc))

<!-- List -->
 * Add new code changes with confirmation (y: Yes / n: No / d: Skip file / q: Stop)
   <br />
   `gitap`

 * Commit changes (with GPG signing if enabled)
   <br />
   `gitc`

 * Add Change-Id to the commit (optional, once per project)
   <br />
   `gitcid`

 * Add all files without patch, including untracked files
   <br />
   `gitaa`

 * Amend changes to the commit without message changes
   <br />
   `gitcae`

 * Amend changes and message of the commit
   <br />
   `gitca`

 * Sign-off the commit with your identifications
   <br />
   `gitcs`
<!-- /List -->

<br />

#### [ Samples ] Cherry-pick and fix conflicts ([git_fetch](http://adriandc.github.io/android_development_shell_tools/#documentation-android_git_fetchrc), [git_merge](http://adriandc.github.io/android_development_shell_tools/#documentation-android_git_mergerc))

<!-- List -->
 * Cherry-pick a commit SHA1 reference (already fetched)
   <br />
   `gitcp SHA1_number`

 * Cherry-pick a commit with an URL (GitHub, ...)
   <br />
   `gitcpup commit_url`

 * Open the merge tool to fix conflicts (with meld for example)
   <br />
   `gitmt`

 * Open the file editor for manual conflicts fixing
   <br />
   `gitmte`

 * Commit the picked and resolved commit
   <br />
   `gitc`
<!-- /List -->

#### [ Samples ] Rebase commits and cleanup ([git_commit](http://adriandc.github.io/android_development_shell_tools/#documentation-android_git_commitrc), [git_rebase](http://adriandc.github.io/android_development_shell_tools/#documentation-android_git_rebaserc))

<!-- List -->
 * Reorder the last 8 commits (interactively)
   <br />
   `gitr 8`

 * Reorder since a commit SHA1 reference (interactively)
   <br />
   `gitrt SHA1_number`

 * Continue the commits rebase
   <br />
   `gitrc`

 * Skip the commit from rebase
   <br />
   `gitrs`

 * Abort the commits rebase
   <br />
   `gitra`

 * Delete all unmerged differences
   <br />
   `gitcl`

 * Reset to a specific SHA1 reference
   <br />
   `gitrt SHA1_number`

 * Reset to a FETCH_HEAD after fetching
   <br />
   `gitrh`

 * Remove the last commit from HEAD
   <br />
   `gitro`

 * Amend the last comment into the previous one
   <br />
   `gitsl`
<!-- /List -->

#### [ Samples ] Search through files ([host_grep](http://adriandc.github.io/android_development_shell_tools/#documentation-android_host_greprc), [tools](http://adriandc.github.io/android_development_shell_tools/#documentation-android_toolsrc))

<!-- List -->
 * Search directory for a word or multiple words
   <br />
   `gs word_to_search`
   `gs 'words to search`

 * Search in all Android.mk files
   <br />
   `gca word_to_search`
   `gca 'words to search'`

 * Search inside binary files (like libraries)
   <br />
   `binarysearch word`

 * Replace inside binary files (like libraries)
   <br />
   `binaryeditor word new_word`
<!-- /List -->

#### [ Samples ] Android devices and ROM helpers ([repo_helpers](http://adriandc.github.io/android_development_shell_tools/#documentation-android_repo_helpersrc), [tools](http://adriandc.github.io/android_development_shell_tools/#documentation-android_toolsrc))

<!-- List -->
 * Return to repository root
   <br />
   `croot`

 * Open repository manifests
   <br />
   `reporoomserv`

 * Sync repository with optimized flags
   <br />
   `reposy`

 * Initiate device environments based on AOSP or LineageOS
   <br />
   `repos device_codename`

 * Switch between multiple local_manifests_* folders
   <br />
   `reposwitcher`

 * See the CCache status and usage while building
   <br />
   `repocache`

 * Compare device overlays with their original .xml
   <br />
   `overlaycompare path/to/overlay.xml`
<!-- /List -->

#### [ Samples ] Packages and ROM compilations helpers ([release_helpers](http://adriandc.github.io/android_development_shell_tools/#documentation-android_release_helpersrc), [release_packages](http://adriandc.github.io/android_development_shell_tools/#documentation-android_release_packagesrc))

<!-- List -->
 * Properly cleanup necessary outputs for rebuilds
   <br />
   `outdevcl device_name`

 * Build a package quickly without ninja
   <br />
   `mmo paths_or_module_names`

 * Build a package quickly and install results
   <br />
   `mmi paths_or_module_names`

 * Build a package quickly and package into .zip
   <br />
   `mmmzip paths_or_module_names`

 * Package a git commit into a .zip
   <br />
   `gitzip SHA1_number`

 * Sign a zip for secured recoveries
   <br />
   `signzip zip_to_sign.zip`
<!-- /List -->
