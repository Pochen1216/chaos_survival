
execute as @e[type=fireball,nbt={ExplosionPower:15b}] at @s run particle dust{color:[1.0,0.0,0.0],scale:1} ~ 0 ~ 0.1 200 0.1 1 5000 force



execute if entity @e[type=fireball,nbt={ExplosionPower:15b}] run schedule function main:event/27_2 5t

