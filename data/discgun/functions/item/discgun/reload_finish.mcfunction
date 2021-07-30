# リロード終了
    playsound minecraft:block.iron_door.close player @a ~ ~ ~ 1 1.5
    playsound minecraft:block.piston.contract player @a ~ ~ ~ 1 2
    item replace entity @s weapon.mainhand with crossbow{ChuzData:{Reloadable:true,NoOffhand:true,Ammo:7,MaxAmmo:7,CoolTime:0,MaxCoolTime:2,ItemID:DiscGun,RawName:'{"text":"Disc Gun","color":"aqua","italic":false}'},Charged:1b,display:{Name:'{"text":"Disc Gun","color":"aqua","italic":false}',Lore:['{"text":" "}','{"text":"[RClick:Shot]","color":"white","italic":false}','{"text":"[Sneak: Charge]","color":"white","italic":false}','{"text":"[Drop: Reload]","color":"white","italic":false}','{"text":" "}','{"text":"\\"絶対危ない。\\"","color":"gray","italic":false}']},HideFlags:7,Unbreakable:1b,CustomModelData:27,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-100d,Operation:0,UUID:[I;-1325817302,-411482978,-1222952476,823678823],Slot:"mainhand"}]} 1
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem 
    scoreboard players set $CMD Chuz.Temporary 12
    function discgun:item/replaceitem
    scoreboard players reset @s D.Gun_R.Disc
    