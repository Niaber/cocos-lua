---AUTO GENERATED, DO NOT MODIFY!
---@meta cclua.XMLHttpRequest.ResponseType

---@type cclua.XMLHttpRequest.ResponseType
local VALUE

---
---@enum cclua.XMLHttpRequest.ResponseType
---@operator call(integer): cclua.XMLHttpRequest.ResponseType
local ResponseType = {
    ARRAY_BUFFER = 1,
    BLOB = 2,
    DOCUMENT = 3,
    JSON = 4,
    STRING = 0,
}

---@param v integer
---@return cclua.XMLHttpRequest.ResponseType
function ResponseType:__call(v) end

return ResponseType