data modify entity @s Owner set from entity @e[distance=..5,sort=nearest,limit=1,tag=gunner] UUID
tag @s remove unowned
execute store result score @s ff_owner run data get entity @s Owner[0]
