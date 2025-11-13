#這裡不讓睡覺

title @a title [{"text":"這裡不讓睡覺","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player


#[任務]生成一個躺著的人，把它砍死得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"生成一個躺著的人，把它砍死得一分!","color":"white"}]
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"hint:躺著的人碰撞框很小，建議開啟F3+B看看","color":"white"}]



#give @a netherite_sword[custom_name=[{"text":"\u62cb\u68c4\u5f0f\u795e\u528d","italic":false}],lore=[[{"text":"\u6cdb\u8457\u7d2b\u5149\uff0c\u53ef\u4ee5\u65ac\u65b7\u4e00\u5207\u9748\u9b42\u7684\u795e\u528d\u3002","italic":false}],[{"text":"\u53ef\u662f\u4f7f\u7528\u4e00\u6b21\u4fbf\u6703\u5316\u70ba\u5875\u57c3","italic":false}]],rarity=epic,enchantable={value:1},enchantments={sharpness:255},max_damage=1] 1

scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

advancement revoke @a only main:misson/97
tag @a add misson97

execute as @a[team=!spec] at @s run summon mannequin ~ ~ ~ {pose:sleeping}
#execute as @a[team=!spec] at @s run spreadplayers ~ ~ 0 3 true @e[type=witch,limit=1,sort=nearest]



schedule function main:misson/91_100/97/tick 5t





