-- Grk Brain v1.0 — Módulo de IA Local (Offline Fallback)
-- Futuro: Integração com Grok API via server

local GrkBrain = {}
GrkBrain.version = "1.0.0"

-- Respostas pré-definidas (IA simulada)
local responses = {
    ["oi"] = "E aí, guerreiro do RP! Grk Framework tá rodando liso!",
    ["quem é você"] = "Eu sou o Grk Brain — o primeiro núcleo de IA nativo do FiveM. Feito por IA, pra IA.",
    ["grk"] = "Grk Framework v" .. Grk.Version .. " | Zero ESX | IA-Powered | 100% Lua",
    ["ajuda"] = "Comandos: /grk_status, /togglehud, F9 (HUD), /grk_help"
}

-- Função principal
function GrkBrain.ask(prompt)
    prompt = string.lower(prompt):gsub("%p", "")
    
    for key, response in pairs(responses) do
        if string.find(prompt, key) then
            return response
        end
    end

    return "Hmm... ainda estou aprendendo. Tente: 'oi', 'quem é você', 'grk' ou 'ajuda'."
end

-- Comando de teste
RegisterCommand('grk_ask', function(source, args)
    if #args == 0 then return print("^1[GRK BRAIN] Uso: /grk_ask <pergunta>^7") end
    local question = table.concat(args, " ")
    local answer = GrkBrain.ask(question)
    TriggerEvent('chat:addMessage', {
        color = {0, 255, 136},
        multiline = true,
        args = {"[GRK IA]", answer}
    })
end, false)

print("^5[GRK BRAIN]^7 v" .. GrkBrain.version .. " carregado! Use /grk_ask oi")
