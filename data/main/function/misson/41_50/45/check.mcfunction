execute store result score @s if_Onground run data get entity @s OnGround

execute at @s if block ~ ~-1 ~ water run return fail
execute at @s if block ~ ~ ~ water run return fail
execute unless predicate main:misson/45 if score @s if_Onground matches 0 run return 1

return fail






