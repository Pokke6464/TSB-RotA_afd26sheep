#> asset:object/2267.gem_shot_attack/tick/hit.m
#
# Objectのtick時の処理
#
# @within asset:object/2267.gem_shot_attack/tick/

# 地面があればヒット判定を出す
    data modify storage lib: args.dx set value 5
    data modify storage lib: args.dy set value 10
    data modify storage lib: args.dz set value 4
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..10]"
    $execute at @s positioned ^ ^ ^$(PosZ) unless block ~ ~-1 ~ #lib:no_collision run function lib:rotatable_dxyz/m with storage lib: args

# 演出
    $execute at @s positioned ^ ^ ^$(PosZ) unless block ~ ~-1 ~ #lib:no_collision run particle explosion ~ ~1 ~ 3 1 3 0 20 force
    $execute at @s positioned ^ ^ ^$(PosZ) unless block ~ ~-1 ~ #lib:no_collision run particle lava ~ ~1 ~ 3 1 3 0.2 10

# 向きを変える
    $execute at @s run tp @s ~ ~ ~ ~$(RotY) ~

# 再帰
    $execute at @s unless entity @s[y_rotation=0] run return run function asset:object/2267.gem_shot_attack/tick/hit.m {PosZ:$(PosZ), RotY:$(RotY)}

# 判定に触れていたプレイヤーに再帰終了後ダメージを与える
    execute as @a[tag=DXYZ] run function asset:object/2267.gem_shot_attack/tick/damage
