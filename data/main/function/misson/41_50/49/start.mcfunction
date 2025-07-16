#搶午餐吃

title @a title [{"text":"搶午餐吃","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player


#[任務]午餐時間到了!餐費(綠寶石)已經發下，找到唯一賣食物的村民可以加一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u5348\u9910\u6642\u9593\u5230\u4e86!\u9910\u8cbb(\u7da0\u5bf6\u77f3)\u5df2\u7d93\u767c\u4e0b\uff0c\u627e\u5230\u552f\u4e00\u8ce3\u98df\u7269\u7684\u6751\u6c11\u53ef\u4ee5\u52a0\u4e00\u5206!","color":"white"}]



give @a netherite_sword[custom_name=[{"text":"\u62cb\u68c4\u5f0f\u795e\u528d","italic":false}],lore=[[{"text":"\u6cdb\u8457\u7d2b\u5149\uff0c\u53ef\u4ee5\u65ac\u65b7\u4e00\u5207\u9748\u9b42\u7684\u795e\u528d\u3002","italic":false}],[{"text":"\u53ef\u662f\u4f7f\u7528\u4e00\u6b21\u4fbf\u6703\u5316\u70ba\u5875\u57c3","italic":false}]],rarity=epic,enchantable={value:1},enchantments={sharpness:255},max_damage=1] 1

scoreboard players set @e[tag=m_cen] misson_countdown 600
bossbar set minecraft:misson_timer max 600

advancement revoke @a only main:misson/49
tag @a add misson49

give @a emerald 1

#wrong
execute as @a at @s run summon villager ~ ~ ~ {VillagerData:{type:plains,profession:nitwit,level:99},Offers:{Recipes:[{maxUses:1,rewardExp:0b,buy:{id:barrier,count:1},sell:{id:barrier,count:1}}]},Tags:["misson"]}
execute as @a at @s run summon villager ~ ~ ~ {VillagerData:{type:plains,profession:nitwit,level:99},Offers:{Recipes:[{maxUses:1,rewardExp:0b,buy:{id:barrier,count:1},sell:{id:barrier,count:1}}]},Tags:["misson"]}
execute as @a at @s run summon villager ~ ~ ~ {VillagerData:{type:plains,profession:nitwit,level:99},Offers:{Recipes:[{maxUses:1,rewardExp:0b,buy:{id:barrier,count:1},sell:{id:barrier,count:1}}]},Tags:["misson"]}
execute as @a at @s run summon villager ~ ~ ~ {VillagerData:{type:plains,profession:nitwit,level:99},Offers:{Recipes:[{maxUses:1,rewardExp:0b,buy:{id:barrier,count:1},sell:{id:barrier,count:1}}]},Tags:["misson"]}
execute as @a at @s run summon villager ~ ~ ~ {VillagerData:{type:plains,profession:nitwit,level:99},Offers:{Recipes:[{maxUses:1,rewardExp:0b,buy:{id:barrier,count:1},sell:{id:barrier,count:1}}]},Tags:["misson"]}
execute as @a at @s run summon villager ~ ~ ~ {VillagerData:{type:plains,profession:nitwit,level:99},Offers:{Recipes:[{maxUses:1,rewardExp:0b,buy:{id:barrier,count:1},sell:{id:barrier,count:1}}]},Tags:["misson"]}
execute as @a at @s run summon villager ~ ~ ~ {VillagerData:{type:plains,profession:nitwit,level:99},Offers:{Recipes:[{maxUses:1,rewardExp:0b,buy:{id:barrier,count:1},sell:{id:barrier,count:1}}]},Tags:["misson"]}

#right
execute as @a at @s run summon villager ~ ~ ~ {VillagerData:{type:plains,profession:nitwit,level:99},Offers:{Recipes:[{maxUses:1,rewardExp:0b,buy:{id:emerald,count:1},sell:{id:cooked_beef,count:64}}]},Tags:["misson"],active_effects:[{id:luck,duration:100000,amplifier:0,show_particles:0b}]}

schedule function main:misson/41_50/49/tick 5t





