#職業工匠

title @a title [{"text":"職業工匠","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#​[任務]第一位擁有16個工作台的玩家加一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u7b2c\u4e00\u4f4d\u64c1\u670916\u500b\u5de5\u4f5c\u53f0\u7684\u73a9\u5bb6\u52a0\u4e00\u5206!","color":"white"}]

scoreboard objectives add detect_table dummy



scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/11_20/13/tick 1t








