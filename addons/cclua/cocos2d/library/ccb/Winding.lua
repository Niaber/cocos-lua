---AUTO GENERATED, DO NOT MODIFY!
---@meta ccb.Winding

---@type ccb.Winding
local VALUE

---
---@enum ccb.Winding
---@operator call(integer): ccb.Winding
local Winding = {
    CLOCK_WISE = 0,
    COUNTER_CLOCK_WISE = 1,
}

---@param v integer
---@return ccb.Winding
function Winding:__call(v) end

return Winding