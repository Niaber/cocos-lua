---AUTO GENERATED, DO NOT MODIFY!
---@meta b2.BodyType

---@type b2.BodyType
local VALUE

---
---@enum b2.BodyType
---@operator call(integer): b2.BodyType
local BodyType = {
    dynamicBody = 2,
    kinematicBody = 1,
    staticBody = 0,
}

---@param v integer
---@return b2.BodyType
function BodyType:__call(v) end

return BodyType