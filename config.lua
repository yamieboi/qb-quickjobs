Cfg = {}

Cfg.Jobs = {

    ['example_job'] = {
        ['job_name'] = 'Example Job Name',
        ['blip_enabled'] = false,
        ['blip_coords'] = vector3(341.65, -875.57, 29.29),
        ['blip_sprite'] = 1,
        ['blip_colour'] = 0,
        ['blip_size'] = 0.5,

        ['one'] = {
         ['text_3dlabel'] = '~r~[E]~w~ Spot1',
         ['blip_enabled'] = false,
         ['blip_label'] = 'STEP 1',
         ['blip_sprite'] = 1,
         ['blip_colour'] = 0,
         ['blip_size'] = 0.5,
         ['coords'] = vector3(341.65, -875.57, 29.29),

         ['give_money_account'] = 'cash', -- cash , bank
         ['give_money_amount'] = 5000, 

         ['item_needed'] = nil,
         ['item_needed_amount'] = 1,
         ['item_take'] = 'water_bottle',
         ['item_take_amount'] = 5,
         ['item_give'] = nil,
         ['item_give_amount'] = 1,

         ['progressbar_enabled'] = true, --
         ['progressbar_label'] = 'Proccessing',
         ['progressbar_duration'] = 10000,         
         ['progressbar_animdict'] = nil, -- nil , "random@shop_robbery" 
         ['progressbar_animname'] = nil, -- nil , "robbery_action_b" 
        },
        ['two'] = {
            ['text_3dlabel'] = '~r~[E]~w~ Spot2',
            ['blip_enabled'] = true,
            ['blip_label'] = 'STEP 2',
            ['blip_sprite'] = 1,
            ['blip_colour'] = 0,
            ['blip_size'] = 0.5,
            ['coords'] = vector3(100,100,100),
            ['item_needed'] = nil,
            ['item_take'] = nil,
            ['item_give'] = 'water_bottle',
            ['progressbar_enabled'] = true, --
            ['progressbar_label'] = 'Proccessing',
            ['progressbar_duration'] = 10000,         
            ['progressbar_animdict'] = nil, -- nil , "random@shop_robbery"
            ['progressbar_animname'] = nil, -- nil , "robbery_action_b"
        },
        ['three'] = {
            ['text_3dlabel'] = '~r~[E]~w~ Spot3',
            ['blip_enabled'] = true,
            ['blip_label'] = 'STEP 3',
            ['blip_sprite'] = 1,
            ['blip_colour'] = 0,
            ['blip_size'] = 0.5,
            ['coords'] = vector3(100,100,100),
            ['item_needed'] = nil,
            ['item_take'] = nil,
            ['item_give'] = 'water_bottle',
            ['progressbar_enabled'] = false, --
            ['progressbar_label'] = 'Proccessing',
            ['progressbar_duration'] = 10000,         
            ['progressbar_animdict'] = nil, -- nil , "random@shop_robbery"
            ['progressbar_animname'] = nil, -- nil , "robbery_action_b"
        }
    },
}