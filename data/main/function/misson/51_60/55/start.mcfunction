#肅靜!

title @a title [{"text":"肅靜!","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]率先獲得一顆蘋果獲勝!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"在每個人腳下放置一個伏聆嘯口，60秒後周圍沒有warden的人得一分，有的話......看著辦:P","color":"white"}]
tellraw @a [{"text":"[特殊]",color:"light_purple"},{"text":"若在本任務期間死亡，則固定不計得分"}]

execute as @a[team=!spec] at @s run summon marker ~ ~-1 ~ {Tags:[misson,s.shrieker]}
execute as @e[type=marker,tag=s.shrieker] at @s run setblock ~ ~ ~ sculk_shrieker[can_summon=true]

scoreboard objectives add die deathCount
scoreboard players set @a die 0

scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/51_60/55/end 60s








