#碎形

title @a title [{"text":"碎形","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player


#[任務]把束口袋放進束口袋，再把這個束口袋放入另一個束口袋，重複4次，並將完成品放置副手
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"把束口袋放進束口袋，再把這個束口袋放入另一個束口袋，重複4次，並將完成品放置在副手","color":"white"}]


#execute if items entity @s weapon.offhand minecraft:bundle[bundle_contents=[{id:"minecraft:bundle",components:{"minecraft:bundle_contents":[{id:"minecraft:bundle",components:{"minecraft:bundle_contents":[{id:"minecraft:bundle",components:{"minecraft:bundle_contents":[{id:"minecraft:bundle"}]}}]}}]}}]]
give @a[team=!spec] bundle 5



scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200


schedule function main:misson/91_100/99/tick 5t



