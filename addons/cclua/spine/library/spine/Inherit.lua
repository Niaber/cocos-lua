---AUTO GENERATED, DO NOT MODIFY!
---@meta spine.Inherit

---@type spine.Inherit
local VALUE

---
---@enum spine.Inherit
---@operator call(integer): spine.Inherit
local Inherit = {
    NoRotationOrReflection = 2,
    NoScale = 3,
    NoScaleOrReflection = 4,
    Normal = 0,
    OnlyTranslation = 1,
}

---@param v integer
---@return spine.Inherit
function Inherit:__call(v) end

return Inherit