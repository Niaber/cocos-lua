---AUTO GENERATED, DO NOT MODIFY!
---@meta b2.Color

---Color for debug drawing. Each value has the range [0,1].
---@class b2.Color 
---@field a number
---@field b number
---@field g number
---@field r number
local Color = {}

---@return any
function Color:__gc() end

---@return any
function Color:__olua_move() end

---@return b2.Color
---@overload fun(rIn: number, gIn: number, bIn: number, aIn: number): b2.Color
---@overload fun(rIn: number, gIn: number, bIn: number): b2.Color
function Color.new() end

---@param rIn number
---@param gIn number
---@param bIn number
---@param aIn number
---@overload fun(self: b2.Color, rIn: number, gIn: number, bIn: number)
function Color:set(rIn, gIn, bIn, aIn) end

return Color