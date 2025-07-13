#空間管理大師

title @a title [{"text":"空間管理大師","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]率先將背包填滿者勝!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u7387\u5148\u5c07\u80cc\u5305\u586b\u6eff\u8005\u52dd!","color":"white"}]

scoreboard objectives add item_count dummy



scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/1_10/8/tick 1t








