#> asset:object/2265.field_modify_manager/tick/change_color
#
# Objectのtick時の処理
#
# @within asset:object/2265.field_modify_manager/tick/attack
# @private
    #declare objective 2266.Color

# 既に色が変わっていないエリアを色変え
    execute as @e[type=item_display,tag=CO.Object.FieldModify,tag=!2266.ColorChanged,scores={2266.Color=0},sort=random,limit=2,distance=..80] run function asset:object/2265.field_modify_manager/tick/change_color.m {Color:1, Model:20592}
    execute as @e[type=item_display,tag=CO.Object.FieldModify,tag=!2266.ColorChanged,scores={2266.Color=1},sort=random,limit=2,distance=..80] run function asset:object/2265.field_modify_manager/tick/change_color.m {Color:2, Model:20593}
    execute as @e[type=item_display,tag=CO.Object.FieldModify,tag=!2266.ColorChanged,scores={2266.Color=2},sort=random,limit=2,distance=..80] run function asset:object/2265.field_modify_manager/tick/change_color.m {Color:3, Model:20594}
    execute as @e[type=item_display,tag=CO.Object.FieldModify,tag=!2266.ColorChanged,scores={2266.Color=3},sort=random,limit=2,distance=..80] run function asset:object/2265.field_modify_manager/tick/change_color.m {Color:0, Model:20591}
