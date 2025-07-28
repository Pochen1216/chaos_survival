#積功德

title @a title [{"text":"積功德","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]率先放生一條魚的人得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"率先放生一條魚的人得一分!","color":"white"}]

scoreboard objectives add m69_1 minecraft.used:cod_bucket
scoreboard objectives add m69_2 minecraft.used:pufferfish_bucket
scoreboard objectives add m69_3 minecraft.used:salmon_bucket
scoreboard objectives add m69_4 minecraft.used:tropical_fish_bucket

scoreboard players set @a m69_1 0
scoreboard players set @a m69_2 0
scoreboard players set @a m69_3 0
scoreboard players set @a m69_4 0


scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/61_70/69/tick 1t








