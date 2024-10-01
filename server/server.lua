local ALLOWED_STATES <const> = table.concat({"missing", "starting", "stopping", "uninitialized", "unknown"}, "|")

RegisterNetEvent("anti-eulen/stop", function (name)
    local source <const> = source
    local resources <const> = GetResourceList()

    if (not resources[name]) then
        return
    end

    if (ALLOWED_STATES:find((resources[name]:lower()))) then
        return
    end

    print("^1[EULEN STOP RESOURCE]^0 [ID:" .. tostring(source) .. ", Resource:" .. tostring(name) .. "]")
end)