

execute as @a at @s if block ~ ~-1 ~ air run scoreboard players add @s flying 2
execute as @a at @s unless block ~ ~-1 ~ air run scoreboard players set @s flying 0




#如果有贏家
execute as @a[scores={flying=100..}] run tag @s add win
execute if entity @a[scores={flying=100..}] run function main:misson/41_50/45/end
execute if entity @a[scores={flying=100..}] run return 0



#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/41_50/45/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0



schedule function main:misson/41_50/45/tick 2t

