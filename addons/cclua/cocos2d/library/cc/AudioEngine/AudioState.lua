---AUTO GENERATED, DO NOT MODIFY!
---@meta cc.AudioEngine.AudioState

---@type cc.AudioEngine.AudioState
local VALUE

---
---@enum cc.AudioEngine.AudioState
---@operator call(integer): cc.AudioEngine.AudioState
local AudioState = {
    ERROR = -1,
    INITIALIZING = 0,
    PAUSED = 2,
    PLAYING = 1,
}

---@param v integer
---@return cc.AudioEngine.AudioState
function AudioState:__call(v) end

return AudioState