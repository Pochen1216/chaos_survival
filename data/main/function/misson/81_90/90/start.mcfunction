#收稅時間

title @a title [{"text":"silksong","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]將線獲知蛛網置於副手上繳，繳交數量合計最高的可得一分!

tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"將線獲知蛛網置於副手上繳，繳交數量合計最高的可得一分!"}]


scoreboard objectives add point dummy
scoreboard players set @a point 0

scoreboard objectives add ore_count dummy
scoreboard players set @a ore_count 0

scoreboard objectives add temp5 dummy
scoreboard players set @a temp5 0
scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/81_90/90/tick 1t








