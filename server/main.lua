local function log(msg)
    if Grk.Debug then
        print("^3[GRK] ^7" .. msg)
    end
end

-- Inicialização
AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() ~= resourceName then return end
    log("Grk Framework v" .. Grk.Version .. " iniciado!")
    log("Zero ESX | IA-Powered | Hot-Reload: ON")
end)

-- Comando de status
RegisterCommand('grk_status', function()
    print("^2[GRK STATUS]^7")
    print("Versão: " .. Grk.Version)
    print("DB: " .. (MySQL.ready and "^2ONLINE^7" or "^1OFFLINE^7"))
    print("IA: " .. (Grk.AI.enabled and "^2ATIVA^7" or "^3DESATIVADA^7"))
    print("Use /grk_help para comandos")
end, true)

-- Help
RegisterCommand('grk_help', function()
    print("^5[GRK HELP]^7")
    print("/grk_status - Ver status")
    print("/grk_reload - Recarregar (futuro)")
    print("grk.gg - Site oficial (em breve)")
end, true)

log("Comandos registrados: /grk_status, /grk_help")
