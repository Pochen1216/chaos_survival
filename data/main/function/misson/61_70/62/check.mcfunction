
#[打卡成功]你已成功打卡!


execute if entity @e[tag=m62_cp,type=marker,distance=..5] run tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"selector":"@s",color:"green"},{"text":"\u5df2\u6210\u529f\u6253\u5361!","color":"white"}]

execute if entity @e[tag=m62_cp,type=marker,distance=..5] run scoreboard players add @s checkpoint 1


execute as @e[tag=m62_cp,type=marker,distance=..5,limit=1,sort=nearest] at @s run place template main:62_air ~-2 ~-1 ~-2

kill @e[tag=m62_cp,type=marker,distance=..5,limit=1,sort=nearest]
