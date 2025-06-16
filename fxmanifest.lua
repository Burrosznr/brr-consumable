fx_version 'cerulean'
game 'gta5'
lua54 'yes'


author 'BURRO'
description 'BRR - Consumable Food and Drink'
version  "1.0.0"


shared_scripts {
	'@es_extended/imports.lua',
	'@ox_lib/init.lua',
	'shared/*.lua',
}

client_scripts {
	'client/*.lua'
}

server_scripts {
	'server/*.lua',
}
