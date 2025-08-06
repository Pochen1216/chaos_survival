


scoreboard objectives add temp2 dummy
scoreboard players set temp temp2 0
execute as @a[team=!spec] run scoreboard players operation temp temp2 > @s run

execute as @a[team=!spec] if score @s run = temp temp2 run tag @s add win


scoreboard players set n100 temp2 100
execute as @a run scoreboard players operation @s temp2 = @s run
scoreboard players operation @a temp2 /= n100 temp2


#​[任務]@s的盔甲值: @s->total
execute as @a[team=!spec] run tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"selector":"@s","color":"dark_green"},{"text":"的跑步移動格數:  ","color":"white"},{"score":{"name":"@s","objective":"temp2"},"color":"gold"}]


scoreboard objectives remove temp2



#[系統]@a[tag=win]贏得了這回合!
function main:system/win_tellraw
execute as @a at @s run playsound minecraft:block.beacon.deactivate


scoreboard players add @a[tag=win] score 1




function main:system/misson_end

