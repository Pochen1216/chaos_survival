
scoreboard objectives add dia_armor_count dummy
scoreboard players set @a dia_armor_count 0

scoreboard objectives add temp3 dummy
scoreboard players set @a temp3 0

execute as @a store success score @s temp3 run clear @s diamond_helmet 0
execute as @a run scoreboard players operation @s dia_armor_count += @s temp3

execute as @a store success score @s temp3 run clear @s diamond_chestplate 0
execute as @a run scoreboard players operation @s dia_armor_count += @s temp3

execute as @a store success score @s temp3 run clear @s diamond_leggings 0
execute as @a run scoreboard players operation @s dia_armor_count += @s temp3

execute as @a store success score @s temp3 run clear @s diamond_boots 0
execute as @a run scoreboard players operation @s dia_armor_count += @s temp3


execute as @a[scores={dia_armor_count=4,p_missonC=1}] run advancement grant @s only main:p_misson/4


scoreboard objectives remove temp3

