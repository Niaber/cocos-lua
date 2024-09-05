---AUTO GENERATED, DO NOT MODIFY!
---@meta cc.WebSocket.ErrorCode

---@type cc.WebSocket.ErrorCode
local VALUE

---
---@enum cc.WebSocket.ErrorCode
---@operator call(integer): cc.WebSocket.ErrorCode
local ErrorCode = {
    ---&lt; value 0
    CONNECTION_FAILURE = 1,
    TIME_OUT = 0,
    ---&lt; value 1
    UNKNOWN = 2,
}

---@param v integer
---@return cc.WebSocket.ErrorCode
function ErrorCode:__call(v) end

return ErrorCode