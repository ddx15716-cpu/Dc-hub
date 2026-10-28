-- ZYRSMA HUB | CORPS SAINTS
-- Interface de suivi des recherches

local zones = {
    "Swamp",
    "Anthill Island",
    "Red Corner Tower",
    "Pit of Doom",
    "Ridge B. County Mine",
    "Ridge B. County Cave",
    "Plains",
    "Death Valley"
}

local checked = {}

for _, zone in ipairs(zones) do
    checked[zone] = false
end

print("ZYRSMA HUB chargé !")
print("Zones à vérifier :")

for _, zone in ipairs(zones) do
    print("[ ] " .. zone)
end
