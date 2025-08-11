

execute as @a[team=!spec] store success score @s detect_shield run clear @s minecraft:shield 0


#如果有贏家
execute as @a[scores={detect_shield=1..}] run tag @s add win
execute if entity @a[scores={detect_shield=1..}] run function main:misson/81_90/81/end
execute if entity @a[scores={detect_shield=1..}] run return 0

#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/81_90/81/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0



schedule function main:misson/81_90/81/tick 5t

