---AUTO GENERATED, DO NOT MODIFY!
---@meta fgui.LoaderFillType

---@type fgui.LoaderFillType
local VALUE

---
---@enum fgui.LoaderFillType
---@operator call(integer): fgui.LoaderFillType
local LoaderFillType = {
    NONE = 0,
    SCALE = 1,
    SCALE_FREE = 4,
    SCALE_MATCH_HEIGHT = 2,
    SCALE_MATCH_WIDTH = 3,
    SCALE_NO_BORDER = 5,
}

---@param v integer
---@return fgui.LoaderFillType
function LoaderFillType:__call(v) end

return LoaderFillType