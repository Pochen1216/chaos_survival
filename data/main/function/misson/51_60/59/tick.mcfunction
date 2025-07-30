

execute as @a[scores={get_omen=0}] store success score @s get_omen run effect clear @s raid_omen
execute as @a[scores={get_omen=1}] run effect give @s raid_omen 1 4 true
execute as @a[scores={get_omen=1}] run scoreboard players set @s get_omen 2


#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/51_60/59/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0



schedule function main:misson/51_60/59/tick 5t

