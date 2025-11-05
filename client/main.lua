local showHUD = Grk.HUD.enabled

-- HUD Toggle
RegisterCommand('togglehud', function()
    showHUD = not showHUD
    SendNUIMessage({
        action = 'toggle',
        show = showHUD
    })
end, false)

-- Inicialização NUI
CreateThread(function()
    Wait(1000)
    SendNUIMessage({
        action = 'init',
        version = Grk.Version,
        position = Grk.HUD.position
    })
end)

-- Recebe do NUI
RegisterNUICallback('grk_ready', function(data, cb)
    print("^2[GRK NUI]^7 HUD carregado com sucesso!")
    cb('ok')
end)

-- Debug
if Grk.Debug then
    RegisterCommand('grk_client', function()
        print("^3[GRK CLIENT]^7 HUD: " .. (showHUD and "ON" or "OFF"))
    end, false)
end
