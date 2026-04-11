#> asset:mob/40001.sheep_chan_of_revenge/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/40001/tick

# スコア加算
    scoreboard players add @s General.Mob.Tick 1

# 戦闘タイマー増加
    execute if score @s General.Mob.Tick matches 0.. run scoreboard players add @s UV5.BattleTimer 1
    execute if entity @s[tag=!Uninterferable] run scoreboard players add @s UV5.DpsTimer 1

# モデルを自身に合わせる
    execute at @s rotated ~ 0 run tp @e[type=item_display,tag=2264.Model,distance=..256,sort=nearest,limit=1] ^ ^ ^1 ~ ~

# オーラ
    execute if score @s General.Mob.Tick matches -7.. run particle trial_spawner_detection ~ ~1.5 ~ 1.25 1.5 1.25 0 3 force @a[distance=..32]

# 変形
    execute if score @s General.Mob.Tick matches -89 run playsound entity.sheep.ambient hostile @a ~ ~ ~ 2 1
    execute if score @s General.Mob.Tick matches -59 as @e[type=item_display,tag=2264.Model,distance=..10,limit=1] run function animated_java:sheep_avenger/animations/transform/tween {duration:1, to_frame:1}
    execute if score @s General.Mob.Tick matches -27 run playsound block.end_portal.spawn hostile @a[distance=..80] ~ ~ ~ 0.2 1 0.2
    execute if score @s General.Mob.Tick matches -27 run playsound entity.puffer_fish.blow_up hostile @a[distance=..80] ~ ~ ~ 1 0.7
    execute if score @s General.Mob.Tick matches -27 run playsound entity.sheep.hurt hostile @a ~ ~ ~ 2 0.7
    execute if score @s General.Mob.Tick matches -27 run particle flash ~ ~2 ~ 2 2 2 0 50

# 無敵解除
    execute if score @s General.Mob.Tick matches -1 run function asset:mob/40001.sheep_chan_of_revenge/tick/util/end_invulnerable

# 足場生成(浮いている時のパーティクル)
    execute if entity @s[tag=!UV5.Skill.Jump] if block ~ ~-0.25 ~ #lib:no_collision rotated ~ 0 run particle block_marker white_wool ^ ^-0.5 ^0.5 1 0 1 0 1 force @a[distance=..64]

# スキル選択
    execute if score @s[tag=!UV5.InAction] General.Mob.Tick matches 125 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill_select

# スキル発動
    execute if entity @s[tag=UV5.InAction] run return run function asset:mob/40001.sheep_chan_of_revenge/tick/skill_active

## スキル使用中ではないなら以下を実行
# 歩行アニメーション
    execute if score @s General.Mob.Tick matches 1 as @e[type=item_display,tag=2264.Model,distance=..10,limit=1] run function animated_java:sheep_avenger/animations/walk/tween {duration:1, to_frame:1}

# 最寄りのプレイヤーへ移動
    execute if predicate api:global_vars/difficulty/max/2_hard if score @s General.Mob.Tick matches 1..120 facing entity @p[gamemode=!spectator,distance=..256] feet positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-10 facing entity @s feet positioned as @s rotated ~ 0 run tp @s ^ ^ ^0.16 ~ 0
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s General.Mob.Tick matches 1..120 facing entity @p[gamemode=!spectator,distance=..256] feet positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-5 facing entity @s feet positioned as @s rotated ~ 0 run tp @s ^ ^ ^0.2 ~ 0

# 足音
    execute if score @s General.Mob.Tick matches 21 run function asset:mob/40001.sheep_chan_of_revenge/tick/util/step
    execute if score @s General.Mob.Tick matches 41 run function asset:mob/40001.sheep_chan_of_revenge/tick/util/step
    execute if score @s General.Mob.Tick matches 61 run function asset:mob/40001.sheep_chan_of_revenge/tick/util/step
    execute if score @s General.Mob.Tick matches 81 run function asset:mob/40001.sheep_chan_of_revenge/tick/util/step
    execute if score @s General.Mob.Tick matches 101 run function asset:mob/40001.sheep_chan_of_revenge/tick/util/step
    execute if score @s General.Mob.Tick matches 121 run function asset:mob/40001.sheep_chan_of_revenge/tick/util/step
