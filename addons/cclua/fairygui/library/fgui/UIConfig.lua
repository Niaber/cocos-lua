---AUTO GENERATED, DO NOT MODIFY!
---@meta fgui.UIConfig

---
---@class fgui.UIConfig 
---@field bringWindowToFrontOnClick boolean
---@field buttonSound string
---@field buttonSoundVolumeScale number
---@field clickDragSensitivity integer
---@field defaultComboBoxVisibleItemCount integer
---@field defaultFont string
---@field defaultScrollBarDisplay fgui.ScrollBarDisplayType
---@field defaultScrollBounceEffect boolean
---@field defaultScrollDecelerationRate number
---@field defaultScrollStep integer
---@field defaultScrollTouchEffect boolean
---@field globalModalWaiting string
---@field horizontalScrollBar string
---@field modalLayerColor any
---@field popupMenu string
---@field popupMenu_seperator string
---@field tooltipsWin string
---@field touchDragSensitivity integer
---@field touchScrollSensitivity integer
---@field verticalScrollBar string
---@field windowModalWaiting string
local UIConfig = {}

---@return any
function UIConfig:__gc() end

---@return any
function UIConfig:__olua_move() end

---@param aliasName string
---@param isTTF olua.bool
---@return string
---@overload fun(aliasName: string): string
function UIConfig.getRealFontName(aliasName, isTTF) end

---@param aliasName string
---@param realName string
function UIConfig.registerFont(aliasName, realName) end

return UIConfig