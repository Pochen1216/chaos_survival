

tag @e[tag=m_cen] add team
execute as @e[type=minecraft:marker,limit=1,tag=m_cen] at @s run place template main:lobby_2t ~-5 ~10 ~-5

tellraw @a ["",{"text":"[\u7cfb\u7d71]","color":"gold"},{"text":"隊伍數已被調為2!","color":"white"}]

team add red {"text":"紅隊","color":red}
team add green {"text":"綠隊","color":green}

team remove orange
team remove blue

team modify green color green
team modify red color red


