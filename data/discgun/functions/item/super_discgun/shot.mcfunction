
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
    scoreboard players set _ D.Gun_Life 100
    execute positioned ^ ^ ^ run function discgun:item/super_discgun/shot_disc
    execute as @e[type=pig,tag=D.Gun_DiscInit,limit=1,sort=nearest] at @s rotated as @p[tag=Chuz.This] run function discgun:entity/disc/init
    execute positioned ^0.1 ^ ^ run function discgun:item/super_discgun/shot_disc
    execute as @e[type=pig,tag=D.Gun_DiscInit,limit=1,sort=nearest] at @s rotated as @p[tag=Chuz.This] facing ^0.087489 ^ ^1 run function discgun:entity/disc/init
    execute positioned ^-0.1 ^ ^ run function discgun:item/super_discgun/shot_disc
    execute as @e[type=pig,tag=D.Gun_DiscInit,limit=1,sort=nearest] at @s rotated as @p[tag=Chuz.This] facing ^-0.087489 ^ ^1 run function discgun:entity/disc/init
    execute positioned ^0.2 ^ ^ run function discgun:item/super_discgun/shot_disc
    execute as @e[type=pig,tag=D.Gun_DiscInit,limit=1,sort=nearest] at @s rotated as @p[tag=Chuz.This] facing ^0.176327 ^ ^1 run function discgun:entity/disc/init
    execute positioned ^-0.2 ^ ^ run function discgun:item/super_discgun/shot_disc
    execute as @e[type=pig,tag=D.Gun_DiscInit,limit=1,sort=nearest] at @s rotated as @p[tag=Chuz.This] facing ^-0.176327 ^ ^1 run function discgun:entity/disc/init
    scoreboard players reset _ D.Gun_Life


# 弾丸消費
    execute in overworld run function discgun:item/consume_ammo
    scoreboard players reset @s D.Gun_Charge
    
# タグ削除
    tag @s remove Chuz.This