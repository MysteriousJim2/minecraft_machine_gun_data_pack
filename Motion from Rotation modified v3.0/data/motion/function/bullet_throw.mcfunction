# AS AT PLAYER
#summon minecraft:fireball ^ ^1 ^0.8 {Tags:["motion_projectile","friendly_fire"],ExplosionPower:2}
#summon minecraft:tnt ^ ^1 ^0.8 {Tags:["motion_projectile","friendly_fire"],Fuse:80}
#summon minecraft:pig ^ ^1 ^0.8 {Tags:["motion_projectile","friendly_fire"]}

execute store result storage motion:player_rotation yaw float -0.0001 run data get entity @s Rotation[0] 10000
execute store result storage motion:player_rotation pitch float -0.0001 run data get entity @s Rotation[1] 10000



execute as @s at @s rotated as @s run function motion:bullet_summon with storage motion:player_rotation
clear @s minecraft:arrow 1

#playsound minecraft:custom.gunshot master @a ~ ~ ~ 1 1.2
#playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 1 1.2
#playsound minecraft:entity.generic.burn player @a ~ ~ ~ 0.5 1
playsound minecraft:item.trident.hit_ground master @a ~ ~ ~ 0.4 1.3
playsound minecraft:item.trident.hit master @a ~ ~ ~ 0.4 1

scoreboard players reset @s[scores={smg_rightclick=2..}] smg_rightclick