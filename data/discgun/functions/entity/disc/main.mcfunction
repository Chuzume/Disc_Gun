
# のこぎりぎりぎり

# 移動
    execute if entity @s[tag=!Chuz.HitWall] run function disc_wall_hit_collision:api/col_check
    execute at @e[type=area_effect_cloud,tag=D.Gun_Rotater] if score @e[type=area_effect_cloud,tag=D.Gun_Rotater,limit=1,sort=nearest] D.Gun_Mo.ID = @s D.Gun_Mo.ID rotated as @e[type=area_effect_cloud,tag=D.Gun_Rotater,tag=!D.Gun_Init,limit=1,sort=nearest] run function discgun:move
    execute rotated as @e[type=area_effect_cloud,tag=D.Gun_Rotater,tag=!D.Gun_Init,limit=1,sort=nearest] positioned ^ ^ ^-2 run particle electric_spark ~ ~0.3 ~ 0.05 0.05 0.05 0 2

# 壁反射
    function discgun:entity/rotater/ricochet

# 時間経過で消える
    scoreboard players add @s D.Gun_Time 1
    execute if score @s D.Gun_Time matches 200.. run function discgun:entity/disc/death

#離れすぎても消える
    execute at @a if score @s D.Gun_En.ID = @p D.Gun_P.ID unless entity @s[distance=..50] run function discgun:entity/disc/death

# 壁反射
    execute if entity @s[tag=Chuz.HitWall] run function discgun:entity/disc/hit_wall

# プレイヤーから出るまでヒット判定ナシ
    execute at @a[distance=2..10] if score @s D.Gun_En.ID = @p D.Gun_Pl.ID run tag @s remove D.Gun_NoHit

# プレイヤーの衝突判定
    execute if entity @s[tag=!D.Gun_NoHit] positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0,type=!#discgun:unhurtable,type=!ender_dragon,tag=!D.Gun_Disc,sort=nearest,limit=1] at @s run function discgun:entity/disc/hit

# 対ドラゴン
    execute at @s at @e[type=minecraft:ender_dragon,team=!null,distance=..6,sort=nearest,limit=1] run function discgun:entity/disc/hit
