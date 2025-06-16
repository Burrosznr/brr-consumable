ESX = exports["es_extended"]:getSharedObject()


local function LoadAnimDict(dict)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Wait(10)
    end
end


local function LoadModel(model)
    local modelHash = GetHashKey(model)
    RequestModel(modelHash)
    while not HasModelLoaded(modelHash) do
        Wait(10)
    end
    return modelHash
end


local function AttachPropToPlayer(modelName, bone, pos, rot)
    local playerPed = PlayerPedId()
    local model = LoadModel(modelName)
    local prop = CreateObject(model, GetEntityCoords(playerPed), true, true, true)
    AttachEntityToEntity(
        prop,
        playerPed,
        GetPedBoneIndex(playerPed, bone),
        pos.x, pos.y, pos.z,
        rot.x, rot.y, rot.z,
        true, true, false, true, 1, true
    )
    return prop
end


local function PlayPropAnimation(animData, propData1, propData2)
    local playerPed = PlayerPedId()

    SetPedCanPlayAmbientAnims(playerPed, true)
    SetPedCanPlayAmbientBaseAnims(playerPed, true)

    LoadAnimDict(animData.AnimDict)

    TaskPlayAnim(playerPed, animData.AnimDict, animData.AnimClip, 8.0, -8.0, 6000, 49, 0.0, false, false, false)

    local prop1, prop2

    if propData1 and propData1.model and propData1.model ~= false then
        prop1 = AttachPropToPlayer(propData1.model, animData.PropBone or animData.PropBoneUno, propData1.pos, propData1.rot)
    end

    if propData2 and propData2.model and propData2.model ~= false then
        prop2 = AttachPropToPlayer(propData2.model, animData.PropBoneDue, propData2.pos, propData2.rot)
    end

    Wait(6000)

    ClearPedSecondaryTask(playerPed)
    ClearPedTasks(playerPed)

    if prop1 and DoesEntityExist(prop1) then DeleteEntity(prop1) end
    if prop2 and DoesEntityExist(prop2) then DeleteEntity(prop2) end
end


RegisterNetEvent('brr-consumable:useItem', function(itemName, tipo)
    local itemData = tipo == 'cibo' and Config.ItemCibo[itemName] or Config.ItemBevande[itemName]
    if not itemData then return end

    if tipo == 'cibo' then
        if itemData.UnaMano then
            PlayPropAnimation(Config.AnimUnaMano, {
                model = itemData.ModelloPropUno,
                pos = itemData.PosizionePropUno,
                rot = itemData.RotazionePropUno
            })
        elseif itemData.DueMani then
            PlayPropAnimation(Config.AnimDueMani, {
                model = itemData.ModelloPropUno,
                pos = itemData.PosizionePropUno,
                rot = itemData.RotazionePropUno
            }, {
                model = itemData.ModelloPropDue,
                pos = itemData.PosizionePropDue,
                rot = itemData.RotazionePropDue
            })
        elseif itemData.Lattina then
            PlayPropAnimation(Config.AnimLattine, {
                model = itemData.ModelloPropUno,
                pos = itemData.PosizionePropUno,
                rot = itemData.RotazionePropUno
            })
        end
        TriggerServerEvent('brr-consumable:applyEffects', itemData.ValoreNutrizionale, itemData.BisogniEssenziali, 'fame', itemName)
    else
        local animazione = Config.AnimBevande
        if itemData.Caffe then
            animazione = Config.AnimCaffe
        elseif itemData.DueMani then
            animazione = Config.AnimDueMani
        end
    
        PlayPropAnimation(animazione, {
            model = itemData.ModelloProp,
            pos = itemData.PosizioneProp,
            rot = itemData.RotazioneProp
        })
        TriggerServerEvent('brr-consumable:applyEffects', itemData.ValoreNutrizionale, itemData.BisogniEssenziali, 'sete', itemName)
    end
end)

