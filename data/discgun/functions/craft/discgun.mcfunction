#まぁまずはアイテムが必要であろう
give @s crossbow{ChuzData:{Reloadable:true,NoOffhand:true,Ammo:7,MaxAmmo:7,CoolTime:0,MaxCoolTime:2,ItemID:DiscGun,RawName:'{"text":"Disc Gun","color":"aqua","italic":false}'},Charged:1b,display:{Name:'{"text":"Disc Gun","color":"aqua","italic":false}',Lore:['{"text":" "}','{"text":"[RClick:Shot]","color":"white","italic":false}','{"text":"[Sneak: Charge]","color":"white","italic":false}','{"text":"[Drop: Reload]","color":"white","italic":false}','{"text":" "}','{"text":"\\"絶対危ない。\\"","color":"gray","italic":false}']},HideFlags:7,Unbreakable:1b,CustomModelData:27,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-100d,Operation:0,UUID:[I;-1325817302,-411482978,-1222952476,823678823],Slot:"mainhand"}]} 1

#次回以降も実行するためにレシピ没収
recipe take @s discgun:discgun

#なんだこのチェストは！消えてもらおう
clear @s chest 1

#進捗消去
advancement revoke @s only discgun:craft/discgun
