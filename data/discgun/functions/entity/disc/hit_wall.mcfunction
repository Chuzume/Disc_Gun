# 生存時間を超えた後にバウンドした場合は砕け散る
    execute if score @s D.Gun_Time >= @s D.Gun_Life run function discgun:entity/disc/death

# カンッ
    playsound minecraft:block.chain.break player @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 1 2
    particle minecraft:crit ~ ~0.25 ~ 0 0 0 0.2 3 
    tag @s remove Chuz.HitWall