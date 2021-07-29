  
# プレイヤーのUUIDを入れる
    data modify storage chuz:context UUID set from entity @a[tag=Chuz.This,limit=1] UUID

# storageにデータ入れる
    data modify storage chuz:context DropItem set from entity @s

# 最大数チェック
    data modify storage chuz:context MaxAmmo set from entity @s Item.tag.ChuzData.MaxAmmo
    execute store success storage chuz:context Reload int 1 run data modify storage chuz:context MaxAmmo set from entity @s Item.tag.ChuzData.Ammo
    
# もし素手判定じゃないなら
    data modify storage chuz:context Item.Mainhand set from entity @p[tag=Chuz.This] SelectedItem 
    execute if data storage chuz:context Item.Mainhand run data modify storage chuz:context Reload set value 2

# わたす
    execute if data storage chuz:context {Reload:1} if entity @s[nbt={Item:{tag:{ChuzData:{ItemID:DiscGun}}}}] as @p[tag=Chuz.This] run function discgun:item/discgun/reload_start

    execute if data storage chuz:context {Reload:1} run kill @s

# 最大時
    execute if data storage chuz:context {Reload:0} run function discgun:entity/thrown_item/return

# リセット
    data remove storage chuz:context MaxAmmo
    data remove storage chuz:context Reload
    data remove storage chuz:context DropItem
    data remove storage chuz:context UUID
    scoreboard players reset $isSuccess Chuz.Temporary

# Thanks Yavu
#
#   \ Heyo! /
#         _
#   ＿＿＿|L
#   | !  ! |
#   ￣￣￣￣

