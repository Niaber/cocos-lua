---AUTO GENERATED, DO NOT MODIFY!
---@meta b2.MotorJointDef

---Motor joint definition.
---@class b2.MotorJointDef : b2.JointDef
---@field angularOffset number
---@field correctionFactor number
---@field linearOffset b2.Vec2
---@field maxForce number
---@field maxTorque number
local MotorJointDef = {}

---Initialize the bodies and offsets using the current transforms.
---@param bodyA b2.Body
---@param bodyB b2.Body
function MotorJointDef:initialize(bodyA, bodyB) end

---@return b2.MotorJointDef
function MotorJointDef.new() end

return MotorJointDef