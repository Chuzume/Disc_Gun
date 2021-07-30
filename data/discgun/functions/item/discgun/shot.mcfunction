
# 発砲!
    playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 3 2
    playsound minecraft:block.chain.break player @a ~ ~ ~ 3 1.5
    playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 2 1.75
    scoreboard players reset @s D.Gun_Delay
    tag @s add D.Gun_NormalShot

# 銃口からピカッ
    execute positioned ~ ~1.35 ~ run particle minecraft:crit ^-0.35 ^ ^1 0 0 0 0.35 10 normal @s

# 弾を召喚
    execute unless score @s D.Gun_ShotPos matches 1.. anchored eyes rotated ~ 0 run summon pig ^ ^199.7 ^ {Invulnerable:1b,Age:-2147483648,Team:"No_Collision",Silent:1b,PortalCooldown:2147483647,DeathTime:19,DeathLootTable:"miencraft:empty",Tags:["D.Gun_DiscInit","D.Gun_Common"],Passengers:[{id:"minecraft:area_effect_cloud",Duration:2147483647,PortalCooldown:2147483647,Tags:["D.Gun_Rotater","D.Gun_Init"]}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}
    execute unless score @s D.Gun_ShotPos matches 1.. rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.5 ^ {Small:1b,Invisible:1b,Tags:["D.Gun_Model"],PortalCooldown:2147483647,Pose:{Head:[0.1f,0.1f,0.1f]},DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:9}}]}

# INIT実行
    execute as @e[type=pig,tag=D.Gun_DiscInit,limit=1,sort=nearest] at @s run function discgun:entity/disc/init

# 弾丸消費
    execute in overworld run function discgun:item/consume_ammo
    scoreboard players remove @s D.Gun_Ammo 1
