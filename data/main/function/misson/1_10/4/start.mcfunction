#高空倖存

title @a title [{"text":"高空倖存","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]在5秒後大家會被送到天上，活下來的人就能得分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u57285\u79d2\u5f8c\u5927\u5bb6\u6703\u88ab\u9001\u5230\u5929\u4e0a\uff0c\u6d3b\u4e0b\u4f86\u7684\u4eba\u5c31\u80fd\u5f97\u5206!","color":"white"}]

scoreboard objectives add die deathCount
scoreboard players set @a die 0

schedule function main:misson/1_10/4/fly 5s
schedule function main:misson/1_10/4/end 15s

scoreboard players set @e[tag=m_cen] misson_countdown 100
bossbar set minecraft:misson_timer max 100








