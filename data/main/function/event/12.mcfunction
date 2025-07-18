
title @a subtitle [{"text":"幸運玩家","color":"blue"}]
title @a title ""


#[事件]隨機一個幸運玩家頭頂出現岩漿!
tellraw @a ["",{"text":"[\u4e8b\u4ef6]","color":"blue"},{"text":"\u96a8\u6a5f\u4e00\u500b\u5e78\u904b\u73a9\u5bb6\u982d\u9802\u51fa\u73fe\u5ca9\u6f3f!","color":"white"}]

execute as @r[team=!spec] at @s run setblock ~ ~3 ~ lava



