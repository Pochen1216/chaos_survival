
#1p
execute as @a[nbt={equipment:{offhand:{id:"minecraft:redstone"}}}] run function main:misson/31_40/35/ore/redstone
execute as @a[nbt={equipment:{offhand:{id:"minecraft:coal"}}}] run function main:misson/31_40/35/ore/coal
execute as @a[nbt={equipment:{offhand:{id:"minecraft:copper_ingot"}}}] run function main:misson/31_40/35/ore/copper

#2p
execute as @a[nbt={equipment:{offhand:{id:"minecraft:lapis_lazuli"}}}] run function main:misson/31_40/35/ore/lapis


#5p
execute as @a[nbt={equipment:{offhand:{id:"minecraft:iron_ingot"}}}] run function main:misson/31_40/35/ore/iron
execute as @a[nbt={equipment:{offhand:{id:"minecraft:gold_ingot"}}}] run function main:misson/31_40/35/ore/gold


#30p
execute as @a[nbt={equipment:{offhand:{id:"minecraft:diamond"}}}] run function main:misson/31_40/35/ore/diamond



#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/31_40/35/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0



schedule function main:misson/31_40/35/tick 5t

