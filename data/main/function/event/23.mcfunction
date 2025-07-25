
title @a subtitle [{"text":"坐牢遊戲","color":"blue"}]
title @a title ""


tellraw @a ["",{"text":"[\u4e8b\u4ef6]","color":"blue"},{"text":"全體坐牢!","color":"white"}]


execute as @a[team=!spec] at @s run place template main:cage ~-1 ~-1 ~-1


