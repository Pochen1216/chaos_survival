





scoreboard players add @a[tag=!tp] tp_number 1


execute as @r[tag=!tp] run function main:system/sum_marker/summon



execute if entity @a[tag=!tp] run schedule function main:system/sum_marker/find 1t

