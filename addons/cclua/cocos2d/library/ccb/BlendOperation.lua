---AUTO GENERATED, DO NOT MODIFY!
---@meta ccb.BlendOperation

---@type ccb.BlendOperation
local VALUE

---
---@enum ccb.BlendOperation
---@operator call(integer): ccb.BlendOperation
local BlendOperation = {
    ADD = 0,
    RESERVE_SUBTRACT = 2,
    SUBTRACT = 1,
}

---@param v integer
---@return ccb.BlendOperation
function BlendOperation:__call(v) end

return BlendOperation