

#如果有贏家


execute as @a[team=!spec] if items entity @s weapon.offhand bundle if function main:misson/91_100/99/check run tag @s add win

execute if entity @a[team=!spec,tag=win] run function main:misson/91_100/99/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0


#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/91_100/99/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0



schedule function main:misson/91_100/99/tick 20t


