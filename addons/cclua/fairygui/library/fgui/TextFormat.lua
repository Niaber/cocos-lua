---AUTO GENERATED, DO NOT MODIFY!
---@meta fgui.TextFormat

---
---@class fgui.TextFormat 
---@field align cc.TextHAlignment
---@field bold boolean
---@field color any
---@field effect integer
---@field face string
---@field fontSize number
---@field glowColor any
---@field italics boolean
---@field letterSpacing integer
---@field lineSpacing integer
---@field outlineColor any
---@field outlineSize integer
---@field shadowBlurRadius integer
---@field shadowColor any
---@field shadowOffset cc.Size
---@field underline boolean
---@field verticalAlign cc.TextVAlignment
---@field GLOW integer
---@field OUTLINE integer
---@field SHADOW integer
local TextFormat = {}

---@return any
function TextFormat:__gc() end

---@return any
function TextFormat:__olua_move() end

---@param effectFlag integer
function TextFormat:disableEffect(effectFlag) end

---@param effectFlag integer
function TextFormat:enableEffect(effectFlag) end

---@param effectFlag integer
---@return boolean
function TextFormat:hasEffect(effectFlag) end

---@return fgui.TextFormat
function TextFormat.new() end

---@param format fgui.TextFormat
function TextFormat:setFormat(format) end

return TextFormat