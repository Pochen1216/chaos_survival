scoreboard objectives add temp8 dummy

execute as @a[scores={p_missonC=0}] store result score @s temp8 run clear @s #main:disc 0
execute as @a[scores={temp8 = 1..}] run function main:p_misson/3/get
execute as @a[scores={p_missonC=0}] store result score @s temp8 run clear @s #main:template 0

execute as @a[scores={temp8 = 1..}] run function main:p_misson/3/get

scoreboard objectives remove temp8




