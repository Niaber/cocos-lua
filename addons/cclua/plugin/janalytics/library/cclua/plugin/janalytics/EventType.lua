---AUTO GENERATED, DO NOT MODIFY!
---@meta cclua.plugin.janalytics.EventType

---@type cclua.plugin.janalytics.EventType
local VALUE

---
---@enum cclua.plugin.janalytics.EventType
---@operator call(integer): cclua.plugin.janalytics.EventType
local EventType = {
    BROWSE = 3,
    CALCULATE = 5,
    COUNT = 4,
    LOGIN = 0,
    PURCHASE = 2,
    REGISTER = 1,
}

---@param v integer
---@return cclua.plugin.janalytics.EventType
function EventType:__call(v) end

return EventType