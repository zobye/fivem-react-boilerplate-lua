RegisterCommand('openAdmin', function()
    SendNUIMessage({
        action = 'setVisible',
        data = true
    })
    SetNuiFocus(true, true)
end, false)
RegisterKeyMapping('openAdmin', 'Open Admin Menu', 'keyboard', 'E')

RegisterNUICallback('hideFrame', function(_, cb)
    SendNUIMessage({
        action = 'setVisible',
        data = false
    })
    SetNuiFocus(false, false)

    debugPrint('Hide NUI frame')
    cb({})
end)

RegisterNUICallback('getClientData', function(body, resultCallback)
    resultCallback({ x = 500, y = 115, z = 12 })
end)
