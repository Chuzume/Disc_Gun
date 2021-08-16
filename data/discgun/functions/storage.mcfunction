
# 取得
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem 
    data modify storage chuz:context Item.Offhand set from entity @s Inventory[{Slot:-106b}]

# リロード
    execute if entity @s[tag=D.Gun_Hold,scores={D.Gun_Throw=0..}] run function discgun:item/reload

# タグ削除
    tag @s remove D.Gun_Hold

# 武器
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:DiscGun} run function discgun:item/discgun/main
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:DiscGun_Reload} run function discgun:item/discgun/reloading
    execute unless data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:DiscGun_Reload} run scoreboard players reset @s D.Gun_R.Disc

# 武器
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:SuperDiscGun} run function discgun:item/super_discgun/main
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:SuperDiscGun_Reload} run function discgun:item/super_discgun/reloading
    execute unless data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:SuperDiscGun_Reload} run scoreboard players reset @s D.Gun_R.S.Disc

# オフハンドに持てないアイテムが入ったら戻す
    execute if data storage chuz:context Item.Offhand.tag.ChuzData{NoOffhand:1b} run function discgun:item/no_offhand

# 装弾数制御
    execute store result score @s D.Gun_Ammo run scoreboard players get $Ammo Chuz.Temporary

# 削除
    data remove storage chuz:context Item

# やかましいので止める
    stopsound @a[distance=..20] player minecraft:item.armor.equip_generic
