

execute as @a[team=!spec] run function main:misson/51_60/60/check





#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/51_60/60/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0

execute if entity @a[tag=win] run function main:misson/51_60/60/end

execute unless score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run schedule function main:misson/51_60/60/tick 5t

