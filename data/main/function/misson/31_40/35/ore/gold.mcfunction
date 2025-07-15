
execute store result score @s ore_count run data get entity @s equipment.offhand.count


scoreboard players set @s temp5 0
scoreboard players set n5 temp5 5
scoreboard players operation @s temp5 += @s ore_count
scoreboard players operation @s temp5 *= n5 temp5

scoreboard players operation @s point += @s temp5





#[任務]你上繳了 @s->ore_count 個金錠，因此獲得 @s->temp5 分，合計獲得 @s->point 分
tellraw @s [{"text":"[\u7cfb\u7d71]","color":"gold"},{"text":"\u4f60\u4e0a\u7e73\u4e86","color":"white"},{"text":" "},{"score":{"name":"@s","objective":"ore_count"}},{"text":" \u500b"},{"text":"\u91d1\u9320","color":"yellow"},{"text":"\uff0c\u56e0\u6b64\u7372\u5f97 ","color":"white"},{"score":{"name":"@s","objective":"temp5"},"color":"green"},{"text":" \u5206\uff0c\u5408\u8a08\u7372\u5f97 ","color":"white"},{"score":{"name":"@s","objective":"point"},"color":"gold"},{"text":" \u5206","color":"white"}]

execute at @s run playsound minecraft:ui.stonecutter.take_result
item replace entity @s weapon.offhand with air
