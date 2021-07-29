
# 発砲!
    playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 3 2
    playsound minecraft:block.chain.break player @a ~ ~ ~ 3 1.5
    playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 2 1.75
    scoreboard players reset @s D.Gun_Delay
    tag @s add D.Gun_NormalShot

# 銃口からピカッ
    execute positioned ~ ~1.35 ~ run particle minecraft:crit ^-0.35 ^ ^1 0 0 0 0.35 10 normal @s

# 弾を召喚
# 上
    #execute anchored eyes run summon armor_stand ^-0.25 ^ ^ {Silent:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["D.Gun_Projectile","D.Gun_NoHit","D.Gun_BulletInit","D.Gun_Way1"],ArmorItems:[{id:"minecraft:structure_void",Count:1b},{},{},{}]}
    #execute anchored eyes run summon area_effect_cloud ^ ^0.25 ^10 {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["D.Gun_Spread"]}
    #execute as @e[type=armor_stand,tag=D.Gun_BulletInit,distance=..100] at @s run function discgun:entity/bullet/init
# 下
    #execute anchored eyes run summon armor_stand ^-0.25 ^ ^ {Silent:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["D.Gun_Projectile","D.Gun_NoHit","D.Gun_BulletInit","D.Gun_Way2"],ArmorItems:[{id:"minecraft:structure_void",Count:1b},{},{},{}]}
    #execute anchored eyes run summon area_effect_cloud ^0.25 ^-0.25 ^10 {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["D.Gun_Spread"]}
    #execute as @e[type=armor_stand,tag=D.Gun_BulletInit,distance=..100] at @s run function discgun:entity/bullet/init

# 下2
    #execute anchored eyes run summon armor_stand ^-0.25 ^ ^ {Silent:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["D.Gun_Projectile","D.Gun_NoHit","D.Gun_BulletInit","D.Gun_Way3"],ArmorItems:[{id:"minecraft:structure_void",Count:1b},{},{},{}]}
    #execute anchored eyes run summon area_effect_cloud ^-0.25 ^-0.25 ^10 {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["D.Gun_Spread"]}
    #execute as @e[type=armor_stand,tag=D.Gun_BulletInit,distance=..100] at @s run function discgun:entity/bullet/init

# 弾丸消費
    execute in overworld run function discgun:item/consume_ammo
    scoreboard players remove @s D.Gun_Ammo 1
