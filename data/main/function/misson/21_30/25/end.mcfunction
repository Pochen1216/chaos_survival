
scoreboard objectives remove be_hit_pl
scoreboard objectives remove hit_pl
advancement grant @a only main:misson/25/be_hit
advancement grant @a only main:misson/25/hit


execute as @a[scores={hot_potato=1}] at @s run summon creeper ~ ~ ~ {Fuse:1,CustomName:[{text:"HOT POTATO",color:dark_red}]}
execute as @a[scores={hot_potato=0}] run tag @s add win

team remove 25

#[系統]@a[tag=win]贏得了這回合!
tellraw @a ["",{"text":"[\u7cfb\u7d71]","color":"gold"},{"selector":"@a[tag=win]","color":"green"},{"text":"\u8d0f\u5f97\u4e86\u9019\u56de\u5408!","color":"white"}]
execute as @a at @s run playsound minecraft:block.beacon.deactivate


scoreboard players add @a[tag=win] score 1


function main:system/misson_end

