#快速排序

title @a title [{"text":"快速排序","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]60秒內，補充最多飽食度的玩家獲勝!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"60\u79d2\u5167\uff0c\u88dc\u5145\u6700\u591a\u98fd\u98df\u5ea6\u7684\u73a9\u5bb6\u7372\u52dd!","color":"white"}]

scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

scoreboard objectives add food food
scoreboard objectives add food_before dummy
execute as @a run scoreboard players operation @s food_before = @s food
scoreboard objectives add food_regen dummy
scoreboard players set @a food_regen 0


schedule function main:misson/21_30/28/tick 1t


