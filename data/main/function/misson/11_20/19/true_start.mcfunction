


execute as @e[tag=m_cen] at @s run setblock ~ ~ ~ minecraft:end_portal
execute as @e[tag=m_cen] run tp @a @s


scoreboard players set @a deaths -1000

scoreboard objectives add k_dragon minecraft.killed:minecraft.ender_dragon
scoreboard players set @a k_dragon 0

execute in minecraft:the_end unless entity @e[type=ender_dragon] run summon ender_dragon 0 100 0


#3 min
scoreboard players set @e[tag=m_cen] misson_countdown 3600
bossbar set minecraft:misson_timer max 3600

schedule function main:misson/11_20/19/tick 1t


