#Aimlab

title @a title [{"text":"Aimlab","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]利用剛才發下的材料，率先生成雪人的人得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"你身旁生成了一隻蝙蝠，先擊殺的得一分!"}]

execute as @a[team=!spec] at @s run summon bat ~ ~ ~ {Tags:[misson]}

advancement revoke @a only main:misson/61

tag @a add misson61

scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/61_70/61/tick 1t

