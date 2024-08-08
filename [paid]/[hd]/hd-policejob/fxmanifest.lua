fx_version 'cerulean'
game 'gta5'

description 'HD-PoliceJob'
version '1.6.1'

shared_scripts {
    'config.lua',
    '@ox_lib/init.lua',
    '@qb-core/shared/locale.lua',
    'locales/en.lua',
    'locales/*.lua'
}

client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/ComboZone.lua',
    'bridge/*.lua',
    'client/main.lua',
    'client/camera.lua',
    'client/interactions.lua',
    'client/job.lua',
    'client/heli.lua',
    'client/evidence.lua',
    'client/objects.lua',
    'client/tracker.lua',
    'modules/cl_radar.lua',
    'modules/cl_fpscanner.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua',
    'server/inventory.lua',
    'modules/sv_radar.lua',
    'modules/sv_fpscanner.lua'
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/vue.min.js',
    'html/script.js',
    'html/fingerprint.png',
    'html/alcoholtester.png',
    'html/main.css',
    'html/Calculator.ttf',
    'html/images/*.png',
    'locales/ui.json'
}

lua54 'yes'

escrow_ignore {
    'client/*.lua',
    'locales/*.lua',
    'server/*.lua',
    'config.lua',
}

dependency '/assetpacks'