---@class Config
local PZConfig=require("PZConfig")
local Config = {

    ModName = "MyModName",
    ModVersion = "1.0.0",
    ModInfo = {
        Author = "AuthorName",
        Discord = "AuthorDiscord",
        --- Add custom info to print in the console log
    },

    --- Define Global ModData tables to create on the client
    --- if true, it will always be requested/overwritten by the server
    --- if false, it will only be local
    ClientModData = { --- KeyPair table, GlobalModData names to create on the client.
        exampleSync = true,     -- request from server
        exampleLocal = false,   -- local only
    },

    --- Define Global ModData tables to create on the server
    ServerModData = { --- Array table, GlobalModData name to create on the server.
        "exampleSync",
    },

    --- Define custom events to add on the client
    ClientEvents = { --- Array table, Custom Event names to create on the client.

        "OnCustomEvent",
    },

    --- Define custom events to add on the server
    ServerEvents = { --- Array table, Custom Event names to create on the server.
        "OnCustomEvent",
    },
    PZConfig = PZConfig,

};

print("--------------------------------------------------------------------")
print("Initializing " .. Config.ModName .. " version " .. Config.ModVersion);
for k, v in pairs(Config.ModInfo) do
    print(k .. ": " .. v); --- print each mod info to the console log
end
return Config;
