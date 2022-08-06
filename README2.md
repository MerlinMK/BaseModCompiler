## General organisation
* #Builder directory contains the compiler,
* beside that, we have one directory per module.
* No new global variables, use of BaseMod's localModData.lua(s).
* any more rule relative to global variables modifications I should follow, lemme know plz!

## Modules structure (doesn't apply to BaseMod, aka CustomSystem here)

This organisation is the one I understood from BaseMod, just adding a layer for the boot.

* They are pathed most naive way you'd path them to make a single small mod,
* for lua folders, each subfolders client, server and shared have a module subfolder (if needed).
* I'd organise code like this :
   * All needed data to set up the module are in shared/config (contains at least module version)
   * All needed data to add a single feature are in the shared/ConfigFeature.lua files.
   * Other .lua files contains functions and their calls.
   * shared directory have a single ModuleFramework.lua that root all added datas and add all needed functions
   * module directories of (shared/client/server) files contains extra functions to add to FeatureFramework

* For the Log and boot, we add the following rule obeyed by each of media/lua's arborescence files:
  * ModuleFramework.lua starts with : `local Config = require Config.lua`
  * All other .lua files (except Config :)) starts with: `local ModuleFramework = require "ModuleFramework"`
  * In the end (at mod creation through builder), a file named AAAboot will load all needed ModuleFrameworks, ModuleFramework.Modules, and ConfigFeature.lua to add the features in the order they were added by the user. This allows us to do modification that uses more than 1 modules properly and makes debugging easier.
 
