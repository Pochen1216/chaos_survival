



#如果有贏家
execute as @a[team=!spec] at @s if block ~ ~1 ~ #main:falling_block run tag @s add win
execute if entity @a[team=!spec,tag=win] run function main:misson/91_100/91/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0

#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/91_100/91/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0



schedule function main:misson/91_100/91/tick 5t

