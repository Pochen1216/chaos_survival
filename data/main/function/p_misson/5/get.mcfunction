
execute unless entity @s[scores={p_missonA=2}] run return 0

scoreboard objectives add zombie_counter2 dummy
execute as @e[tag=fullHP,nbt={Health:20f},distance=..10] run scoreboard players add @p[scores={p_missonA=2}] zombie_counter2 1
scoreboard players add @s zombie_counter2 1
execute if score @s zombie_counter = @s zombie_counter2 run advancement grant @s only main:p_misson/5

scoreboard objectives remove zombie_counter2

advancement revoke @s only main:p_misson/hidden/5




