
gamerule naturalRegeneration false
#effect clear @a resistance
#effect clear @a slowness
#effect clear @a mining_fatigue
#effect clear @s weakness
#effect clear @a blindness
scoreboard players set @a d_cooldown 0


scoreboard objectives add die deathCount
scoreboard players set @a die 0

scoreboard players set @a deaths -1
effect clear @a resistance

scoreboard objectives add human dummy
scoreboard players set @e[tag=m_cen] human 0

scoreboard objectives add H health
scoreboard objectives modify H rendertype hearts
scoreboard objectives setdisplay list H
execute as @a run damage @s 0.001 generic_kill

scoreboard objectives add cen_y dummy
execute as @e[type=minecraft:marker,limit=1,tag=m_cen] store result score @s cen_y run data get entity @s Pos[1]



scoreboard players set @e[tag=m_cen] misson_countdown 2400
bossbar set minecraft:misson_timer max 2400

########################

execute as @e[tag=m_cen] at @s run place template main:23 ~ 150 ~
execute as @a at @e[tag=m_cen] run spreadplayers ~8 ~8 5 6 under 153 true @s
execute as @e[tag=m_cen] at @s run tp @a[team=spec] ~ 152 ~




schedule function main:misson/21_30/23/tick 1t




