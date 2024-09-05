---AUTO GENERATED, DO NOT MODIFY!
---@meta cc.Image.Format

---@type cc.Image.Format
local VALUE

---
---@enum cc.Image.Format
---@operator call(integer): cc.Image.Format
local Format = {
    ---! ATITC
    ATITC = 6,
    ---! ETC
    ETC = 4,
    ---! JPEG
    JPG = 0,
    ---! PNG
    PNG = 1,
    ---! PVR
    PVR = 3,
    ---! Raw Data
    RAW_DATA = 8,
    ---! S3TC
    S3TC = 5,
    ---! TGA
    TGA = 7,
    ---! Unknown format
    UNKNOWN = 9,
    ---! WebP
    WEBP = 2,
}

---@param v integer
---@return cc.Image.Format
function Format:__call(v) end

return Format