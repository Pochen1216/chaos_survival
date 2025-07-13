

execute as @a store result score @s detect_table run clear @s minecraft:crafting_table 0


#如果有贏家
execute as @a[scores={detect_table=16..}] run tag @s add win
execute if entity @a[scores={detect_table=16..}] run function main:misson/11_20/13/end
execute if entity @a[scores={detect_table=16..}] run return 0

#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/11_20/13/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0



schedule function main:misson/11_20/13/tick 3t

