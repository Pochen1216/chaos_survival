








#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/41_50/47/end
execute unless score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run schedule function main:misson/41_50/47/tick 5t



#如果有贏家
execute as @a if score @s lv_now = @s lv_before run tag @s add win
execute if entity @a[tag=win] run function main:misson/41_50/47/end

