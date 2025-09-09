
#1p

execute as @a[team=!spec,nbt={equipment:{offhand:{id:"minecraft:cobweb"}}}] run function main:misson/81_90/90/ore/copper
execute as @a[team=!spec,nbt={equipment:{offhand:{id:"minecraft:string"}}}] run function main:misson/81_90/90/ore/coal




#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/81_90/90/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0



schedule function main:misson/81_90/90/tick 5t

