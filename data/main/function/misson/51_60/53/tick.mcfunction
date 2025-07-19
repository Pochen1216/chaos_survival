

execute as @a[team=!spec] if predicate main:misson/53 run tag @s add win

#timeout

execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/51_60/53/tick
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0

execute unless entity @a[tag=win] run schedule function main:misson/51_60/53/tick 5t

execute if entity @a[tag=win] run function main:misson/51_60/53/end




