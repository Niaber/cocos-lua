---AUTO GENERATED, DO NOT MODIFY!
---@meta cc.PhysicsShape.Type

---@type cc.PhysicsShape.Type
local VALUE

---
---@enum cc.PhysicsShape.Type
---@operator call(integer): cc.PhysicsShape.Type
local Type = {
    BOX = 2,
    CIRCLE = 1,
    EDGEBOX = 5,
    EDGECHAIN = 7,
    ---\deprecated Use Type::EDGEPOLYGON instead.
    EDGEPOLYGEN = 6,
    EDGEPOLYGON = 6,
    EDGESEGMENT = 4,
    ---\deprecated Use Type::POLYGON instead.
    POLYGEN = 3,
    POLYGON = 3,
    UNKNOWN = 0,
}

---@param v integer
---@return cc.PhysicsShape.Type
function Type:__call(v) end

return Type