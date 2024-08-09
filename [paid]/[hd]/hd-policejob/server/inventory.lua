Inventory = Inventory or {}

Inventory = {
    AddItem = function(source, item, amount, metadata, slot)
        local src = source
        if Config.Inventory == 'qb-inventory' or Config.Inventory == 'ps-inventory' or Config.Inventory == 'new-qb-inventory' then
            local inv = Config.Inventory
            if inv == 'new-qb-inventory' then inv = 'qb-inventory' end
            if exports[inv]:AddItem(src, item, amount, slot or false, metadata or {}) then
                if Config.Inventory == 'new-qb-inventory' then
                    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items[item], 'add', amount)
                else
                    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], 'add', amount)
                end
                return true
            else return false end
        elseif Config.Inventory == 'ox_inventory' then
            if exports.ox_inventory:CanCarryItem(src, item, amount) then
                if exports.ox_inventory:AddItem(src, item, amount, metadata or {}, slot) then
                    return true
                else return false end
            else return false end
        elseif Config.Inventory == 'qs-inventory' then
            if exports['qs-inventory']:CanCarryItem(src, item, amount) then
                if exports['qs-inventory']:AddItem(src, item, amount, slot, metadata or {}) then
                    return true
                else return false end
            end
        end
    end,

    RemoveItem = function(source, item, amount, slot)
        local src = source
        if Config.Inventory == 'qb-inventory' or Config.Inventory == 'ps-inventory' or Config.Inventory == 'new-qb-inventory' then
            local inv = Config.Inventory
            if inv == 'new-qb-inventory' then inv = 'qb-inventory' end
            if exports[inv]:RemoveItem(src, item, amount, slot or nil) then
                if Config.Inventory == 'new-qb-inventory' then
                    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items[item], 'remove', amount)
                else
                    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], 'remove', amount)
                end
                return true
            else return false end
        elseif Config.Inventory == 'ox_inventory' then
            return exports.ox_inventory:RemoveItem(src, item, amount, nil, slot or nil)
        elseif Config.Inventory == 'qs-inventory' then
            return exports['qs-inventory']:RemoveItem(src, item, amount, slot)
        end
    end,

    HasItem = function(source, item)
        if Config.Inventory == 'ox_inventory' then
            local amt = exports.ox_inventory:Search(source, 'count', item)
            if amt > 0 then return true else return false end
        elseif Config.Inventory == 'qb-inventory' or Config.Inventory == 'ps-inventory' or Config.Inventory == 'new-qb-inventory' then
            local inv = Config.Inventory
            if inv == 'new-qb-inventory' then inv = 'qb-inventory' end
            return exports[inv]:HasItem(source, item)
        elseif Config.Inventory == 'qs-inventory' then
            local amt = exports['qs-inventory']:GetItemTotalAmount(source, item)
            if amt > 0 then return true else return false end
        end
    end,

    GetItem = function(source, item)
        if Config.Inventory == 'ox_inventory' then
            local items = exports.ox_inventory:Search(source, 'slots', item)
            return items
        elseif Config.Inventory == 'qb-inventory' or Config.Inventory == 'ps-inventory' or Config.Inventory == 'new-qb-inventory' then
            local inv = Config.Inventory
            if inv == 'new-qb-inventory' then inv = 'qb-inventory' end
            return exports[inv]:GetItemsByName(source, item)
        elseif Config.Inventory == 'qs-inventory' then
            local inv = {}
            local items = exports['qs-inventory']:GetInventory(source)
            for k,v in pairs(items) do
                if v.name == item then
                    inv[#inv+1] = v
                end
            end
            return inv
        end
    end,

    OpenStash = function(source, id, name)
        if Config.Inventory == 'ox_inventory' then
            local inventory = exports.ox_inventory:GetInventory(id)
            if not inventory then
                exports.ox_inventory:RegisterStash(id, name, 30, 100000, true)
            end
            TriggerClientEvent('ox_inventory:openInventory', source, 'player', id)
        elseif Config.Inventory == 'qb-inventory' or Config.Inventory == 'ps-inventory' or Config.Inventory == 'qs-inventory' then
            TriggerEvent("inventory:server:OpenInventory", "stash", id, Config.StashSettings)
            TriggerClientEvent("inventory:client:SetCurrentStash", source, id)
        end
    end,

    OpenShop = function(source, name, items, jobs)
        if Config.Inventory == 'ox_inventory' then
            local inventory = exports.ox_inventory:GetInventory(name)
            if not inventory then
                exports.ox_inventory:RegisterShop(name, {
                    name = name,
                    inventory = items,
                    groups = jobs,
                })
            end
            TriggerClientEvent('ox_inventory:openInventory', source, 'shop', {type = name})
        elseif Config.Inventory == 'qb-inventory' or Config.Inventory == 'ps-inventory' or Config.Inventory == 'qs-inventory' then
            TriggerEvent("inventory:server:OpenInventory", "shop", name, items)
        elseif Config.Inventory == 'new-qb-inventory' then
            local playerPed = GetPlayerPed(source)
            local playerCoords = GetEntityCoords(playerPed)
            exports['qb-inventory']:CreateShop({
                name = name,
                label = Lang:t('menu.pol_armory'),
                coords = playerCoords,
                slots = #items,
                items = items
            }) exports['qb-inventory']:OpenShop(source, name)
        end
    end,

    TrunkItems = function(source, plate, items)
        if Config.Inventory == 'ox_inventory' then
            local inventory = exports.ox_inventory:GetInventory(plate)
            if not inventory then
                for _,v in pairs(items) do
                    exports.ox_inventory:AddItem(plate, v.name, v.amount)
                end
            end
        elseif Config.Inventory == 'qb-inventory' or Config.Inventory == 'ps-inventory' then
            TriggerEvent("inventory:server:addTrunkItems", plate, items)
        end
    end,
}