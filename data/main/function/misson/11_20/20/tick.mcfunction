

execute as @a[team=!spec] at @s if block ~ ~-1 ~ bedrock run function main:misson/11_20/20/end
execute as @a at @s if block ~ ~-1 ~ bedrock run return 0


#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/11_20/20/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0

schedule function main:misson/11_20/20/tick 5t
