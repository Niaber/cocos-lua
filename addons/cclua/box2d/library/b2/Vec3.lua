---AUTO GENERATED, DO NOT MODIFY!
---@meta b2.Vec3

---A 2D column vector with 3 elements.
---@class b2.Vec3 
---@field x number
---@field y number
---@field z number
local Vec3 = {}

---@return any
function Vec3:__gc() end

---@return any
function Vec3:__olua_move() end

---Default constructor does nothing (for performance).
---@return b2.Vec3
---
---Construct using coordinates.
---@overload fun(xIn: number, yIn: number, zIn: number): b2.Vec3
function Vec3.new() end

---Set this vector to some specified coordinates.
---@param x_ number
---@param y_ number
---@param z_ number
function Vec3:set(x_, y_, z_) end

---Set this vector to all zeros.
function Vec3:setZero() end

return Vec3