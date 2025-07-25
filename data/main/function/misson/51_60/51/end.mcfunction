
scoreboard objectives add total dummy
scoreboard players set @a total 0
execute as @a[team=!spec] run scoreboard players operation @s total += @s mined_ds
execute as @a[team=!spec] run scoreboard players operation @s total += @s mined_stone

scoreboard objectives add temp2 dummy
scoreboard players set temp temp2 0
execute as @a[team=!spec] run scoreboard players operation temp temp2 > @s total

execute as @a[team=!spec] if score @s total = temp temp2 run tag @s add win

scoreboard objectives remove temp2


#​[任務]@s的盔甲值: @s->total
execute as @a[team=!spec] run tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"selector":"@s","color":"dark_green"},{"text":"的總挖掘數: ","color":"white"},{"score":{"name":"@s","objective":"total"},"color":"gold"}]

#[系統]@a[tag=win]贏得了這回合!
function main:system/win_tellraw
execute as @a at @s run playsound minecraft:block.beacon.deactivate


scoreboard players add @a[tag=win] score 1



function main:system/misson_end

