



#如果有贏家
execute as @a[scores={bow_score=3..}] run tag @s add win
execute if entity @a[scores={bow_score=3..}] run function main:misson/21_30/24/end
execute if entity @a[scores={bow_score=3..}] run return 0

#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/21_30/24/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0



schedule function main:misson/21_30/24/tick 5t

