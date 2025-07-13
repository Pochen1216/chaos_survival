# executed by pl who gen it




execute at @s run summon :marker ~ ~ ~ {Tags:[tp]}
execute at @s run forceload add ~ ~
execute at @s run scoreboard players set @e[type=marker,tag=tp,limit=1,sort=nearest] tp_number 1
execute at @s run scoreboard players operation @e[type=marker,tag=tp,limit=1,sort=nearest] tp_number = @s tp_number
tag @s add tp

#say i created a marker




