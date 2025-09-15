
title @a subtitle [{"text":"水世界","color":"blue"}]
title @a title ""


tellraw @a ["",{"text":"[\u4e8b\u4ef6]","color":"blue"},{"text":"玩家周圍10格的空氣變水","color":"white"}]

execute as @a[team=!spec] at @s unless predicate main:event/11 run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 water replace #air






