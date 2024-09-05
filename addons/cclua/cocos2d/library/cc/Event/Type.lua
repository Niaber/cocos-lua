---AUTO GENERATED, DO NOT MODIFY!
---@meta cc.Event.Type

---@type cc.Event.Type
local VALUE

---
---@enum cc.Event.Type
---@operator call(integer): cc.Event.Type
local Type = {
    ACCELERATION = 2,
    CUSTOM = 6,
    FOCUS = 4,
    GAME_CONTROLLER = 5,
    KEYBOARD = 1,
    MOUSE = 3,
    TOUCH = 0,
}

---@param v integer
---@return cc.Event.Type
function Type:__call(v) end

return Type