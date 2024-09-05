---AUTO GENERATED, DO NOT MODIFY!
---@meta cc.Director.Projection

---@type cc.Director.Projection
local VALUE

---
---@enum cc.Director.Projection
---@operator call(integer): cc.Director.Projection
local Projection = {
    ---It calls "updateProjection" on the projection delegate.
    CUSTOM = 2,
    ---Default projection is 3D projection.
    DEFAULT = 1,
    ---Sets a 2D projection (orthogonal projection).
    _2D = 0,
    ---Sets a 3D projection with a fovy=60, znear=0.5f and zfar=1500.
    _3D = 1,
}

---@param v integer
---@return cc.Director.Projection
function Projection:__call(v) end

return Projection