local QBCore = exports['qb-core']:GetCoreObject()

for key, value in pairs(Cfg.Jobs) do
    if value.one then
      RegisterNetEvent(''..value.job_name..'ONE',function ()
        print('kuttar bacha')

          local One = value.one
    
          if One.item_take ~= nil then
            print(One.item_take)
          end
          if One.item_give ~= nil then
            print(One.item_give)

        end
      end)
    end
    if value.two then
        RegisterNetEvent(''..value.job_name..'TWO',function ()
          print('kuttar bacha')
  
            local Two = value.two
      
            if Two.item_take ~= nil then
              print(Two.item_take)
            end
            if Two.item_give ~= nil then
              print(Two.item_give)
  
          end
        end)
      end
end