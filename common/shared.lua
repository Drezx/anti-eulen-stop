---@return table
function GetResourceList()
    local data = {}
    local resources = GetNumResources()
    for i=0, resources, 1 do
        local name = GetResourceByFindIndex(i)
    
        if name then
            data[name] = GetResourceState(name)
        end
    end

    return data
end