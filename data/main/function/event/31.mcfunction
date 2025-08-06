
title @a subtitle [{"text":"恐懼震懾","color":"blue"}]
title @a title ""


tellraw @a ["",{"text":"[\u4e8b\u4ef6]","color":"blue"},{"text":"15秒內受到傷害直接死亡!","color":"white"}]

scoreboard objectives add get_damage custom:damage_taken
scoreboard players set @a get_damage 0

schedule function main:event/31/tick 1t
schedule function main:event/31/end 15s



