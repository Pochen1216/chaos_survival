

#如果有贏家
tag @a[scores={m98_1=1..},team=!spec] add win
execute if entity @a[team=!spec,tag=win] run function main:misson/91_100/98/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0




#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/91_100/98/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0



schedule function main:misson/91_100/98/tick 5t


