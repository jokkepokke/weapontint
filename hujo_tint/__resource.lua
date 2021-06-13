resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'Change weapon tint from item, made by hurtti#0001 and Jokke#8342'

server_scripts {
	'@es_extended/locale.lua',
	'server.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'client.lua'
}

dependencies {
	'es_extended'
}