

execute as @a[scores={die=0}] at @s unless entity @e[type=warden,distance=..20] run tag @s add win

execute as @e[type=marker,tag=s.shrieker] at @s run setblock ~ ~ ~ air
execute as @e[type=marker,tag=s.shrieker] run kill @s

#[系統]@a[tag=win]贏得了這回合!
tellraw @a ["",{"text":"[\u7cfb\u7d71]","color":"gold"},{"selector":"@a[tag=win]","color":"green"},{"text":"\u8d0f\u5f97\u4e86\u9019\u56de\u5408!","color":"white"}]
execute as @a at @s run playsound minecraft:block.beacon.deactivate


scoreboard players add @a[tag=win] score 1



function main:system/misson_end

