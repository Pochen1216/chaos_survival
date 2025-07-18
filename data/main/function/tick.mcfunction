
#settings

#偵測創造模式
execute as @a unless score @s settings matches 0 if entity @s[gamemode=!creative] unless entity @e[tag=in_game] run tellraw @s ["",{"text":"[\u7cfb\u7d71]","color":"gold"},{"text":"\u5207\u63db\u81f3\u5275\u9020\u6a21\u5f0f\u4ee5\u8a2d\u5b9a","color":"white"}]
execute as @a unless score @s settings matches 0 if entity @s[gamemode=creative] run function main:settings_code

#重置settings
execute as @a run scoreboard players set @s settings 0
execute unless entity @e[tag=in_game] run scoreboard players enable @a settings


#展示中央座標
title @a actionbar [{"text":"中央座標:(","color":"light_purple"},{"color":"light_purple","score":{"objective":"cen_x","name":"@e[type=marker,limit=1,tag=m_cen]"}},{"color":"light_purple","text":","},{"color":"light_purple","score":{"objective":"cen_z","name":"@e[type=marker,limit=1,tag=m_cen]"}},{"color":"light_purple","text":")"}]


execute if entity @e[tag=in_game] run function main:system/tick_in_game

worldborder set 5000


worldborder set 10000000