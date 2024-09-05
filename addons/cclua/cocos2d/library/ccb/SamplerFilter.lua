---AUTO GENERATED, DO NOT MODIFY!
---@meta ccb.SamplerFilter

---@type ccb.SamplerFilter
local VALUE

---
---@enum ccb.SamplerFilter
---@operator call(integer): ccb.SamplerFilter
local SamplerFilter = {
    DONT_CARE = 6,
    LINEAR = 3,
    LINEAR_MIPMAP_LINEAR = 4,
    LINEAR_MIPMAP_NEAREST = 5,
    NEAREST = 0,
    NEAREST_MIPMAP_LINEAR = 2,
    NEAREST_MIPMAP_NEAREST = 1,
}

---@param v integer
---@return ccb.SamplerFilter
function SamplerFilter:__call(v) end

return SamplerFilter