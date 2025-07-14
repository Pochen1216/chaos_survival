
title @a subtitle [{"text":"看你身邊","color":"blue"}]
title @a title ""

#[事件]所有玩家身旁的方塊被清除!
tellraw @a ["",{"text":"[\u4e8b\u4ef6]","color":"blue"},{"text":"\u6240\u6709\u73a9\u5bb6\u8eab\u65c1\u7684\u65b9\u584a\u88ab\u6e05\u9664!","color":"white"}]

execute as @a at @s run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air destroy

