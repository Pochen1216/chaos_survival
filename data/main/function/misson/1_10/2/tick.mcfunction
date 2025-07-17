

execute as @a if predicate main:misson/2 run tag @s add win

#timeout

execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/1_10/2/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0

execute unless entity @a[tag=win] run schedule function main:misson/1_10/2/tick 5t

execute if entity @a[tag=win] run function main:misson/1_10/2/end




