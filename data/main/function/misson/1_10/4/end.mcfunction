

execute as @a[scores={die=0}] run tag @s[team=!spec] add win

#[系統]@a[tag=win]贏得了這回合!
function main:system/win_tellraw
execute as @a at @s run playsound minecraft:block.beacon.deactivate


scoreboard players add @a[tag=win] score 1
scoreboard objectives remove die



function main:system/misson_end

