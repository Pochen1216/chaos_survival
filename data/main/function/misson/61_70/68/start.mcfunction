#環保愛地球

title @a title [{"text":"環保愛地球","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]率先種一棵樹的人得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"率先種一棵樹的人得一分!"}]


scoreboard objectives add m68_1 minecraft.used:minecraft.oak_sapling
scoreboard players set @a m68_1 0

scoreboard objectives add m68_2 minecraft.used:minecraft.spruce_sapling
scoreboard players set @a m68_2 0

scoreboard objectives add m68_3 minecraft.used:minecraft.birch_sapling
scoreboard players set @a m68_3 0

scoreboard objectives add m68_4 minecraft.used:minecraft.jungle_sapling
scoreboard players set @a m68_4 0

scoreboard objectives add m68_5 minecraft.used:minecraft.acacia_sapling
scoreboard players set @a m68_5 0

scoreboard objectives add m68_6 minecraft.used:minecraft.dark_oak_sapling
scoreboard players set @a m68_6 0

scoreboard objectives add m68_7 minecraft.used:minecraft.mangrove_propagule
scoreboard players set @a m68_7 0

scoreboard objectives add m68_8 minecraft.used:minecraft.cherry_sapling
scoreboard players set @a m68_8 0

scoreboard objectives add m68_9 minecraft.used:minecraft.pale_oak_sapling
scoreboard players set @a m68_9 0



scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/61_70/68/tick 1t

