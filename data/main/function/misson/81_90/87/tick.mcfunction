
#timeout

execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/81_90/87/end



#如果有贏家
execute as @a[team=!spec] at @s if predicate main:misson/87 run tag @s add win
execute if entity @a[team=!spec,tag=win] run function main:misson/81_90/87/end


execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0



schedule function main:misson/81_90/87/tick 5t

