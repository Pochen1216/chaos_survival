#休息一下

title @a title [{"text":"休息一下","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]時間已被調成晚上，最快睡覺的人得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u6642\u9593\u5df2\u88ab\u8abf\u6210\u665a\u4e0a\uff0c\u6700\u5feb\u7761\u89ba\u7684\u4eba\u5f97\u4e00\u5206!","color":"white"}]

advancement revoke @a only main:misson/10

time set night
tag @a add misson10

scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/1_10/10/tick 1t








