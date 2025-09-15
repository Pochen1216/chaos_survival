cs_v1.2.6
你說的對，但是這是我做的「混沌生存」
#--------------------------------------
#「混沌生存」是一款多人生存對戰遊戲
#你們需要在生存的同時完成各種神奇的任務
#最先達到目標分數(Tab可看)的人就獲得最終勝利!
#同時，混沌生存也擁有常駐任務
#按下L可查看任務，依照難度可得1分,2分,3分
#但是必須先完成上位任務才能完成更高分的任務!
#並且，即使你已經透過常駐任務達到目標分數
#你仍須透過最後獲得一次隨機任務的勝利來結算最終勝利!
#-------------------------------------


[混沌生存]請使用伺服器開啟，並將server_properites調為.......
allow-flight=true
allow-nether=true
difficulty=normal   (其實調啥都好，但不要peaceful)
enable-command-block=true
function-permission-level=3
spawn-protection=0

作者:poal
dc : Pochen1216

自用筆記

每次更新需要改動的地方:
data\main\function\system\cho_misson\sum.mcfunction
data\main\function\load.mcfunction
data\main\function\start.mcfunction line 104
data\main\function\system\misson_end.mcfunction




