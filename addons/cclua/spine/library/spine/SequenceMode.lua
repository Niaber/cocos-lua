---AUTO GENERATED, DO NOT MODIFY!
---@meta spine.SequenceMode

---@type spine.SequenceMode
local VALUE

---
---@enum spine.SequenceMode
---@operator call(integer): spine.SequenceMode
local SequenceMode = {
    hold = 0,
    loop = 2,
    loopReverse = 5,
    once = 1,
    onceReverse = 4,
    pingpong = 3,
    pingpongReverse = 6,
}

---@param v integer
---@return spine.SequenceMode
function SequenceMode:__call(v) end

return SequenceMode