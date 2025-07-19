#executed my who get the adchivement
#main/misson/16

tag @s add win

schedule clear main:misson/51_60/52/tick


#[系統]@a[tag=win]贏得了這回合!
tellraw @a ["",{"text":"[\u7cfb\u7d71]","color":"gold"},{"selector":"@a[tag=win]","color":"green"},{"text":"\u8d0f\u5f97\u4e86\u9019\u56de\u5408!","color":"white"}]
execute as @a at @s run playsound minecraft:block.beacon.deactivate


scoreboard players add @a[tag=win] score 1


tag @a remove misson52

function main:system/misson_end

