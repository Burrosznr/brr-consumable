ESX = exports["es_extended"]:getSharedObject()


RegisterServerEvent('brr-consumable:applyEffects', function(valore, bisogno, tipo, itemName)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)

    if itemName then
        xPlayer.removeInventoryItem(itemName, 1)
    end

    local itemData = exports.ox_inventory:GetItem(src, itemName)
    local label = itemData and itemData.label or itemName

    if tipo == 'fame' then
        TriggerClientEvent('esx_status:add', src, 'hunger', valore)
        if Config.BrrNeeds then
            TriggerClientEvent('brr-needs:client:ModifyNeed', src, 'cacca', bisogno)
        end
        if Config.OxNotify then
            TriggerClientEvent('ox_lib:notify', src, {                        
                title = Config.Lang.NotificationTitle,
                description = Config.Lang.NotificationEat ..label.. ".",
                duration = 5000,
                showDuration = true,
                position = 'center-right',
                sound = {
                    name = 'Click_Fail', 
                    set = 'WEB_NAVIGATION_SOUNDS_PHONE'
                },
                icon = 'utensils',
            })
        else
            TriggerClientEvent('chat:addMessage', source, {
                color = {0, 255, 0},  
                multiline = false,
                args = {Config.Lang.NotificationEat ..label.. "."}
            })
        end
    elseif tipo == 'sete' then
        TriggerClientEvent('esx_status:add', src, 'thirst', valore)
        if Config.BrrNeeds then
            TriggerClientEvent('brr-needs:client:ModifyNeed', src, 'pipi', bisogno)
        end
        if Config.OxNotify then
            TriggerClientEvent('ox_lib:notify', src, {                        
                title = Config.Lang.NotificationTitle,
                description = Config.Lang.NotificationDrink ..label.. ".",
                duration = 5000,
                showDuration = true,
                position = 'center-right',
                sound = {
                    name = 'Click_Fail', 
                    set = 'WEB_NAVIGATION_SOUNDS_PHONE'
                },
                icon = 'whiskey-glass',
            })
        else
            TriggerClientEvent('chat:addMessage', source, {
                color = {0, 255, 0},  
                multiline = false,
                args = {Config.Lang.NotificationDrink ..label.. "."}
            })
        end    
    end
end)
