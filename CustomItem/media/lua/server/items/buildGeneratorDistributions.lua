require 'Items/ProceduralDistributions'
require 'Vehicles/Distributions'

SuburbsDistributions = SuburbsDistributions or {}
ProceduralDistributions = ProceduralDistributions or {}
ProceduralDistributions.list = ProceduralDistributions.list or {}
VehicleDistributions = VehicleDistributions or {}
-- 
local function initBuildGeneratorMagazineDistributions()

    local generatorItem = ScriptManager.instance:getItem("Base.Generator")

    if generatorItem then
        generatorItem:DoParam("Weight =	30")
    end

    local builGenMag = "Base.BuildGeneratorMagazine";
    table.insert(ProceduralDistributions.list.BookstoreMisc.items, builGenMag);
    table.insert(ProceduralDistributions.list.BookstoreMisc.items, 2);
    table.insert(ProceduralDistributions.list.CrateMagazines.items, builGenMag);
    table.insert(ProceduralDistributions.list.CrateMagazines.items, 1);
    table.insert(ProceduralDistributions.list.ElectronicStoreMagazines.items, builGenMag);
    table.insert(ProceduralDistributions.list.ElectronicStoreMagazines.items, 8);
    table.insert(ProceduralDistributions.list.EngineerTools.items, builGenMag);
    table.insert(ProceduralDistributions.list.EngineerTools.items, 1);
    table.insert(ProceduralDistributions.list.LibraryBooks.items, builGenMag);
    table.insert(ProceduralDistributions.list.LibraryBooks.items, 1);
    table.insert(ProceduralDistributions.list.LivingRoomShelf.items, builGenMag);
    table.insert(ProceduralDistributions.list.LivingRoomShelf.items, 0.1);
    table.insert(ProceduralDistributions.list.LivingRoomShelfNoTapes.items, builGenMag);
    table.insert(ProceduralDistributions.list.LivingRoomShelfNoTapes.items, 0.1);
    table.insert(ProceduralDistributions.list.LivingRoomSideTable.items, builGenMag);
    table.insert(ProceduralDistributions.list.LivingRoomSideTable.items, 0.1);
    table.insert(ProceduralDistributions.list.LivingRoomSideTableNoRemote.items, builGenMag);
    table.insert(ProceduralDistributions.list.LivingRoomSideTableNoRemote.items, 0.1);
    table.insert(ProceduralDistributions.list.MagazineRackMixed.items, builGenMag);
    table.insert(ProceduralDistributions.list.MagazineRackMixed.items, 1);
    table.insert(ProceduralDistributions.list.PostOfficeMagazines.items, builGenMag);
    table.insert(ProceduralDistributions.list.PostOfficeMagazines.items, 1);
    table.insert(ProceduralDistributions.list.ShelfGeneric.items, builGenMag);
    table.insert(ProceduralDistributions.list.ShelfGeneric.items, 0.1);
    table.insert(ProceduralDistributions.list.ToolStoreBooks.items, builGenMag);
    table.insert(ProceduralDistributions.list.ToolStoreBooks.items, 2);

    table.insert(VehicleDistributions["ElectricianTruckBed"].items, builGenMag);
    table.insert(VehicleDistributions["ElectricianTruckBed"].items, 1.5);
    table.insert(VehicleDistributions["Postal"]["TruckBed"].items, builGenMag);
    table.insert(VehicleDistributions["Postal"]["TruckBed"].items, 0.4);

    table.insert(SuburbsDistributions["all"]["postbox"].items, builGenMag);
    table.insert(SuburbsDistributions["all"]["postbox"].items, 0.4);
end

Events.OnPreDistributionMerge.Add(initBuildGeneratorMagazineDistributions)