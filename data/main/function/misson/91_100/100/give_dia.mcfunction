

give @a[scores={m100_pl_jam=1..}] diamond 1
scoreboard players remove @a m100_pl_jam 1
execute if entity @a[scores={m100_pl_jam=1..}] run function main:misson/91_100/100/give_dia

