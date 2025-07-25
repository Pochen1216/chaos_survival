



#[事件]你已回答問題，等待事件結束公布答案......
execute as @a[tag=!responded,team=!spec] unless score @s respond matches 0 run tellraw @s ["",{"text":"[\u4e8b\u4ef6]","color":"aqua"},{"text":"\u4f60\u5df2\u56de\u7b54\u554f\u984c\uff0c\u7b49\u5f85\u4e8b\u4ef6\u7d50\u675f\u516c\u5e03\u7b54\u6848......","color":"white"}]
execute as @a[tag=!responded,team=!spec] unless score @s respond matches 0 run tag @s add responded





#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/41_50/50/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0



schedule function main:misson/41_50/50/tick 5t

