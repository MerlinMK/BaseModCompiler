local ProfessionFramework = require "ProfessionFramework"
---

local type = "NameOfTheTrait" --name of the trait
local details={
    cost=2,                  --(integer) the number of points this trait costs. Note: Can not be adjusted for traits already registered with the java TraitFactory.
    name="Name Of The Trait" --name of the trait (or of the translation entry) Note: Can not be adjusted for traits already registered with the java TraitFactory.
    description="A new trait."            -- description of the trait (or of the translation entry). Note: Can not be adjusted for traits already registered with the java TraitFactory.
    removeInMP=false,          --(bool)Is this trait only for single player mod Note: Can not be adjusted for traits already registered with the java TraitFactory.
    requiresSleepEnabled=false,                     --(bool) Sleeping must be enabled in sandbox settings to select. (MP only) Note: Can not be adjusted for traits already registered with the java TraitFactory.
    profession=false,      --(bool) Is this trait a 'profession trait' (non-selectable) Note: Can not be adjusted for traits already registered with the java TraitFactory.
    xp=nil,  --(table) perk enum values (keys), and the experience levels for each (values). Note when using the xp table on a trait already setup with the java TraitFactory this table will not change  existing xp levels unless they are redefined here.
    swap=nil, --(string) name of another trait to swap this one with OnNewGame. This trait is removed from the player, and the new one added This should only really be used for the 'special' traits.
    exclude=nil, --(table) list of traits this one should be mutually exclusive with.
    add=nil,    --(table) list of additional traits to add to the player OnNewGame
    inventory=nil, --(table) containing items this trait starts with. Keys are item names, values are the count.
    square=nil,   --(table) containing items this trait starts with (on the ground). Keys the item names, values are the count.
    OnNewGame=nil -- (function) a callback executed when the character is created if it has this trait. Arguments are: a IsoPlayer object, a IsoGridSquare object, and the string trait name.
    OnGameStart=nil -- (function) a callback executed OnGameStart if the player has this trait. Arguments are:the string trait name.
}













ProfessionFramework.addTrait = function(type, details)
    ProfessionFramework.Traits[type] = details
end
