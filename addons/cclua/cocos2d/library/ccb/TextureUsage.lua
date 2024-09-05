---AUTO GENERATED, DO NOT MODIFY!
---@meta ccb.TextureUsage

---@type ccb.TextureUsage
local VALUE

---
---@enum ccb.TextureUsage
---@operator call(integer): ccb.TextureUsage
local TextureUsage = {
    READ = 0,
    RENDER_TARGET = 2,
    WRITE = 1,
}

---@param v integer
---@return ccb.TextureUsage
function TextureUsage:__call(v) end

return TextureUsage