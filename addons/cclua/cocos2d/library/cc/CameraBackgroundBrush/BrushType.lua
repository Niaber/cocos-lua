---AUTO GENERATED, DO NOT MODIFY!
---@meta cc.CameraBackgroundBrush.BrushType

---@type cc.CameraBackgroundBrush.BrushType
local VALUE

---
---@enum cc.CameraBackgroundBrush.BrushType
---@operator call(integer): cc.CameraBackgroundBrush.BrushType
local BrushType = {
    COLOR = 2,
    DEPTH = 1,
    NONE = 0,
    SKYBOX = 3,
}

---@param v integer
---@return cc.CameraBackgroundBrush.BrushType
function BrushType:__call(v) end

return BrushType