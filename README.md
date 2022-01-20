Documentation 
Ending in *  Meaning It is needed for the job to run properly

---Main Section

[job_name'] : Sets the jobs name this is also used for the blip label on the main blip *

----BLIP
['blip_enabled'] = false,---- if you want to have the blip or no

['blip_coords'] = vector3(x,y,z), --- sets the coords of the blip

['blip_sprite'] = 1, --- sets the sprite of the blip

['blip_colour'] = 0,--- sets the colour of the blip

['blip_size'] = 0.5, --- sets the scale of the blip

---Parts of job 

['text_3dlabel'] = '[E] SOMETHING'  -- what will show up as a 3dtext *

['coords'] = vector3(x,y,z) -- where you want the 3dtext/step to be at*

['item_needed'] = nil, --- item needed to start step, nil means no need any item to start *

['item_take'] = 'some item name from the shared.lua', -- what item will be taken, set to nil if you dont want any item given *

['item_give'] = nil, -- what item will be given, set to nil if you dont want any item given *

['progressbar_enabled'] = true, -- true means you want a progress bar, false will execute right away *

['progressbar_label'] = 'Proccessing', -- progressbar label 

['progressbar_duration'] = 10000,  -- progressbar duration  

['progressbar_animdict'] = nil, -- nil <no anim, "random@shop_robbery" <example anim dict

['progressbar_animname'] = nil, -- nil <no anim, "robbery_action_b" <example anim name




FAQS

Q : does the diff parts of the jobs need to be named  'one' , 'two' , 'three' ?

A : yes!



