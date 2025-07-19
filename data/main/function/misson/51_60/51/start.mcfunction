#魚骨時間

title @a title [{"text":"魚骨時間","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#​[任務]60秒內挖掘最多石頭+深板岩得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"60秒內挖掘最多石頭+深板岩得一分!","color":"white"}]


scoreboard objectives add mined_stone minecraft.mined:stone
scoreboard objectives add mined_ds minecraft.mined:deepslate
scoreboard players set @a mined_ds 0
scoreboard players set @a mined_stone 0

scoreboard players set @e[tag=m_cen] misson_countdown 600
bossbar set minecraft:misson_timer max 600

schedule function main:misson/51_60/51/end 60s


