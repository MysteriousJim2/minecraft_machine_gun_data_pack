##execute at @e[tag=machine_gun] run function motion:friendly_fire_check
##execute at @p run function motion:friendly_fire_check
execute as @a[tag=!Joined] run function motion:player_initiation
execute as @e[tag=!Joined,tag=machine_gun] run function motion:player_initiation
execute as @a[scores={smg_rightclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{ UnAliver:1b}}}},nbt={Inventory:[{id:"minecraft:arrow",}]}] at @s rotated as @s anchored eyes run function motion:bullet_throw

execute as @a[scores={smg_rightclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Obliterator:1b}}}},nbt={Inventory:[{id:"minecraft:spectral_arrow",components:{"minecraft:custom_data":{explosive_tip:1b}}}]}] at @s rotated as @s anchored eyes run function motion:missile_throw
#execute as @e[type=arrow,tag=unowned] run function motion:ff_owning
execute as @e[tag=motion_bullet,tag=!motion_added] at @s rotated as @p[sort=nearest,limit=1] run function motion:apply_motion
execute as @e[tag=motion_projectile,tag=!motion_added] at @s rotated as @e[tag=machine_gun,sort=nearest,limit=1,type=!player] run function motion:apply_motion



execute run function motion:turrets
scoreboard players reset @a[scores={smg_rightclick=2..}] smg_rightclick