---AUTO GENERATED, DO NOT MODIFY!
---@meta ccb.VertexFormat

---@type ccb.VertexFormat
local VALUE

---
---@enum ccb.VertexFormat
---@operator call(integer): ccb.VertexFormat
local VertexFormat = {
    FLOAT = 3,
    FLOAT2 = 2,
    FLOAT3 = 1,
    FLOAT4 = 0,
    INT = 7,
    INT2 = 6,
    INT3 = 5,
    INT4 = 4,
    UBYTE4 = 10,
    USHORT2 = 9,
    USHORT4 = 8,
}

---@param v integer
---@return ccb.VertexFormat
function VertexFormat:__call(v) end

return VertexFormat