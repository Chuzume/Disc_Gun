# 角度
    execute store result entity @s Pose.Head[0] float 1 run data get entity @e[type=area_effect_cloud,limit=1,sort=nearest,tag=D.Gun_Rotater,tag=!D.Gun_Rotater_Disable] Rotation[1]
    execute store result entity @s Pose.Head[1] float 1 run data get entity @e[type=area_effect_cloud,limit=1,sort=nearest,tag=D.Gun_Rotater,tag=!D.Gun_Rotater_Disable] Rotation[0]

# スコア所持済みなら横取りされないように
    execute if entity @s[scores={D.Gun_Mo.ID=1..}] run tag @s add D.Gun_Model_Already

# TPでくっつく
    execute at @e[tag=D.Gun_Common] if score @s D.Gun_Mo.ID = @e[tag=D.Gun_Common,limit=1,sort=nearest] D.Gun_Mo.ID run tp @s ~ ~-0.75 ~