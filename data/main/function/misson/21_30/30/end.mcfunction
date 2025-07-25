
#[系統]@a[tag=win]贏得了這回合!
function main:system/win_tellraw
execute as @a at @s run playsound minecraft:block.beacon.deactivate

schedule clear main:misson/21_30/30/tick

scoreboard players add @a[tag=win] score 1

tag @a remove win

function main:system/misson_end

