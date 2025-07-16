
title @a subtitle [{"text":"彈了個指","color":"blue"}]
title @a title ""


#[事件]世界一半的生物不見了(任務不受影響)

tellraw @a ["",{"text":"[\u4e8b\u4ef6]","color":"blue"},{"text":"\u4e16\u754c\u4e00\u534a\u7684\u751f\u7269\u4e0d\u898b\u4e86(\u4efb\u52d9\u4e0d\u53d7\u5f71\u97ff)","color":"white"}]

execute as @e[type=!marker,type=!armor_stand,type=!ender_dragon,type=!text_display,type=!player,tag=!misson] if predicate main:event/16 run kill @s




