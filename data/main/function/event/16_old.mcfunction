
title @a subtitle [{"text":"人遁","color":"blue"}]
title @a title ""


#[事件]原地生成5隻村民!

tellraw @a ["",{"text":"[\u4e8b\u4ef6]","color":"dark_blue"},{"text":"\u539f\u5730\u751f\u62105\u96bb\u6751\u6c11!","color":"white"}]


execute as @a at @s run summon villager
execute as @a at @s run summon villager
execute as @a at @s run summon villager
execute as @a at @s run summon villager
execute as @a at @s run summon villager


