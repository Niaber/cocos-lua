---AUTO GENERATED, DO NOT MODIFY!
---@meta ccb.PrimitiveType

---@type ccb.PrimitiveType
local VALUE

---
---@enum ccb.PrimitiveType
---@operator call(integer): ccb.PrimitiveType
local PrimitiveType = {
    LINE = 1,
    LINE_STRIP = 2,
    POINT = 0,
    TRIANGLE = 3,
    TRIANGLE_STRIP = 4,
}

---@param v integer
---@return ccb.PrimitiveType
function PrimitiveType:__call(v) end

return PrimitiveType