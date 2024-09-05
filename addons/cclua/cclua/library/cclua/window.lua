---AUTO GENERATED, DO NOT MODIFY!
---@meta cclua.window

---
---@class cclua.window 
---@field designSize cc.Size 
---@field frameSize cc.Size 
---@field visibleBounds cc.Bounds 
---@field visibleSize cc.Size 
local window = {}

---@return any
function window:__gc() end

---@return any
function window:__olua_move() end

---@param position cc.Vec2
---@return cc.Vec2
---@overload fun(position: cc.Vec2): cc.Vec2
function window.convertToCameraSpace(position) end

---@return cc.Size
function window.getDesignSize() end

---@return cc.Size
function window.getFrameSize() end

---@return cc.Bounds
function window.getVisibleBounds() end

---@return cc.Size
function window.getVisibleSize() end

---@param size cc.Size
---@param resolutionPolicy cc.ResolutionPolicy
---@overload fun(size: cc.Size, resolutionPolicy: cc.ResolutionPolicy)
function window.setDesignSize(size, resolutionPolicy) end

---@param size cc.Size
---@overload fun(size: cc.Size)
function window.setFrameSize(size) end

return window