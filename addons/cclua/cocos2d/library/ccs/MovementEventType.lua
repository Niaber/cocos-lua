---AUTO GENERATED, DO NOT MODIFY!
---@meta ccs.MovementEventType

---@type ccs.MovementEventType
local VALUE

---
---@enum ccs.MovementEventType
---@operator call(integer): ccs.MovementEventType
local MovementEventType = {
    COMPLETE = 1,
    LOOP_COMPLETE = 2,
    START = 0,
}

---@param v integer
---@return ccs.MovementEventType
function MovementEventType:__call(v) end

return MovementEventType