


execute as @a at @s store result score @s bsheep if entity @e[type=sheep,nbt={Color:15b},distance=..30]
execute as @a at @s store result score @s wsheep if entity @e[type=sheep,nbt={Color:0b},distance=..30]


execute as @a[team=!spec] if score @s bsheep = @s wsheep run tag @s add win

execute as @a run tellraw @s [{"text":"[系統]","color":"gold"},{text:"你身邊共有",color:white},{color:gold,score:{name:"@s",objective:bsheep}},{text:" 隻黑羊，",color:white},{color:gold,score:{name:"@s",objective:wsheep}},{"text":"隻白羊",color:white}]



#[系統]@a[tag=win]贏得了這回合!
function main:system/win_tellraw
execute as @a at @s run playsound minecraft:block.beacon.deactivate

scoreboard players add @a[tag=win] score 1


function main:system/misson_end

