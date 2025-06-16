Config = {}

Config.BrrNeeds = true -- false if you don't use brr-needs resource

Config.OxNotify = true -- false for chat message

-- ======================================= --
-- ============= ITEM CIBO =============== --
-- ======================================= --


-- === One Hand Eat Animation === --
Config.AnimUnaMano = {
    AnimDict = 'mp_player_inteat@burger',
    AnimClip = 'mp_player_int_eat_burger_fp',
    PropBone = 18905
}


-- === Two Hands Eat Animation === --
Config.AnimDueMani = {
    AnimDict = "anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1",
    AnimClip = "base_idle",
    PropBoneUno = 60309,
    PropBoneDue = 28422
}


-- === Two Hands Eat Animation for chips or canfood === --
--- Download the animation for free here: FRACTAL GAME STUDIO -> https://github.com/FRACTAL-GAME-STUDIOS/fractal_canfood
--- Thanks Fractal! <3
Config.AnimLattine = {
    AnimDict = "fractalcanfood@animation",
    AnimClip = "canfood_clip",
    PropBone = 57005,
}


Config.ItemCibo = {
    --- snack
    ['sandwich'] = {
        ValoreNutrizionale = 500000,  --- esx_status thirst value
        BisogniEssenziali = 10000,  --- brr-needs pipi value
        UnaMano = true,  --- if true -> Config.AnimUnaMano
        DueMani = false, --- if true ->  Config.AnimDueMani
        Lattina = false, --- if true -> Config.AnimLattina
        ModelloPropUno = 'prop_sandwich_01',  --- put here the prop that you want
        PosizionePropUno = vec3(0.13, 0.05, 0.02),  --- position of the prop in the hand
        RotazionePropUno = vec3(-50.0, 16.0, 60.0),  --- rotation of the prop in the hand
        ModelloPropDue = false,  --- put here the prop that you want in the second hand or false to disable
        PosizionePropDue = false,  --- position of the prop in the second hand or false to disable
        RotazionePropDue = false,  --- rotation of the prop in the second hand or false to disable
    },
    ['sandwich_two'] = {
        ValoreNutrizionale = 500000,
        BisogniEssenziali = 10000,
        UnaMano = true,
        DueMani = false,
        Lattina = false,
        ModelloPropUno = 'prop_sandwich_01',
        PosizionePropUno = vec3(0.13, 0.05, 0.02),
        RotazionePropUno = vec3(-50.0, 16.0, 60.0),
        ModelloPropDue = false,
        PosizionePropDue = false,
        RotazionePropDue = false,
    },
    ['donut_chc'] = {
        ValoreNutrizionale = 500000,
        BisogniEssenziali = 10000,
        UnaMano = true,
        DueMani = false,
        Lattina = false,
        ModelloPropUno = 'bzzz_foodpack_donut002',
        PosizionePropUno = vec3(0.13, 0.05, 0.02),
        RotazionePropUno = vec3(-50.0, 16.0, 60.0),
        ModelloPropDue = false,
        PosizionePropDue = false,
        RotazionePropDue = false,
    },
    ['smore'] = {
        ValoreNutrizionale = 500000,
        BisogniEssenziali = 10000,
        UnaMano = true,
        DueMani = false,
        Lattina = false,
        ModelloPropUno = 'bzzz_food_dessert_a',
        PosizionePropUno = vec3(0.13, 0.05, 0.02),
        RotazionePropUno = vec3(-50.0, 16.0, 60.0),
        ModelloPropDue = false,
        PosizionePropDue = false,
        RotazionePropDue = false,
    },
    ['snikkel'] = {
        ValoreNutrizionale = 500000,
        BisogniEssenziali = 10000,
        UnaMano = true,
        DueMani = false,
        Lattina = false,
        ModelloPropUno = 'prop_choc_ego',
        PosizionePropUno = vec3(0.05, -0.02, -0.03),
        RotazionePropUno = vec3(150.0, 340.0, 170.0),
        ModelloPropDue = false,
        PosizionePropDue = false,
        RotazionePropDue = false,
    },
    ['twerks'] = {
        ValoreNutrizionale = 500000,
        BisogniEssenziali = 10000,
        UnaMano = true,
        DueMani = false,
        Lattina = false,
        ModelloPropUno = 'prop_choc_ego',
        PosizionePropUno = vec3(0.05, -0.02, -0.03),
        RotazionePropUno = vec3(150.0, 340.0, 170.0),
        ModelloPropDue = false,
        PosizionePropDue = false,
        RotazionePropDue = false,
    },
    --- chips
    ['phatchips_stickyribs'] = {
        ValoreNutrizionale = 500000,
        BisogniEssenziali = 10000,
        UnaMano = false,
        DueMani = false,
        Lattina = true,
        ModelloPropUno = "v_ret_ml_chips1",
        PosizionePropUno = vec3(0.13, 0.00, -0.02),
        RotazionePropUno = vec3(-90.0, 0.0, -23.0),
        ModelloPropDue = false,
        PosizionePropDue = false,
        RotazionePropDue = false,
    },
    ['phatchips_bigcheese'] = {
        ValoreNutrizionale = 500000,
        BisogniEssenziali = 10000,
        UnaMano = false,
        DueMani = false,
        Lattina = true,
        ModelloPropUno = "v_ret_ml_chips4",
        PosizionePropUno = vec3(0.13, 0.00, -0.02),
        RotazionePropUno = vec3(-90.0, 0.0, -23.0),
        ModelloPropDue = false,
        PosizionePropDue = false,
        RotazionePropDue = false,
    },
    ['phatchips_habanero'] = {
        ValoreNutrizionale = 500000,
        BisogniEssenziali = 10000,
        UnaMano = false,
        DueMani = false,
        Lattina = true,
        ModelloPropUno = "v_ret_ml_chips2",
        PosizionePropUno = vec3(0.13, 0.00, -0.02),
        RotazionePropUno = vec3(-90.0, 0.0, -23.0),
        ModelloPropDue = false,
        PosizionePropDue = false,
        RotazionePropDue = false,
    },
    --- food with plate
    ['chickensalad'] = {
        ValoreNutrizionale = 500000,
        BisogniEssenziali = 10000,
        UnaMano = false,
        DueMani = true,
        Lattina = false, 
        ModelloPropUno = "prop_cs_plate_01",
        PosizionePropUno = vec3(0.0, 0.0, 0.0),
        RotazionePropUno = vec3(0.0, 0.0, 0.0),
        ModelloPropDue = 'h4_prop_h4_caviar_spoon_01a',
        PosizionePropDue = vec3(0.0, 0.0, 0.0),
        RotazionePropDue = vec3(0.0, 0.0, 0.0),
    },
    --- burgershot items
    ['burger-bleeder'] = {
        ValoreNutrizionale = 500000,
        BisogniEssenziali = 10000,
        UnaMano = true,
        DueMani = false,
        Lattina = false,
        ModelloPropUno = 'prop_cs_burger_01',
        PosizionePropUno = vec3(0.13, 0.05, 0.02),
        RotazionePropUno = vec3(-50.0, 16.0, 60.0),
        ModelloPropDue = false,
        PosizionePropDue = false,
        RotazionePropDue = false,
    },
    ['burger-moneyshot'] = {
        ValoreNutrizionale = 500000,
        BisogniEssenziali = 10000,
        UnaMano = true,
        DueMani = false,
        Lattina = false,
        ModelloPropUno = 'prop_cs_burger_01',
        PosizionePropUno = vec3(0.13, 0.05, 0.02),
        RotazionePropUno = vec3(-50.0, 16.0, 60.0),
        ModelloPropDue = false,
        PosizionePropDue = false,
        RotazionePropDue = false,
    },
    ['burger-torpedo'] = {
        ValoreNutrizionale = 500000,
        BisogniEssenziali = 10000,
        UnaMano = true,
        DueMani = false,
        Lattina = false,
        ModelloPropUno = 'prop_cs_burger_01',
        PosizionePropUno = vec3(0.13, 0.05, 0.02),
        RotazionePropUno = vec3(-50.0, 16.0, 60.0),
        ModelloPropDue = false,
        PosizionePropDue = false,
        RotazionePropDue = false,
    },
    ['burger-heartstopper'] = {
        ValoreNutrizionale = 500000,
        BisogniEssenziali = 10000,
        UnaMano = true,
        DueMani = false,
        Lattina = false,
        ModelloPropUno = 'prop_cs_burger_01',
        PosizionePropUno = vec3(0.13, 0.05, 0.02),
        RotazionePropUno = vec3(-50.0, 16.0, 60.0),
        ModelloPropDue = false,
        PosizionePropDue = false,
        RotazionePropDue = false,
    },
    ['burger-chickenwrap'] = {
        ValoreNutrizionale = 500000,
        BisogniEssenziali = 10000,
        UnaMano = true,
        DueMani = false,
        Lattina = false,
        ModelloPropUno = 'prop_cs_burger_01',
        PosizionePropUno = vec3(0.13, 0.05, 0.02),
        RotazionePropUno = vec3(-50.0, 16.0, 60.0),
        ModelloPropDue = false,
        PosizionePropDue = false,
        RotazionePropDue = false,
    },
    ['burger-goatwrap'] = {
        ValoreNutrizionale = 500000,
        BisogniEssenziali = 10000,
        UnaMano = true,
        DueMani = false,
        Lattina = false,
        ModelloPropUno = 'prop_cs_burger_01',
        PosizionePropUno = vec3(0.13, 0.05, 0.02),
        RotazionePropUno = vec3(-50.0, 16.0, 60.0),
        ModelloPropDue = false,
        PosizionePropDue = false,
        RotazionePropDue = false,
    },
    ['burger-meatfree'] = {
        ValoreNutrizionale = 500000,
        BisogniEssenziali = 10000,
        UnaMano = true,
        DueMani = false,
        Lattina = false,
        ModelloPropUno = 'prop_cs_burger_01',
        PosizionePropUno = vec3(0.13, 0.05, 0.02),
        RotazionePropUno = vec3(-50.0, 16.0, 60.0),
        ModelloPropDue = false,
        PosizionePropDue = false,
        RotazionePropDue = false,
    },
    ['burger-fries'] = {
        ValoreNutrizionale = 500000,
        BisogniEssenziali = 10000,
        UnaMano = false,
        DueMani = false,
        Lattina = true,
        ModelloPropUno = 'prop_food_bs_chips',
        PosizionePropUno = vec3(0.14, -0.08, -0.02),
        RotazionePropUno = vec3(-90.0, 0.0, 0.0),
        ModelloPropDue = false,
        PosizionePropDue = false,
        RotazionePropDue = false,
    },
    ['burger-shotnuggets'] = {
        ValoreNutrizionale = 500000,
        BisogniEssenziali = 10000,
        UnaMano = false,
        DueMani = false,
        Lattina = true,
        ModelloPropUno = 'prop_food_bs_chips',
        PosizionePropUno = vec3(0.14, -0.08, -0.02),
        RotazionePropUno = vec3(-90.0, 0.0, 0.0),
        ModelloPropDue = false,
        PosizionePropDue = false,
        RotazionePropDue = false,
    },
    ['burger-shotrings'] = {
        ValoreNutrizionale = 500000,
        BisogniEssenziali = 10000,
        UnaMano = false,
        DueMani = false,
        Lattina = true,
        ModelloPropUno = 'prop_food_bs_chips',
        PosizionePropUno = vec3(0.14, -0.08, -0.02),
        RotazionePropUno = vec3(-90.0, 0.0, 0.0),
        ModelloPropDue = false,
        PosizionePropDue = false,
        RotazionePropDue = false,
    },
    ---- add more items here...
}


-- ======================================= --
-- ============= ITEM BERE =============== --
-- ======================================= --

-- === Animation Left hand === --
Config.AnimBevande = {
    AnimDict = 'mp_player_intdrink',
    AnimClip = 'loop_bottle',
    PropBone = 60309,
}

-- === Animation Right Hand === --
Config.AnimCaffe = {
    AnimDict = 'amb@world_human_drinking@beer@male@idle_a',
    AnimClip = 'idle_a',
    PropBone = 28422,
}

-- === Animation Two Hands === --
Config.AnimDueMani = {
    AnimDict = 'smo@milkshake_idle',
    AnimClip = 'milkshake_idle_clip',
    PropBone = 28422,
}


Config.ItemBevande = {
    --- drink
    ['water'] = {
        ValoreNutrizionale = 500000,  --- esx_status thirst value
        BisogniEssenziali = 10000,  --- brr-needs pipi value
        Bevanda = true, --- if true -> Config.AnimBevande  
        Caffe = false,  --- if true -> Config.AnimCaffe 
        DueMani = false, --- if true -> Config.AnimDueMani
        ModelloProp = 'prop_ld_flow_bottle',  --- put here the prop that you want
        PosizioneProp = vec3(0.0080, 0.0, -0.05),  --- position of the prop in the hand
        RotazioneProp = vec3(0.0, 0.0, -40.0)  --- rotation of the prop in the hand
    },
    ['ecola'] = {
        ValoreNutrizionale = 150000,
        BisogniEssenziali = 10000,
        Bevanda = true,
        Caffe = false,
        DueMani = false,
        ModelloProp = 'prop_ecola_can',
        PosizioneProp = vec3(0.01, 0.01, 0.06),
        RotazioneProp = vec3(5.0, 5.0, 0.5),
    },
    ['ecoladiet'] = {
        ValoreNutrizionale = 150000,
        BisogniEssenziali = 10000,
        Bevanda = true,
        Caffe = false,
        DueMani = false,
        ModelloProp = 'prop_ecola_can',
        PosizioneProp = vec3(0.01, 0.01, 0.06),
        RotazioneProp = vec3(5.0, 5.0, 0.5),
    },
    ['sprunk'] = {
        ValoreNutrizionale = 150000,
        BisogniEssenziali = 10000,
        Bevanda = true,
        Caffe = false,
        DueMani = false,
        ModelloProp = 'prop_ld_can_01',
        PosizioneProp = vec3(0.01, 0.01, 0.06),
        RotazioneProp = vec3(5.0, 5.0, 0.5),
    },
    ['sprunklight'] = {
        ValoreNutrizionale = 150000,
        BisogniEssenziali = 10000,
        Bevanda = true,
        ModelloProp = 'prop_ld_can_01',
        PosizioneProp = vec3(0.01, 0.01, 0.06),
        RotazioneProp = vec3(5.0, 5.0, 0.5),
    },
    ['orangotang'] = {
        ValoreNutrizionale = 150000,
        BisogniEssenziali = 10000,
        Bevanda = true,
        Caffe = false,
        DueMani = false,
        ModelloProp = 'prop_orang_can_01',
        PosizioneProp = vec3(0.01, 0.01, 0.06),
        RotazioneProp = vec3(5.0, 5.0, 0.5),
    },
    ['bicchiereacqua'] = {
        ValoreNutrizionale = 150000,
        BisogniEssenziali = 10000,
        Bevanda = true,
        Caffe = false,
        ModelloProp = 'prop_plastic_cup_02',
        PosizioneProp = vec3(0.01, 0.01, 0.06),
        RotazioneProp = vec3(5.0, 5.0, 40.5),
    },
    --- beer
    ['rancho_beer'] = {
        ValoreNutrizionale = 150000,
        BisogniEssenziali = 10000,
        Bevanda = true,
        Caffe = false,
        DueMani = false,
        ModelloProp = 'prop_beer_bottle',
        PosizioneProp = vec3(0.02, -0.01, -0.14),
        RotazioneProp = vec3(1.0, 5.0, -182.5),
    },
    ['dusche_beer'] = {
        ValoreNutrizionale = 150000,
        BisogniEssenziali = 10000,
        Bevanda = true,
        Caffe = false,
        DueMani = false,
        ModelloProp = 'prop_beerdusche',
        PosizioneProp = vec3(0.02, -0.01, -0.14),
        RotazioneProp = vec3(1.0, 5.0, -182.5),
    },
    ['stronzo_beer'] = {
        ValoreNutrizionale = 150000,
        BisogniEssenziali = 10000,
        Bevanda = true,
        Caffe = false,
        ModelloProp = 'prop_beer_stz',
        PosizioneProp = vec3(0.02, -0.01, -0.14),
        RotazioneProp = vec3(1.0, 5.0, -182.5),
    },
    ['patriot_beer'] = {
        ValoreNutrizionale = 150000,
        BisogniEssenziali = 10000,
        Bevanda = true,
        Caffe = false,
        DueMani = false,
        ModelloProp = 'prop_beer_patriot',
        PosizioneProp = vec3(0.02, -0.01, -0.14),
        RotazioneProp = vec3(1.0, 5.0, -182.5),
    },
    --- coffee
    ['caffeconsambuca'] = {
        ValoreNutrizionale = 150000,
        BisogniEssenziali = 10000,
        Bevanda = false,
        Caffe = true,
        DueMani = false,
        ModelloProp = 'p_ing_coffeecup_01',
        PosizioneProp = vec3(0.0, 0.0, 0.0),
        RotazioneProp = vec3(0.0, 0.0, 0.0),
    },
    ['cappuccino'] = {
        ValoreNutrizionale = 150000,
        BisogniEssenziali = 10000,
        Bevanda = false,
        Caffe = true,
        DueMani = false,
        ModelloProp = 'p_ing_coffeecup_01',
        PosizioneProp = vec3(0.0, 0.0, 0.0),
        RotazioneProp = vec3(0.0, 0.0, 0.0),
    },
    ['caffeespresso'] = {
        ValoreNutrizionale = 150000,
        BisogniEssenziali = 10000,
        Bevanda = false,
        Caffe = true,
        DueMani = false,
        ModelloProp = 'p_ing_coffeecup_01',
        PosizioneProp = vec3(0.0, 0.0, 0.0),
        RotazioneProp = vec3(0.0, 0.0, 0.0),
    },
    ['caffelungo'] = {
        ValoreNutrizionale = 150000,
        BisogniEssenziali = 10000,
        Bevanda = false,
        Caffe = true,
        DueMani = false,
        ModelloProp = 'p_ing_coffeecup_01',
        PosizioneProp = vec3(0.0, 0.0, 0.0),
        RotazioneProp = vec3(0.0, 0.0, 0.0),
    },
    ['caffemacchiato'] = {
        ValoreNutrizionale = 150000,
        BisogniEssenziali = 10000,
        Bevanda = false,
        Caffe = true,
        DueMani = false,
        ModelloProp = 'p_ing_coffeecup_01',
        PosizioneProp = vec3(0.0, 0.0, 0.0),
        RotazioneProp = vec3(0.0, 0.0, 0.0),
    },
    ['caffecorto'] = {
        ValoreNutrizionale = 150000,
        BisogniEssenziali = 10000,
        Bevanda = false,
        Caffe = true,
        DueMani = false,
        ModelloProp = 'p_ing_coffeecup_01',
        PosizioneProp = vec3(0.0, 0.0, 0.0),
        RotazioneProp = vec3(0.0, 0.0, 0.0),
    },
    --- burgershot item
    ['burger-softdrink'] = {
        ValoreNutrizionale = 150000,
        BisogniEssenziali = 10000,
        Bevanda = false,
        Caffe = false,
        DueMani = true,
        ModelloProp = 'prop_rpemotes_soda04',
        PosizioneProp = vec3(0.0470, 0.0040, -0.0600),
        RotazioneProp = vec3(-88.0263, -25.0367, -27.3898),
    },
    ---- add more items here...
}


-- ======================================= --
-- ============== STRINGS ================ --
-- ======================================= --

Config.Lang = {
    NotificationTitle = "BRR-CONSUMABLE",
    NotificationEat = "You ate: 1x ",
    NotificationDrink = "You drank: 1x " 
}