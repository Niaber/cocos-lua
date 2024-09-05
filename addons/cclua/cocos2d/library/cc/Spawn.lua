---AUTO GENERATED, DO NOT MODIFY!
---@meta cc.Spawn

---\class Spawn
---Spawn a new action immediately
---@class cc.Spawn : cc.ActionInterval
local Spawn = {}

---Helper constructor to create an array of spawned actions.
---\code
---When this function bound to the js or lua, the input params changed.
---in js  :var   create(var   object1,var   object2, ...)
---in lua :local create(local object1,local object2, ...)
---\endcode
---
---@return cc.Spawn # An autoreleased Spawn object.
---@param action1 cc.FiniteTimeAction
---@overload fun(action1: cc.FiniteTimeAction, action1_1: cc.FiniteTimeAction): cc.Spawn
---@overload fun(action1: cc.FiniteTimeAction, action1_1: cc.FiniteTimeAction, action1_2: cc.FiniteTimeAction): cc.Spawn
---@overload fun(action1: cc.FiniteTimeAction, action1_1: cc.FiniteTimeAction, action1_2: cc.FiniteTimeAction, action1_3: cc.FiniteTimeAction): cc.Spawn
---@overload fun(action1: cc.FiniteTimeAction, action1_1: cc.FiniteTimeAction, action1_2: cc.FiniteTimeAction, action1_3: cc.FiniteTimeAction, action1_4: cc.FiniteTimeAction): cc.Spawn
---@overload fun(action1: cc.FiniteTimeAction, action1_1: cc.FiniteTimeAction, action1_2: cc.FiniteTimeAction, action1_3: cc.FiniteTimeAction, action1_4: cc.FiniteTimeAction, action1_5: cc.FiniteTimeAction): cc.Spawn
---@overload fun(action1: cc.FiniteTimeAction, action1_1: cc.FiniteTimeAction, action1_2: cc.FiniteTimeAction, action1_3: cc.FiniteTimeAction, action1_4: cc.FiniteTimeAction, action1_5: cc.FiniteTimeAction, action1_6: cc.FiniteTimeAction): cc.Spawn
---@overload fun(action1: cc.FiniteTimeAction, action1_1: cc.FiniteTimeAction, action1_2: cc.FiniteTimeAction, action1_3: cc.FiniteTimeAction, action1_4: cc.FiniteTimeAction, action1_5: cc.FiniteTimeAction, action1_6: cc.FiniteTimeAction, action1_7: cc.FiniteTimeAction): cc.Spawn
---@overload fun(action1: cc.FiniteTimeAction, action1_1: cc.FiniteTimeAction, action1_2: cc.FiniteTimeAction, action1_3: cc.FiniteTimeAction, action1_4: cc.FiniteTimeAction, action1_5: cc.FiniteTimeAction, action1_6: cc.FiniteTimeAction, action1_7: cc.FiniteTimeAction, action1_8: cc.FiniteTimeAction): cc.Spawn
---@overload fun(action1: cc.FiniteTimeAction, action1_1: cc.FiniteTimeAction, action1_2: cc.FiniteTimeAction, action1_3: cc.FiniteTimeAction, action1_4: cc.FiniteTimeAction, action1_5: cc.FiniteTimeAction, action1_6: cc.FiniteTimeAction, action1_7: cc.FiniteTimeAction, action1_8: cc.FiniteTimeAction, action1_9: cc.FiniteTimeAction): cc.Spawn
---@overload fun(action1: cc.FiniteTimeAction, action1_1: cc.FiniteTimeAction, action1_2: cc.FiniteTimeAction, action1_3: cc.FiniteTimeAction, action1_4: cc.FiniteTimeAction, action1_5: cc.FiniteTimeAction, action1_6: cc.FiniteTimeAction, action1_7: cc.FiniteTimeAction, action1_8: cc.FiniteTimeAction, action1_9: cc.FiniteTimeAction, action1_10: cc.FiniteTimeAction): cc.Spawn
---@overload fun(action1: cc.FiniteTimeAction, action1_1: cc.FiniteTimeAction, action1_2: cc.FiniteTimeAction, action1_3: cc.FiniteTimeAction, action1_4: cc.FiniteTimeAction, action1_5: cc.FiniteTimeAction, action1_6: cc.FiniteTimeAction, action1_7: cc.FiniteTimeAction, action1_8: cc.FiniteTimeAction, action1_9: cc.FiniteTimeAction, action1_10: cc.FiniteTimeAction, action1_11: cc.FiniteTimeAction): cc.Spawn
---@overload fun(action1: cc.FiniteTimeAction, action1_1: cc.FiniteTimeAction, action1_2: cc.FiniteTimeAction, action1_3: cc.FiniteTimeAction, action1_4: cc.FiniteTimeAction, action1_5: cc.FiniteTimeAction, action1_6: cc.FiniteTimeAction, action1_7: cc.FiniteTimeAction, action1_8: cc.FiniteTimeAction, action1_9: cc.FiniteTimeAction, action1_10: cc.FiniteTimeAction, action1_11: cc.FiniteTimeAction, action1_12: cc.FiniteTimeAction): cc.Spawn
---@overload fun(action1: cc.FiniteTimeAction, action1_1: cc.FiniteTimeAction, action1_2: cc.FiniteTimeAction, action1_3: cc.FiniteTimeAction, action1_4: cc.FiniteTimeAction, action1_5: cc.FiniteTimeAction, action1_6: cc.FiniteTimeAction, action1_7: cc.FiniteTimeAction, action1_8: cc.FiniteTimeAction, action1_9: cc.FiniteTimeAction, action1_10: cc.FiniteTimeAction, action1_11: cc.FiniteTimeAction, action1_12: cc.FiniteTimeAction, action1_13: cc.FiniteTimeAction): cc.Spawn
---@overload fun(action1: cc.FiniteTimeAction, action1_1: cc.FiniteTimeAction, action1_2: cc.FiniteTimeAction, action1_3: cc.FiniteTimeAction, action1_4: cc.FiniteTimeAction, action1_5: cc.FiniteTimeAction, action1_6: cc.FiniteTimeAction, action1_7: cc.FiniteTimeAction, action1_8: cc.FiniteTimeAction, action1_9: cc.FiniteTimeAction, action1_10: cc.FiniteTimeAction, action1_11: cc.FiniteTimeAction, action1_12: cc.FiniteTimeAction, action1_13: cc.FiniteTimeAction, action1_14: cc.FiniteTimeAction): cc.Spawn
---@overload fun(action1: cc.FiniteTimeAction, action1_1: cc.FiniteTimeAction, action1_2: cc.FiniteTimeAction, action1_3: cc.FiniteTimeAction, action1_4: cc.FiniteTimeAction, action1_5: cc.FiniteTimeAction, action1_6: cc.FiniteTimeAction, action1_7: cc.FiniteTimeAction, action1_8: cc.FiniteTimeAction, action1_9: cc.FiniteTimeAction, action1_10: cc.FiniteTimeAction, action1_11: cc.FiniteTimeAction, action1_12: cc.FiniteTimeAction, action1_13: cc.FiniteTimeAction, action1_14: cc.FiniteTimeAction, action1_15: cc.FiniteTimeAction): cc.Spawn
---@overload fun(action1: cc.FiniteTimeAction, action1_1: cc.FiniteTimeAction, action1_2: cc.FiniteTimeAction, action1_3: cc.FiniteTimeAction, action1_4: cc.FiniteTimeAction, action1_5: cc.FiniteTimeAction, action1_6: cc.FiniteTimeAction, action1_7: cc.FiniteTimeAction, action1_8: cc.FiniteTimeAction, action1_9: cc.FiniteTimeAction, action1_10: cc.FiniteTimeAction, action1_11: cc.FiniteTimeAction, action1_12: cc.FiniteTimeAction, action1_13: cc.FiniteTimeAction, action1_14: cc.FiniteTimeAction, action1_15: cc.FiniteTimeAction, action1_16: cc.FiniteTimeAction): cc.Spawn
---
---Helper constructor to create an array of spawned actions given an array.
---
---\param arrayOfActions    An array of spawned actions.
---\return  An autoreleased Spawn object.
---@overload fun(arrayOfActions: any): cc.Spawn
function Spawn.create(action1) end

---Creates the Spawn action.
---
---@param action1 cc.FiniteTimeAction # The first spawned action.
---@param action2 cc.FiniteTimeAction # The second spawned action.
---@return cc.Spawn # An autoreleased Spawn object.
---\js NA
function Spawn.createWithTwoActions(action1, action2) end

return Spawn