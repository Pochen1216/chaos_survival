#8+9

title @a title [{"text":"8+9","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player



#[任務]附近召喚一隻終界使者，最快被終界使者打的人獲勝!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u9644\u8fd1\u53ec\u559a\u4e00\u96bb\u7d42\u754c\u4f7f\u8005\uff0c\u6700\u5feb\u88ab\u7d42\u754c\u4f7f\u8005\u6253\u7684\u4eba\u7372\u52dd!","color":"white"}]



#execute as @a at @s run summon minecraft:wither ~ ~ ~ {Tags:[misson],Invul:100,Health:20}
#execute as @a at @s run attribute @e[type=minecraft:wither,limit=1,sort=nearest] minecraft:max_health base set 20


advancement revoke @a only main:misson/32


tag @a add misson32

execute as @a at @s run summon enderman ~ ~4 ~


scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/31_40/32/tick 1t








