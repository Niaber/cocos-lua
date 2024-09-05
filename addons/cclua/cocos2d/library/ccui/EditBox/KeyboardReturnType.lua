---AUTO GENERATED, DO NOT MODIFY!
---@meta ccui.EditBox.KeyboardReturnType

---@type ccui.EditBox.KeyboardReturnType
local VALUE

---
---@enum ccui.EditBox.KeyboardReturnType
---@operator call(integer): ccui.EditBox.KeyboardReturnType
local KeyboardReturnType = {
    DEFAULT = 0,
    DONE = 1,
    GO = 4,
    NEXT = 5,
    SEARCH = 3,
    SEND = 2,
}

---@param v integer
---@return ccui.EditBox.KeyboardReturnType
function KeyboardReturnType:__call(v) end

return KeyboardReturnType