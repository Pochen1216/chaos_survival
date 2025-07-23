#產地與他們的怪獸

title @a title [{"text":"產地與他們的怪獸","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]利用剛才發下的材料，率先生成雪人的人得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u5229\u7528\u525b\u624d\u767c\u4e0b\u7684\u6750\u6599\uff0c\u7387\u5148\u751f\u6210凋零怪\u7684\u4eba\u5f97\u4e00\u5206!","color":"white"}]

give @a wither_skeleton_skull 3
give @a soul_sand 4

advancement revoke @a only main:misson/57

tag @a add misson57

scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/51_60/57/tick 1t








