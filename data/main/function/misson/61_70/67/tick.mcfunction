



#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/61_70/67/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0

execute as @a[scores={m67_stop=1}] run function main:misson/61_70/67/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0

schedule function main:misson/61_70/67/tick 1t

