#33550336

title @a title [{"text":"33550336","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#​[任務]最先蹲下5次的玩家得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u6700\u5148\u6b7b\u4ea1\u7684\u73a9\u5bb6\u5f97\u4e00\u5206!","color":"white"}]


scoreboard objectives add die deathCount
scoreboard players set @a die 0

scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/21_30/22/tick 1t


