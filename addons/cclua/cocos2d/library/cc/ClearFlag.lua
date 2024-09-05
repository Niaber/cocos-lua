---AUTO GENERATED, DO NOT MODIFY!
---@meta cc.ClearFlag

---@type cc.ClearFlag
local VALUE

---
---@enum cc.ClearFlag
---@operator call(integer): cc.ClearFlag
local ClearFlag = {
    ALL = 7,
    COLOR = 1,
    DEPTH = 2,
    NONE = 0,
    STENCIL = 4,
}

---@param v integer
---@return cc.ClearFlag
function ClearFlag:__call(v) end

return ClearFlag