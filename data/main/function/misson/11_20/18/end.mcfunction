

scoreboard objectives add temp2 dummy
scoreboard players set temp temp2 0
execute as @a[team=!spec] run scoreboard players operation temp temp2 > @s armor_value

execute as @a[team=!spec] if score @s armor_value = temp temp2 run tag @s add win

scoreboard objectives remove temp2


#​[任務]@s的盔甲值: @s->armor_value
execute as @a[team=!spec] run tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"selector":"@s","color":"dark_green"},{"text":"\u7684\u76d4\u7532\u503c: ","color":"white"},{"score":{"name":"@s","objective":"armor_value"},"color":"gold"}]

#[系統]@a[tag=win]贏得了這回合!
function main:system/win_tellraw
execute as @a at @s run playsound minecraft:block.beacon.deactivate


scoreboard players add @a[tag=win] score 1



function main:system/misson_end

