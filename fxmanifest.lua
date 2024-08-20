fx_version "adamant"

game "gta5"

client_script {
    'client.lua',
    'func.lua',
    'config.lua'
}

server_script "server.lua"

ui_page 'ui/ui.html'

files{
    'ui/ui.html',
    'ui/style.css',
    'ui/script.js',
    'ui/images/*',
    'ui/sounds/*',
}
server_scripts { '@mysql-async/lib/MySQL.lua' }