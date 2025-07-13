


execute as @e[tag=m_cen] at @s run setblock ~ ~ ~ air


#[系統]@a[tag=win]贏得了這回合!
tellraw @a ["",{"text":"[\u7cfb\u7d71]","color":"gold"},{"selector":"@a[tag=win]","color":"green"},{"text":"\u8d0f\u5f97\u4e86\u9019\u56de\u5408!","color":"white"}]
execute as @a at @s run playsound minecraft:block.beacon.deactivate


scoreboard players add @a[tag=win] score 1


scoreboard players set @a deaths 0


schedule clear main:misson/11_20/19/tick

execute as @e[type=ender_dragon] run kill @s

function main:system/sum_marker/run_tp
function main:system/sum_marker/stop



function main:system/misson_end

