#> asset:mob/40001.sheep_chan_of_revenge/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/40001/death

#> Val
# @private
    #declare score_holder $Min
    #declare score_holder $Sec

# super.death
    function asset:mob/super.death

# 演出
    playsound entity.sheep.death hostile @a ~ ~ ~ 3 1

# 中心点削除
    kill @e[type=marker,tag=UV5.Marker.SpawnPoint,sort=nearest,limit=1]

# オブジェクト消去
    kill @e[tag=UV5.Object]

# モデル削除
    function animated_java:sheep_avenger/remove/all

# 死亡演出召喚
    data modify storage api: Argument.ID set value 40002
    execute positioned ~ ~0.25 ~ run function api:object/summon

# ﾒｪ---
    tellraw @a[distance=..80] [{"text":"ﾒｪ---ﾒｪ---ﾒｪ---ﾒｪ---ﾒｪ---ﾒｪ---ﾒｪ---ﾒｪ---ﾒｪ---ﾒｪ---ﾒｪ---"}]

# クリアタイム表示
    execute store result score $Sec Temporary store result score $Min Temporary run scoreboard players operation @s UV5.BattleTimer /= $20 Const
    scoreboard players operation $Min Temporary /= $60 Const
    scoreboard players operation $Sec Temporary %= $60 Const
    execute if score $Sec Temporary matches 10.. run tellraw @a[distance=..80] [{"text":"【 クリアタイム："},{"score":{"name":"$Min","objective":"Temporary"}},{"text": ":"},{"score":{"name":"$Sec","objective":"Temporary"}},{"text": " !! 】"}]
    execute if score $Sec Temporary matches ..9 run tellraw @a[distance=..80] [{"text":"【 クリアタイム："},{"score":{"name":"$Min","objective":"Temporary"}},{"text": ":0"},{"score":{"name":"$Sec","objective":"Temporary"}},{"text": " !! 】"}]
    scoreboard players reset $Min Temporary
    scoreboard players reset $Sec Temporary

# DPS表示
    scoreboard players operation @s UV5.MaxHealth /= @s UV5.DpsTimer
    scoreboard players operation @s UV5.MaxHealth *= $20 Const
    tellraw @a[distance=..80] [{"text":"【 DPS："},{"score":{"name":"@s","objective":"UV5.MaxHealth"}},{"text": " !! 】"}]

# ﾒｪ---
    tellraw @a[distance=..80] [{"text":"ﾒｪ---ﾒｪ---ﾒｪ---ﾒｪ---ﾒｪ---ﾒｪ---ﾒｪ---ﾒｪ---ﾒｪ---ﾒｪ---ﾒｪ---"}]
