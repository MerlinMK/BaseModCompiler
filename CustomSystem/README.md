## CustomSystem Module
is the fork of Konijima's BaseMod.
I kept here what was necessary for the client/server interaction, Config and Utils files, and
added a PZConfig file for a precise use, with the idea it could be useful for later modules.
For the moment I stored in it the list of vanilla events list for some purpose,
because we can't access it via LuaEventManager.EventList (private).

So in here, client/server interactions, commands and Moddata organisation.
This module will always be loaded by the builder.
## what moved
I let ClientEvents.lua and ServerEvents.lua in here because I think Konijima though of these files together,
but I created a folder CustomCallBacksAndEvents that will contains needed templates.
I moved the CustomTimedAction tuto and the recipe.lua as future templates.
I removed a layer of directory Konijima added for assuring compatibility (can be set up in the script).

I also added 2 lines in each of the last 3 functions of ClientEvent.lua and ServerEvent.lua,
making custom commands on (event, callback) compatible with vanilla events.
This should facilitate coding other modules with callbacks a bit.