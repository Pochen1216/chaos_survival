#executed my who get the adchivement
#main/misson/9

tag @s add win

schedule clear main:misson/1_10/9/tick


#[系統]@a[tag=win]贏得了這回合!
function main:system/win_tellraw
execute as @a at @s run playsound minecraft:block.beacon.deactivate


scoreboard players add @a[tag=win] score 1


tag @a remove misson9

function main:system/misson_end

