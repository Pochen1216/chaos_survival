

execute as @a[team=!spec,scores={break_nsword=0}] run kill @s

execute as @a[team=!spec,scores={break_nsword=1}] run tag @s add win

#[任務]由於@a[scores={break_nsword=0}]未使用神劍，因此遭到了制裁!
execute if entity @a[team=!spec,scores={break_nsword=0}] run tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u7531\u65bc","color":"white"},{"selector":"@a[team=!spec,scores={break_nsword=0}]","color":"dark_green"},{"text":"\u672a\u4f7f\u7528\u795e\u528d\uff0c\u56e0\u6b64\u906d\u5230\u4e86\u5236\u88c1!","color":"white"},{"text":"\n "}]



#[系統]@a[tag=win]贏得了這回合!
function main:system/win_tellraw
execute as @a at @s run playsound minecraft:block.beacon.deactivate


scoreboard players add @a[tag=win] score 1



function main:system/misson_end

