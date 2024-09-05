---AUTO GENERATED, DO NOT MODIFY!
---@meta ccb.StencilOperation

---@type ccb.StencilOperation
local VALUE

---
---@enum ccb.StencilOperation
---@operator call(integer): ccb.StencilOperation
local StencilOperation = {
    DECREMENT_WRAP = 5,
    INCREMENT_WRAP = 4,
    INVERT = 3,
    KEEP = 0,
    REPLACE = 2,
    ZERO = 1,
}

---@param v integer
---@return ccb.StencilOperation
function StencilOperation:__call(v) end

return StencilOperation