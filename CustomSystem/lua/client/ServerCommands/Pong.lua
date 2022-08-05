--- Load Client
local Client = require 'Client';

---Handle receiving Pong command from the server
---@param args table
function Client.Commands.Pong(args)
    Client.Log("Received Pong!");
end
