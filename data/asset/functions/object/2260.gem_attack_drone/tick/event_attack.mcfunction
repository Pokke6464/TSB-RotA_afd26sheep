#> asset:object/2260.gem_attack_drone/tick/event_attack
#
# Objectのtick時の処理
#
# @within asset:object/2260.gem_attack_drone/tick/

# アニメーション再生
    execute if entity @s[scores={General.Object.Tick=1}] as @e[type=item_display,tag=2260.Model.Target,distance=..30,sort=nearest,limit=1] at @s run function animated_java:gem_attack_drone/animations/attack_start/tween {duration:1, to_frame: 1}
    execute if entity @s[scores={General.Object.Tick=27}] as @e[type=item_display,tag=2260.Model.Target,distance=..30,sort=nearest,limit=1] at @s run function animated_java:gem_attack_drone/animations/attack/tween {duration:1, to_frame: 1}

# 演出
    execute if entity @s[scores={General.Object.Tick=1}] run playsound block.piston.contract hostile @a ~ ~ ~ 2 0.8
    execute if entity @s[scores={General.Object.Tick=20}] run playsound entity.breeze.jump hostile @a ~ ~ ~ 2 0.7
    execute if entity @s[tag=!2260.AdditionalAttackInProgress,scores={General.Object.Tick=23..}] run particle cloud ^4 ^ ^ 0.1 0.1 0.1 0.05 1
    execute if entity @s[tag=!2260.AdditionalAttackInProgress,scores={General.Object.Tick=23..}] run particle cloud ^-4 ^ ^ 0.1 0.1 0.1 0.05 1
    execute if entity @s[tag=!2260.AdditionalAttackInProgress,scores={General.Object.Tick=20..}] run particle block quartz_block ^ ^ ^ 0.1 0.1 0.1 0.05 1

# 移動
    execute if entity @s[scores={General.Object.Tick=1..5}] run tp @s ^ ^ ^-0.5
    execute if entity @s[scores={General.Object.Tick=20..27}] run tp @s ^ ^ ^0.8
    execute if entity @s[tag=!2260.AdditionalAttackInProgress,scores={General.Object.Tick=28..}] run tp @s ^ ^ ^1.5

# 攻撃
    execute if entity @s[tag=!2260.AdditionalAttackInProgress,scores={General.Object.Tick=20..}] run function asset:object/2260.gem_attack_drone/tick/attack

# 追撃無しの場合の処理
    execute if entity @s[tag=!2260.IsAdditionalAttack,scores={General.Object.Tick=80..}] run tag @s add CO.Drone.Remove
    execute if entity @s[tag=!2260.IsAdditionalAttack] run return 0

## 以降は追撃有りの場合の処理
# タグ付与(1回目の攻撃の移動やパーティクルを止める)
    tag @s[scores={General.Object.Tick=50}] add 2260.AdditionalAttackInProgress

# アニメーション再生
    execute if entity @s[scores={General.Object.Tick=51}] as @e[type=item_display,tag=2260.Model.Target,distance=..30,sort=nearest,limit=1] at @s run function animated_java:gem_attack_drone/animations/attack_start/tween {duration:10, to_frame: 5}
    execute if entity @s[scores={General.Object.Tick=82}] as @e[type=item_display,tag=2260.Model.Target,distance=..30,sort=nearest,limit=1] at @s run function animated_java:gem_attack_drone/animations/attack/tween {duration:1, to_frame: 1}

# ターゲット予告
    execute if entity @s[scores={General.Object.Tick=51}] run function asset:object/2260.gem_attack_drone/tick/summon_target_line.m {Color:16711680}
    execute if entity @s[scores={General.Object.Tick=51..65}] run function asset:object/2260.gem_attack_drone/tick/link_target_line.m with storage asset:context this
    execute if entity @s[scores={General.Object.Tick=65}] run function asset:object/2260.gem_attack_drone/tick/remove_target_line.m with storage asset:context this

# ターゲットの方を向く
    execute if entity @s[scores={General.Object.Tick=51..60}] at @s run function asset:object/2260.gem_attack_drone/tick/rotate_to_player.m with storage asset:context this

# 攻撃範囲予告
    execute if entity @s[scores={General.Object.Tick=61}] at @s run function asset:object/2260.gem_attack_drone/tick/prediction.m {Length:80, Tick:20}

# 演出
    execute if entity @s[scores={General.Object.Tick=61}] run playsound block.piston.contract hostile @a ~ ~ ~ 2 0.8
    execute if entity @s[scores={General.Object.Tick=80}] run playsound entity.breeze.jump hostile @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={General.Object.Tick=82..}] run particle cloud ^4 ^ ^ 0.1 0.1 0.1 0.05 1
    execute if entity @s[scores={General.Object.Tick=82..}] run particle cloud ^-4 ^ ^ 0.1 0.1 0.1 0.05 1
    execute if entity @s[scores={General.Object.Tick=80..}] run particle block quartz_block ^ ^ ^ 0.1 0.1 0.1 0.05 1

# 移動
    execute if entity @s[scores={General.Object.Tick=56..65}] run tp @s ^ ^ ^-0.5
    execute if entity @s[scores={General.Object.Tick=80..}] run tp @s ^ ^ ^1.5

# 攻撃
    execute if entity @s[scores={General.Object.Tick=80..}] run function asset:object/2260.gem_attack_drone/tick/attack

# 消去
    execute if entity @s[scores={General.Object.Tick=135..}] run tag @s add CO.Drone.Remove
