---AUTO GENERATED, DO NOT MODIFY!
---@meta cc.Sprite3DMaterial.MaterialType

---@type cc.Sprite3DMaterial.MaterialType
local VALUE

---
---@enum cc.Sprite3DMaterial.MaterialType
---@operator call(integer): cc.Sprite3DMaterial.MaterialType
local MaterialType = {
    BUMPED_DIFFUSE = 5,
    CUSTOM = 6,
    DIFFUSE = 3,
    DIFFUSE_NOTEX = 4,
    UNLIT = 0,
    UNLIT_NOTEX = 1,
    VERTEX_LIT = 2,
}

---@param v integer
---@return cc.Sprite3DMaterial.MaterialType
function MaterialType:__call(v) end

return MaterialType