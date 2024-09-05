---AUTO GENERATED, DO NOT MODIFY!
---@meta ccui.VideoPlayer.EventType

---@type ccui.VideoPlayer.EventType
local VALUE

---
---@enum ccui.VideoPlayer.EventType
---@operator call(integer): ccui.VideoPlayer.EventType
local EventType = {
    COMPLETED = 3,
    ERROR = 4,
    PAUSED = 1,
    PLAYING = 0,
    STOPPED = 2,
}

---@param v integer
---@return ccui.VideoPlayer.EventType
function EventType:__call(v) end

return EventType