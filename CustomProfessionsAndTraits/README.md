## Profession Framework - WIP

I took Profession Framework by **Fenris_Wolf**, and I changed it a bit to be safe with compatibility.
I asked him permission for it but had no answer yet.

##**Fenris_Wolf**'s doc.
Adds a framework to simply adding additional professions and traits to project zomboid,
and editing the default professions. As well as simplifying the modding process and letting
professions have the 'special' traits (brave, lucky, etc), it also  simplifies the processes
of adding starting gear to various professions/traits.

Be aware this mod adds no new professions or traits itself, it is merely a framework to assist modders.
For maximum compatibility this mod should not included in your own mod, but instead listed as
a requirement in your `mod.info` file.

The advantages of using the Profession Framework vs the vanilla system:

* Cleaner syntax. Professions and traits are defined in a table, instead of potentially writing dozens of function calls.

* All aspects of professions are defined in a single spot (the table), instead of multiple files (initial setup, spawn points, clothing).

* Allows for adding customized starting kits including inventory and items on the ground, for both professions and traits.

The vanilla game files define the Hunter trait and Park Ranger profession as:
