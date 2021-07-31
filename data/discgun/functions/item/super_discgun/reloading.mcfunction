# スコア増やしてく
    scoreboard players add @s D.Gun_R.Disc 1
    execute if score @s D.Gun_R.Disc matches 70.. run function discgun:item/discgun/reload_finish

# 音
    execute if score @s D.Gun_R.Disc matches 20 run playsound minecraft:block.piston.extend player @a ~ ~ ~ 1 2
    execute if score @s D.Gun_R.Disc matches 20 run playsound minecraft:block.iron_trapdoor.close player @a ~ ~ ~ 1 1

    execute if score @s D.Gun_R.Disc matches 25 run playsound minecraft:block.piston.extend player @a ~ ~ ~ 1 2
    execute if score @s D.Gun_R.Disc matches 25 run playsound minecraft:block.iron_trapdoor.open player @a ~ ~ ~ 1 1

    execute if score @s D.Gun_R.Disc matches 45 run playsound minecraft:block.iron_trapdoor.open player @a ~ ~ ~ 1 1
    execute if score @s D.Gun_R.Disc matches 45 run playsound minecraft:block.chain.break player @a ~ ~ ~ 1 2
    execute if score @s D.Gun_R.Disc matches 45 run playsound minecraft:block.piston.contract player @a ~ ~ ~ 1 2

    execute if score @s D.Gun_R.Disc matches 50 run playsound minecraft:block.iron_trapdoor.open player @a ~ ~ ~ 1 1
    execute if score @s D.Gun_R.Disc matches 50 run playsound minecraft:block.chain.break player @a ~ ~ ~ 1 2
    execute if score @s D.Gun_R.Disc matches 50 run playsound minecraft:block.piston.contract player @a ~ ~ ~ 1 2

    execute if score @s D.Gun_R.Disc matches 55 run playsound minecraft:block.iron_trapdoor.open player @a ~ ~ ~ 1 1
    execute if score @s D.Gun_R.Disc matches 55 run playsound minecraft:block.chain.break player @a ~ ~ ~ 1 2
    execute if score @s D.Gun_R.Disc matches 55 run playsound minecraft:block.piston.extend player @a ~ ~ ~ 1 2

    execute if score @s D.Gun_R.Disc matches 68 run playsound minecraft:block.piston.contract player @a ~ ~ ~ 1 2