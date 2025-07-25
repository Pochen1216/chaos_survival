
scoreboard objectives remove be_hit_pl
scoreboard objectives remove hit_pl
advancement grant @a only main:misson/25/be_hit
advancement grant @a only main:misson/25/hit

#adv.
effect give @a[scores={hot_potato=0}] unluck 1 0 true

execute as @a[scores={hot_potato=0}] run tag @s add win

execute as @a[scores={hot_potato=1}] at @s run summon creeper ~ ~ ~ {powered:true,Fuse:0,CustomName:[{text:"HOT POTATO",color:dark_red}]}

clear @a baked_potato[custom_name=[{"text":"HOT POTATO","color":"dark_red","bold":true}],lore=[[{"text":"你需要盡快將它脫手!","italic":false}],[{"text":"它只能藉由攻擊別人傳遞!","italic":false}],[{"text":"同時，你的能力獲得提升，","italic":false}],[{"text":"並有傳送到別人的能力!","italic":false}]],enchantment_glint_override=true,consumable={consume_seconds:1000,animation:none,has_consume_particles:0b},food={nutrition:1,saturation:1},unbreakable={},custom_data={hot_potato:1}]


team remove 25
scoreboard objectives remove 25_tp


#[系統]@a[tag=win]贏得了這回合!
function main:system/win_tellraw
execute as @a at @s run playsound minecraft:block.beacon.deactivate


scoreboard players add @a[tag=win] score 1


function main:system/misson_end

