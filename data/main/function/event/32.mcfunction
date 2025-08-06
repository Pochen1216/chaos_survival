
title @a subtitle [{"text":"袖珍型生存","color":"blue"}]
title @a title ""


tellraw @a ["",{"text":"[\u4e8b\u4ef6]","color":"blue"},{"text":"玩家縮小1/2 持續30秒!","color":"white"}]

execute as @a[team=!spec] run attribute @s scale base set 0.5


schedule function main:event/32_2 30s



