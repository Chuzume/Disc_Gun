
# 取得
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem
    
# リロード
    item replace entity @s weapon.mainhand with warped_fungus_on_a_stick{ChuzData:{NoOffhand:1b,ItemID:DiscGun_Reload},display:{Name:'[{"text":"Disc Gun ","color":"aqua","italic":false},{"text":" | Reloading |","color":"gray","italic":false}]',Lore:['{"text":" "}','{"text":"[Reloading!]","color":"white","italic":false}','{"text":" "}','{"text":"\\"装弾数はこれでも多くなったのだ\\"","color":"gray","italic":false}']},HideFlags:7,Unbreakable:1b,CustomModelData:6,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-100,Operation:0,UUID:[I;1214350222,1737049035,-2006853743,-1572707679],Slot:"mainhand"}]} 1

# 音
    playsound minecraft:block.iron_door.close player @a ~ ~ ~ 1 1.5
    playsound minecraft:block.iron_door.open player @a ~ ~ ~ 1 1.5

# スコア
    scoreboard players set @s D.Gun_Ammo -1
    scoreboard players reset @s D.Gun_Delay 
    scoreboard players reset @s D.Gun_Charge
    tag @s remove D.Gun_NormalShot
    tag @s remove D.Gun_ADSShot
    tag @s remove D.Gun_ZeroReload