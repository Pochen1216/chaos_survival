scoreboard objectives add temp10 dummy

execute as @a[scores={p_missonC=2}] store result score @s temp10 run clear @s minecraft:mace 0

execute as @a[scores={temp10 = 1..}] run function main:p_misson/9/get

scoreboard objectives remove temp10




