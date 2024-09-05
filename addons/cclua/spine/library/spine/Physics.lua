---AUTO GENERATED, DO NOT MODIFY!
---@meta spine.Physics

---@type spine.Physics
local VALUE

---
---@enum spine.Physics
---@operator call(integer): spine.Physics
local Physics = {
    ---Physics are not updated or applied.
    None = 0,
    ---Physics are not updated but the pose from physics is applied.
    Pose = 3,
    ---Physics are reset to the current pose.
    Reset = 1,
    ---Physics are updated and the pose from physics is applied.
    Update = 2,
}

---@param v integer
---@return spine.Physics
function Physics:__call(v) end

return Physics