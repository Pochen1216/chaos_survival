

execute as @a[scores={respond=-1}] run effect give @s poison 30 1 false

execute as @a[scores={respond=1}] run tag @s add win


tag @a remove responded

#[系統]@a[tag=win]贏得了這回合!
tellraw @a ["",{"text":"[\u7cfb\u7d71]","color":"gold"},{"selector":"@a[tag=win]","color":"green"},{"text":"\u8d0f\u5f97\u4e86\u9019\u56de\u5408!","color":"white"}]
execute as @a at @s run playsound minecraft:block.beacon.deactivate


scoreboard players add @a[tag=win] score 1



function main:system/misson_end

