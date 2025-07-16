
title @a subtitle [{"text":"水","color":"blue"}]
title @a title ""


#[事件]所有玩家腳下生成一格水! (地獄玩家除外)
tellraw @a ["",{"text":"[\u4e8b\u4ef6]","color":"blue"},{"text":"\u6240\u6709\u73a9\u5bb6\u8173\u4e0b\u751f\u6210\u4e00\u683c\u6c34! (\u5730\u7344\u73a9\u5bb6\u9664\u5916)","color":"white"}]


execute as @a at @s unless predicate main:event/11 run setblock ~ ~-1 ~ water



