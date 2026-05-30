scoreboard players operation @s score += @s marsh

#tellraw @a ["",{"text":"[\u7cfb\u7d71]","color":"gold"},{selector:"@s"}]

tellraw @a [{"text":"[\u7cfb\u7d71]","color":"gold"},{"selector":"@s",color:"green"},{"text":" 已食用棉花糖，並因此獲得","color":"white"},{"score":{"name":"@s","objective":"marsh"},color:green},{text:" 分!\n","color":"white"}]

tag @s remove marsh


