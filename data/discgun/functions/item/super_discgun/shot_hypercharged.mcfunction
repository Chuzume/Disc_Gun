
# 発砲!
    playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 3 2
    playsound minecraft:block.chain.break player @a ~ ~ ~ 3 1.5
    playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 2 1.75
    playsound minecraft:entity.chicken.egg player @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.chicken.egg player @a ~ ~ ~ 2 2
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 2 2
    scoreboard players reset @s D.Gun_Delay
    tag @s add D.Gun_NormalShot

# 銃口からピカッ
    execute positioned ~ ~1.35 ~ run particle minecraft:crit ^-0.35 ^ ^1 0 0 0 0.35 10 normal @s

# 弾を召喚
    execute positioned ^ ^ ^ run function discgun:item/discgun/shot_hypercharged_2
    execute positioned ^0.25 ^ ^ run function discgun:item/discgun/shot_hypercharged_2
    execute positioned ^-0.25 ^ ^ run function discgun:item/discgun/shot_hypercharged_2
    execute positioned ^0.5 ^ ^ run function discgun:item/discgun/shot_hypercharged_2
    execute positioned ^-0.5 ^ ^ run function discgun:item/discgun/shot_hypercharged_2
    execute positioned ^0.75 ^ ^ run function discgun:item/discgun/shot_hypercharged_2
    execute positioned ^-0.75 ^ ^ run function discgun:item/discgun/shot_hypercharged_2

# 弾丸消費
    function discgun:item/discgun/reload_start
    scoreboard players reset @s D.Gun_Charge
