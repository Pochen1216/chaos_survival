#我在天上飛

title @a title [{"text":"我在天上飛","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player


#[任務]率先離地連續5秒的人得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u7387\u5148\u96e2\u5730\u9023\u7e8c3\u79d2\u7684\u4eba\u5f97\u4e00\u5206!","color":"white"}]

scoreboard objectives add flying dummy
scoreboard players set @a flying 0

scoreboard objectives add if_Onground dummy


scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/41_50/45/tick 5t








