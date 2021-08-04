
# 発砲!
    playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 3 1
    playsound minecraft:block.chain.break player @a ~ ~ ~ 3 1.5
    playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 2 1.75
    playsound minecraft:entity.chicken.egg player @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.chicken.egg player @a ~ ~ ~ 2 2
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 2 2
    scoreboard players reset @s D.Gun_Delay
    tag @s add D.Gun_NormalShot
    tag @s add Chuz.This

# 弾を召喚
    scoreboard players set _ D.Gun_Life 100
    execute positioned ^ ^ ^ run function discgun:item/super_discgun/shot_disc_charged_2
    execute as @e[type=pig,tag=D.Gun_DiscInit,limit=1,sort=nearest] at @s rotated as @p[tag=Chuz.This] run function discgun:entity/disc_charged_2/init
    execute positioned ^0.1 ^ ^ run function discgun:item/super_discgun/shot_disc_charged_2
    execute as @e[type=pig,tag=D.Gun_DiscInit,limit=1,sort=nearest] at @s rotated as @p[tag=Chuz.This] facing ^0.087489 ^ ^1 run function discgun:entity/disc_charged_2/init
    execute positioned ^-0.1 ^ ^ run function discgun:item/super_discgun/shot_disc_charged_2
    execute as @e[type=pig,tag=D.Gun_DiscInit,limit=1,sort=nearest] at @s rotated as @p[tag=Chuz.This] facing ^-0.087489 ^ ^1 run function discgun:entity/disc_charged_2/init
    execute positioned ^0.2 ^ ^ run function discgun:item/super_discgun/shot_disc_charged_2
    execute as @e[type=pig,tag=D.Gun_DiscInit,limit=1,sort=nearest] at @s rotated as @p[tag=Chuz.This] facing ^0.176327 ^ ^1 run function discgun:entity/disc_charged_2/init
    execute positioned ^-0.2 ^ ^ run function discgun:item/super_discgun/shot_disc_charged_2
    execute as @e[type=pig,tag=D.Gun_DiscInit,limit=1,sort=nearest] at @s rotated as @p[tag=Chuz.This] facing ^-0.176327 ^ ^1 run function discgun:entity/disc_charged_2/init
    scoreboard players reset _ D.Gun_Life

# 弾丸消費
    execute in overworld run function discgun:item/consume_ammo
    scoreboard players remove @s D.Gun_Ammo 1
    scoreboard players reset @s D.Gun_Charge

# タグ削除
    tag @s remove Chuz.This