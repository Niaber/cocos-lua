---AUTO GENERATED, DO NOT MODIFY!
---@meta ccui.Slider.EventType

---@type ccui.Slider.EventType
local VALUE

---
---@enum ccui.Slider.EventType
---@operator call(integer): ccui.Slider.EventType
local EventType = {
    ON_PERCENTAGE_CHANGED = 0,
    ON_SLIDEBALL_CANCEL = 3,
    ON_SLIDEBALL_DOWN = 1,
    ON_SLIDEBALL_UP = 2,
}

---@param v integer
---@return ccui.Slider.EventType
function EventType:__call(v) end

return EventType