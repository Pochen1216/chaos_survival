

execute as @a[team=!spec] store result score @s detect_pane run clear @s minecraft:light_gray_stained_glass_pane 0


#如果有贏家
execute as @a[team=!spec,scores={detect_pane=0}] run tag @s add win
execute if entity @a[team=!spec,scores={detect_pane=0}] run function main:misson/11_20/15/end
execute if entity @a[team=!spec,scores={detect_pane=0}] run return 0

#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/11_20/15/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0



schedule function main:misson/11_20/15/tick 2t

