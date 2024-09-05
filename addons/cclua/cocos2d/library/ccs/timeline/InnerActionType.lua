---AUTO GENERATED, DO NOT MODIFY!
---@meta ccs.timeline.InnerActionType

---@type ccs.timeline.InnerActionType
local VALUE

---
---@enum ccs.timeline.InnerActionType
---@operator call(integer): ccs.timeline.InnerActionType
local InnerActionType = {
    LoopAction = 0,
    NoLoopAction = 1,
    SingleFrame = 2,
}

---@param v integer
---@return ccs.timeline.InnerActionType
function InnerActionType:__call(v) end

return InnerActionType