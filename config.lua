Config = {}

Config.NewCore = false

Config.GaragePed = "s_m_y_xmech_01"

Config.PedLocation = vec4(-597.5389, -1055.6312, 21.3442, 188.6517)

Config.VehicleSpawn = vector4(-596.5880, -1059.0718, 22.1253, 91.0356)

Config.Vehicle = 'nspeedo'

Config.Jobname = 'uwu'

HungerFill = { -- How much they fill your hunger
    ["gingerkitty_cookie"] = math.random(35, 45),
    ["kira_kira_currye"] = math.random(35, 45),
    ["om_nom_omurice"] = math.random(35, 45),
    ["dragos_fire_cupcake"] = math.random(35, 45),
    ["ballbarry_cupcake"] = math.random(35, 45),
    ["purrfect_parfait"] = math.random(35, 45),
    ["oxygen_cake"] = math.random(35, 45),
    ["meowchi_mochi_ice_cream"] = math.random(35, 45),
    ["strawberry_shortcake"] = math.random(35, 45),
    ["awwdorable_valentines_chocolate"] = math.random(35, 45),
    ["warm_chicken_noodle"] = math.random(35, 45),
    ["rice_balls"] = math.random(35, 45),
    ["doki_doki_pancakes"] = math.random(35, 45),
    ["hamburg_stake"] = math.random(35, 45),
    ["sugoi_katsu_sando"] = math.random(35, 45),
    ["cat_macaroon_pink"] = math.random(35, 45),
    ["cat_macaroon_green"] = math.random(35, 45),
    ["cat_macaroon_turquoise"] = math.random(35, 45),
    ["cat_macaroon_brown"] = math.random(35, 45),
}

ThirstFill = { -- How much they fill your thirst.
    ["sweet_herbal_tea"] = math.random(25, 35),
    ["booba_milk_tea_2"] = math.random(25, 35),
    ["lovely_hot_chocolate"] = math.random(25, 35),
    ["hot_chocolate"] = math.random(25, 35),
    ["matcha_coffee"] = math.random(25, 35),
}

Config.coords = {
    tray = {
        coords = vector3(-584.17, -1062.07, 22.4),
        size = vector3(1, 1.05, 0.5),
        rotation = 35,
    },
    hotstorage = {
        coords = vector3(-590.89, -1058.66, 22.62 ),
        size = vector3(1.2, 4.6, 1.8),
        rotation = 35,
    },
    storage = {
        coords = vector3(-598.06, -1068.31, 22.99),
        size = vector3(1, 3, 1.8),
        rotation = 35,
    },
}
Config.Zones = {
    [1] = { coords = vector3(-591.03, -1063.05, 22.36), radius = 0.5, icon = "fa-solid fa-muh-hot", event = "qb-uwucafe:client:makeSides", label = "Sides", job = "uwu" },
    [2] = { coords = vector3(-590.95, -1064.1, 22.49), radius = 0.36, icon = "fa-solid fa-mug-hot", event = "qb-uwucafe:client:makeDeserts", label = "Deserts", job = "uwu" },
    [3] = { coords = vector3(-590.6, -1059.81, 22.65), radius = 0.36, icon = "fa-solid fa-fire-burner", event = "qb-uwucafe:client:useOven", label = "Oven", job = "uwu" },
    [4] = { coords = vector3(-587.96, -1062.59, 22.34), radius = 0.45, icon = "fa-solid fa-sink", event = "qb-uwucafe:client:useSink", label = "Sink", job = "uwu" },
    [5] = { coords = vector3(-591.07, -1056.52, 22.38), radius = 0.44, icon = "fa-solid fa-bowl-food", event = "qb-uwucafe:client:makeFood", label = "Food", job = "uwu" },
    [6] = { coords = vector3(-583.98, -1058.18, 22.74), radius = 0.5, icon = "fa-solid fa-mug-hot", event = "qb-uwucafe:client:makeTea", label = "Tea", job = "uwu" },
    [7] = { coords = vector3(-586.74, -1061.95, 22.64), radius = 0.4, icon = "fa-solid fa-mug-saucer", event = "qb-uwucafe:client:makeCoffee", label = "Coffee Machine", job = "uwu" },
    [8] = { coords = vector3(-589.35, -1068.52, 21.84), radius = 0.7, icon = "fa-solid fa-boxes-stacked", event = "qb-uwucafe:client:grabIce", label = "Ice Machine", job = "uwu" },
    [9] = { coords = vector3(-594.35, -1054.15, 23.04), radius = 0.6, icon = "fa-solid fa-martini-glass-citrus", event = "qb-uwucafe:clientToggleDuty", label = "Toggle Duty", job = "uwu" },
}

Config.Items = {
    { name = 'glass_tall_dirty', amount = 50, price = 1 },
    { name = 'butter', amount = 50, price = 1 },
    { name = 'cup_dirty', amount = 50, price = 1 },
    { name = 'cocoa_powder', amount = 50, price = 1 },
    { name = 'dried_boba_tapioca_pearls', amount = 50, price = 1 },
    { name = 'egg', amount = 50, price = 1 },
    { name = 'flour', amount = 50, price = 1 },
    { name = 'chicken', amount = 50, price = 1 },
    { name = 'chicken_breast', amount = 50, price = 1 },
    { name = 'chicken_thighs', amount = 50, price = 1 },
    { name = 'jelly_beans', amount = 50, price = 1 },
    { name = 'juice', amount = 50, price = 1 },
    { name = 'lemon', amount = 50, price = 1 },
    { name = 'matcha_powder', amount = 50, price = 1 },
    { name = 'milk', amount = 50, price = 1 },
    { name = 'nuts', amount = 50, price = 1 },
    { name = 'onion', amount = 50, price = 1 },
    { name = 'pullman_bread', amount = 50, price = 1 },
    { name = 'rice_flour', amount = 50, price = 1 },
    { name = 'rice', amount = 50, price = 1 },
    { name = 'sea_moss', amount = 50, price = 1 },
    { name = 'soy_sauce', amount = 50, price = 1 },
    { name = 'strawberry', amount = 50, price = 1 },
    { name = 'sugar', amount = 50, price = 1 },
    { name = 'uwu_mysterybox', amount = 50, price = 1 },
    { name = 'baking_powder', amount = 50, price = 1 },
    { name = 'virgin_olive_oil', amount = 50, price = 1 },
    { name = 'noodles', amount = 50, price = 1 },
    { name = 'mint', amount = 50, price = 1 },
    { name = 'brewed_coffee', amount = 50, price = 1 },
    { name = 'steak', amount = 50, price = 1 },
    { name = 'brown_dye', amount = 50, price = 1 },
    { name = 'pink_dye', amount = 50, price = 1 },
    { name = 'green_dye', amount = 50, price = 1 },
    { name = 'turquoise_dye', amount = 50, price = 1 },
    { name = 'plate_dirty', amount = 50, price = 1 },
    { name = 'bar_bowl_dirty', amount = 50, price = 1 },

}
