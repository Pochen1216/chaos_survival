#溫泉

title @a title [{"text":"溫泉","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player



#[任務]先跳進岩漿的人得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u5148\u8df3\u9032\u5ca9\u6f3f\u7684\u4eba\u5f97\u4e00\u5206!","color":"white"}]


#execute as @a at @s run summon minecraft:wither ~ ~ ~ {Tags:[misson],Invul:100,Health:20}
#execute as @a at @s run attribute @e[type=minecraft:wither,limit=1,sort=nearest] minecraft:max_health base set 20


advancement revoke @a only main:misson/33


tag @a add misson33



scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/31_40/33/tick 1t








