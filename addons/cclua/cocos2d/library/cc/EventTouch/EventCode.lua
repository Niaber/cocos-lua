---AUTO GENERATED, DO NOT MODIFY!
---@meta cc.EventTouch.EventCode

---@type cc.EventTouch.EventCode
local VALUE

---
---@enum cc.EventTouch.EventCode
---@operator call(integer): cc.EventTouch.EventCode
local EventCode = {
    BEGAN = 0,
    CANCELLED = 3,
    ENDED = 2,
    MOVED = 1,
}

---@param v integer
---@return cc.EventTouch.EventCode
function EventCode:__call(v) end

return EventCode