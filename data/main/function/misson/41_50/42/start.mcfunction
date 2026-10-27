#圓形

title @a title [{"text":"圓形","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player


#[事件]最先獲得終界珍珠或是雪球者得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"最先獲得圓形的物品的得一分!","color":"white"}]

scoreboard objectives add detect_circle dummy



scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/41_50/42/tick 5t








