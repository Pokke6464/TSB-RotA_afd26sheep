#> asset:mob/40001.sheep_chan_of_revenge/init/
# @within asset:mob/alias/40001/init

# AJロード
    data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_gargo_ex_machina",Active:true}]
    function asset:datapack/set_activation_state

# 多重召喚対策
    execute if entity @e[type=iron_golem,tag=UV5.EndInit] as @e[type=iron_golem,scores={MobID=40001}] run return run function asset:mob/40001.sheep_chan_of_revenge/remove/

# 継承元の処理実行
    function asset:mob/super.init

# 中心点召喚
    summon marker ~ ~ ~ {Tags:["UV5.Marker.SpawnPoint"]}

# スコアをセットする
    scoreboard players set @s General.Mob.Tick -90

# AJモデル召喚
    function animated_java:sheep_avenger/summon {args: {animation: 'transform'}}
    execute as @e[type=item_display,tag=2264.Model,distance=..10,limit=1] run data merge entity @s {view_range:16f,width:0f,height:0f,teleport_duration:2}

# 無敵化
    function asset:mob/40001.sheep_chan_of_revenge/tick/util/start_invulnerable

# 最大HPをスコアに代入(DPS計算用)
    function api:mob/get_max_health
    execute store result score @s UV5.MaxHealth run data get storage api: Return.MaxHealth 1
    data remove storage api: Return

# 終了
    tag @s add UV5.EndInit
