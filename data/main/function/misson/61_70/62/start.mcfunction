#CTM時間

title @a title [{"text":"打卡點","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]地表生成10個打卡點，60秒後踩點最多的得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"地表生成若干個打卡點，每個打卡點僅一人能打卡，60秒後打卡最多的得一分!","color":"white"}]

scoreboard objectives add checkpoint dummy
scoreboard players set @a checkpoint 0


kill @e[tag=m62_cp,type=marker]
execute as @a[team=!spec] at @s run summon marker ~ ~ ~ {Tags:[misson,m62_cp]}
execute as @a[team=!spec] at @s run summon marker ~ ~ ~ {Tags:[misson,m62_cp]}

execute as @e[type=marker,tag=m62_cp] at @s run spreadplayers ~ ~ 0 100 false @s

execute as @e[type=marker,tag=m62_cp] at @s run place template main:62 ~-2 ~-1 ~-2



scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/61_70/62/tick 1t








