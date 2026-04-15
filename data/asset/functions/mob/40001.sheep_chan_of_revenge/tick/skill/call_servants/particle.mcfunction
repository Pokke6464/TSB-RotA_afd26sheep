#> asset:mob/40001.sheep_chan_of_revenge/tick/skill/call_servants/particle
#
# 眷属召喚
#
# @within asset:mob/40001.sheep_chan_of_revenge/tick/skill/call_servants/tick

# 手から光
    execute if predicate lib:random_pass_per/41 run particle end_rod ^-2.5 ^1.5 ^1.25 0.25 0.25 0.25 0.1 1 force
    execute if predicate lib:random_pass_per/41 run particle end_rod ^2.5 ^1.5 ^1.25 0.25 0.25 0.25 0.1 1 force
    particle dust 0.439 0.447 0.906 1.5 ^-2.5 ^1.5 ^1.25 0.75 0.75 0.75 0 1 force
    particle dust 0.831 0.373 0.894 1.5 ^2.5 ^1.5 ^1.25 0.75 0.75 0.75 0 1 force

# 召喚位置
    execute positioned ^-7.5 ^ ^4 run particle dust 0.439 0.447 0.906 3 ~ ~1.5 ~ 0.75 1.5 0.75 0 2 force
    execute positioned ^-7.5 ^ ^4 run particle dust 0.227 0.231 0.506 3 ~ ~1.5 ~ 1.25 1.5 1.25 0 2 force
    execute positioned ^7.5 ^ ^4 run particle dust 0.831 0.373 0.894 3 ~ ~1.5 ~ 0.75 1.5 0.75 0 2 force
    execute positioned ^7.5 ^ ^4 run particle dust 0.424 0.161 0.459 3 ~ ~1.5 ~ 1.25 1.5 1.25 0 2 force
