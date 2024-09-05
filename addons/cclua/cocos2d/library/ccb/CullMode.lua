---AUTO GENERATED, DO NOT MODIFY!
---@meta ccb.CullMode

---@type ccb.CullMode
local VALUE

---
---@enum ccb.CullMode
---@operator call(integer): ccb.CullMode
local CullMode = {
    BACK = 1,
    FRONT = 2,
    NONE = 0,
}

---@param v integer
---@return ccb.CullMode
function CullMode:__call(v) end

return CullMode