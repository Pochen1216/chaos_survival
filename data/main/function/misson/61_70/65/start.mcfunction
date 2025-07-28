#火桶挑戰
title @a title [{"text":"火桶挑戰","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#​[任務]率先獲得岩漿桶的得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"率先獲得岩漿桶的得一分!","color":"white"}]


scoreboard objectives add detect_lava dummy


scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/61_70/65/tick 1t








