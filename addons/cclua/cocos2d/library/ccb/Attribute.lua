---AUTO GENERATED, DO NOT MODIFY!
---@meta ccb.Attribute

---@type ccb.Attribute
local VALUE

---
---@enum ccb.Attribute
---@operator call(integer): ccb.Attribute
local Attribute = {
    ATTRIBUTE_MAX = 6,
    COLOR = 1,
    POSITION = 0,
    TEXCOORD = 2,
    TEXCOORD1 = 3,
    TEXCOORD2 = 4,
    TEXCOORD3 = 5,
}

---@param v integer
---@return ccb.Attribute
function Attribute:__call(v) end

return Attribute