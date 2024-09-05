---AUTO GENERATED, DO NOT MODIFY!
---@meta cc.RenderTargetFlag

---@type cc.RenderTargetFlag
local VALUE

---
---@enum cc.RenderTargetFlag
---@operator call(integer): cc.RenderTargetFlag
local RenderTargetFlag = {
    ALL = 7,
    COLOR = 1,
    DEPTH = 2,
    STENCIL = 4,
}

---@param v integer
---@return cc.RenderTargetFlag
function RenderTargetFlag:__call(v) end

return RenderTargetFlag