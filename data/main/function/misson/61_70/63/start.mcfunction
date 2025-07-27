#原初之盧恩
title @a title [{"text":"原初之盧恩","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#​[任務]率先獲得三顆綠寶石者得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"率先獲得三顆綠寶石者得一分!","color":"white"}]

scoreboard objectives add detect_emer dummy



scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/61_70/63/tick 1t








