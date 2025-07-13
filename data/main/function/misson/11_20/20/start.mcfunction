#穿越地心

title @a title [{"text":"穿越地心","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#​[任務]率先踩到基岩的得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u7387\u5148\u8e29\u5230\u57fa\u5ca9\u7684\u5f97\u4e00\u5206!","color":"white"}]

scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/11_20/20/tick 1t


