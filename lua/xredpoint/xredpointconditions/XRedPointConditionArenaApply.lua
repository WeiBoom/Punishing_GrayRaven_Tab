---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by 0.
--- DateTime: 2019/5/15 22:39
---
----------------------------------------------------------------
--节红点检测
local XRedPointConditionArenaApply = {}

local Events = nil
function XRedPointConditionArenaApply.GetSubEvents()
    Events = Events or
            {
                XRedPointEventElement.New(XEventId.EVENT_ARENA_TEAM_CHANGE),
                XRedPointEventElement.New(XEventId.EVENT_ARENA_TEAM_INITIATIVE_LEAVE),
                XRedPointEventElement.New(XEventId.EVENT_ARENA_TEAM_RECEIVE_APPLY_DATA),
                XRedPointEventElement.New(XEventId.EVENT_ARENA_TEAM_NEW_APPLY_ENTER),
            }
    return Events
end

function XRedPointConditionArenaApply.Check()
    return XDataCenter.ArenaManager.CheckHaveApplyData()
end

return XRedPointConditionArenaApply