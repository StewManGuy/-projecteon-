
Config = {
    Img = "qb-inventory/html/images/", -- Insert your inventory images location
    Price_per_km = {min = 100, max = 300}, -- Minimum and maximum price for delivery
    Experience = {min = 1, max = 3}, -- Minimum and maximum Experience to gain from work done
    PayoutMoneyType = "cash", -- Money type for payout. cash / bank
    MaxContracts = 10, -- Max active contracts for each restaurant
    ContractRefreshTime = 10, -- Add new contracts every chosen minutes
    DailyLimit = {use = true, resethour = 20, resetminute = 00}, -- Do you want to use daily limits for earnings, if enabled set the reset hour and miniute
    Resto = {
        ['pizzathis'] = { -- Job name for the restaurant
            name = "Pizza This", -- name of the restaurant
            image = "https://static.wikia.nocookie.net/gtawiki/images/5/59/PizzaThis.png", -- URL of the restaurant image to show on the UI
            management = "pizzathis", -- Management name to store the money to
            ped = "s_m_m_cntrybar_01", -- Ped model that spawns to get orders from
            pedloc = vector4(536.47, 101.4, 96.54, 174.34), -- Location where the ped spawns
            blip = {sprite = 815, scale = 0.5, color = 31}, -- Set your blip settings for the restaurant
            prop = "prop_pizza_box_02", -- The prop which ped is holding
            dict = "anim@heists@box_carry@", -- Animdict for the ped
            anim = "idle", -- Animation to play
            attach = {bone = 60309, xPos = 0.2, yPos= 0.08, zPos = 0.2, xRot = -45.0, yRot = 290.0, zRot = 0.0}, -- Attach prop to bone
            foods = { -- Available foods for delivery jobs
                { food = "capricciosabox", price = 100}, -- Name of the food and the price which will deposited to management of the restaurant
                { food = "diavolabox", price = 100},
                { food = "marinarabox", price = 100},
                { food = "margheritabox", price = 100},
                { food = "vegetarianabox", price = 100},
                { food = "prosciuttiobox", price = 100}
            },
        },
        ['burgershot'] = { -- Job name for the restaurant
            name = "Burger Shot", -- name of the restaurant
            image = "https://s3.amazonaws.com/gt7sp-prod/decal/80/22/18/4827929244984182280_1.png", -- URL of the restaurant image to show on the UI
            management = "burgershot", -- Management name to store the money to
            ped = "csb_burgerdrug", -- Ped model that spawns to get orders from
            pedloc = vector4(-1177.7, -891.32, 13.78, 304.34), -- Location where the ped spawns
            showblip = true, -- Show or hide the blip for this restaurant
            blip = {sprite = 752, scale = 0.5, color = 31}, -- Set your blip settings for the restaurant
            prop = "prop_food_bs_tray_02", -- The prop which ped is holding
            dict = "anim@heists@box_carry@", -- Animdict for the ped
            anim = "idle", -- Animation to play
            attach = {bone = 60309, xPos = 0.2, yPos= 0.08, zPos = 0.2, xRot = -45.0, yRot = 290.0, zRot = 0.0}, -- Attach prop to bone
            foods = { -- Available foods for delivery jobs
                { food = "heartstopper", price = 100}, -- Name of the food and the price which will deposited to management of the restaurant
                { food = "bleeder", price = 100},
                { food = "torpedo", price = 100},
                { food = "moneyshot", price = 100},
                { food = "shotfries", price = 50},
                { food = "shotnuggets", price = 50}
            },
        },
        ['dunkin'] = { -- Job name for the restaurant
            name = "Dunkin Donut", -- name of the restaurant
            image = "https://i.imgur.com/Ptnw2Sb.png", -- URL of the restaurant image to show on the UI
            management = "dunkin", -- Management name to store the money to
            ped = "s_m_m_cntrybar_01", -- Ped model that spawns to get orders from
            pedloc = vector4(-588.17, -871.78, 25.85, 5.45), -- Location where the ped spawns
            showblip = true, -- Show or hide the blip for this restaurant
            blip = {sprite = 815, scale = 0.5, color = 31}, -- Set your blip settings for the restaurant
            prop = "prop_food_cb_donuts", -- The prop which ped is holding
            dict = "amb@code_human_wander_eating_donut_fat@female@base", -- Animdict for the ped dict = 'amb@code_human_wander_eating_donut_fat@female@base', name = 'static'
            anim = "static", -- Animation to play
            attach = {bone = 28422, xPos = 0.0, yPos= 0.0, zPos = 0.0, xRot = 90.0, yRot = 0.0, zRot = 0.0}, -- Attach prop to bone
            foods = { -- Available foods for delivery jobs
                { food = "sourdough_breakfast_sandwich", price = 200}, -- Name of the food and the price which will deposited to management of the restaurant
                { food = "dunkin_bacon_egg_cheese", price = 200},
                { food = "wake_up_wrap", price = 200},
                { food = "snackin_bacon", price = 175},
                { food = "munchkins_donut_hole", price = 100},
                { food = "dunkin_refresher", price = 200},
                { food = "iced_signaturea_latte", price = 200},
                { food = "dunkin_coffee", price = 150},
                { food = "stuffed_bagel_minis", price = 175}
            },
        },
    },
    ---@@ xp = Experience of the user
    ---@@ paymp = Payment multiplier for each level
    ---@@ maxdist = Maximum distance that a player can take an orders
    ---@@ dailylimit = Daily limit that a user can earn from doing jobs
    levels = {
        [1] = {xp = 0, paymp = 1.0, maxdist = 0.0, dailylimit = 15000},
        [2] = {xp = 100, paymp = 1.1, maxdist = 2.0, dailylimit = 16500},
        [3] = {xp = 200, paymp = 1.2, maxdist = 2.5, dailylimit = 18000},
        [4] = {xp = 300, paymp = 1.3, maxdist = 3.0, dailylimit = 19500},
        [5] = {xp = 400, paymp = 1.4, maxdist = 3.5, dailylimit = 21000},
        [6] = {xp = 500, paymp = 1.5, maxdist = 4.0, dailylimit = 22500},
        [7] = {xp = 600, paymp = 1.6, maxdist = 4.5, dailylimit = 24000},
        [8] = {xp = 700, paymp = 1.7, maxdist = 5.0, dailylimit = 25500},
        [9] = {xp = 800, paymp = 1.8, maxdist = 5.5, dailylimit = 27000},
        [10] = {xp = 900, paymp = 1.9, maxdist = 6.0, dailylimit = 28500},
    },

    locations = {
       [1] = vector4(-1116.19, -1506.56, 4.43, 30.45),
       [2] = vector4(-1108.97, -1527.78, 6.78, 300.06),
       [3] = vector4(-1564.02, -299.68, 48.23, 140.28),
       [4] = vector4(-1581.89, -277.92, 48.28, 109.11),
       [5] = vector4(-1570.58, 23.26, 59.55, 168.80),
       [6] = vector4(-1094.17, 427.28, 75.88, 88.63),
       [7] = vector4(-967.68, 509.85, 81.87, 326.36),
       [8] = vector4(-968.11, 436.64, 80.57, 66.15),
       [9] = vector4(-824.84, 422.47, 92.12, 185.46),
       [10] = vector4(-718.05, 449.12, 106.91, 203.39),
       [11] = vector4(-1291.74, 650.2, 141.5, 22.03),
       [12] = vector4(-1367.22, 610.8, 133.89, 102.54),
       [13] = vector4(-1405.43, 526.85, 123.83, 275.38),
       [14] = vector4(-704.25, 588.6, 142.1, 185.54),
       [15] = vector4(-1995.44, 301.02, 91.96, 16.7),
       [16] = vector4(-2009.15, 367.45, 94.81, 94.6),
       [17] = vector4(-1942.82, 449.61, 102.93, 284.03),
       [18] = vector4(-1896.36, 642.62, 130.21, 319.78),
       [19] = vector4(-1974.68, 631.04, 122.69, 69.27),
       [20] = vector4(-3089.33, 221.21, 14.12, 137.16),
       [21] = vector4(-3093.67, 349.38, 7.54, 80.49),
       [22] = vector4(-3039.4, 492.85, 6.77, 77.17),
       [23] = vector4(-3037.26, 559.14, 7.51, 91.13),
       [24] = vector4(-2977.01, 609.31, 20.25, 286.95),
       [25] = vector4(-2994.45, 682.72, 25.04, 283.32),
       [26] = vector4(-3017.05, 746.68, 27.78, 288.25),
       [27] = vector4(-3200.42, 1165.5, 9.65, 74.65),
       [28] = vector4(-3232.87, 1068.15, 11.03, 78.11),
       [29] = vector4(1241.42, -566.27, 69.66, 135.62),
       [30] = vector4(1207.42, -620.28, 66.44, 270.65),
       [31] = vector4(1265.61, -648.63, 68.12, 213.16),
       [32] = vector4(1341.48, -597.34, 74.7, 54.66),
       [33] = vector4(1389.1, -569.55, 74.5, 294.85),
       [34] = vector4(471.17, 2607.55, 44.48, 189.0),
       [35] = vector4(341.69, 2615.03, 44.67, 208.25),
       [36] = vector4(359.84, 2622.85, 44.67, 209.46),
       [37] = vector4(379.82, 2629.28, 44.67, 205.71),
       [38] = vector4(1843.54, 3777.97, 33.59, 301.32),
       [39] = vector4(1898.92, 3781.79, 32.88, 121.94),
       [40] = vector4(1967.09, 4634.19, 41.1, 219.24),
       [41] = vector4(-347.48, 6225.39, 31.88, 47.92),
       [42] = vector4(-360.17, 6260.54, 31.9, 133.55),
       [43] = vector4(-407.3, 6314.26, 28.94, 35.85),
       [44] = vector4(-229.62, 6445.54, 31.2, 316.99),
       [45] = vector4(-26.54, 6597.2, 31.86, 216.11),
       [46] = vector4(-9.57, 6654.23, 31.7, 31.36),
       [47] = vector4(35.42, 6663.14, 32.19, 339.62),
       [48] = vector4(-15.34, 6557.47, 33.24, 134.52),
       [49] = vector4(-347.61, 6225.27, 31.88, 37.47),
       [50] = vector4(-374.56, 6190.98, 31.73, 42.54)
    },
}
