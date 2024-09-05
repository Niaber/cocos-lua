---AUTO GENERATED, DO NOT MODIFY!
---@meta cc.EventController.ControllerEventType

---@type cc.EventController.ControllerEventType
local VALUE

---
---@enum cc.EventController.ControllerEventType
---@operator call(integer): cc.EventController.ControllerEventType
local ControllerEventType = {
    AXIS_STATUS_CHANGED = 2,
    BUTTON_STATUS_CHANGED = 1,
    CONNECTION = 0,
}

---@param v integer
---@return cc.EventController.ControllerEventType
function ControllerEventType:__call(v) end

return ControllerEventType