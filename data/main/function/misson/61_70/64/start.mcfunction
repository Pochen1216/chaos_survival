#兔兔那麼可愛
title @a title [{"text":"兔兔那麼可愛","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#​[任務]率先獲得三顆綠寶石者得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"為每個人生成一隻殺手兔，30秒後","color":"white"},{text:"未",color:"red",bold:true,underlined:true},{"text":"擊殺任何兔子且未死亡的玩家得一分!"}]

advancement revoke @a only main:misson/64
scoreboard objectives add die deathCount
scoreboard players set @a die 0

advancement revoke @a only main:misson/64

execute as @a[team=!spec] at @s run summon rabbit ~ ~ ~ {Tags:["misson"],RabbitType:99}

scoreboard players set @e[tag=m_cen] misson_countdown 600
bossbar set minecraft:misson_timer max 600

schedule function main:misson/61_70/64/tick 1t








