



#如果有贏家
execute as @a[team=!spec,scores={detect_seye=1..}] run tag @s add win
execute if entity @a[team=!spec,scores={detect_seye=1..}] run function main:misson/41_50/44/end
execute if entity @a[team=!spec,scores={detect_seye=1..}] run return 0



#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/41_50/44/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0



schedule function main:misson/41_50/44/tick 1t

