
scoreboard objectives add temp2 dummy
scoreboard players set temp temp2 0
execute as @a run scoreboard players operation temp temp2 > @s point

execute as @a if score @s point = temp temp2 run tag @s add win

scoreboard objectives remove temp2


#[任務]@s的點數: @s->point
execute as @a run tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"selector":"@s","color":"dark_green"},{"text":"\u7684\u9ede\u6578: ","color":"white"},{"score":{"name":"@s","objective":"point"},"color":"gold"}]







#[系統]@a[tag=win]贏得了這回合!
tellraw @a ["",{"text":"[\u7cfb\u7d71]","color":"gold"},{"selector":"@a[tag=win]","color":"green"},{"text":"\u8d0f\u5f97\u4e86\u9019\u56de\u5408!","color":"white"}]
execute as @a at @s run playsound minecraft:block.beacon.deactivate


scoreboard players add @a[tag=win] score 1



 function main:system/misson_end

