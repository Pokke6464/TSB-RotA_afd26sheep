#> asset:object/2265.field_modify_manager/tick/change_color.m
#
# Objectのtick時の処理
#
# @within asset:object/2265.field_modify_manager/tick/change_color
# @private
    #declare tag 2266.ColorChanged
    #declare objective 2266.Color

# 変更を適用
    $scoreboard players set @s 2266.Color $(Color)
    $data modify entity @s item.tag.CustomModelData set value $(Model)
    tag @s add 2266.ColorChanged
