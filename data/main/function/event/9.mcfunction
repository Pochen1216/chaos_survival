
title @a subtitle [{"text":"EXPLOSION!!!","color":"blue","bold":true,"italic":true}]
title @a title ""

#[事件]EXPLOSION!!!
tellraw @a ["",{"text":"[\u4e8b\u4ef6]","color":"blue"},{"text":"EXPLOSION!!!","color":"red","bold":true,"italic":true}]

effect give @a resistance 1 4 true
execute as @a[team=!spec] at @s run summon creeper ~ ~ ~ {powered:true,Fuse:0,CustomName:[{text:"爆裂魔法",color:dark_red}],ExplosionRadius:5}

