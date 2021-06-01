fx_version 'cerulean'
game 'gta5'

author 'nightstudios'
version '1.0.0'

ui_page 'html/ui.html'

server_scripts {
    'config.lua',
    'server/main.lua'
}

client_scripts {
    'config.lua',
    'client/main.lua' 
}

files {
    'html/ui.html',
    'html/style.css'
}

dependency 'es_extended'