

tag @a remove cm_pl
#find human

scoreboard objectives add temp3 dummy
scoreboard players set temp temp3 1000
execute as @a[team=!spec] run scoreboard players operation temp temp3 < @s score

execute as @a[team=!spec] if score @s score = temp temp3 run tag @s add cm_prepl

tag @r[tag=cm_prepl] add cm_pl
tag @a remove cm_prepl

scoreboard objectives remove temp3

function main:system/cho_misson/start1

