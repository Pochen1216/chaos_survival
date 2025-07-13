#走不到的地步

title @a title [{"text":"走不到的地步","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]30秒後，身上效果最多的人得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"30\u79d2\u5f8c\uff0c\u8eab\u4e0a\u6548\u679c\u6700\u591a\u7684\u4eba\u5f97\u4e00\u5206!","color":"white"}]
#[特殊]若在本任務期間死亡，則效果數固定以0計算
tellraw @a ["",{"text":"[\u7279\u6b8a]","color":"light_purple"},{"text":"\u82e5\u5728\u672c\u4efb\u52d9\u671f\u9593\u6b7b\u4ea1\uff0c\u5247\u6548\u679c\u6578\u56fa\u5b9a\u4ee50\u8a08\u7b97","color":"white"}]

scoreboard objectives add die deathCount
scoreboard players set @a die 0

scoreboard players set @e[tag=m_cen] misson_countdown 600
bossbar set minecraft:misson_timer max 600

schedule function main:misson/21_30/27/end 30s


