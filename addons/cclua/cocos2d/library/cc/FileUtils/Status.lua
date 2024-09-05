---AUTO GENERATED, DO NOT MODIFY!
---@meta cc.FileUtils.Status

---@type cc.FileUtils.Status
local VALUE

---
---@enum cc.FileUtils.Status
---@operator call(integer): cc.FileUtils.Status
local Status = {
    NotExists = 1,
    NotInitialized = 4,
    NotRegularFileType = 7,
    OK = 0,
    ObtainSizeFailed = 6,
    OpenFailed = 2,
    ReadFailed = 3,
    TooLarge = 5,
}

---@param v integer
---@return cc.FileUtils.Status
function Status:__call(v) end

return Status