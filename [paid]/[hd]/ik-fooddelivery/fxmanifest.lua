name "ik-fooddelivery"
author "Proportions#8460"
version "1.0.0"
description "Food delivery"
fx_version "cerulean"
game "gta5"

ui_page 'ui/index.html'

shared_scripts {
    'config.lua',
    '@qb-core/shared/locale.lua',
	'locales/*.lua',
}

client_scripts {
    'client/client.lua',
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/cron.lua',
    'server/server.lua',
}

files {
    'ui/js/*.js',
    'ui/*.html',
    'ui/css/*.css',
    'ui/font/*.*',
    'ui/img/*.png'
}

escrow_ignore {
    'locales/*.lua',
    'config.lua',
    'ik-fooddelivery.sql'
}

lua54 'yes'

dependency '/assetpacks'