---AUTO GENERATED, DO NOT MODIFY!
---@meta ccs.TextureData

---
---@class ccs.TextureData : cc.Ref
---@field contourDataList any
---@field height number
---@field name string
---@field pivotX number
---@field pivotY number
---@field width number
local TextureData = {}

---@param contourData ccs.ContourData
function TextureData:addContourData(contourData) end

---@return ccs.TextureData
function TextureData.create() end

---@param index integer
---@return ccs.ContourData
function TextureData:getContourData(index) end

---@return boolean
function TextureData:init() end

---\js ctor
---@return ccs.TextureData
function TextureData.new() end

return TextureData