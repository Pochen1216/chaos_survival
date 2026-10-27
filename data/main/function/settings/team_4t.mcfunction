
tag @e[tag=m_cen] add team
 

tellraw @a ["",{"text":"[\u7cfb\u7d71]","color":"gold"},{"text":"隊伍數已被調為4!","color":"white"}]

team add red {"text":"紅隊","color":red}
team add green {"text":"綠隊","color":green}
team add green {"text":"橘隊","color":gold}
team add blue {"text":"藍隊","color":aqua}


team modify green color green
team modify red color red
team modify orange color gold
team modify blue color aqua


