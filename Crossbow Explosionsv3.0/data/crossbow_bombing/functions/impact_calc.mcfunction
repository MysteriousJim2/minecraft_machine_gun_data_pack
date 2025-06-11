execute store result score @s impact_x1 run data get entity @s Pos[0] 1000
execute store result score @s impact_y1 run data get entity @s Pos[1] 1000
execute store result score @s impact_z1 run data get entity @s Pos[2] 1000

tp @s ^ ^ ^0.1

execute store result score @s impact_x2 run data get entity @s Pos[0] 1000
execute store result score @s impact_y2 run data get entity @s Pos[1] 1000
execute store result score @s impact_z2 run data get entity @s Pos[2] 1000

execute store result entity @s Motion[0] double 0.02 run scoreboard players operation @s impact_x2 -= @s impact_x1
execute store result entity @s Motion[1] double 0.02 run scoreboard players operation @s impact_y2 -= @s impact_y1
execute store result entity @s Motion[2] double 0.02 run scoreboard players operation @s impact_z2 -= @s impact_z1

tag @s add impact_calibrated