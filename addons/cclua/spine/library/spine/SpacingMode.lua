---AUTO GENERATED, DO NOT MODIFY!
---@meta spine.SpacingMode

---@type spine.SpacingMode
local VALUE

---
---@enum spine.SpacingMode
---@operator call(integer): spine.SpacingMode
local SpacingMode = {
    Fixed = 1,
    Length = 0,
    Percent = 2,
    Proportional = 3,
}

---@param v integer
---@return spine.SpacingMode
function SpacingMode:__call(v) end

return SpacingMode