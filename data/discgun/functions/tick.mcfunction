
# タグ設定
    tag @a[gamemode=!survival,gamemode=!adventure] add D.Gun_Unhurtable

# ストレージ
    execute as @a at @s run function discgun:storage

# スコアID
    execute as @a unless score @s D.Gun_Pl.ID matches 0.. run function discgun:score_id/player_score_id

# 弾丸
    execute as @e[type=armor_stand,tag=D.Gun_Bullet] at @s run function discgun:entity/bullet/tick
    execute as @e[type=armor_stand,tag=D.Gun_H.Bullet] at @s run function discgun:entity/hyper_bullet/tick
    execute as @e[type=armor_stand,tag=D.Gun_WingBullet] at @s run function discgun:entity/wingman_bullet/tick

# UUIDヒット後のリセット
    execute as @e[tag=UUIDHit.Reset,nbt=!{HurtTime:0s}] run function discgun:uuid_hit_reset

# リセット
    execute if entity @e[tag=D.Gun_Unhurtable,limit=1] run tag @e[tag=D.Gun_Unhurtable] remove D.Gun_Unhurtable
    execute if entity @a[scores={D.Gun_Throw=0..},limit=1] run scoreboard players reset @a D.Gun_Throw
    execute if entity @a[scores={D.Gun_Shot=0..},limit=1] run scoreboard players reset @a D.Gun_Shot
    scoreboard players reset $Ammo Chuz.Temporary
    scoreboard players reset $CMD Chuz.Temporary
