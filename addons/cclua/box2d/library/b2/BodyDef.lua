---AUTO GENERATED, DO NOT MODIFY!
---@meta b2.BodyDef

---A body definition holds all the data needed to construct a rigid body.
---You can safely re-use body definitions. Shapes are added to a body after construction.
---@class b2.BodyDef 
---@field allowSleep boolean
---@field angle number
---@field angularDamping number
---@field angularVelocity number
---@field awake boolean
---@field bullet boolean
---@field enabled boolean
---@field fixedRotation boolean
---@field gravityScale number
---@field linearDamping number
---@field linearVelocity b2.Vec2
---@field position b2.Vec2
---@field type b2.BodyType
---@field userData b2.BodyUserData
local BodyDef = {}

---@return any
function BodyDef:__gc() end

---@return any
function BodyDef:__olua_move() end

---This constructor sets the body definition default values.
---@return b2.BodyDef
function BodyDef.new() end

return BodyDef