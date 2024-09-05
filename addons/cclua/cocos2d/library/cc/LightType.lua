---AUTO GENERATED, DO NOT MODIFY!
---@meta cc.LightType

---@type cc.LightType
local VALUE

---
---@enum cc.LightType
---@operator call(integer): cc.LightType
local LightType = {
    AMBIENT = 3,
    DIRECTIONAL = 0,
    POINT = 1,
    SPOT = 2,
}

---@param v integer
---@return cc.LightType
function LightType:__call(v) end

return LightType