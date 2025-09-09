



#如果有贏家
execute as @a[scores={packour_num=1..}] run tag @s add win
execute if entity @a[scores={packour_num=1..}] run function main:misson/91_100/94/end
execute if entity @a[scores={packour_num=1..}] run return 0

#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/91_100/94/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0



schedule function main:misson/91_100/94/tick 5t

