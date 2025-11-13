#拯救地球

title @a title [{"text":"拯救地球","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player


#[任務]附近生成了一隻女巫，率先擊殺得分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"重生點有一台導彈發射器，未阻止將會朝所有玩家發射相當可觀的炸彈，中間的核心可拆除，拆除的人得一分","color":"white"}]



#give @a netherite_sword[custom_name=[{"text":"\u62cb\u68c4\u5f0f\u795e\u528d","italic":false}],lore=[[{"text":"\u6cdb\u8457\u7d2b\u5149\uff0c\u53ef\u4ee5\u65ac\u65b7\u4e00\u5207\u9748\u9b42\u7684\u795e\u528d\u3002","italic":false}],[{"text":"\u53ef\u662f\u4f7f\u7528\u4e00\u6b21\u4fbf\u6703\u5316\u70ba\u5875\u57c3","italic":false}]],rarity=epic,enchantable={value:1},enchantments={sharpness:255},max_damage=1] 1

scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

advancement revoke @a only main:misson/96
tag @a add misson96


execute as @e[tag=m_cen] at @s run summon marker ~ ~10 ~ {Tags:[misson,m96]}
execute as @e[type=marker,limit=1,tag=m96,sort=nearest] at @s run place template main:97
execute as @e[type=marker,limit=1,tag=m96,sort=nearest] at @s run summon shulker ~2 ~2 ~2 {Color:0,CustomName:[{text:"核心"}],Health:100,Glowing:1b,NoGravity:1b,PersistenceRequired:1b,Tags:["misson","m96"],equipment:{mainhand:{id:tnt,count:64}},drop_chances:{mainhand:1f},attributes:[{id:max_health,base:100f}]}

bossbar add b_m96 {"text":"導彈核心血量"}
bossbar set b_m96 visible true
bossbar set b_m96 players @a
bossbar set b_m96 max 100
bossbar set b_m96 color red
bossbar set b_m96 style notched_10



schedule function main:misson/91_100/96/tick 5t





