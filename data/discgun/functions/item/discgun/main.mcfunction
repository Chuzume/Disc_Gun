
# リロードに使うタグ
    tag @s add D.Gun_Hold

# 弾切れならリロード処理に
    execute if entity @s[scores={D.Gun_Shot=0..}] if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function discgun:item/discgun/reload_start

# 発砲(非スニーク)
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{CoolTime:0} if entity @s[predicate=!discgun:sneak,scores={D.Gun_Ammo=1..,D.Gun_Shot=0..}] run function discgun:item/discgun/shot

# 発砲(スニーク・ノンチャージショット)
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{CoolTime:0} if entity @s[predicate=discgun:sneak,scores={D.Gun_Ammo=1..,D.Gun_Shot=0..,D.Gun_Charge=..25}] run function discgun:item/discgun/shot

# 発砲(スニーク・チャージショット)
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{CoolTime:0} if entity @s[predicate=discgun:sneak,scores={D.Gun_Ammo=1..,D.Gun_Shot=0..,D.Gun_Charge=25..}] run function discgun:item/discgun/shot_charged

# チャージ 
    scoreboard players add @s[predicate=discgun:sneak] D.Gun_Charge 1

# チャージ値リセット
    execute unless predicate discgun:sneak run scoreboard players reset @s D.Gun_Charge

# チャージぴかぴか
    execute if score @s D.Gun_Charge matches 25.. anchored eyes run particle minecraft:dust 0 0.75 1 0.5 ^ ^-0.1 ^1 1 0 0 0 0 normal @s
    execute if score @s D.Gun_Charge matches 25 run playsound entity.player.levelup player @s ~ ~ ~ 2 2 
    execute if score @s D.Gun_Charge matches 25 run playsound minecraft:block.note_block.bit player @s ~ ~ ~ 2 2

# Replace処理
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow"}}] if data storage chuz:context Item.Mainhand.tag.ChuzData.Ammo in overworld run function discgun:item/replaceitem

# ディレイ
    execute if score @s D.Gun_Delay matches ..0 run tag @s remove D.Gun_NormalShot
    execute if score @s D.Gun_Delay matches ..0 run tag @s remove D.Gun_ADSShot
