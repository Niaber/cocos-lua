---AUTO GENERATED, DO NOT MODIFY!
---@meta cc.WebSocket.State

---@type cc.WebSocket.State
local VALUE

---
---@enum cc.WebSocket.State
---@operator call(integer): cc.WebSocket.State
local State = {
    ---&lt; value 2
    CLOSED = 3,
    ---&lt; value 1
    CLOSING = 2,
    CONNECTING = 0,
    ---&lt; value 0
    OPEN = 1,
}

---@param v integer
---@return cc.WebSocket.State
function State:__call(v) end

return State