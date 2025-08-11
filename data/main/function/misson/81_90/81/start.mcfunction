#去你的台風

title @a title [{"text":"去你的台風","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]率先獲得一枚盾牌獲勝!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"率先獲得一枚盾牌獲勝!","color":"white"}]

scoreboard objectives add detect_shield dummy



scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/81_90/81/tick 1t








