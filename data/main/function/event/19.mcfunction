
title @a subtitle [{"text":"啊有ㄉㄡˊ2.0","color":"blue"}]
title @a title ""


tellraw @a ["",{"text":"[\u4e8b\u4ef6]","color":"blue"},{"text":"全員身旁生成3隻洞穴蜘蛛，3秒後開始行動!","color":"white"}]

execute as @a[team=!spec] at @s run summon cave_spider ~ ~ ~ {Tags:[event19],NoAI:true}
execute as @a[team=!spec] at @s run summon cave_spider ~ ~ ~ {Tags:[event19],NoAI:true}
execute as @a[team=!spec] at @s run summon cave_spider ~ ~ ~ {Tags:[event19],NoAI:true}

schedule function main:event/19_2 3s



