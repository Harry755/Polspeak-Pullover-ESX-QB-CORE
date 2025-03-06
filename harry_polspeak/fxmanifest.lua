fx_version "adamant"
game "gta5"

author "harry"

lua54 'yes'

------------------

client_scripts {
    'client/client.lua',
}

  
server_scripts {
    'server/server.lua',
}

shared_scripts { 
	'@es_extended/imports.lua',
	'@ox_lib/init.lua'
}

