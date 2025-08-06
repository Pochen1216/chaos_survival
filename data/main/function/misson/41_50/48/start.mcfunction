#迷你馬拉松

title @a title [{"text":"迷你馬拉松","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#​[任務]30秒內，以跑步移動格數最多的玩家得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"30秒內，以跑步移動格數最多的玩家得一分!(跑跳不計)","color":"white"}]


scoreboard objectives add run custom:sprint_one_cm
scoreboard players set @a run 0

scoreboard players set @e[tag=m_cen] misson_countdown 600
bossbar set minecraft:misson_timer max 600

schedule function main:misson/41_50/48/end 30s


