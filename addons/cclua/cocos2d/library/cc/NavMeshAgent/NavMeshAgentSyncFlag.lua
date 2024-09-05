---AUTO GENERATED, DO NOT MODIFY!
---@meta cc.NavMeshAgent.NavMeshAgentSyncFlag

---@type cc.NavMeshAgent.NavMeshAgentSyncFlag
local VALUE

---
---@enum cc.NavMeshAgent.NavMeshAgentSyncFlag
---@operator call(integer): cc.NavMeshAgent.NavMeshAgentSyncFlag
local NavMeshAgentSyncFlag = {
    AGENT_TO_NODE = 2,
    NODE_AND_NODE = 3,
    NODE_TO_AGENT = 1,
    NONE = 0,
}

---@param v integer
---@return cc.NavMeshAgent.NavMeshAgentSyncFlag
function NavMeshAgentSyncFlag:__call(v) end

return NavMeshAgentSyncFlag