# スコア増やしてく 20になったら終了
    scoreboard players add @s D.Gun_R.Disc 1
    execute if score @s D.Gun_R.Disc matches 50.. run function discgun:item/discgun/reload_finish

# 音
    execute if score @s D.Gun_R.Disc matches 20 run playsound minecraft:block.iron_trapdoor.close player @a ~ ~ ~ 1 1
    execute if score @s D.Gun_R.Disc matches 30 run playsound minecraft:block.iron_trapdoor.open player @a ~ ~ ~ 1 1
    execute if score @s D.Gun_R.Disc matches 48 run playsound minecraft:block.piston.contract player @a ~ ~ ~ 1 2