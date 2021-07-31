
# 弾を召喚
    execute anchored eyes rotated ~ 0 run summon pig ^ ^199.5 ^ {Silent:1b,Invulnerable:1b,Team:"No_Collision",PortalCooldown:2147483647,DeathTime:19,DeathLootTable:"miencraft:empty",Age:-2147483648,Tags:["D.Gun_DiscInit","D.Gun_NoHit","D.Gun_Common"],Passengers:[{id:"minecraft:area_effect_cloud",Duration:2147483647,Tags:["D.Gun_Rotater","D.Gun_Init"]}],ArmorItems:[{id:"minecraft:knowledge_book",Count:1b},{},{},{}],ArmorDropChances:[0.000F,0.085F,0.085F,0.085F],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}
    execute rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.5 ^ {Small:1b,Invisible:1b,Tags:["D.Gun_Model"],PortalCooldown:2147483647,Pose:{Head:[0.1f,0.1f,0.1f]},DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:7}}]}
    execute as @e[type=pig,tag=D.Gun_DiscInit,limit=1,sort=nearest] at @s run function discgun:entity/disc/init

