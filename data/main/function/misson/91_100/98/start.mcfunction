#同屬不同種

title @a title [{"text":"同屬不同種","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player


#[任務]生成一個躺著的人，把它砍死得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"生成馬，驢，騾，率先殺掉正確生物的得一分!","color":"white"}]

# 0:horse
# 1:donkey
# 2:mule

scoreboard objectives remove m98_1
scoreboard objectives add m98 dummy
execute as @e[tag=m_cen,limit=1,type=marker] store result score @s m98 run random value 0..2
execute if score @e[tag=m_cen,limit=1,type=marker] m98 matches 0 run scoreboard objectives add m98_1 killed:horse
execute if score @e[tag=m_cen,limit=1,type=marker] m98 matches 1 run scoreboard objectives add m98_1 killed:donkey
execute if score @e[tag=m_cen,limit=1,type=marker] m98 matches 2 run scoreboard objectives add m98_1 killed:mule

execute if score @e[tag=m_cen,limit=1,type=marker] m98 matches 0 run tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"請殺掉: ","color":"white"},{"text":"馬","color":"gold"},{"text":"!","color":"white"}]
execute if score @e[tag=m_cen,limit=1,type=marker] m98 matches 1 run tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"請殺掉: ","color":"white"},{"text":"驢","color":"gold"},{"text":"!","color":"white"}]
execute if score @e[tag=m_cen,limit=1,type=marker] m98 matches 2 run tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"請殺掉: ","color":"white"},{"text":"騾","color":"gold"},{"text":"!","color":"white"}]

execute as @a[team=!spec] at @s run summon horse
execute as @a[team=!spec] at @s run summon donkey
execute as @a[team=!spec] at @s run summon mule



scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200


schedule function main:misson/91_100/98/tick 5t





