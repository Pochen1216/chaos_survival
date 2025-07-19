#我是魚

title @a title [{"text":"我是魚","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player




#[任務]率先到戶外曬太陽的得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"率先進入游泳狀態得一分!","color":"white"}]



scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200



schedule function main:misson/51_60/53/tick 1t








