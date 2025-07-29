



#[事件]你已回答問題，等待事件結束公布答案......
execute as @a[tag=!responded,team=!spec] unless score @s respond matches 0 run tellraw @s ["",{"text":"[任務]","color":"aqua"},{"text":"你已回答問題，等待任務結束公布答案......","color":"white"}]
execute as @a[tag=!responded,team=!spec] unless score @s respond matches 0 run tag @s add responded





#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/41_50/50/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0



schedule function main:misson/41_50/50/tick 5t

