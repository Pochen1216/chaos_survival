
tag @e[tag=m_cen] remove team

execute as @e[type=minecraft:marker,limit=1,tag=m_cen] at @s run place template main:lobby ~-5 ~10 ~-5

tellraw @a ["",{"text":"[\u7cfb\u7d71]","color":"gold"},{"text":"團隊模式已關閉!","color":"white"}]

team remove red
team remove green
team remove orange
team remove blue


