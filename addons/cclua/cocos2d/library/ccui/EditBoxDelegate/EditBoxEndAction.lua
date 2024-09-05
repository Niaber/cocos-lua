---AUTO GENERATED, DO NOT MODIFY!
---@meta ccui.EditBoxDelegate.EditBoxEndAction

---@type ccui.EditBoxDelegate.EditBoxEndAction
local VALUE

---
---@enum ccui.EditBoxDelegate.EditBoxEndAction
---@operator call(integer): ccui.EditBoxDelegate.EditBoxEndAction
local EditBoxEndAction = {
    RETURN = 3,
    TAB_TO_NEXT = 1,
    TAB_TO_PREVIOUS = 2,
    UNKNOWN = 0,
}

---@param v integer
---@return ccui.EditBoxDelegate.EditBoxEndAction
function EditBoxEndAction:__call(v) end

return EditBoxEndAction