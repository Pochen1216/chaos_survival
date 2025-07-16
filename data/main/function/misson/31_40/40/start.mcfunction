#擊殺救贖

title @a title [{"text":"擊殺救贖","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player



#[任務]率先擊殺任意生物的玩家得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u7387\u5148\u64ca\u6bba\u4efb\u610f\u751f\u7269\u7684\u73a9\u5bb6\u5f97\u4e00\u5206!","color":"white"}]


#execute as @a at @s run summon minecraft:wither ~ ~ ~ {Tags:[misson],Invul:100,Health:20}
#execute as @a at @s run attribute @e[type=minecraft:wither,limit=1,sort=nearest] minecraft:max_health base set 20


advancement revoke @a only main:misson/40


tag @a add misson40



scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/31_40/40/tick 1t








