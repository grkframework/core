-- Grk Framework Database Schema
-- MariaDB 12.0+ | FiveM Ready

CREATE DATABASE IF NOT EXISTS fivem_grk CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE fivem_grk;

-- Tabela de jogadores
CREATE TABLE IF NOT EXISTS players (
    id INT AUTO_INCREMENT PRIMARY KEY,
    identifier VARCHAR(50) UNIQUE NOT NULL,
    name VARCHAR(100) NOT NULL,
    last_login DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    data JSON DEFAULT NULL
);

-- Tabela de logs IA (futuro)
CREATE TABLE IF NOT EXISTS ai_logs (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    player_id INT,
    prompt TEXT,
    response TEXT,
    model VARCHAR(50),
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (player_id) REFERENCES players(id) ON DELETE CASCADE
);

-- Índices
CREATE INDEX idx_identifier ON players(identifier);
CREATE INDEX idx_timestamp ON ai_logs(timestamp);

-- Usuário de exemplo (remova em produção)
INSERT IGNORE INTO players (identifier, name) 
VALUES ('license:grkdev001', 'Grk Developer');
