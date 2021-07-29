# ドロップできないアイテム
    data modify storage chuz:context Item merge from entity @s Item
    data modify storage chuz:context Item merge value {Slot:0b}
    data modify block 100001 0 100000 Items set value []
    data modify block 100001 0 100000 Items append from storage chuz:context Item
    #loot replace entity @p[tag=Chuz.This] weapon.mainhand mine 100001 0 100000 debug_stick
    execute at @p[tag=Chuz.This] run loot spawn ~ ~ ~ mine 100001 0 100000 debug_stick
    execute at @p[tag=Chuz.This] run data modify entity @e[type=item,sort=nearest,limit=1] PickupDelay set value 0
    kill @s