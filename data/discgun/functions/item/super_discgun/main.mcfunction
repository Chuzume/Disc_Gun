
# リロードに使うタグ
    tag @s add D.Gun_Hold

# 弾切れならリロード処理に
    execute if entity @s[scores={D.Gun_Shot=0..}] if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function discgun:item/super_discgun/reload_start

# 発砲(非スニーク)
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{CoolTime:0} if entity @s[predicate=!discgun:sneak,scores={D.Gun_Ammo=5..,D.Gun_Shot=0..}] run function discgun:item/super_discgun/shot

# 発砲(スニーク・ノンチャージショット)
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{CoolTime:0} if entity @s[predicate=discgun:sneak,scores={D.Gun_Ammo=5..,D.Gun_Shot=0..,D.Gun_Charge=..30}] run function discgun:item/super_discgun/shot

# 発砲(スニーク・チャージショット)
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{CoolTime:0} if entity @s[predicate=discgun:sneak,scores={D.Gun_Ammo=5..,D.Gun_Shot=0..,D.Gun_Charge=30..59}] run function discgun:item/super_discgun/shot_charged

# 発砲(スニーク・ハイパーチャージショット)
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{CoolTime:0} if entity @s[predicate=discgun:sneak,scores={D.Gun_Ammo=5..,D.Gun_Shot=0..,D.Gun_Charge=60..}] run function discgun:item/super_discgun/shot_charged_2

# 弾数不足
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{CoolTime:0} if entity @s[predicate=discgun:sneak,scores={D.Gun_Ammo=..5,D.Gun_Shot=0..}] run function discgun:item/super_discgun/reload_start

# チャージ 
    scoreboard players add @s[predicate=discgun:sneak] D.Gun_Charge 1

# チャージ値リセット
    execute unless predicate discgun:sneak run scoreboard players reset @s D.Gun_Charge

# チャージぴかぴか
    execute if score @s D.Gun_Charge matches 30..59 anchored eyes run function discgun:item/super_discgun/particle_charge
    execute if score @s D.Gun_Charge matches 30 run playsound entity.player.levelup player @s ~ ~ ~ 2 2 
    execute if score @s D.Gun_Charge matches 30 run playsound minecraft:block.note_block.xylophone player @s ~ ~ ~ 2 1.5

# もっとピカピカ
    execute if score @s D.Gun_Charge matches 60.. anchored eyes run function discgun:item/super_discgun/particle_charge_2
    execute if score @s D.Gun_Charge matches 60 run playsound entity.player.levelup player @s ~ ~ ~ 2 2 
    execute if score @s D.Gun_Charge matches 60 run playsound minecraft:block.note_block.xylophone player @s ~ ~ ~ 2 2

# Replace処理
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow"}}] if data storage chuz:context Item.Mainhand.tag.ChuzData.Ammo in overworld run function discgun:item/replaceitem

# ディレイ
    execute if score @s D.Gun_Delay matches ..0 run tag @s remove D.Gun_NormalShot
    execute if score @s D.Gun_Delay matches ..0 run tag @s remove D.Gun_ADSShot
