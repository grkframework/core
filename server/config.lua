-- Grk Framework Server Config
-- Carregado apenas no server-side

GrkServer = {}

-- Banco de Dados
GrkServer.DB = {
    connection_string = "mysql://root:grk123@127.0.0.1/fivem_grk"
}

-- Segurança
GrkServer.Security = {
    max_login_attempts = 5,
    ban_duration_hours = 24,
    enable_anti_cheat = false
}

-- Performance
GrkServer.Performance = {
    save_interval = 300, -- segundos
    cleanup_old_logs = 7 -- dias
}

-- IA (Grok API)
GrkServer.AI = {
    endpoint = "https://api.x.ai/v1/chat/completions",
    timeout = 10,
    max_tokens = 512
}

print("^2[GRK SERVER]^7 Config carregada com sucesso!")
