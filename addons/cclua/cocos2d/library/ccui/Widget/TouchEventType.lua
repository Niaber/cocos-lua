---AUTO GENERATED, DO NOT MODIFY!
---@meta ccui.Widget.TouchEventType

---@type ccui.Widget.TouchEventType
local VALUE

---
---@enum ccui.Widget.TouchEventType
---@operator call(integer): ccui.Widget.TouchEventType
local TouchEventType = {
    BEGAN = 0,
    CANCELED = 3,
    ENDED = 2,
    MOVED = 1,
}

---@param v integer
---@return ccui.Widget.TouchEventType
function TouchEventType:__call(v) end

return TouchEventType