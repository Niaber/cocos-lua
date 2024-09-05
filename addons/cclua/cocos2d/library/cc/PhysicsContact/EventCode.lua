---AUTO GENERATED, DO NOT MODIFY!
---@meta cc.PhysicsContact.EventCode

---@type cc.PhysicsContact.EventCode
local VALUE

---
---@enum cc.PhysicsContact.EventCode
---@operator call(integer): cc.PhysicsContact.EventCode
local EventCode = {
    BEGIN = 1,
    NONE = 0,
    POSTSOLVE = 3,
    PRESOLVE = 2,
    SEPARATE = 4,
}

---@param v integer
---@return cc.PhysicsContact.EventCode
function EventCode:__call(v) end

return EventCode