#回歸小房間

title @a title [{"text":"回歸小房間","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#​[任務]10秒後，將大家傳到基岩小房間，活到最後的玩家得1分!
#[特殊]在本任務死亡將會變為旁觀者模式，任務結算後再變回生存模式!
#[特殊]本任務期間無法自然回血!
#[特殊]若有玩家處於死亡僵直或無敵，將於10秒後自動解除!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"10\u79d2\u5f8c\uff0c\u5c07\u5927\u5bb6\u50b3\u5230\u57fa\u5ca9\u5c0f\u623f\u9593\uff0c\u6d3b\u5230\u6700\u5f8c\u7684\u73a9\u5bb6\u5f971\u5206!","color":"white"},{"text":"\n"},{"text":"[\u7279\u6b8a]","color":"light_purple"},{"text":"\u5728\u672c\u4efb\u52d9\u6b7b\u4ea1\u5c07\u6703\u8b8a\u70ba\u65c1\u89c0\u8005\u6a21\u5f0f\uff0c\u4efb\u52d9\u7d50\u7b97\u5f8c\u518d\u8b8a\u56de\u751f\u5b58\u6a21\u5f0f!","color":"white"},{"text":"\n"},{"text":"[\u7279\u6b8a]","color":"light_purple"},{"text":"\u672c\u4efb\u52d9\u671f\u9593\u7121\u6cd5\u81ea\u7136\u56de\u8840!","color":"white"},{"text":"\n"},{"text":"[\u7279\u6b8a]","color":"light_purple"},{"text":"\u82e5\u6709\u73a9\u5bb6\u8655\u65bc\u6b7b\u4ea1\u50f5\u76f4\u6216\u7121\u6575\uff0c\u5c07\u65bc10\u79d2\u5f8c\u81ea\u52d5\u89e3\u9664!","color":"white"}]

function main:system/sum_marker/start

scoreboard players set @e[tag=m_cen] misson_countdown 210
bossbar set minecraft:misson_timer max 210

schedule function main:misson/21_30/23/true_start 10s


