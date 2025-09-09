#溫暖的家

title @a title [{"text":"溫暖的家","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]放置工作臺,熔爐,箱子,門各一個
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"放置工作臺,熔爐,箱子各一個得一分!","color":"white"}]


scoreboard objectives add m92_1 used:crafting_table
scoreboard objectives add m92_2 used:furnace
scoreboard objectives add m92_3 used:chest

scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/91_100/92/tick 1t








