


execute as @a if predicate main:misson/21 run scoreboard players set @s is_sneaking 1
execute as @a unless predicate main:misson/21 run scoreboard players set @s is_sneaking 0

execute as @a[scores={is_sneaking=1,sneak_before=0}] run scoreboard players add @s sneak_count 1
execute as @a[scores={is_sneaking=1}] run scoreboard players set @s sneak_before 1
execute as @a[scores={is_sneaking=0}] run scoreboard players set @s sneak_before 0





#如果有贏家
execute as @a[scores={sneak_count=5..}] run tag @s add win
execute if entity @a[scores={sneak_count=5..}] run function main:misson/21_30/21/end
execute if entity @a[scores={sneak_count=5..}] run return 0

#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/21_30/21/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0



schedule function main:misson/21_30/21/tick 1t

