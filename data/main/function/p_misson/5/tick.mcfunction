
tag @e remove fullHP
scoreboard objectives add zombie_counter dummy
scoreboard players set @a zombie_counter 0

execute as @a[scores={p_missonA=2}] at @s run tag @e[type=zombie,distance=..10,nbt={Health:20f}] add fullHP

execute as @a[scores={p_missonA=2}] run execute at @s as @e[tag=fullHP,nbt={Health:20f},distance=..10] run scoreboard players add @p[scores={p_missonA=2}] zombie_counter 1







