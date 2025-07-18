
title @a subtitle [{"text":"招兵買馬","color":"blue"}]
title @a title ""

#[事件]所有玩家身旁生成一隻鐵巨人!
tellraw @a ["",{"text":"[\u4e8b\u4ef6]","color":"blue"},{"text":"\u6240\u6709\u73a9\u5bb6\u8eab\u65c1\u751f\u6210\u4e00\u96bb\u9435\u5de8\u4eba!","color":"white"}]


execute as @a[team=!spec] at @s run summon iron_golem ~ ~ ~
#execute as @a at @s run spreadplayers ~ ~ 0 5 true @e[type=iron_golem,limit=1,sort=nearest]
