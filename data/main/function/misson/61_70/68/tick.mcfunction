



#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/61_70/68/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0

execute as @a[team=!spec,scores={m68_1=1..}] run tag @s add win
execute as @a[team=!spec,scores={m68_2=1..}] run tag @s add win
execute as @a[team=!spec,scores={m68_3=1..}] run tag @s add win
execute as @a[team=!spec,scores={m68_4=1..}] run tag @s add win
execute as @a[team=!spec,scores={m68_5=1..}] run tag @s add win
execute as @a[team=!spec,scores={m68_6=1..}] run tag @s add win
execute as @a[team=!spec,scores={m68_7=1..}] run tag @s add win
execute as @a[team=!spec,scores={m68_8=1..}] run tag @s add win
execute as @a[team=!spec,scores={m68_9=1..}] run tag @s add win

execute if entity @a[tag=win] run function main:misson/61_70/68/end


execute unless score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run schedule function main:misson/61_70/68/tick 5t

