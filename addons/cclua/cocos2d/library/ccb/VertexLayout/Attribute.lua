---AUTO GENERATED, DO NOT MODIFY!
---@meta ccb.VertexLayout.Attribute

---
---@class ccb.VertexLayout.Attribute 
---@field format ccb.VertexFormat
---@field index integer
---@field name string
---@field needToBeNormallized boolean
---@field offset integer
local Attribute = {}

---@return any
function Attribute:__gc() end

---@return any
function Attribute:__olua_move() end

---@return ccb.VertexLayout.Attribute
---@overload fun(_name: string, _index: integer, _format: ccb.VertexFormat, _offset: integer, needToBeNormallized: boolean): ccb.VertexLayout.Attribute
function Attribute.new() end

return Attribute