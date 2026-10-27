
execute unless entity @e[type=marker,tag=m_cen,tag=!red_p_misson_success2,limit=1] run return 0
tag @e[type=marker,tag=m_cen,tag=!red_p_misson_success2,limit=1] add red_p_misson_success2

tellraw @a ["",{"text":"[\u5e38\u99d0\u4efb\u52d9]","color":"dark_aqua"},{"text":"紅隊","color":"red"},{"text":"已完成所有2分常駐任務，因此獲得2分!","color":"white"},{"text":"\n "}]

scoreboard players add @a[team=red] score 2
