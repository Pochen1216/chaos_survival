#曬曬太陽

title @a title [{"text":"曬曬太陽","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player




#[任務]率先到戶外曬太陽的得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u7387\u5148\u5230\u6236\u5916\u66ec\u592a\u967d\u7684\u5f97\u4e00\u5206!","color":"white"}]


scoreboard objectives add detect_apple dummy


time set day

scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200



schedule function main:misson/31_40/36/tick 1t








