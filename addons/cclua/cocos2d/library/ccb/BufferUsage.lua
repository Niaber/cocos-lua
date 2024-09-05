---AUTO GENERATED, DO NOT MODIFY!
---@meta ccb.BufferUsage

---@type ccb.BufferUsage
local VALUE

---
---@enum ccb.BufferUsage
---@operator call(integer): ccb.BufferUsage
local BufferUsage = {
    DYNAMIC = 1,
    STATIC = 0,
}

---@param v integer
---@return ccb.BufferUsage
function BufferUsage:__call(v) end

return BufferUsage