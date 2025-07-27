
execute as @e[tag=m62_cp,type=marker] at @s run place template main:62_air ~-2 ~-1 ~-2


scoreboard objectives add temp2 dummy
scoreboard players set temp temp2 0
execute as @a[team=!spec] run scoreboard players operation temp temp2 > @s checkpoint

execute as @a[team=!spec] if score @s checkpoint = temp temp2 run tag @s add win

scoreboard objectives remove temp2

#​[任務]@s的盔甲值: @s->armor_value
execute as @a[team=!spec] run tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"selector":"@s","color":"dark_green"},{"text":"的踩點數: ","color":"white"},{"score":{"name":"@s","objective":"checkpoint"},"color":"gold"}]



#[系統]@a[tag=win]贏得了這回合!
function main:system/win_tellraw
execute as @a at @s run playsound minecraft:block.beacon.deactivate



scoreboard players add @a[tag=win] score 1

schedule clear main:misson/61_70/62/tick


function main:system/misson_end

