
tag @e[tag=m_cen] add do_event
scoreboard players set @e[tag=m_cen] event_period 1200

#[系統]隨機事件已開啟!
tellraw @a [{"text":"[系統]","color":"gold"},{"text":"隨機事件週期已被調為60秒!","color":"white"}]
