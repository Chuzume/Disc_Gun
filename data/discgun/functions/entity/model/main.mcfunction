# 角度
    execute store result entity @s Pose.Head[0] float 1 run data get entity @e[type=area_effect_cloud,tag=D.Gun_Rotater,tag=!D.Gun_Rotater_Disable,distance=..3,sort=nearest,limit=1] Rotation[1]
    execute store result entity @s Pose.Head[1] float 1 run data get entity @e[type=area_effect_cloud,tag=D.Gun_Rotater,tag=!D.Gun_Rotater_Disable,distance=..3,sort=nearest,limit=1] Rotation[0]

# スコア所持済みなら横取りされないように
    execute if entity @s[scores={D.Gun_Mo.ID=1..}] run tag @s add D.Gun_Model_Already

# TPでくっつく
    tag @s add D.Gun_This
    execute at @s as @e[type=pig,tag=D.Gun_Common,distance=..3] if score @e[type=armor_stand,tag=D.Gun_This,distance=..3,limit=1] D.Gun_Mo.ID = @s D.Gun_Mo.ID at @s run tp @e[type=armor_stand,tag=D.Gun_This,distance=..3,limit=1] ~ ~-0.45 ~
    tag @s remove D.Gun_This


# 時間経過で消える
    #scoreboard players add @s D.Gun_Time 1
    #execute if score @s D.Gun_Time matches 230.. run function discgun:entity/disc/death
