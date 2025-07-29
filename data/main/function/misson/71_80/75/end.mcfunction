
#[系統]@a[tag=win]贏得了這回合!
function main:system/win_tellraw
execute as @a at @s run playsound minecraft:block.beacon.deactivate


scoreboard players add @a[tag=win] score 1
execute if entity @a[tag=win] run time add 12000


function main:system/misson_end

