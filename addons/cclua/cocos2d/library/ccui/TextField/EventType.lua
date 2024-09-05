---AUTO GENERATED, DO NOT MODIFY!
---@meta ccui.TextField.EventType

---@type ccui.TextField.EventType
local VALUE

---
---@enum ccui.TextField.EventType
---@operator call(integer): ccui.TextField.EventType
local EventType = {
    ATTACH_WITH_IME = 0,
    DELETE_BACKWARD = 3,
    DETACH_WITH_IME = 1,
    INSERT_TEXT = 2,
}

---@param v integer
---@return ccui.TextField.EventType
function EventType:__call(v) end

return EventType