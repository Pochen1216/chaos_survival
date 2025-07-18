
title @a subtitle [{"text":"全員逃走中","color":"blue"}]
title @a title ""


#[事件]為所有玩家生成一隻小殭屍!
tellraw @a ["",{"text":"[\u4e8b\u4ef6]","color":"blue"},{"text":"\u70ba\u6240\u6709\u73a9\u5bb6\u751f\u6210\u4e00\u96bb\u5c0f\u6bad\u5c4d!","color":"white"}]

execute as @a[team=!spec] at @s run summon zombie ~ ~ ~ {IsBaby:true}

