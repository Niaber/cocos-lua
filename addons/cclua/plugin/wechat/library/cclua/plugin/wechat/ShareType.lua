---AUTO GENERATED, DO NOT MODIFY!
---@meta cclua.plugin.wechat.ShareType

---@type cclua.plugin.wechat.ShareType
local VALUE

---
---@enum cclua.plugin.wechat.ShareType
---@operator call(integer): cclua.plugin.wechat.ShareType
local ShareType = {
    IMAGE = 2,
    MUSIC = 3,
    NONE = 0,
    TEXT = 1,
    VIDEO = 4,
    WEB = 5,
}

---@param v integer
---@return cclua.plugin.wechat.ShareType
function ShareType:__call(v) end

return ShareType