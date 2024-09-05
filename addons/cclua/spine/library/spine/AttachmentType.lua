---AUTO GENERATED, DO NOT MODIFY!
---@meta spine.AttachmentType

---@type spine.AttachmentType
local VALUE

---
---@enum spine.AttachmentType
---@operator call(integer): spine.AttachmentType
local AttachmentType = {
    Boundingbox = 1,
    Clipping = 6,
    Linkedmesh = 3,
    Mesh = 2,
    Path = 4,
    Point = 5,
    Region = 0,
}

---@param v integer
---@return spine.AttachmentType
function AttachmentType:__call(v) end

return AttachmentType