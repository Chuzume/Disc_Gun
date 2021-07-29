

# 何で攻撃されたのかタグ付与
    tag @s remove D.Gun_Hit.Bullet
    tag @s add D.Gun_Hit.BulletHS

# 
    execute as @e[tag=D.Gun_Projectile,sort=nearest,limit=1] at @a if score @s D.Gun_En.ID = @p D.Gun_Pl.ID run playsound entity.arrow.hit_player player @p ~ ~ ~ 1 1

# ダメージを設定
    data merge storage moza_score_damage: {Damage:9.5}
    function moza_score_damage:api/attack

# サウンドなど
    execute at @s anchored eyes run particle end_rod ^ ^ ^ 0 0 0 0.1 1