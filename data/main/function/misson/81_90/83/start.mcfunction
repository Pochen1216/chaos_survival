#資深工匠
title @a title [{"text":"資深工匠","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]率先開關工作台32次得一分
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"率先開關工作台32次得一分!","color":"white"}]

scoreboard objectives add m83 custom:interact_with_crafting_table
scoreboard players set @a m83 0

scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/81_90/83/tick 1t








