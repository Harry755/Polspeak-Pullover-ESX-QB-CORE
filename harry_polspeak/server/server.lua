local ESX = exports['es_extended']:getSharedObject()


RegisterNetEvent('harrypullovercd')
AddEventHandler('harrypullovercd', function()
    local xPlayer = ESX.GetPlayerFromId(source)
  
    if xPlayer and xPlayer.job.name == 'police' then
        TriggerClientEvent('harrypullovercd1', source)
    else
        TriggerClientEvent('ox_lib:notify', source, {
            title = 'Access Denied',
            description = 'You are not police!!!',
            type = 'error',
            position = 'top'
        })
    end
    
end)