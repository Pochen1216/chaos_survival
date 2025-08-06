#常回家看看

title @a title [{"text":"常回家看看","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#​[任務]
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"30秒後離出生點最近的得一分，死亡不計","color":"white"}]

scoreboard objectives add die deathCount
scoreboard players set @a die 0


scoreboard players set @e[tag=m_cen] misson_countdown 600
bossbar set minecraft:misson_timer max 600

schedule function main:misson/71_80/79/end 30s








