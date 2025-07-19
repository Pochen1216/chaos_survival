

execute as @a[team=!spec] store success score @s detect_obby run clear @s minecraft:obsidian 0


#如果有贏家
execute as @a[scores={detect_obby=1..}] run tag @s add win
execute if entity @a[scores={detect_obby=1..}] run function main:misson/51_60/54/end
execute if entity @a[scores={detect_obby=1..}] run return 0

#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/51_60/54/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0



schedule function main:misson/51_60/54/tick 5t

