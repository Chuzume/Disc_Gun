
# 発砲!
    playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 3 1
    playsound minecraft:block.chain.break player @a ~ ~ ~ 3 1.5
    playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 2 1.75
    playsound minecraft:entity.chicken.egg player @a ~ ~ ~ 2 1.5
    playsound minecraft:block.note_block.xylophone player @s ~ ~ ~ 2 1
    scoreboard players reset @s D.Gun_Delay
    tag @s add D.Gun_NormalShot
    tag @s add Chuz.This

# 弾を召喚
    execute positioned ^ ^ ^ run function discgun:item/super_discgun/shot_disc
    execute positioned ^0.5 ^ ^ run function discgun:item/super_discgun/shot_disc
    execute positioned ^-0.5 ^ ^ run function discgun:item/super_discgun/shot_disc
    execute positioned ^1 ^ ^ run function discgun:item/super_discgun/shot_disc
    execute positioned ^-1 ^ ^ run function discgun:item/super_discgun/shot_disc


# 弾丸消費
    execute in overworld run function discgun:item/consume_ammo
    scoreboard players reset @s D.Gun_Charge
    
# タグ削除
    tag @s remove Chuz.This