#凋零山莊

title @a title [{"text":"凋零山莊","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#​[任務]為每個人生成一隻5秒後爆炸，一共20滴血的凋零怪，先擊殺的玩家獲得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u70ba\u6bcf\u500b\u4eba\u751f\u6210\u4e00\u96bb5\u79d2\u5f8c\u7206\u70b8\uff0c\u4e00\u517120\u6ef4\u8840\u7684\u51cb\u96f6\u602a\uff0c\u5148\u64ca\u6bba\u7684\u73a9\u5bb6\u7372\u5f97\u4e00\u5206!","color":"white"}]

execute as @a at @s run summon minecraft:wither ~ ~ ~ {Tags:[misson],Invul:100,Health:20}
execute as @a at @s run attribute @e[type=minecraft:wither,limit=1,sort=nearest] minecraft:max_health base set 20


advancement revoke @a only main:misson/16


tag @a add misson16

scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/11_20/16/tick 1t








