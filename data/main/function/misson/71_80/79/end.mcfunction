


execute as @e[tag=m_cen,limit=1,type=marker] at @s run tag @a[limit=1,sort=nearest,scores={die=0},team=!spec] add win

#[系統]@a[tag=win]贏得了這回合!
function main:system/win_tellraw
execute as @a at @s run playsound minecraft:block.beacon.deactivate


scoreboard players add @a[tag=win] score 1



function main:system/misson_end

