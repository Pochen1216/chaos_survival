







#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/51_60/56/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0



schedule function main:misson/51_60/56/tick 5t

