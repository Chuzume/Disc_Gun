
# リロードに使うタグ
    tag @s add D.Gun_Hold

# 弾切れならリロード処理に
    execute if entity @s[scores={D.Gun_Shot=0..}] if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function discgun:item/discgun/reload_start

# 発砲(非スニーク)
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{CoolTime:0} if entity @s[predicate=!discgun:sneak,scores={D.Gun_Ammo=1..,D.Gun_Shot=0..}] run function discgun:item/discgun/shot

# 残弾表示
    #title @s[scores={D.Gun_Ammo=1..}] actionbar [{"text":"| Ammo: "},{"score":{"name":"@s","objective":"D.Gun_Ammo"}},{"text":" |"}]
    #title @s[scores={D.Gun_Ammo=..0}] actionbar [{"text":"| Ammo: 0 |","color": "red"}]

# 見た目
# 通常時
#    execute if entity @s run scoreboard players set $CMD Chuz.Temporary 12
# 反動(腰だめ)
#    execute if entity @s[tag=!D.Gun_ADSShot] if score @s D.Gun_Delay matches 4..7 run scoreboard players set $CMD Chuz.Temporary 13
# ADS
#    execute if entity @s[tag=!D.Gun_NormalShot] if predicate discgun:sneak run scoreboard players set $CMD Chuz.Temporary 14
# 反動(ADS)
#   execute if entity @s[tag=!D.Gun_NormalShot] if score @s D.Gun_Delay matches 4..7 run scoreboard players set $CMD Chuz.Temporary 15
   
# Replace処理
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow"}}] if data storage chuz:context Item.Mainhand.tag.ChuzData.Ammo in overworld run function discgun:item/replaceitem

# ディレイ
    execute if score @s D.Gun_Delay matches ..0 run tag @s remove D.Gun_NormalShot
    execute if score @s D.Gun_Delay matches ..0 run tag @s remove D.Gun_ADSShot

