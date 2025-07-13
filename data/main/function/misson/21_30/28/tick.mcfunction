
execute as @a if score @s food > @s food_before run scoreboard players operation @s food_regen += @s food
execute as @a if score @s food > @s food_before run scoreboard players operation @s food_regen -= @s food_before

execute as @a run scoreboard players operation @s food_before = @s food




#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/21_30/28/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0

schedule function main:misson/21_30/28/tick 1t
