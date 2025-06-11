# AS AT PLAYER
#summon minecraft:fireball ^ ^1 ^0.8 {Tags:["motion_projectile","friendly_fire"],ExplosionPower:2}
#summon minecraft:tnt ^ ^1 ^0.8 {Tags:["motion_projectile","friendly_fire"],Fuse:80}
#summon minecraft:pig ^ ^1 ^0.8 {Tags:["motion_projectile","friendly_fire"]}
summon minecraft:arrow ^ ^ ^0.5 {Tags:["motion_bullet","unorientated","unowned"],pickup:1b,life:1100,PierceLevel:4b}
clear @s minecraft:arrow 1

#playsound minecraft:custom.gunshot master @a ~ ~ ~ 1 1.2
#playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 1 1.2
#playsound minecraft:entity.generic.burn player @a ~ ~ ~ 0.5 1
playsound minecraft:item.trident.hit_ground master @a ~ ~ ~ 0.4 1.3
playsound minecraft:item.trident.hit master @a ~ ~ ~ 0.4 1

scoreboard players reset @s[scores={smg_rightclick=2..}] smg_rightclick