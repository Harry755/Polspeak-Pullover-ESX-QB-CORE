local ESX = exports['es_extended']:getSharedObject()

lib.registerContext({
    id = 'harry_polspeakmenu',
    title = 'HARRYS-PULLOVER-POLSPEAK ',
    options = {
      {
        title = 'Stop The Car',
        description = 'Stop the Car...!", "Stop the Car, i repeat stop the Car!',
        icon = "bullhorn",  
        onSelect = function()
          TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 50.0, "repeat", 0.6)

        end
      },
      {
        title = 'Pull Over',
        description = 'Pullover now!", "Pullover now! LSPD!',
        icon = "shield",
        onSelect = function()
            TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 50.0, "pullover_now_lspd", 0.6)

        end
      },
      {
        title = 'Warning',
        description = 'Warning...", "I warning you, kill the Engine!',
        icon = "triangle-exclamation",
        onSelect = function()
          TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 50.0, "engine", 0.6)

        end
      },
      {
        title = 'Step Out!',
        description = 'LSPD...", "LSPD, stop your Vehicle and step out!',
        icon = "shoe-prints",
        onSelect = function()
          TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 50.0, "step_out", 0.6) 

        end
      },
      {
        title = 'Shoot to kill..',
        description = 'Shoot to kill..", "This is the LSPD! Im gonna shoot to kill!',
        icon = "gun",
        onSelect = function()
          TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 50.0, "shoot_to_kill", 0.6)

        end
      },
      
  
    }
      
})
  
  
    
RegisterNetEvent('harrypullovercd1')
AddEventHandler('harrypullovercd1', function()
  lib.showContext('harry_polspeakmenu')
end)



RegisterKeyMapping('polspeak', 'Police Polspeak', 'keyboard', 'f11')

RegisterCommand("polspeak", function(source, args, rawCommand)
  local playerPed = GetPlayerPed(-1)
  if IsPedInAnyVehicle(playerPed, false) then 
      TriggerServerEvent('harrypullovercd', source)
  else
    lib.notify({
      title = 'Polspeak',
      description = 'you need to be inside a vehicle!!!!',
      type = 'error',
      position = 'top'
    })
  end
end, false)






  















































