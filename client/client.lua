local function Main()
    local resources = GetResourceList()

    while true do
        Wait(3000)
        
        local newResources <const> = GetResourceList()
        for name, state in pairs(resources) do
            if (not newResources[name]) then
                TriggerServerEvent('anti-eulen/stop', name)
                break
            end
        end

        resources = table.clone(newResources)
    end
end

CreateThread(Main)