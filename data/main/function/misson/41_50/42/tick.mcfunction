

execute as @a[team=!spec] store success score @s detect_circle run clear @s minecraft:ender_pearl 0




#如果有贏家
execute as @a[scores={detect_circle=1..}] run tag @s add win
execute if entity @a[scores={detect_circle=1..}] run function main:misson/41_50/42/end
execute if entity @a[scores={detect_circle=1..}] run return 0

execute as @a[team=!spec] store success score @s detect_circle run clear @s minecraft:snowball 0

#如果有贏家
execute as @a[scores={detect_circle=1..}] run tag @s add win
execute if entity @a[scores={detect_circle=1..}] run function main:misson/41_50/42/end
execute if entity @a[scores={detect_circle=1..}] run return 0



#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/41_50/42/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0



schedule function main:misson/41_50/42/tick 2t

