


execute as @e[tag=m_cen] at @s run setblock ~ ~ ~ air


#[系統]@a[tag=win]贏得了這回合!
function main:system/win_tellraw
execute as @a at @s run playsound minecraft:block.beacon.deactivate


scoreboard players add @a[tag=win] score 1


scoreboard players set @a deaths 0


schedule clear main:misson/11_20/19/tick

execute as @e[type=ender_dragon] run kill @s

#adv
advancement grant @a[team=!spec,advancements={main:hidden/19_det=false}] only main:hidden/19

function main:system/sum_marker/run_tp
function main:system/sum_marker/stop

execute as @e[tag=m_cen] at @s run tp @a[team=spec] @s

function main:system/misson_end

