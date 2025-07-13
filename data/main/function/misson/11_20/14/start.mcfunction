#平安的一天

title @a title [{"text":"平安的一天","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]所有玩家獲得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u6240\u6709\u73a9\u5bb6\u7372\u5f97\u4e00\u5206!","color":"white"}]




scoreboard players set @e[tag=m_cen] misson_countdown 100
bossbar set minecraft:misson_timer max 100

schedule function main:misson/11_20/14/end 5s








