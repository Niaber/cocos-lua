---AUTO GENERATED, DO NOT MODIFY!
---@meta cc.Sequence

---\class Sequence
---Runs actions sequentially, one after another.
---@class cc.Sequence : cc.ActionInterval
local Sequence = {}

---Helper constructor to create an array of sequenceable actions.
---
---@return cc.Sequence # An autoreleased Sequence object.
---@param action1 cc.FiniteTimeAction
---@overload fun(action1: cc.FiniteTimeAction, action1_1: cc.FiniteTimeAction): cc.Sequence
---@overload fun(action1: cc.FiniteTimeAction, action1_1: cc.FiniteTimeAction, action1_2: cc.FiniteTimeAction): cc.Sequence
---@overload fun(action1: cc.FiniteTimeAction, action1_1: cc.FiniteTimeAction, action1_2: cc.FiniteTimeAction, action1_3: cc.FiniteTimeAction): cc.Sequence
---@overload fun(action1: cc.FiniteTimeAction, action1_1: cc.FiniteTimeAction, action1_2: cc.FiniteTimeAction, action1_3: cc.FiniteTimeAction, action1_4: cc.FiniteTimeAction): cc.Sequence
---@overload fun(action1: cc.FiniteTimeAction, action1_1: cc.FiniteTimeAction, action1_2: cc.FiniteTimeAction, action1_3: cc.FiniteTimeAction, action1_4: cc.FiniteTimeAction, action1_5: cc.FiniteTimeAction): cc.Sequence
---@overload fun(action1: cc.FiniteTimeAction, action1_1: cc.FiniteTimeAction, action1_2: cc.FiniteTimeAction, action1_3: cc.FiniteTimeAction, action1_4: cc.FiniteTimeAction, action1_5: cc.FiniteTimeAction, action1_6: cc.FiniteTimeAction): cc.Sequence
---@overload fun(action1: cc.FiniteTimeAction, action1_1: cc.FiniteTimeAction, action1_2: cc.FiniteTimeAction, action1_3: cc.FiniteTimeAction, action1_4: cc.FiniteTimeAction, action1_5: cc.FiniteTimeAction, action1_6: cc.FiniteTimeAction, action1_7: cc.FiniteTimeAction): cc.Sequence
---@overload fun(action1: cc.FiniteTimeAction, action1_1: cc.FiniteTimeAction, action1_2: cc.FiniteTimeAction, action1_3: cc.FiniteTimeAction, action1_4: cc.FiniteTimeAction, action1_5: cc.FiniteTimeAction, action1_6: cc.FiniteTimeAction, action1_7: cc.FiniteTimeAction, action1_8: cc.FiniteTimeAction): cc.Sequence
---@overload fun(action1: cc.FiniteTimeAction, action1_1: cc.FiniteTimeAction, action1_2: cc.FiniteTimeAction, action1_3: cc.FiniteTimeAction, action1_4: cc.FiniteTimeAction, action1_5: cc.FiniteTimeAction, action1_6: cc.FiniteTimeAction, action1_7: cc.FiniteTimeAction, action1_8: cc.FiniteTimeAction, action1_9: cc.FiniteTimeAction): cc.Sequence
---@overload fun(action1: cc.FiniteTimeAction, action1_1: cc.FiniteTimeAction, action1_2: cc.FiniteTimeAction, action1_3: cc.FiniteTimeAction, action1_4: cc.FiniteTimeAction, action1_5: cc.FiniteTimeAction, action1_6: cc.FiniteTimeAction, action1_7: cc.FiniteTimeAction, action1_8: cc.FiniteTimeAction, action1_9: cc.FiniteTimeAction, action1_10: cc.FiniteTimeAction): cc.Sequence
---@overload fun(action1: cc.FiniteTimeAction, action1_1: cc.FiniteTimeAction, action1_2: cc.FiniteTimeAction, action1_3: cc.FiniteTimeAction, action1_4: cc.FiniteTimeAction, action1_5: cc.FiniteTimeAction, action1_6: cc.FiniteTimeAction, action1_7: cc.FiniteTimeAction, action1_8: cc.FiniteTimeAction, action1_9: cc.FiniteTimeAction, action1_10: cc.FiniteTimeAction, action1_11: cc.FiniteTimeAction): cc.Sequence
---@overload fun(action1: cc.FiniteTimeAction, action1_1: cc.FiniteTimeAction, action1_2: cc.FiniteTimeAction, action1_3: cc.FiniteTimeAction, action1_4: cc.FiniteTimeAction, action1_5: cc.FiniteTimeAction, action1_6: cc.FiniteTimeAction, action1_7: cc.FiniteTimeAction, action1_8: cc.FiniteTimeAction, action1_9: cc.FiniteTimeAction, action1_10: cc.FiniteTimeAction, action1_11: cc.FiniteTimeAction, action1_12: cc.FiniteTimeAction): cc.Sequence
---@overload fun(action1: cc.FiniteTimeAction, action1_1: cc.FiniteTimeAction, action1_2: cc.FiniteTimeAction, action1_3: cc.FiniteTimeAction, action1_4: cc.FiniteTimeAction, action1_5: cc.FiniteTimeAction, action1_6: cc.FiniteTimeAction, action1_7: cc.FiniteTimeAction, action1_8: cc.FiniteTimeAction, action1_9: cc.FiniteTimeAction, action1_10: cc.FiniteTimeAction, action1_11: cc.FiniteTimeAction, action1_12: cc.FiniteTimeAction, action1_13: cc.FiniteTimeAction): cc.Sequence
---@overload fun(action1: cc.FiniteTimeAction, action1_1: cc.FiniteTimeAction, action1_2: cc.FiniteTimeAction, action1_3: cc.FiniteTimeAction, action1_4: cc.FiniteTimeAction, action1_5: cc.FiniteTimeAction, action1_6: cc.FiniteTimeAction, action1_7: cc.FiniteTimeAction, action1_8: cc.FiniteTimeAction, action1_9: cc.FiniteTimeAction, action1_10: cc.FiniteTimeAction, action1_11: cc.FiniteTimeAction, action1_12: cc.FiniteTimeAction, action1_13: cc.FiniteTimeAction, action1_14: cc.FiniteTimeAction): cc.Sequence
---@overload fun(action1: cc.FiniteTimeAction, action1_1: cc.FiniteTimeAction, action1_2: cc.FiniteTimeAction, action1_3: cc.FiniteTimeAction, action1_4: cc.FiniteTimeAction, action1_5: cc.FiniteTimeAction, action1_6: cc.FiniteTimeAction, action1_7: cc.FiniteTimeAction, action1_8: cc.FiniteTimeAction, action1_9: cc.FiniteTimeAction, action1_10: cc.FiniteTimeAction, action1_11: cc.FiniteTimeAction, action1_12: cc.FiniteTimeAction, action1_13: cc.FiniteTimeAction, action1_14: cc.FiniteTimeAction, action1_15: cc.FiniteTimeAction): cc.Sequence
---@overload fun(action1: cc.FiniteTimeAction, action1_1: cc.FiniteTimeAction, action1_2: cc.FiniteTimeAction, action1_3: cc.FiniteTimeAction, action1_4: cc.FiniteTimeAction, action1_5: cc.FiniteTimeAction, action1_6: cc.FiniteTimeAction, action1_7: cc.FiniteTimeAction, action1_8: cc.FiniteTimeAction, action1_9: cc.FiniteTimeAction, action1_10: cc.FiniteTimeAction, action1_11: cc.FiniteTimeAction, action1_12: cc.FiniteTimeAction, action1_13: cc.FiniteTimeAction, action1_14: cc.FiniteTimeAction, action1_15: cc.FiniteTimeAction, action1_16: cc.FiniteTimeAction): cc.Sequence
---
---Helper constructor to create an array of sequenceable actions given an array.
---\code
---When this function bound to the js or lua,the input params changed
---in js  :var   create(var   object1,var   object2, ...)
---in lua :local create(local object1,local object2, ...)
---\endcode
---
---\param arrayOfActions An array of sequenceable actions.
---\return An autoreleased Sequence object.
---@overload fun(arrayOfActions: any): cc.Sequence
function Sequence.create(action1) end

---Creates the action.
---@param actionOne cc.FiniteTimeAction # The first sequenceable action.
---@param actionTwo cc.FiniteTimeAction # The second sequenceable action.
---@return cc.Sequence # An autoreleased Sequence object.
---\js NA
function Sequence.createWithTwoActions(actionOne, actionTwo) end

return Sequence