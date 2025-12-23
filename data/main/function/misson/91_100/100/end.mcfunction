#executed my who get the adchivement
#main/misson/16

#tag @s add win



scoreboard players set x temp100 -1
execute as @a run scoreboard players operation x temp100 > @s m100_pl_jam

execute as @a if score @s m100_pl_jam matches 1.. if score @s m100_pl_jam = x temp100 run tag @s add win

#​[任務]@s的盔甲值: @s->armor_value
execute as @a[team=!spec] run tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"selector":"@s","color":"dark_green"},{"text":"的寶石數: ","color":"white"},{"score":{"name":"@s","objective":"m100_pl_jam"},"color":"gold"}]

team remove 100_g
team remove 100_r

execute if entity @a[scores={m100_pl_jam=1..}] run function main:misson/91_100/100/give_dia

#[系統]@a[tag=win]贏得了這回合!
function main:system/win_tellraw
execute as @a at @s run playsound minecraft:block.beacon.deactivate


scoreboard players add @a[tag=win] score 1

scoreboard objectives setdisplay sidebar info


function main:system/misson_end



