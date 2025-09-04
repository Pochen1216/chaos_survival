


#find misson

scoreboard objectives add cm_entity dummy

function main:system/cho_misson/sum

execute store result score @e[limit=1,type=marker,tag=m_cen] cm_entity if entity @e[type=marker,tag=cm_done]

execute if score @e[limit=1,type=marker,tag=m_cen] cm_entity >= @e[limit=1,type=marker,tag=m_cen] cm_target run function main:system/cho_misson/start2
execute if score @e[limit=1,type=marker,tag=m_cen] cm_entity matches -1 run return 0


function main:system/cho_misson/start1
