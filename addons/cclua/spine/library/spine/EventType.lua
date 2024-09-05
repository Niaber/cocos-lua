---AUTO GENERATED, DO NOT MODIFY!
---@meta spine.EventType

---@type spine.EventType
local VALUE

---
---@enum spine.EventType
---@operator call(integer): spine.EventType
local EventType = {
    Complete = 3,
    Dispose = 4,
    End = 2,
    Event = 5,
    Interrupt = 1,
    Start = 0,
}

---@param v integer
---@return spine.EventType
function EventType:__call(v) end

return EventType