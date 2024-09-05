---AUTO GENERATED, DO NOT MODIFY!
---@meta ccs.MovementData

---\js NA
---\lua NA
---@class ccs.MovementData : cc.Ref
---@field duration integer
---@field durationTo integer
---@field durationTween integer
---@field loop boolean
---@field movBoneDataDic any
---@field name string
---@field scale number
---@field tweenEasing cc.tweenfunc.TweenType
local MovementData = {}

---@param movBoneData ccs.MovementBoneData
function MovementData:addMovementBoneData(movBoneData) end

---@return ccs.MovementData
function MovementData.create() end

---@param boneName string
---@return ccs.MovementBoneData
function MovementData:getMovementBoneData(boneName) end

---\js ctor
---@return ccs.MovementData
function MovementData.new() end

return MovementData