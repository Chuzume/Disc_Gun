# スコア増やしてく
    scoreboard players add @s D.Gun_R.S.Disc 1
    execute if score @s D.Gun_R.S.Disc matches 140.. run function discgun:item/super_discgun/reload_finish

# 音
    execute if score @s D.Gun_R.S.Disc matches 20 run playsound minecraft:block.piston.extend player @a ~ ~ ~ 1 2
    execute if score @s D.Gun_R.S.Disc matches 20 run playsound minecraft:block.iron_trapdoor.close player @a ~ ~ ~ 1 1

    execute if score @s D.Gun_R.S.Disc matches 25 run playsound minecraft:block.piston.extend player @a ~ ~ ~ 1 2
    execute if score @s D.Gun_R.S.Disc matches 25 run playsound minecraft:block.iron_trapdoor.open player @a ~ ~ ~ 1 1

    execute if score @s D.Gun_R.S.Disc matches 40 run playsound minecraft:block.piston.contract player @a ~ ~ ~ 1 2
    execute if score @s D.Gun_R.S.Disc matches 40 run playsound minecraft:block.iron_trapdoor.close player @a ~ ~ ~ 1 1

    execute if score @s D.Gun_R.S.Disc matches 45 run playsound minecraft:block.piston.contract player @a ~ ~ ~ 1 2
    execute if score @s D.Gun_R.S.Disc matches 45 run playsound minecraft:block.iron_trapdoor.open player @a ~ ~ ~ 1 1

    execute if score @s D.Gun_R.S.Disc matches 80 run playsound minecraft:block.iron_trapdoor.open player @a ~ ~ ~ 1 1
    execute if score @s D.Gun_R.S.Disc matches 80 run playsound minecraft:block.chain.break player @a ~ ~ ~ 1 2
    execute if score @s D.Gun_R.S.Disc matches 80 run playsound minecraft:block.piston.contract player @a ~ ~ ~ 1 2

    execute if score @s D.Gun_R.S.Disc matches 100 run playsound minecraft:block.iron_trapdoor.open player @a ~ ~ ~ 1 1
    execute if score @s D.Gun_R.S.Disc matches 100 run playsound minecraft:block.chain.break player @a ~ ~ ~ 1 2
    execute if score @s D.Gun_R.S.Disc matches 100 run playsound minecraft:block.piston.contract player @a ~ ~ ~ 1 2

    execute if score @s D.Gun_R.S.Disc matches 120 run playsound minecraft:block.iron_trapdoor.open player @a ~ ~ ~ 1 1
    execute if score @s D.Gun_R.S.Disc matches 120 run playsound minecraft:block.chain.break player @a ~ ~ ~ 1 2
    execute if score @s D.Gun_R.S.Disc matches 120 run playsound minecraft:block.piston.extend player @a ~ ~ ~ 1 2

    execute if score @s D.Gun_R.S.Disc matches 138 run playsound minecraft:block.piston.contract player @a ~ ~ ~ 1 2