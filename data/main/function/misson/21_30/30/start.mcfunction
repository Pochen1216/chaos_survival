#突破天際

title @a title [{"text":"突破天際","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#​[任務]最快達到y=150可得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u6700\u5feb\u9054\u5230y=150\u53ef\u5f97\u4e00\u5206!","color":"white"}]


scoreboard objectives add y dummy


scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/21_30/30/tick 1t


