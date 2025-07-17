
scoreboard players set @s p_missonB 3


scoreboard players add @s score 3


#​[常駐任務]玩家@s完成了常駐任務，因此獲得3分!
tellraw @a ["",{"text":"[\u5e38\u99d0\u4efb\u52d9]","color":"dark_aqua"},{"text":"\u73a9\u5bb6","color":"white"},{"selector":"@s","color":"dark_green"},{"text":"\u5b8c\u6210\u4e86\u5e38\u99d0\u4efb\u52d9\uff0c\u56e0\u6b64\u7372\u5f973\u5206!","color":"white"},{"text":"\n "}]



function main:p_misson/checkwin



