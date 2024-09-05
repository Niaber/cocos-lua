---AUTO GENERATED, DO NOT MODIFY!
---@meta cclua.plugin.wechat.ProgramType

---@type cclua.plugin.wechat.ProgramType
local VALUE

---
---@enum cclua.plugin.wechat.ProgramType
---@operator call(integer): cclua.plugin.wechat.ProgramType
local ProgramType = {
    PREVIEW = 2,
    RELEASE = 0,
    TEST = 1,
}

---@param v integer
---@return cclua.plugin.wechat.ProgramType
function ProgramType:__call(v) end

return ProgramType