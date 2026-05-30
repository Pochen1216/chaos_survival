
scoreboard objectives add temp9 dummy


execute as @a[scores={p_missonC=1}] store result score @s temp9 run clear @s enchanted_golden_apple 0


execute as @a[scores={temp9 = 1..}] run advancement grant @s only main:p_misson/6




