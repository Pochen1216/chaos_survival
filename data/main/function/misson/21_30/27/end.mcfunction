

scoreboard objectives add effect_count dummy
scoreboard players set @a effect_count 0

execute as @a[team=!spec,scores={die=0}] store result score @s effect_count run data get entity @s active_effects

scoreboard objectives add temp2 dummy
scoreboard players set temp temp2 0
execute as @a[team=!spec] run scoreboard players operation temp temp2 > @s effect_count

execute as @a[team=!spec] if score @s effect_count = temp temp2 run tag @s add win

scoreboard objectives remove temp2


#[任務]@s身上的效果數量: @s->effect_count
execute as @a[team=!spec] run tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"selector":"@s","color":"dark_green"},{"text":"\u8eab\u4e0a\u7684\u6548\u679c\u6578\u91cf:","color":"white"},{"text":" ","color":"#6A9955"},{"score":{"name":"@s","objective":"effect_count"},"color":"gold"}]

#[系統]@a[tag=win]贏得了這回合!
function main:system/win_tellraw
execute as @a at @s run playsound minecraft:block.beacon.deactivate


scoreboard players add @a[tag=win] score 1

scoreboard objectives remove effect_count

function main:system/misson_end

