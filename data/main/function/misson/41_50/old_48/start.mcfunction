#力量越大，責任越大

title @a title [{"text":"力量越大，責任越大","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player


#[任務]你獲得了一把耐久1的神劍，30秒內將他用掉即可得一分，沒用掉的會被力量反噬殺死
#[作者悄悄說]可是如果不把劍用掉，似乎可以留到其他任務使用......
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u4f60\u7372\u5f97\u4e86\u4e00\u628a\u8010\u4e451\u7684\u795e\u528d\uff0c30\u79d2\u5167\u5c07\u4ed6\u7528\u6389\u5373\u53ef\u5f97\u4e00\u5206\uff0c\u6c92\u7528\u6389\u7684\u6703\u88ab\u529b\u91cf\u53cd\u566c\u6bba\u6b7b","color":"white"},{"text":"\n"},{"text":"[\u4f5c\u8005\u6084\u6084\u8aaa]\u53ef\u662f\u5982\u679c\u4e0d\u628a\u528d\u7528\u6389\uff0c\u4f3c\u4e4e\u53ef\u4ee5\u7559\u5230\u5176\u4ed6\u4efb\u52d9\u4f7f\u7528......","color":"gray"}]


scoreboard objectives add break_nsword minecraft.broken:minecraft.netherite_sword
scoreboard players set @a break_nsword 0

give @a[team=!spec] netherite_sword[custom_name=[{"text":"\u62cb\u68c4\u5f0f\u795e\u528d","italic":false}],lore=[[{"text":"\u6cdb\u8457\u7d2b\u5149\uff0c\u53ef\u4ee5\u65ac\u65b7\u4e00\u5207\u9748\u9b42\u7684\u795e\u528d\u3002","italic":false}],[{"text":"\u53ef\u662f\u4f7f\u7528\u4e00\u6b21\u4fbf\u6703\u5316\u70ba\u5875\u57c3","italic":false}]],rarity=epic,enchantable={value:1},max_damage=1,attribute_modifiers=[{slot:"mainhand",id:"minecraft:attack_damage",operation:"add_value",type:"minecraft:attack_damage",amount:10000}]] 1

scoreboard players set @e[tag=m_cen] misson_countdown 600
bossbar set minecraft:misson_timer max 600

schedule function main:misson/41_50/48/tick 5t







