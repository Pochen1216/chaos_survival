

execute as @a[team=!spec] store success score @s detect_stone run clear @s smooth_stone 0

execute as @a[scores={detect_stone=1..},team=!spec] run tag @s add win
execute if entity @a[scores={detect_stone=1..},team=!spec] run function main:misson/61_70/66/end
execute if entity @a[scores={detect_stone=1..},team=!spec] run return 0


#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/61_70/66/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0



schedule function main:misson/61_70/66/tick 3t

