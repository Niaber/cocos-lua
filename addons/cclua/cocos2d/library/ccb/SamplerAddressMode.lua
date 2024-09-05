---AUTO GENERATED, DO NOT MODIFY!
---@meta ccb.SamplerAddressMode

---@type ccb.SamplerAddressMode
local VALUE

---
---@enum ccb.SamplerAddressMode
---@operator call(integer): ccb.SamplerAddressMode
local SamplerAddressMode = {
    CLAMP_TO_EDGE = 2,
    DONT_CARE = 3,
    MIRROR_REPEAT = 1,
    REPEAT = 0,
}

---@param v integer
---@return ccb.SamplerAddressMode
function SamplerAddressMode:__call(v) end

return SamplerAddressMode