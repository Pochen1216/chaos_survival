
execute as @a run attribute @s minecraft:gravity base reset

#[系統]@a[tag=win]贏得了這回合!
function main:system/win_tellraw
execute as @a at @s run playsound minecraft:block.beacon.deactivate

advancement grant @a[tag=win,scores={shoot=3}] only main:hidden/24

scoreboard players add @a[tag=win] score 1


function main:system/misson_end

