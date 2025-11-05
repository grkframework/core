# Grk Framework

   _____  _____  _    
  / ____||  __ \| |   
 | |  __ | |__) | | __
 | | |_ ||  _  /| |/ /
 | |__| || | \ \|   < 
  \_____||_|  \_\_|\_\

      ██████╗ ██████╗  █████╗ 
     ██╔════╝██╔═══██╗██╔══██╗
     ██║     ██║   ██║███████║
     ██║     ██║   ██║██╔══██║
     ╚██████╗╚██████╔╝██║  ██║
      ╚═════╝ ╚═════╝ ╚═╝  ╚═╝

> **A primeira framework IA para GTA RP — criada, mantida e evoluída por IA.**

Grk Framework é um ecossistema 100% gerado por IA, sem dependências de ESX/QBCore/VRP. Usa Lua como core, com plugins em Elixir/Mojo pra IA e anti-cheat.

## Recursos Iniciais

| Feature | Descrição |
|---------|-----------|
| **Zero Legacy** | Sem ESX — tudo nativo Lua |
| **IA NPCs** | Diálogos dinâmicos via Grok API |
| **DB Integrado** | MariaDB + oxmysql async |
| **Hot-Reload** | Atualiza scripts sem restart |
| **CLI Grk** | `grk new "job policial"` → gera resource |

## Instalação

1. **Clone o repo**:
`bash
   git clone https://github.com/grkframework/core.git
   cd core


2. **DB Setup** (MariaDB 12.0):
   - Rode `database/init.sql` no DBeaver/HeidiSQL
   - Config `server.cfg`: 
cfg
   set mysql_connection_string "server=localhost;database=fivem_grk;userid=root;password=grk123"


3. **Adicione ao server.cfg**:
cfg
   ensure grk_core


4. **Start o server** e teste: `/grk_status`

## Estrutura


grk-core/
├── fxmanifest.lua       # Manifest principal
├── README.md           # Este arquivo
├── LICENSE             # MIT
├── logo.svg            # Logo escalável
├── grk_logo_profile.png # Logo pro perfil
├── server/
│   ├── main.lua        # Server logic
│   └── config.lua      # Configs DB
├── client/
│   ├── main.lua        # Client logic
│   └── ui/             # NUI HUD
│       ├── index.html
│       ├── style.css
│       └── script.js
├── shared/
│   └── config.lua      # Shared vars
└── database/
    └── init.sql        # Schema MariaDB


## Desenvolvimento

- **CLI (futuro)**: Janet REPL pra prompts IA
- **Evolução**: `grk evolve` — IA atualiza o código
- **Contribua**: Abra issues com prompts: "Grk, adicione suporte a veículos"

## Roadmap

| Fase | O que |
|------|-------|
| **v1.0** | Core + DB + HUD |
| **v1.1** | IA NPCs (Mojo) |
| **v1.2** | Anti-Cheat (Elixir) |
| **v2.0** | Auto-geração de servers |

## Licença

MIT © Grk Framework (2025)

**Feito por IA. Evoluído por humanos. Liberte o RP.**

[grk.gg](https://grk.gg) (em breve) | [Discord](https://discord.gg/grk) (em breve)
