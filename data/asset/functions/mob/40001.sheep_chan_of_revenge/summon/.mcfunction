#> asset:mob/40001.sheep_chan_of_revenge/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/40001/summon

# 元となるMobを召喚
    summon iron_golem ~ ~ ~ {Tags:["MobInit","ProcessCommonTag","AlwaysInvisible"],DeathLootTable:"asset:mob/death/0162.sheep_chan",NoAI:1b,Silent:1b,DeathTime:19s}
