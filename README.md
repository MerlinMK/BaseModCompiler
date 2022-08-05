## Project Zomboid BaseModCompiler (Non functionnal)

The idea is to gather basic mod templates, to make them compatible, and to write a script (in #Builder directory, that I'll call Builder)
that takes care of merging them in a playable MyModName folder.
I started and learned a lot from Konijima's [BaseMod](https://github.com/Konijima/PZ-BaseMod) that implements a very nice lua client server interaction,
allowing a lot of new possibilities (custom events!), in a very clean way.

Another big import is from FWolfe's [Profession Framework](https://github.com/FWolfe/ProfessionFramework).
I just twinked a bit his code to write it in the same spirit as BaseMod.

I was lead through this after searching to make a mod that convert a custom tilesheet sprite into 
something with more properties than what gives a .tiles, and that is one of the incoming template.
For the moment, I'm building basic templates from mods and thinking how things should be organized.

Thoughts on other README.md

## Workspace

I'm using IntelliJ, as in [How to decompile and setup a workspace](https://github.com/Konijima/PZ-Libraries)

## Feel Free
To help in any way!
To pick templates to make your mods!
Discord : VMK#9917
or @MK Ultra on official PZ discord (modding channel!).
This project is really intended to be collaborative as PZ is just a hobby and I'm just enjoying learning lua doing this.
And I hope modders will spontaneously share their hard work custom modules, without that the project will stay at its state of
"me learning lua digging other mods sources" :)
