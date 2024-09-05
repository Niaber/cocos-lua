---AUTO GENERATED, DO NOT MODIFY!
---@meta cclua.QRCode.ECLevel

---@type cclua.QRCode.ECLevel
local VALUE

---
---@enum cclua.QRCode.ECLevel
---@operator call(integer): cclua.QRCode.ECLevel
local ECLevel = {
    ---< highest
    QR_ECLEVEL_H = 3,
    ---< lowest
    QR_ECLEVEL_L = 0,
    QR_ECLEVEL_M = 1,
    QR_ECLEVEL_Q = 2,
}

---@param v integer
---@return cclua.QRCode.ECLevel
function ECLevel:__call(v) end

return ECLevel