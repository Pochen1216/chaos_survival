

#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/11_20/11/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0



execute as @a[scores={lottery=1..,die=0}] run function main:misson/11_20/11/lottery
scoreboard players enable @a[scores={die=0}] lottery
scoreboard players reset @a[scores={die=1..}] lottery

scoreboard players set @a lottery 0




schedule function main:misson/11_20/11/tick 5t

