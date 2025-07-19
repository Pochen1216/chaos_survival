#合成器合成......

title @a title [{"text":"合成器合成......","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player


#[任務]率先合成一次合成器的人加一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"率先合成一次合成器的人加一分!","color":"white"}]



#give @a netherite_sword[custom_name=[{"text":"\u62cb\u68c4\u5f0f\u795e\u528d","italic":false}],lore=[[{"text":"\u6cdb\u8457\u7d2b\u5149\uff0c\u53ef\u4ee5\u65ac\u65b7\u4e00\u5207\u9748\u9b42\u7684\u795e\u528d\u3002","italic":false}],[{"text":"\u53ef\u662f\u4f7f\u7528\u4e00\u6b21\u4fbf\u6703\u5316\u70ba\u5875\u57c3","italic":false}]],rarity=epic,enchantable={value:1},enchantments={sharpness:255},max_damage=1] 1

scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

advancement revoke @a only main:misson/52
tag @a add misson52




schedule function main:misson/51_60/52/tick 5t





