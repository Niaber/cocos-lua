---AUTO GENERATED, DO NOT MODIFY!
---@meta cclua.bugly.LogLevel

---@type cclua.bugly.LogLevel
local VALUE

---
---@enum cclua.bugly.LogLevel
---@operator call(integer): cclua.bugly.LogLevel
local LogLevel = {
    Debug = 4,
    Error = 1,
    Info = 3,
    Off = 0,
    Verbose = 5,
    Warning = 2,
}

---@param v integer
---@return cclua.bugly.LogLevel
function LogLevel:__call(v) end

return LogLevel