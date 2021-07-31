
# 爆發
    execute if entity @s[type=end_crystal] run summon tnt

# 何で攻撃されたのかタグ付与
    tag @s add D.Gun_Hit.Disc

# ヒット音
    playsound minecraft:entity.player.attack.weak neutral @a ~ ~ ~ 1.5 1
    playsound minecraft:entity.sheep.shear player @a ~ ~ ~ 1.5 1.5

# ダメージを設定
    execute if entity @s[type=!end_crystal] run data merge storage disc_score_damage: {Damage:2.0}
    execute if entity @s[type=!end_crystal] run function disc_score_damage:api/attack
