

scoreboard objectives add cm_num dummy


execute as @e[type=marker,limit=1,tag=m_cen] at @s run summon minecraft:marker ~ ~ ~ {Tags:[cm]}
execute as @e[type=marker,tag=cm,tag=!cm_done,limit=1] store result score @s cm_num run random value 1..94
execute as @e[type=marker,tag=cm,tag=cm_done] if score @s cm_num = @e[type=marker,tag=cm,tag=!cm_done,limit=1] cm_num run kill @e[type=marker,tag=cm,tag=!cm_done,limit=1]

# if success
tag @e[type=marker,tag=cm] add cm_done

#execute as @e[type=marker,tag=cm_done] run tellraw @a {score:{name:"@s",objective:"cm_num"},color:"green"}

