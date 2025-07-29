#猜拳：剪刀

title @a title [{"text":"猜拳：剪刀","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]先原地不動達10秒者得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"率先副手持有鵝卵石者得一分!","color":"white"}]




scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/71_80/76/tick 1t








