#蘋果尋覓者

title @a title [{"text":"蘋果尋覓者","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]率先使用一次骨粉得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"進入以橡木樹為主的任意生態域得一分!","color":"white"}]




scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/81_90/87/tick 1t








