
# 爆發
    execute if entity @s[type=end_crystal] run summon tnt

# 何で攻撃されたのかタグ付与
    tag @s add D.Gun_Hit.DiscCharged

# ヒット音
    playsound minecraft:entity.player.attack.strong neutral @a ~ ~ ~ 1.5 1

# ダメージを設定
    execute if entity @s[type=!end_crystal] run data merge storage disc_score_damage: {Damage:0.5}
    execute if entity @s[type=!end_crystal] run function disc_score_damage:api/attack
