#> asset:mob/40001.sheep_chan_of_revenge/tick/skill/call_servants/summon_magic_circle
#
# 眷属召喚
#
# @within function asset:mob/40001.sheep_chan_of_revenge/tick/skill/call_servants/tick

# 魔法陣召喚
    data modify storage api: Argument.ID set value 40003
    data modify storage api: Argument.FieldOverride.Color set value 3757260
    data modify storage api: Argument.FieldOverride.Scale set value [7.5f,7.5f,0.01f]
    data modify storage api: Argument.FieldOverride.RemoveTimer set value 135
    execute positioned ^-7.5 ^0.1 ^4 rotated 0 90 run function api:object/summon

    data modify storage api: Argument.ID set value 40003
    data modify storage api: Argument.FieldOverride.Color set value 11158988
    data modify storage api: Argument.FieldOverride.Scale set value [7.5f,7.5f,0.01f]
    data modify storage api: Argument.FieldOverride.RemoveTimer set value 135
    execute positioned ^7.5 ^0.1 ^4 rotated 180 -90 run function api:object/summon
