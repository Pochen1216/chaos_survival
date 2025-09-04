
scoreboard players remove @e[tag=m_cen] cm_target 1

execute if score @e[tag=m_cen,limit=1,type=marker] cm_target matches ..0 run tellraw @a ["",{"text":"[\u7cfb\u7d71]","color":"gold"},{"text":"可選任務數最低為1,若要關閉請點擊關","color":"white"}]
execute if score @e[tag=m_cen,limit=1,type=marker] cm_target matches ..0 run scoreboard players set @e[tag=m_cen] cm_target 1
