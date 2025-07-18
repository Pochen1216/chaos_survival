execute store result score @s if_Onground run data get entity @s OnGround

execute unless predicate main:misson/45 if score @s if_Onground matches 0 run return 1

return fail






