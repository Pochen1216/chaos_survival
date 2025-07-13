




#如果有贏家
execute as @a[scores={drink=1..}] run tag @s add win
execute if entity @a[scores={drink=1..}] run function main:misson/1_10/6/end
execute if entity @a[scores={drink=1..}] run return 0

#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/1_10/6/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0



schedule function main:misson/1_10/6/tick 1t

