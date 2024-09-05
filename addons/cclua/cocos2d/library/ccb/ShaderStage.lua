---AUTO GENERATED, DO NOT MODIFY!
---@meta ccb.ShaderStage

---@type ccb.ShaderStage
local VALUE

---
---@enum ccb.ShaderStage
---@operator call(integer): ccb.ShaderStage
local ShaderStage = {
    FRAGMENT = 1,
    VERTEX = 0,
    VERTEX_AND_FRAGMENT = 2,
}

---@param v integer
---@return ccb.ShaderStage
function ShaderStage:__call(v) end

return ShaderStage