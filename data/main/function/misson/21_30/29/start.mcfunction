#騎乘技能

title @a title [{"text":"騎乘技能","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player


#​[任務]已發下鞍，率先騎乘任意生物可得一分!

tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u5df2\u767c\u4e0b\u978d\uff0c\u7387\u5148\u9a0e\u4e58","color":"white"},{"text":"\u4efb\u610f"},{"text":"\u751f\u7269\u53ef\u5f97\u4e00\u5206!","color":"white"}]

give @a[team=!spec] saddle

advancement revoke @a only main:misson/29

tag @a add misson29

scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/21_30/29/tick 1t








