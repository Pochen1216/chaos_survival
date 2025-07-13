
scoreboard objectives add rod_count dummy
scoreboard objectives add cry_obby_count dummy

execute as @a[scores={p_missonB=2}] store result score @s rod_count run clear @s blaze_rod 0
execute as @a[scores={p_missonB=2}] store result score @s cry_obby_count run clear @s crying_obsidian 0


execute as @a[scores={rod_count=5..,cry_obby_count=3..}] run advancement grant @s only main:p_misson/6




