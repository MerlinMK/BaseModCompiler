require "Foraging/forageDefinitions";

forageDefs = forageDefs or {};


forageDefs["BuildGeneratorMagazine"] = {
    type = "Base.BuildGeneratorMagazine",
    skill = 0,
    xp = 10,
    categories = { "Junk" },
    zones = {
        Forest      = 20,
        DeepForest  = 20,
        Vegitation  = 20,
        FarmLand    = 20,
        Farm        = 20,
        TrailerPark = 20,
        TownZone    = 20,
        Nav         = 20,
    },
    spawnFuncs = { doGenericItemSpawn },
    forceOutside = false,
    canBeAboveFloor = true,
    itemSizeModifier = 0.5,
    isItemOverrideSize = true,
};