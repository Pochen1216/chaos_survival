
title @a subtitle [{"text":"偷看一下","color":"blue"}]
title @a title ""


tellraw @a ["",{"text":"[\u4e8b\u4ef6]","color":"blue"},{"text":"切換成旁觀模式10秒!","color":"white"}]

gamemode spectator @a[team=!spec]


schedule function main:event/37_2 10s



