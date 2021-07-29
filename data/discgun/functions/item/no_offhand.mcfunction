
# 現状はオフハンドに入れると戻ってくる
    data modify storage chuz:context Item merge from entity @s Inventory[{Slot:-106b}]
    data modify storage chuz:context Item merge value {Slot:0b}
    data modify block 100001 0 100000 Items set value []
    data modify block 100001 0 100000 Items append from storage chuz:context Item
    loot give @s mine 100001 0 100000 debug_stick
    execute if entity @s[scores={D.Gun_Shot=0..}] run scoreboard players reset @a D.Gun_Shot
    item replace entity @s weapon.offhand with air

#
    #execute store result score @s D.Gun_InvCheck if data storage Items[]
    #execute if data storage Items[{Slot:100b}] run scoreboard players remove <> <> 1
    #execute if data storage Items[{Slot:101b}] run scoreboard players remove <> <> 1
    #execute if data storage Items[{Slot:102b}] run scoreboard players remove <> <> 1
    #execute if data storage Items[{Slot:103b}] run scoreboard players remove <> <> 1
    #execute if data storage Items[{Slot:-106b}] run scoreboard players remove <> <> 1