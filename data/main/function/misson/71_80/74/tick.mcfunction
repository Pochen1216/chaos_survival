

scoreboard players add @a[team=!spec] stop 1
execute as @a[team=!spec] unless predicate main:misson/74 run scoreboard players set @s stop 0

#如果有贏家
execute as @a[scores={stop=100..}] run tag @s add win
execute if entity @a[scores={stop=100..}] run function main:misson/71_80/74/end
execute if entity @a[scores={stop=100..}] run return 0

#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/71_80/74/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0



schedule function main:misson/71_80/74/tick 2t

