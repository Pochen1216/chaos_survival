

execute as @a store result score @s item_count run data get entity @s Inventory


#如果有贏家
execute as @a[scores={item_count=0}] run tag @s add win
execute if entity @a[scores={item_count=0}] run function main:misson/1_10/3/end
execute if entity @a[scores={item_count=0}] run return 0

#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/1_10/3/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0



schedule function main:misson/1_10/3/tick 5t

