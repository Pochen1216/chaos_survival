
title @a subtitle [{"text":"行星波動","color":"blue"}]
title @a title ""


tellraw @a ["",{"text":"[\u4e8b\u4ef6]","color":"blue"},{"text":"有隕石要掉下來了!","color":"white"}]


execute as @a[team=!spec] at @s run summon marker ~ ~ ~ {Tags:[e27]}
execute as @a[team=!spec] at @s run spreadplayers ~ ~ 0 50 false @e[type=marker,tag=e27,limit=1,sort=nearest]

execute as @e[tag=e27,type=marker] at @s run summon minecraft:fireball ~ 200 ~ {Motion:[0,-0.1,0],acceleration_power:0.2,ExplosionPower:15}

execute as @e[tag=e27,type=marker] at @s run kill @s




execute as @e[type=fireball,nbt={ExplosionPower:15b}] at @s run particle dust{color:[1.0,0.0,0.0],scale:1} ~ 0 ~ 0.1 200 0.1 1 5000 force

schedule function main:event/27_2 1s

