

#[系統]獲勝目標不可再調高，最高為100
execute if score @e[tag=m_cen,limit=1] target matches 100.. run tellraw @s ["",{"text":"[\u7cfb\u7d71]","color":"gold"},{"text":"\u7372\u52dd\u76ee\u6a19\u4e0d\u53ef\u518d\u8abf\u9ad8\uff0c\u6700\u9ad8\u70ba100","color":"white"}]

execute unless score @e[tag=m_cen,limit=1] target matches 100.. run scoreboard players add @e[tag=m_cen] target 1



