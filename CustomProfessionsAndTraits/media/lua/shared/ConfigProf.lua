local ProfessionFramework = require "ProfessionFramework"

local type="NameOfTheProfession"
local details= {
    name = "Name of the Profession", --string value of a translation key. (default "Unknown")
    cost = 0, --integer value, the number of points this profession starts with. (default 0)
    icon = "", --string value, image filename (without extension) to use. (default "")
    xp = nil, --a table of perk enum values (keys), and the experience levels for each (values). (default nil)
    traits = nil, --a table list of traits this profession starts with. (default nil)
    recipes = nil, --a table list of recipes this profession starts with. (default nil)
    inventory = nil, --a table of items the profession starts with. Keys are item names, values are the count. (default nil)
    square = nil, -- a table of items the profession starts with (on the ground). Keys are item names, values are the count. (default nil)
    spawn = nil, --a table of region names (keys), and suitable values of spawn locations. Use of this key will overrides vanilla regions. (default nil)
    clothing = nil, --a table of BodyLocations and suitable values of clothing items to enable on the character creation screen. (default nil)
    OnNewGame = nil, ---a function to be called when the character is created. (default nil)
}            ---Arguments are a `IsoPlayer` object, a `IsoGridSquare` object, and the `string` profession name.
---------------------Recipes------
local pickrecipes= {"Generator"}

---------------------Start Inventory---
local pickinventory= {
    "ToiletPaper"=5,
}
------------------------Traits--------------------

local picktraits={ "Strong" , }          -- Builder must turn this to... ?
------------------------Skills ------------------
local pickxp={
    Doctor= 0,                             --Skills ---If I read the code correctly ,
                                        --Builder must turn this to PerkFactory.getPerkFromName("Doctor")=0
}
             -------------------- Clothing -------------
local pickclothlist={
    "Base.Hat_BunnyEarsWhite",    --Builder must turn this to
             }                                  --InventoryItem("Base.Hat_BunnyEarsWhite"):getBodyLocation() = InventoryItem("Base.Hat_BunnyEarsWhite")
              -------------------Misc-------------
local pickclothparam={}
clothparam.replace = false;         --bool value, completely replaces all vanilla clothing options (default false)
clothparam.replace_items = false;   --bool value, only replace vanilla options for the BodyLocations specified in this table. (default false)
clothparam.Male = Nil;              --   `Male` clothing subtable for male selection only (default nil)
clothparam.Female= Nil;            --   `Female` clothing subtable for female seleciton only (default nil)
-----------Rest is script
details.traits=picktraits
details.xp=pickxp
details.clothing = pickclothlist
for (k,v) in pairs(pickclothparam) do details.clothing[k]=v end

ProfessionFramework.addProfession(type,details)
