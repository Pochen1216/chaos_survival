

execute as @a store success score @s detect_grass run clear @s minecraft:short_grass 0


#如果有贏家
execute as @a[scores={detect_grass=1..}] run tag @s add win
execute if entity @a[scores={detect_grass=1..}] run function main:misson/11_20/12/end
execute if entity @a[scores={detect_grass=1..}] run return 0

#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/11_20/12/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0



schedule function main:misson/21_30/12/tick 3t

