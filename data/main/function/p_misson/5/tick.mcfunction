
scoreboard objectives add temp6 dummy
execute as @a[scores={p_missonB=1}] store result score @s temp6 run clear @s blaze_rod 0
execute as @a[scores={temp6 = 3..}] run function main:p_misson/5/get

scoreboard objectives remove temp6





