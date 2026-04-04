#> asset:mob/40001.sheep_chan_of_revenge/tick/util/laugh
#
# 予備動作の高笑い
#
# @within function asset:mob/40001.sheep_chan_of_revenge/tick/**

# アニメーション
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=2264.Model,distance=..10,limit=1] run function animated_java:sheep_avenger/animations/transform/tween {duration:2, to_frame:50}
    execute if score @s General.Mob.Tick matches 7 as @e[type=item_display,tag=2264.Model,distance=..10,limit=1] run function animated_java:sheep_avenger/animations/transform/tween {duration:2, to_frame:50}
    execute if score @s General.Mob.Tick matches 14 as @e[type=item_display,tag=2264.Model,distance=..10,limit=1] run function animated_java:sheep_avenger/animations/transform/tween {duration:2, to_frame:50}

# 音
    execute if score @s General.Mob.Tick matches 0 run playsound entity.sheep.ambient hostile @a ~ ~ ~ 2 1.25
    execute if score @s General.Mob.Tick matches 7 run playsound entity.sheep.ambient hostile @a ~ ~ ~ 2 1.25
    execute if score @s General.Mob.Tick matches 14 run playsound entity.sheep.ambient hostile @a ~ ~ ~ 2 1.25
