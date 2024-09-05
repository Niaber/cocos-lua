---AUTO GENERATED, DO NOT MODIFY!
---@meta ccb.ColorWriteMask

---@type ccb.ColorWriteMask
local VALUE

---
---@enum ccb.ColorWriteMask
---@operator call(integer): ccb.ColorWriteMask
local ColorWriteMask = {
    ALL = 15,
    ALPHA = 8,
    BLUE = 4,
    GREEN = 2,
    NONE = 0,
    RED = 1,
}

---@param v integer
---@return ccb.ColorWriteMask
function ColorWriteMask:__call(v) end

return ColorWriteMask