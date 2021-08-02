
# 発砲!
    playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 3 1
    playsound minecraft:block.chain.break player @a ~ ~ ~ 3 1.5
    playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 2 1.75
    playsound minecraft:entity.chicken.egg player @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.chicken.egg player @a ~ ~ ~ 2 2
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 2 2
    scoreboard players reset @s D.Gun_Delay
    tag @s add D.Gun_NormalShot
    tag @s add D.Gun_NormalShot

# 弾を召喚
    execute positioned ^ ^ ^ run function discgun:item/super_discgun/shot_disc_charged
    execute positioned ^0.5 ^ ^ run function discgun:item/super_discgun/shot_disc_charged
    execute positioned ^-0.5 ^ ^ run function discgun:item/super_discgun/shot_disc_charged
    execute positioned ^1 ^ ^ run function discgun:item/super_discgun/shot_disc_charged
    execute positioned ^-1 ^ ^ run function discgun:item/super_discgun/shot_disc_charged

# 弾丸消費
    execute in overworld run function discgun:item/consume_ammo
    scoreboard players remove @s D.Gun_Ammo 1
    scoreboard players reset @s D.Gun_Charge

# タグ削除
    tag @s remove Chuz.This