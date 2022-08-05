## General organisation
* #Builder directory contains the compiler,
* beside that, we have one directory per module.

## Module directories organisation
* They are pathed most naive way you'd path them to make a single small mod,
* I organise code like this :
   * All needed data to add a single feature are in the Config.lua files.
   * Other .lua files contains functions and their calls exactly how you'd write them if the config file was a table containing (in a controlled sequential way) the list of needed infos to implement added features through the compiler. 
   * From that, we'll implement features in the order they're created in the builder.
