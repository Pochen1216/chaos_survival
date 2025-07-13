




#如果有贏家
execute as @a[scores={counter=20..}] run tag @s add win
execute if entity @a[scores={counter=20..}] run function main:misson/11_20/17/end
execute if entity @a[scores={counter=20..}] run return 0

#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/11_20/17/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0



schedule function main:misson/11_20/17/tick 2t

