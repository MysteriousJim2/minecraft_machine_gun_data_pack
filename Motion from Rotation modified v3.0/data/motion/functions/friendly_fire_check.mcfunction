kill @e[type=arrow,nbt={inGround:1b},tag=friendly_fire,tag=explosive,distance=..20]
execute as @e[tag=friendly_fire,nbt={inGround:1b},distance=20..] run tag @s remove friendly_fire