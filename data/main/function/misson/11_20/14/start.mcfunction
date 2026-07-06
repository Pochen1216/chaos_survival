#We rage quit 混沌

title @a title [{"text":"We rage quit 混沌","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#最先退出並加入遊戲的得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"最先退出並加入遊戲的得一分!","color":"white"}]


scoreboard objectives add m14 minecraft.custom:leave_game
scoreboard players set @a m14 0

scoreboard players set @e[tag=m_cen] misson_countdown 600
bossbar set minecraft:misson_timer max 600

schedule function main:misson/11_20/14/tick 5t








