#item replace entity @p[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Charged:0b}}}] weapon.mainhand with crossbow{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b}
execute as @e[type=arrow,nbt={inGround:1b},tag=explosive] at @s if score @s ff_owner = @e[distance=..15,limit=1,sort=nearest,tag=gunner] ff_slot run kill @s
execute as @e[type=arrow,nbt={inGround:1b},tag=explosive] run function crossbow_bombing:firing
execute as @e[type=fireball,tag=unorientated] run function crossbow_bombing:orientation
execute as @e[tag=impact_uncalibrated,tag=!impact_calibrated] at @s rotated as @s run function crossbow_bombing:impact_calc
execute as @e[type=arrow,nbt={inGround:1b},tag=explosive] run kill @s
