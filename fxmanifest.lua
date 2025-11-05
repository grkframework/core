fx_version 'cerulean'
game 'gta5'

author 'Grk Framework'
description 'IA-Powered RP Core — Zero ESX, 100% Lua + AI'
version '1.0.0'

lua54 'yes'

shared_scripts {
    'shared/config.lua'
}

client_scripts {
    'client/main.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua'
}

ui_page 'client/ui/index.html'

files {
    'client/ui/index.html',
    'client/ui/style.css',
    'client/ui/script.js',
    'logo.svg',
    'grk_logo_profile.png'
}

dependencies {
    'oxmysql'
}
