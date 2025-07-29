




execute as @a if predicate main:misson/76_78/scissor run advancement grant @s only main:hidden/76


#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/71_80/77/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0

#如果有贏家
execute as @a if predicate main:misson/76_78/paper run tag @s add win
execute if entity @a[tag=win] run function main:misson/71_80/77/end

execute unless score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run schedule function main:misson/71_80/77/tick 2t

