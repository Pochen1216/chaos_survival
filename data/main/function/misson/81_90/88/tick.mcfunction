

execute as @a[team=!spec] store success score @s m88 run clear @s minecraft:cooked_beef 0


#如果有贏家
execute as @a[scores={m88=1..}] run tag @s add win
execute if entity @a[scores={m88=1..}] run function main:misson/81_90/88/end
execute if entity @a[scores={m88=1..}] run return 0

#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/81_90/88/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0



schedule function main:misson/81_90/88/tick 5t

