
#[系統]獲勝目標不可再調低，最低為1
execute if score @e[tag=m_cen,limit=1] target matches ..1 run tellraw @a ["",{"text":"[\u7cfb\u7d71]","color":"gold"},{"text":"\u7372\u52dd\u76ee\u6a19\u4e0d\u53ef\u518d\u8abf\u4f4e\uff0c\u6700\u4f4e\u70ba1","color":"white"}]

execute unless score @e[tag=m_cen,limit=1] target matches ..1 run scoreboard players remove @e[tag=m_cen] target 1



