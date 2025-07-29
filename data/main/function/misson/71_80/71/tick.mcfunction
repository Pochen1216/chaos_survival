

execute as @a[team=!spec] store result score @s detect_wood run clear @s #minecraft:planks 0


#如果有贏家
execute as @a[scores={detect_wood=64..}] run tag @s add win
execute if entity @a[scores={detect_wood=64..}] run function main:misson/71_80/71/end
execute if entity @a[scores={detect_wood=64..}] run return 0

#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/71_80/71/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0



schedule function main:misson/71_80/71/tick 3t

