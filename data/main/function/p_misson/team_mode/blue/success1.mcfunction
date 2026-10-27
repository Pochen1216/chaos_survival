
execute unless entity @e[type=marker,tag=m_cen,tag=!blue_p_misson_success1,limit=1] run return 0
tag @e[type=marker,tag=m_cen,tag=!blue_p_misson_success1,limit=1] add blue_p_misson_success1

tellraw @a ["",{"text":"[\u5e38\u99d0\u4efb\u52d9]","color":"dark_aqua"},{"text":"\u85cd\u968a","color":"aqua"},{"text":"\u5df2\u5b8c\u6210\u6240\u67091\u5206\u5e38\u99d0\u4efb\u52d9\uff0c\u56e0\u6b64\u7372\u5f971\u5206!","color":"white"},{"text":"\n "}]

scoreboard players add @a[team=blue] score 1
