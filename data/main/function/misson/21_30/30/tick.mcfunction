

execute as @a store result score @s y run data get entity @s Pos[1]



#如果有贏家
execute as @a[scores={y=150}] run tag @s add win
execute if entity @a[scores={y=150}] run function main:misson/21_30/30/end
execute if entity @a[scores={y=150}] run return 0

#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/21_30/30/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0



schedule function main:misson/21_30/30/tick 3t

