---AUTO GENERATED, DO NOT MODIFY!
---@meta cclua.MP3Encoder.MPEGMode

---@type cclua.MP3Encoder.MPEGMode
local VALUE

---
---@enum cclua.MP3Encoder.MPEGMode
---@operator call(integer): cclua.MP3Encoder.MPEGMode
local MPEGMode = {
    DUAL_CHANNEL = 2,
    JOINT_STEREO = 1,
    MAX_INDICATOR = 5,
    MONO = 3,
    NOT_SET = 4,
    STEREO = 0,
}

---@param v integer
---@return cclua.MP3Encoder.MPEGMode
function MPEGMode:__call(v) end

return MPEGMode