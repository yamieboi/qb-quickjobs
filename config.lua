Cfg = {}

Cfg.Jobs = {
    ['job1'] = {
        ['job_name'] = 'shuor',
        
        ['blip_enabled'] = false,
        ['blip_sprite'] = 1,
        ['blip_colour'] = 0,
        ['blip_size'] = 0.5,

        ['one'] = {
         ['one_3dtext'] = '~r~[E]~w~ PickupSpot1',
         ['one_coords'] = vector3(203.17, -797.37, 31.07),
         ['item_needed'] = nil, --- item needed to start step, nil means no need any item to start
         ['one_item_take'] = 'loltake',
         ['one_item_give'] = 'lolgibe',
         ['one_progress_name'] = 'Proccessing',
         ['one_progress_duration'] = 10000,
         ['one_progress_animation_dict'] = nil, -- nil <nothing, "random@shop_robbery" <example
         ['one_progress_animation_name'] = nil, -- nil <nothing, "robbery_action_b" <example
        },
        ['two'] = {
            ['pickup_3dtext'] = '~r~[E]~w~ PickupSpot1',
            ['pickup_coords'] = vector3(203.17, -797.37, 31.07),
            ['pickup_item_take'] = 'loltake',
            ['pickup_item_give'] = 'lolgibe',
            ['pickup_progress_name'] = 'Proccessing',
            ['pickup_progress_duration'] = 10000,
            ['pickup_progress_animation_dict'] = nil, -- nil <nothing, "random@shop_robbery" <example
            ['pickup_progress_animation_name'] = nil, -- nil <nothing, "robbery_action_b" <example
        }
    },
    ['job2'] = {
        ['job_name'] = 'km',

        ['blip_enabled'] = true,
        ['blip_sprite'] = 1,
        ['blip_colour'] = 0,
        ['blip_size'] = 0.5,

        ['one'] = {
         ['one_3dtext'] = '~r~[E]~w~ PickupSpot2',
         ['one_coords'] = vector3(204.27, -794.18, 31.05),
         ['item_needed'] = nil, --- item needed to start step, nil means no need any item to start
         ['one_item_take'] = 'loltake',
         ['one_item_give'] = 'lolgibe',
         ['one_progress_name'] = 'Proccessing',
         ['one_progress_duration'] = 10000,         
         ['one_progress_animation_dict'] = nil, -- nil <nothing, "random@shop_robbery" <example
         ['one_progress_animation_name'] = nil, -- nil <nothing, "robbery_action_b" <example
        },
        ['two'] = {
            ['pickup_3dtext'] = '~r~[E]~w~ PickupSpot1',
            ['pickup_coords'] = vector3(203.17, -797.37, 31.07),
            ['pickup_item_take'] = 'loltake',
            ['pickup_item_give'] = 'lolgibe',
            ['pickup_progress_name'] = 'Proccessing',
            ['pickup_progress_duration'] = 10000,
            ['pickup_progress_animation_dict'] = nil, -- nil <nothing, "random@shop_robbery" <example
            ['pickup_progress_animation_name'] = nil, -- nil <nothing, "robbery_action_b" <example
        }
    },
    ['job3'] = {
        ['job_name'] = 'kutta',
        ['blip_enabled'] = false,
        ['blip_sprite'] = 1,
        ['blip_colour'] = 0,
        ['blip_size'] = 0.5,

        ['one'] = {
            ['one_3dtext'] = '~r~[E]~w~ PickupSpot3',
            ['one_coords'] = vector3(201.17, -802.48, 31.1),
            ['item_needed'] = "screwdriverset", --- item needed to start step, nil means no need any item to start, "screwdriverset" < Example
            ['one_item_take'] = 'loltake',
            ['one_item_give'] = 'lolgibe',
            ['one_progress_name'] = 'Proccessing',
            ['one_progress_duration'] = 10000,
            ['one_progress_animation_dict'] = "random@shop_robbery", -- nil <nothing, "random@shop_robbery" <example
            ['one_progress_animation_name'] = "robbery_action_b", -- nil <nothing, "robbery_action_b" <example
        },
        ['two'] = {
            ['pickup_3dtext'] = '~r~[E]~w~ PickupSpot1',
            ['pickup_coords'] = vector3(203.17, -797.37, 31.07),
            ['pickup_item_take'] = 'loltake',
            ['pickup_item_give'] = 'lolgibe',
            ['pickup_progress_name'] = 'Proccessing',
            ['pickup_progress_duration'] = 10000,
            ['pickup_progress_animation_dict'] = nil, -- nil <nothing, "random@shop_robbery" <example
            ['pickup_progress_animation_name'] = nil, -- nil <nothing, "robbery_action_b" <example
        }
        
    }
}