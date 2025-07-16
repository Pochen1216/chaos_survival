




#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/41_50/48/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0



schedule function main:misson/41_50/48/tick 5t

