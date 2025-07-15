#釀造大師

title @a title [{"text":"釀造大師","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#​[任務]60秒內，所有釀造出指定藥水的玩家得一分!
#[特殊]勝者可多於一位
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"60\u79d2\u5167\uff0c\u6240\u6709\u91c0\u9020\u51fa\u6307\u5b9a\u85e5\u6c34\u7684\u73a9\u5bb6\u5f97\u4e00\u5206!","color":"white"},{"text":"\n"},{"text":"[\u7279\u6b8a]","color":"light_purple"},{"text":"\u52dd\u8005\u53ef\u591a\u65bc\u4e00\u4f4d","color":"white"}]

give @a minecraft:white_shulker_box[minecraft:container=[{slot:0,item:{id:brewing_stand}},{slot:1,item:{id:nether_wart,count:3}},{slot:2,item:{id:sugar,count:3}},{slot:3,item:{id:gunpowder,count:3}},{slot:4,item:{id:rabbit_foot,count:3}},{slot:5,item:{id:blaze_powder,count:3}},{slot:6,item:{id:glistering_melon_slice,count:3}},{slot:7,item:{id:"spider_eye",count:3}},{slot:8,item:{id:ghast_tear,count:3}},{slot:9,item:{id:magma_cream,count:3}},{slot:10,item:{id:pufferfish,count:3}},{slot:11,item:{id:golden_carrot,count:3}},{slot:12,item:{id:turtle_helmet,count:3,components:{max_stack_size:3}}},{slot:13,item:{id:phantom_membrane,count:3}},{slot:14,item:{id:breeze_rod,count:3}},{slot:15,item:{id:cobweb,count:3}},{slot:16,item:{id:slime_block,count:3}},{slot:17,item:{id:stone,count:3}},{slot:18,item:{id:glowstone_dust,count:3}},{slot:19,item:{id:redstone,count:3}},{slot:20,item:{id:brown_mushroom,count:3}}],custom_name={text:"釀造禮包","color":gold}] 1





scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/21_30/30/tick 1t


