





scoreboard players add @a[tag=!tp,tag=!spec] tp_number 1


execute as @r[tag=!tp,tag=!spec] run function main:system/sum_marker/summon



execute if entity @a[tag=!tp,tag=!spec] run schedule function main:system/sum_marker/find 1t

