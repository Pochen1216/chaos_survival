




scoreboard objectives add temp2 dummy
scoreboard players set temp temp2 0
execute as @a[team=!spec] run scoreboard players operation temp temp2 > @s H

execute as @a[team=!spec] if score @s H = temp temp2 run tag @s add 1st

scoreboard players set temp temp2 0
execute as @a[team=!spec,tag=!1st] run scoreboard players operation temp temp2 > @s H

execute as @a[team=!spec] if score @s H = temp temp2 run tag @s add win

#scoreboard objectives remove temp2


#[任務]@s的血量: @s->H
execute as @a[team=!spec] run tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"selector":"@s","color":"dark_green"},{"text":"\u7684\u8840\u91cf: ","color":"white"},{"score":{"name":"@s","objective":"H"},"color":"gold"}]
#[系統]@a[tag=win]贏得了這回合!
tellraw @a ["",{"text":"[\u7cfb\u7d71]","color":"gold"},{"selector":"@a[tag=win]","color":"green"},{"text":"\u8d0f\u5f97\u4e86\u9019\u56de\u5408!","color":"white"}]
execute as @a at @s run playsound minecraft:block.beacon.deactivate


scoreboard players add @a[tag=win] score 1

scoreboard objectives remove H
tag @a remove 1st

function main:system/misson_end

