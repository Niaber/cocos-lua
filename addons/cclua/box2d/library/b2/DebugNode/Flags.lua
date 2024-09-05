---AUTO GENERATED, DO NOT MODIFY!
---@meta b2.DebugNode.Flags

---@type b2.DebugNode.Flags
local VALUE

---
---@enum b2.DebugNode.Flags
---@operator call(integer): b2.DebugNode.Flags
local Flags = {
    AABB = 4,
    CENTER_OF_MASS = 16,
    JOINT = 2,
    PAIRE = 8,
    SHAPE = 1,
}

---@param v integer
---@return b2.DebugNode.Flags
function Flags:__call(v) end

return Flags