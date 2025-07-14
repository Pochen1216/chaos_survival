
title @a subtitle [{"text":"天堂製造","color":"blue"}]
title @a title ""

#[事件]30秒內所有速度1.5倍計算(因此本任務僅執行了20現實秒)
tellraw @a ["",{"text":"[\u4e8b\u4ef6]","color":"blue"},{"text":"30\u79d2\u5167\u6240\u6709\u901f\u5ea61.5\u500d\u8a08\u7b97(\u56e0\u6b64\u672c\u4efb\u52d9\u50c5\u57f7\u884c\u4e8620\u73fe\u5be6\u79d2)","color":"white"}]


tick rate 30

schedule function main:event/3_2 30s




