
scoreboard objectives add total dummy
scoreboard players set @a total 0


execute as @a[team=!spec] store result score @s total run clear @s #swords 0



scoreboard objectives add temp2 dummy
scoreboard players set temp temp2 0
execute as @a[team=!spec] run scoreboard players operation temp temp2 > @s total

execute as @a[team=!spec] if score @s total = temp temp2 run tag @s add win

scoreboard objectives remove temp2


#​[任務]@s的盔甲值: @s->total
execute as @a[team=!spec] run tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"selector":"@s","color":"dark_green"},{"text":"的劍數: ","color":"white"},{"score":{"name":"@s","objective":"total"},"color":"gold"}]

#[系統]@a[tag=win]贏得了這回合!
tellraw @a ["",{"text":"[\u7cfb\u7d71]","color":"gold"},{"selector":"@a[tag=win]","color":"green"},{"text":"\u8d0f\u5f97\u4e86\u9019\u56de\u5408!","color":"white"}]
execute as @a at @s run playsound minecraft:block.beacon.deactivate


scoreboard players add @a[tag=win] score 1



function main:system/misson_end

