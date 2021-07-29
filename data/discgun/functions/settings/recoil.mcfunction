
# リコイルオンオフ
    execute if score $D.Gun_Gamerule D.Gun_Gamerule1 matches 0 run tellraw @s ["\n----------\n\n",{"text":"銃のリコイル: 有効化\nRecoil: "},{"text":"ON","color":"green"},"\n\n----------\n"]
    execute if score $D.Gun_Gamerule D.Gun_Gamerule1 matches 1 run tellraw @s ["\n----------\n\n",{"text":"銃のリコイル: 無効化\nRecoil: "},{"text":"OFF","color":"red"},"\n\n----------\n"]
    
# 0に戻す
    scoreboard players add $D.Gun_Gamerule D.Gun_Gamerule1 1
    execute if score $D.Gun_Gamerule D.Gun_Gamerule1 matches 2 run scoreboard players set $D.Gun_Gamerule D.Gun_Gamerule1 0
