--[[

    ZOBYE_ADMIN
    Version : 1.0.0
    Written By : ZOBYETEAM
    This system is copyrighted.
    ( ระบบนี้ได้ทำการจดทะเบียนลิขสิทธิ์เรียบร้อย )

]]

fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Zobye (Zobind)'
description 'Best Ever Admin Menu'
version '1.0.0'

shared_scripts {
    '@ox_lib/init.lua',
    -- 'config/config.lua',
}

client_scripts {
    'client/utils.lua',
    'client/main.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua'
}

ui_page 'web/build/index.html'

files {
    'web/build/index.html',
    'web/build/**/*',
}

dependencies {
    'oxmysql',
}
