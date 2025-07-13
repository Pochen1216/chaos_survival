#射箭大賽

title @a title [{"text":"射箭大賽","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#​[任務]率先觸發所有指令方塊的人獲得一分!
#[特殊]已為所有人發下弓和箭矢!
#[特殊]任務期間禁止跳躍!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u7387\u5148\u89f8\u767c\u6240\u6709\u6307\u4ee4\u65b9\u584a\u7684\u4eba\u7372\u5f97\u4e00\u5206!","color":"white"},{"text":"\n"},{"text":"[\u7279\u6b8a]","color":"light_purple"},{"text":"\u5df2\u70ba\u6240\u6709\u4eba\u767c\u4e0b\u5f13\u548c\u7bad\u77e2!","color":"white"},{"text":"\n"},{"text":"[\u7279\u6b8a]","color":"light_purple"},{"text":"\u4efb\u52d9\u671f\u9593\u7981\u6b62\u8df3\u8e8d!"}]

give @a bow
give @a arrow 64

scoreboard objectives add bow_score dummy
scoreboard players set @a bow_score 0

execute as @a at @s run place template main:24 ~-1 ~-1 ~-5

execute as @a run attribute @s minecraft:gravity base set 10


scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/21_30/24/tick 1t


