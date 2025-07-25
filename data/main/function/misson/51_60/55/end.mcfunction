

execute as @a[scores={die=0}] at @s unless entity @e[type=warden,distance=..20] run tag @s add win

execute as @e[type=marker,tag=s.shrieker] at @s run setblock ~ ~ ~ air
execute as @e[type=marker,tag=s.shrieker] run kill @s

#[系統]@a[tag=win]贏得了這回合!
function main:system/win_tellraw
execute as @a at @s run playsound minecraft:block.beacon.deactivate


scoreboard players add @a[tag=win] score 1



function main:system/misson_end

