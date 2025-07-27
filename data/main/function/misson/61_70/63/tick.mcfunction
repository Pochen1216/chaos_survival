

execute as @a[team=!spec] store result score @s detect_emer run clear @s minecraft:emerald 0


#如果有贏家
execute as @a[scores={detect_emer=3..}] run tag @s add win
execute if entity @a[scores={detect_emer=3..}] run function main:misson/61_70/63/end
execute if entity @a[scores={detect_emer=3..}] run return 0

#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/61_70/63/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0



schedule function main:misson/61_70/63/tick 3t

