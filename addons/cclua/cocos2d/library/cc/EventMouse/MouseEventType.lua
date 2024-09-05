---AUTO GENERATED, DO NOT MODIFY!
---@meta cc.EventMouse.MouseEventType

---@type cc.EventMouse.MouseEventType
local VALUE

---
---@enum cc.EventMouse.MouseEventType
---@operator call(integer): cc.EventMouse.MouseEventType
local MouseEventType = {
    MOUSE_DOWN = 1,
    MOUSE_MOVE = 3,
    MOUSE_NONE = 0,
    MOUSE_SCROLL = 4,
    MOUSE_UP = 2,
}

---@param v integer
---@return cc.EventMouse.MouseEventType
function MouseEventType:__call(v) end

return MouseEventType