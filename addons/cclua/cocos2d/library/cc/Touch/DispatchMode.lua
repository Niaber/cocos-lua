---AUTO GENERATED, DO NOT MODIFY!
---@meta cc.Touch.DispatchMode

---@type cc.Touch.DispatchMode
local VALUE

---
---@enum cc.Touch.DispatchMode
---@operator call(integer): cc.Touch.DispatchMode
local DispatchMode = {
    ALL_AT_ONCE = 0,
    ---All at once.
    ONE_BY_ONE = 1,
}

---@param v integer
---@return cc.Touch.DispatchMode
function DispatchMode:__call(v) end

return DispatchMode