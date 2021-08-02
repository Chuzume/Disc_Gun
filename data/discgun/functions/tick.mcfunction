
# 生死判定
    tag @a[nbt=!{Health:0.0f}] remove D.Gun_Death
    tag @a[nbt={Health:0.0f}] add D.Gun_Death

# タグ設定
    tag @a[gamemode=!survival,gamemode=!adventure] add D.Gun_Unhurtable

# ストレージ
    execute as @a at @s run function discgun:storage

# スコアID
    execute as @a unless score @s D.Gun_Pl.ID matches 0.. run function discgun:score_id/player_score_id

# ローテーター
    execute as @e[type=area_effect_cloud,tag=D.Gun_Rotater] at @s run function discgun:entity/rotater/main

# モデル
    execute as @e[type=armor_stand,tag=D.Gun_Model] at @s run function discgun:entity/model/main

# 弾丸
    execute as @e[type=pig,tag=D.Gun_Common] at @s run function discgun:entity/projectile_check

# UUIDヒット後のリセット
    execute as @e[tag=UUIDHit.Reset,nbt=!{HurtTime:0s}] run function discgun:uuid_hit_reset

# リセット
    execute if entity @e[tag=D.Gun_Unhurtable,limit=1] run tag @e[tag=D.Gun_Unhurtable] remove D.Gun_Unhurtable
    execute if entity @a[scores={D.Gun_Throw=0..},limit=1] run scoreboard players reset @a D.Gun_Throw
    execute if entity @a[scores={D.Gun_Shot=0..},limit=1] run scoreboard players reset @a D.Gun_Shot
    scoreboard players reset $Ammo Chuz.Temporary
    scoreboard players reset $CMD Chuz.Temporary
