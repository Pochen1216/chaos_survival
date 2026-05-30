scoreboard objectives add temp6 dummy

execute as @a[scores={p_missonB=2}] store result score @s temp6 run clear @s minecraft:netherite_leggings 0
execute as @a[scores={temp6 = 1..}] run function main:p_misson/8/get
execute as @a[scores={p_missonB=2}] store result score @s temp6 run clear @s minecraft:netherite_helmet 0
execute as @a[scores={temp6 = 1..}] run function main:p_misson/8/get
execute as @a[scores={p_missonB=2}] store result score @s temp6 run clear @s minecraft:netherite_chestplate 0
execute as @a[scores={temp6 = 1..}] run function main:p_misson/8/get
execute as @a[scores={p_missonB=2}] store result score @s temp6 run clear @s minecraft:netherite_boots 0
execute as @a[scores={temp6 = 1..}] run function main:p_misson/8/get



scoreboard objectives remove temp6




