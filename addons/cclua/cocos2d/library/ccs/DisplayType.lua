---AUTO GENERATED, DO NOT MODIFY!
---@meta ccs.DisplayType

---@type ccs.DisplayType
local VALUE

---
---@enum ccs.DisplayType
---@operator call(integer): ccs.DisplayType
local DisplayType = {
    ---! display is a single Sprite
    CS_DISPLAY_ARMATURE = 1,
    ---! display is a CCParticle.
    CS_DISPLAY_MAX = 3,
    ---! display is a Armature
    CS_DISPLAY_PARTICLE = 2,
    CS_DISPLAY_SPRITE = 0,
}

---@param v integer
---@return ccs.DisplayType
function DisplayType:__call(v) end

return DisplayType