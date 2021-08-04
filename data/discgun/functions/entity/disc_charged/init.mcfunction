
# 空から降りてくる&向き補正
    tp @s ~ ~-200 ~ ~ ~

# ブーメランのID
    scoreboard players add $Mo.ID_Core D.Gun_Mo.ID 1
    scoreboard players operation @s D.Gun_Mo.ID = $Mo.ID_Core D.Gun_Mo.ID

# 弾速設定
    scoreboard players set @s Chuz.Speed 12

# 大量のスコアをコピー
    execute at @s run scoreboard players operation @s D.Gun_En.ID = @p[tag=Chuz.This] D.Gun_Pl.ID
    execute at @s run scoreboard players operation @e[type=area_effect_cloud,tag=D.Gun_Rotater,tag=D.Gun_Init,limit=1,sort=nearest] D.Gun_En.ID = @s D.Gun_En.ID
    execute at @s positioned ~ ~0.85 ~ run scoreboard players operation @e[type=area_effect_cloud,tag=D.Gun_Rotater,tag=D.Gun_Init,limit=1,sort=nearest] D.Gun_Mo.ID = @s D.Gun_Mo.ID
    execute at @s run scoreboard players operation @e[type=armor_stand,tag=D.Gun_Model,tag=!D.Gun_Model_Already,limit=1,sort=nearest] D.Gun_Mo.ID = @s D.Gun_Mo.ID
    execute at @s run data modify entity @s ArmorItems[0].tag.OwnerUUID set from entity @p[tag=Chuz.This] UUID
    scoreboard players operation @s D.Gun_Life = _ D.Gun_Life

# ローテーターの向きを実行時の向きに
    execute at @s positioned ~ ~0.85 ~ run execute store result entity @e[tag=D.Gun_Rotater,tag=D.Gun_Init,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0]
    execute at @s positioned ~ ~0.85 ~ run execute store result entity @e[tag=D.Gun_Rotater,tag=D.Gun_Init,limit=1,sort=nearest] Rotation[1] float 1 run data get entity @s Rotation[1]
    tag @e[tag=D.Gun_Rotater,limit=1,sort=nearest] remove D.Gun_Init

# 初期モーション取得
    execute rotated as @e[type=area_effect_cloud,tag=D.Gun_Rotater,limit=1,sort=nearest] run function discgun:move
    function disc_wall_hit_collision:api/get_first_motion

# タグ削除
    tag @s add D.Gun_Disc_Charged
    tag @s remove D.Gun_DiscInit