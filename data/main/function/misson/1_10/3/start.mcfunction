#清除雜質

title @a title [{"text":"清除雜質","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]率先將包包清空者得分
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u7387\u5148\u5c07\u5305\u5305\u6e05\u7a7a\u8005\u5f97\u5206!","color":"white"}]

scoreboard objectives add item_count dummy



scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/1_10/3/tick 1t








