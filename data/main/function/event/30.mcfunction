
title @a subtitle [{"text":"桃","color":"blue"}]
title @a title ""


tellraw @a ["",{"text":"[\u4e8b\u4ef6]","color":"blue"},{"text":"死亡冷卻立即結束，全員回滿血","color":"white"}]


effect give @a instant_health 1 100 true
scoreboard players set @a d_cooldown 0


