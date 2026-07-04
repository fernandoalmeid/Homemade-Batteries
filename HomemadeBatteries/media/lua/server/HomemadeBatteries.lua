OnCreate = HomemadeBatteries.OnCraftHomemadeBattery,

function HomemadeBatteries.OnCraftHomemadeBattery(item, result, player)
    local level = player:getPerkLevel(Perks.Electricity)
    if level >=5 and ZombRand(100) < 25 then
        player:getInventory():AddItem("HomemadeBatteries.HomemadeBattery")
    end
end

function HomemadeBatteries.OnCraftImprovedBattery(items, result, player)
    local level = player:getPerkLevel(Perks.Electricity)
    if level >=7 and ZombRand(100) < 15 then
        player:getInventory():AddItem("HomemadeBatteries.ImprovedBattery")
    end
end