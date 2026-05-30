
execute if entity @a[scores={p_missonA=0}] run function main:p_misson/1/tick
execute if entity @a[scores={p_missonC=0}] run function main:p_misson/3/detect
execute if entity @a[scores={p_missonA=1}] run function main:p_misson/4/detect
execute if entity @a[scores={p_missonB=1}] run function main:p_misson/5/tick
execute if entity @a[scores={p_missonC=1}] run function main:p_misson/6/detect
execute if entity @a[scores={p_missonA=2}] run function main:p_misson/7/detect
execute if entity @a[scores={p_missonB=2}] run function main:p_misson/8/detect
execute if entity @a[scores={p_missonC=2}] run function main:p_misson/9/detect

schedule function main:p_misson/tick 1s


