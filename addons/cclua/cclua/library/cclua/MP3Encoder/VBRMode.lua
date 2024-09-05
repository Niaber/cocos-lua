---AUTO GENERATED, DO NOT MODIFY!
---@meta cclua.MP3Encoder.VBRMode

---@type cclua.MP3Encoder.VBRMode
local VALUE

---
---@enum cclua.MP3Encoder.VBRMode
---@operator call(integer): cclua.MP3Encoder.VBRMode
local VBRMode = {
    ABR = 3,
    DEFAULT = 4,
    MAX_INDICATOR = 5,
    MT = 1,
    MTRH = 4,
    OFF = 0,
    RH = 2,
}

---@param v integer
---@return cclua.MP3Encoder.VBRMode
function VBRMode:__call(v) end

return VBRMode