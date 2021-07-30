
# のこぎりぎりぎり

# 移動
    execute if entity @s[tag=!Chuz.HitWall] run function disc_wall_hit_collision:api/col_check
    execute rotated as @e[type=area_effect_cloud,tag=D.Gun_Rotater,tag=!D.Gun_Init,limit=1,sort=nearest] run function discgun:move
    execute rotated as @e[type=area_effect_cloud,tag=D.Gun_Rotater,tag=!D.Gun_Init,limit=1,sort=nearest] positioned ^ ^ ^-2 run particle electric_spark ~ ~ ~ 0.05 0.05 0.05 0 2

# 壁反射
    function discgun:entity/rotater/ricochet

# 時間経過で消える
    scoreboard players add @s D.Gun_Time 1
    execute if score @s D.Gun_Time matches 40.. run function discgun:entity/disc/death

#離れすぎても消える
    execute at @a if score @s D.Gun_En.ID = @p D.Gun_P.ID unless entity @s[distance=..50] run function discgun:entity/disc/death

# 壁反射
    execute if entity @s[tag=Chuz.HitWall] run function discgun:entity/disc/hit_wall
