execute as @s store result entity @s Rotation[0] float -1 run data get entity @e[type=arrow,nbt={inGround:1b},limit=1,sort=nearest,tag=explosive] Rotation[0]
execute as @s store result entity @s Rotation[1] float -1 run data get entity @e[type=arrow,nbt={inGround:1b},limit=1,sort=nearest,tag=explosive] Rotation[1]


execute as @s run tag @s remove unorientated