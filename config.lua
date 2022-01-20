Cfg = {}

Cfg.Jobs = {
    ['job1'] = {
        ['job_name'] = 'shuor',

        ['blip_enabled'] = false,
        ['blip_coords'] = vector3(204.27, -794.18, 31.05),
        ['blip_sprite'] = 1,
        ['blip_colour'] = 0,
        ['blip_size'] = 0.5,

        ['one'] = {
         ['one_3dtext'] = '~r~[E]~w~ PickupSpot1',
         ['coords'] = vector3(203.17, -797.37, 31.07),
         ['item_needed'] = nil, --- item needed to start step, nil means no need any item to start
         ['item_take'] = 'loltake',
         ['item_give'] = 'lolgibe',
         ['progressbar_label'] = 'Proccessing',
         ['progressbar_duration'] = 10000,
         ['progressbar_animdict'] = nil, -- nil <nothing, "random@shop_robbery" <example
         ['progressbar_animname'] = nil, -- nil <nothing, "robbery_action_b" <example
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
        -- main job blip, blip name is the job_name, can delete or just set to false 
        ['blip_enabled'] = true,
        ['blip_coords'] = vector3(204.27, -794.18, 31.05),
        ['blip_sprite'] = 1,
        ['blip_colour'] = 0,
        ['blip_size'] = 0.5,

        ['one'] = {
         ['one_3dtext'] = '~r~[E]~w~ PickupSpot2',
         -- blip, can delete or just set to false 
         ['blip_enabled'] = false,
         ['blip_label'] = 'SHEEEEESH STEP 1',
         ['blip_sprite'] = 1,
         ['blip_colour'] = 0,
         ['blip_size'] = 0.5,
         ---------------
         ['coords'] = vector3(204.27, -794.18, 31.05),-- this is also used for the blip
         ----- item needed to start nil if no item needed to start
         ['item_needed'] = nil, --- item needed to start step, nil means no need any item to start
         ---------
         -------- what item to take 
         ['item_take'] = 'loltake',
         ---------- what item to give
         ['item_give'] = 'lolgibe',
         ------- progress bar data
         ['progressbar_enabled'] = true, --
         ['progressbar_label'] = 'Proccessing',
         ['progressbar_duration'] = 10000,         
         ['progressbar_animdict'] = nil, -- nil <nothing, "random@shop_robbery" <example
         ['progressbar_animname'] = nil, -- nil <nothing, "robbery_action_b" <example
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
        ['blip_coords'] = vector3(204.27, -794.18, 31.05),
        ['blip_sprite'] = 1,
        ['blip_colour'] = 0,
        ['blip_size'] = 0.5,

        ['one'] = {
            ['one_3dtext'] = '~r~[E]~w~ PickupSpot3',
            ['coords'] = vector3(201.17, -802.48, 31.1),
            ['item_needed'] = "screwdriverset", --- item needed to start step, nil means no need any item to start, "screwdriverset" < Example
            ['item_take'] = 'loltake',
            ['item_give'] = 'lolgibe',
            ['progressbar_label'] = 'Proccessing',
            ['progressbar_duration'] = 10000,
            ['progressbar_animdict'] = "random@shop_robbery", -- nil <nothing, "random@shop_robbery" <example
            ['progressbar_animname'] = "robbery_action_b", -- nil <nothing, "robbery_action_b" <example
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