#快速排序

title @a title [{"text":"快速排序","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]率先使快捷欄第n格有n個物品的人獲勝!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u7387\u5148\u4f7f\u5feb\u6377\u6b04\u7b2cn\u683c\u6709n\u500b\u7269\u54c1\u7684\u4eba\u7372\u52dd!","color":"white"}]

scoreboard objectives add item_count dummy
scoreboard players set @a item_count 0



scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/31_40/31/tick 1t








