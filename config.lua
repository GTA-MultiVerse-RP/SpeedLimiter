Config = {}
-- Set Config.kmh to false if you want to use mph
Config.kmh = true

-- Set Config.maxSpeed to false if you want to use same speed for all vehicles
-- Set the max speed for all vehicles on Config.maxSpeed
Config.useCategories = true
Config.maxSpeed = 320

Config.Categories = {
   -- COMPACTS
   {category = 0, maxSpeed = 300},
   -- SEDANS
   {category = 1, maxSpeed = 300},
   -- SUV'S
   {category = 2, maxSpeed = 300},
   -- COUPES
   {category = 3, maxSpeed = 300},
   -- MUSCLE
   {category = 4, maxSpeed = 300},
   -- SPORT CLASSIC
   {category = 5, maxSpeed = 300},
   -- SPORT
   {category = 6, maxSpeed = 300},
   -- SUPER
   {category = 7, maxSpeed = 300},
   -- MOTORCYCLES
   {category = 8, maxSpeed = 300},
   -- OFFROAD
   {category = 9, maxSpeed = 300},
   -- INDUSTRIAL
   {category = 10, maxSpeed = 300},
   -- UTILITY
   {category = 11, maxSpeed = 300},
   -- VANS
   {category = 12, maxSpeed = 300},
   -- BICYCLES
   {category = 13, maxSpeed = 300},
   -- BOATS
   {category = 14, maxSpeed = 300},

   --#region PLANES AND HELIS
   -- YOU MUST NOT LOCK THIS ONES OR YOU WON'T BE ABLE TO FLY THEM!!!
   {category = 15, maxSpeed = nil},
   {category = 16, maxSpeed = nil},
   --#endregion

   -- SERVICE
   {category = 17, maxSpeed = 300},
   -- EMERGENCY
   {category = 18, maxSpeed = 320},
   -- MILITARY
   {category = 19, maxSpeed = 300},
   -- Open Wheel
   {category = 22, maxSpeed = 300},
}

-- DO NOT MODIFY
Config.kmhValue = 3.6
Config.mphValue = 2.23694

-- Anti VDM --
Config.antivdm = true -- Makes running people over with your vehicle do 0 damage


-- Disable Vehicle Weapons --
Config.disablevehicleweapons = false -- Disables all vehicle weapons