#> asset:mob/40001.sheep_chan_of_revenge/tick/skill/call_servants/summon_servants
#
# 眷属召喚
#
# @within asset:mob/40001.sheep_chan_of_revenge/tick/skill/call_servants/tick

# 演出
    execute positioned ^7.5 ^ ^4 run particle flash ~ ~1.5 ~ 1.25 1.5 1.25 0 7
    execute positioned ^-7.5 ^ ^4 run particle flash ~ ~1.5 ~ 1.25 1.5 1.25 0 7
return 0
# 眷属召喚
    data modify storage api: Argument.ID set value 40002
    execute positioned ^12 ^-1 ^12.5 rotated ~180 ~ run function api:mob/summon
    data modify storage api: Argument.ID set value 40003
    execute positioned ^-12 ^-1 ^12.5 rotated ~180 ~ run function api:mob/summon
