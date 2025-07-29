

execute as @a[team=!spec] at @s if entity @e[type=tnt,distance=..6] run tag @s add win





#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/71_80/71/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0

#如果有贏家

execute if entity @a[tag=win] run function main:misson/71_80/72/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0


schedule function main:misson/71_80/72/tick 3t

