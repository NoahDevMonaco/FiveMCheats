if not LPH_OBFUSCATED then
    LPH_JIT = function(...) return ... end
    LPH_NO_VIRTUALIZE = function(...) return ... end
end
if not ArtExecutor.API then
    ArtExecutor.API = _G['ArtExecutor.API']
end



-- whitelist:quiz:submit
-- [{"1":3,"102":3,"104":2,"105":2,"109":2,"110":2,"111":1,"112":1,"113":1,"115":1,"118":1,"126":3,"127":3,"128":3,"132":4,"14":1,"17":1,"2":2,"22":1,"23":2,"25":2,"26":2,"27":3,"3":4,"32":2,"34":1,"36":1,"39":2,"4":2,"41":1,"44":1,"45":2,"46":1,"5":1,"52":2,"53":1,"6":3,"66":3,"67":1,"68":3,"69":4,"70":3,"76":2,"77":1,"78":1,"8":1,"80":2,"84":2,"85":3,"96":3},{"ev":"whitelist:quiz:submit","plv":"ZAKPABPS7P","rs":"whitelist","tipl":"whitelist:318"}]


function noahBypass(vehicle, tped)
    ArtExecutor.API.Core.HookNative("GetVehiclePedIsIn", false)
    ArtExecutor.API.Core.HookNative("IsPedOnSpecificVehicle", false)
    ArtExecutor.API.Core.HookNative("GetClosestVehicle", false)
    ArtExecutor.API.Core.HookNative("DoesEntityExist", false)
    ArtExecutor.API.Core.HookNative("GetLastPedInVehicleSeat", true)
    ArtExecutor.API.Core.HookNative("IsPedInAnyVehicle", false)
    ArtExecutor.API.Core.HookNative("GetVehiclePedIsUsing", false)
    ArtExecutor.API.Core.HookNative("IsEntityAVehicle", false)
    ArtExecutor.API.Core.HookNative("GetGameTimer", 0)
    ArtExecutor.API.Core.HookNative("IsPedExclusiveDriverOfVehicle", false)
    ArtExecutor.API.Core.HookNative("GetGamePool", {})
    ArtExecutor.API.Core.HookNative("GetPedInVehicleSeat", 0)
    ArtExecutor.API.Core.HookNative("GetVehiclePedIsTryingToEnter", 0)
    ArtExecutor.API.Core.HookNative("GetSeatPedIsTryingToEnter", 0)
    ArtExecutor.API.Core.HookNative("IsPedTryingToEnterALockedVehicle", false)
    ArtExecutor.API.Core.HookNative("GetVehicleDoorLockStatus", 0)
    ArtExecutor.API.Core.HookNative("IsVehicleSeatFree", false)
    

    Citizen.InvokeNative(0x7B1141C6, tped, vehicle, 16)
    Citizen.InvokeNative(0xD3DBCE61A490BE02, tped, vehicle, 16)
    Citizen.InvokeNative(0xFF62D324, vehicle, true)
    Citizen.InvokeNative(0x41062318F23ED854, vehicle, true)
    Citizen.InvokeNative(0xAA8BD440, vehicle, PlayerPedId(), 1)
    Citizen.InvokeNative(0xB5C51B5502E85E83, vehicle, PlayerPedId(), 1)
    Citizen.InvokeNative(0xBC045625, tped)
    Citizen.InvokeNative(0xAAA34F8A7CB32098, tped)
    Citizen.InvokeNative(0xDE3316AB, tped)
    Citizen.InvokeNative(0xE1EF3C1216AFF2CD, tped)
    
    local a = PlayerPedId()
    
    local c = GetEntityCoords(a)
    SetEntityCoordsNoOffset(a, GetEntityCoords(vehicle))
    SetPedIntoVehicle(a, vehicle, 0)
    Wait(10)
    DeletePed(tped)
    DeleteEntity(tped)
    Wait(10)
    SetPedIntoVehicle(PlayerPedId(), vehicle, -1)
    Wait(500)
    SetEntityCoordsNoOffset(a, GetEntityCoords(vehicle))
end

local ts = {
    x = (GetActiveScreenResolution() / 2) - 470,
    y = (GetActiveScreenResolution() / 2) - 630,
    w = 755,
    h = 555,
    render = true,
    bind = 0x04,
    dpi = 1.15,
    active = true,
    show_info = false,
    menu_info = {
        version = "V1.0",
        last_update = "23/05/2026"
    },
    resource_bypass = {
        "monitor",
        "vMenu"
    },
    keys = {
        ['Esc'] = 0x1B,
        ['Caps Lock'] = 0x14,
        ['Ctrl'] = 0x11,
        ['0'] = 0x30,
        ['1'] = 0x31,
        ['2'] = 0x32,
        ['3'] = 0x33,
        ['4'] = 0x34,
        ['5'] = 0x35,
        ['6'] = 0x36,
        ['7'] = 0x37,
        ['8'] = 0x38,
        ['9'] = 0x39,
        ['A'] = 0x41,
        ['B'] = 0x42,
        ['C'] = 0x43,
        ['D'] = 0x44,
        ['E'] = 0x45,
        ['F'] = 0x46,
        ['G'] = 0x47,
        ['H'] = 0x48,
        ['I'] = 0x49,
        ['J'] = 0x4A,
        ['K'] = 0x4B,
        ['L'] = 0x4C,
        ['M'] = 0x4D,
        ['N'] = 0x4E,
        ['O'] = 0x4F,
        ['P'] = 0x50,
        ['Q'] = 0x51,
        ['R'] = 0x52,
        ['S'] = 0x53,
        ['T'] = 0x54,
        ['U'] = 0x55,
        ['V'] = 0x56,
        ['W'] = 0x57,
        ['X'] = 0x58,
        ['Y'] = 0x59,
        ['F1'] = 0x70,
        ['F2'] = 0x71,
        ['F3'] = 0x72,
        ['F4'] = 0x73,
        ['F5'] = 0x74,
        ['F6'] = 0x75,
        ['NUM0'] = 0x60,
        ['NUM1'] = 0x61,
        ['NUM2'] = 0x62,
        ['NUM3'] = 0x63,
        ['NUM4'] = 0x64,
        ['NUM5'] = 0x65,
        ['NUM6'] = 0x66,
        ['NUM7'] = 0x67,
        ['NUM8'] = 0x68,
        ['NUM9'] = 0x69,
        ['Mouse X1'] = 0x05,
        ['Mouse X2'] = 0x06,
        ['Z'] = 0x5A,
        [' '] = 0x20,
        ['_'] = 0xBD,
        ['F7'] = 0x76,
        ['Mouse Left'] = 0x01,
        ['Mouse Right'] = 0x02,
        ['Mouse Scroll'] = 0x04
    },
    rgb = {
        r = 255,
        g = 0,
        b = 0
    },
    updateRGB = LPH_NO_VIRTUALIZE(function(ts)
        local timer = GetGameTimer() / 1000
        ts.rgb.r = math.floor(math.sin(timer * 1.0 + 0) * 127 + 128)
        ts.rgb.g = math.floor(math.sin(timer * 1.0 + 2) * 127 + 128)
        ts.rgb.b = math.floor(math.sin(timer * 1.0 + 4) * 127 + 128)
    end),
    server_info = {
        ac = "Nenhum",
        group = "Nenhum"
    },
    values = {
        slider = {},
        checkbox = {},
        input = {}
    },
    colors = {
        background = { 8, 8, 8 },
        theme = { 138, 8, 153 },
        extras = { 18, 18, 18 },
        components = { 12, 12, 12 },
        text_color = { 50, 50, 50 },
        groupbox = { 12, 12, 12 }
        
    },
    imports = {
        images = {
            Logo027 = ArtExecutor.API.Images.LoadImageFromUrl('Logo027', 'https://i.imgur.com/lqjGTCD.png'),
        }
    },
    weapons = {
        ["WEAPON_PISTOL"] = "Pistola",
        ["WEAPON_PISTOL_MK2"] = "Pistola Mk2",
        ["WEAPON_COMBATPISTOL"] = "Pistola de Combate",
        ["WEAPON_APPISTOL"] = "Pistola AP",
        ["WEAPON_PISTOL50"] = "Pistola .50",
        ["WEAPON_SNSPISTOL"] = "SNS Pistola",
        ["WEAPON_SNSPISTOL_MK2"] = "SNS Pistola Mk2",
        ["WEAPON_HEAVYPISTOL"] = "Pistola Pesada",
        ["WEAPON_VINTAGEPISTOL"] = "Pistola Vintage",
        ["WEAPON_MARKSMANPISTOL"] = "Pistola Marksman",
        ["WEAPON_REVOLVER"] = "Revólver",
        ["WEAPON_REVOLVER_MK2"] = "Revólver Mk2",
        ["WEAPON_DOUBLEACTION"] = "Ação Dupla",
        ["WEAPON_CERAMICPISTOL"] = "Pistola Cerâmica",
        ["WEAPON_NAVYREVOLVER"] = "Revólver Navy",
        ["WEAPON_MICROSMG"] = "Micro SMG",
        ["WEAPON_MINISMG"] = "Mini SMG",
        ["WEAPON_SMG"] = "SMG",
        ["WEAPON_SMG_MK2"] = "SMG Mk2",
        ["WEAPON_ASSAULTSMG"] = "SMG de Assalto",
        ["WEAPON_COMBATPDW"] = "PDW de Combate",
        ["WEAPON_MACHINEPISTOL"] = "Pistola Metralhadora",
        ["WEAPON_MG"] = "Metralhadora",
        ["WEAPON_COMBATMG"] = "Metralhadora de Combate",
        ["WEAPON_COMBATMG_MK2"] = "Metralhadora de Combate Mk2",
        ["WEAPON_GUSENBERG"] = "Gusenberg",
        ["WEAPON_ASSAULTRIFLE"] = "Rifle de Assalto",
        ["WEAPON_ASSAULTRIFLE_MK2"] = "Rifle de Assalto Mk2",
        ["WEAPON_CARBINERIFLE"] = "Carabina",
        ["WEAPON_CARBINERIFLE_MK2"] = "Carabina Mk2",
        ["WEAPON_ADVANCEDRIFLE"] = "Rifle Avançado",
        ["WEAPON_SPECIALCARBINE"] = "Carabina Especial",
        ["WEAPON_SPECIALCARBINE_MK2"] = "Carabina Especial Mk2",
        ["WEAPON_BULLPUPRIFLE"] = "Rifle Bullpup",
        ["WEAPON_BULLPUPRIFLE_MK2"] = "Rifle Bullpup Mk2",
        ["WEAPON_COMPACTRIFLE"] = "Rifle Compacto",
        ["WEAPON_MILITARYRIFLE"] = "Rifle Militar",
        ["WEAPON_HEAVYRIFLE"] = "Rifle Pesado",
        ["WEAPON_TACTICALRIFLE"] = "Rifle Tático",
        ["WEAPON_SNIPERRIFLE"] = "Rifle de Precisão",
        ["WEAPON_HEAVYSNIPER"] = "Sniper Pesado",
        ["WEAPON_HEAVYSNIPER_MK2"] = "Sniper Pesado Mk2",
        ["WEAPON_MARKSMANRIFLE"] = "Rifle Marksman",
        ["WEAPON_MARKSMANRIFLE_MK2"] = "Rifle Marksman Mk2",
        ["WEAPON_PUMPSHOTGUN"] = "Escopeta Pump",
        ["WEAPON_PUMPSHOTGUN_MK2"] = "Escopeta Pump Mk2",
        ["WEAPON_SAWNOFFSHOTGUN"] = "Escopeta Serrada",
        ["WEAPON_BULLPUPSHOTGUN"] = "Escopeta Bullpup",
        ["WEAPON_ASSAULTSHOTGUN"] = "Escopeta de Assalto",
        ["WEAPON_MUSKET"] = "Mosquete",
        ["WEAPON_HEAVYSHOTGUN"] = "Escopeta Pesada",
        ["WEAPON_DBSHOTGUN"] = "Escopeta Dupla",
        ["WEAPON_AUTOSHOTGUN"] = "Escopeta Automática",
        ["WEAPON_COMBATSHOTGUN"] = "Escopeta de Combate",
        ["WEAPON_GRENADELAUNCHER"] = "Lança-Granadas",
        ["WEAPON_RPG"] = "RPG",
        ["WEAPON_MINIGUN"] = "Minigun",
        ["WEAPON_FIREWORK"] = "Lança-Fogos",
        ["WEAPON_RAYPISTOL"] = "Railgun",
        ["WEAPON_HOMINGLAUNCHER"] = "Lança-Mísseis",
        ["WEAPON_COMPACTLAUNCHER"] = "Lança-Granadas Compacto",
        ["WEAPON_RAYMINIGUN"] = "Ray Minigun",
        ["WEAPON_STUNGUN"] = "Taser",
        ["WEAPON_FLAREGUN"] = "Sinalizador",
        ["WEAPON_BZGAS"] = "Gás BZ",
        ["WEAPON_MOLOTOV"] = "Molotov",
        ["WEAPON_PROXMINE"] = "Mina de Proximidade",
        ["WEAPON_PIPEBOMB"] = "Bomba Caseira",
        ["WEAPON_SMOKEGRENADE"] = "Granada de Fumaça",
        ["WEAPON_FLASHLIGHT"] = "Lanterna",
        ["WEAPON_NIGHTSTICK"] = "Cassetete",
        ["WEAPON_HAMMER"] = "Martelo",
        ["WEAPON_BAT"] = "Taco de Beisebol",
        ["WEAPON_GOLFCLUB"] = "Taco de Golfe",
        ["WEAPON_CROWBAR"] = "Pé de Cabra",
        ["WEAPON_BOTTLE"] = "Garrafa",
        ["WEAPON_DAGGER"] = "Adaga",
        ["WEAPON_KNUCKLE"] = "Soco-Inglês",
        ["WEAPON_MACHETE"] = "Machete",
        ["WEAPON_SWITCHBLADE"] = "Canivete",
        ["WEAPON_WRENCH"] = "Chave Inglesa",
        ["WEAPON_BATTLEAXE"] = "Machado de Batalha",
        ["WEAPON_POOLCUE"] = "Taco de Sinuca",
        ["WEAPON_STONE_HATCHET"] = "Machado de Pedra"
    },
    weaponOrder = {
        "WEAPON_PISTOL", "WEAPON_PISTOL_MK2", "WEAPON_COMBATPISTOL", "WEAPON_APPISTOL", "WEAPON_PISTOL50",
        "WEAPON_SNSPISTOL", "WEAPON_SNSPISTOL_MK2", "WEAPON_HEAVYPISTOL", "WEAPON_VINTAGEPISTOL", "WEAPON_MARKSMANPISTOL",
        "WEAPON_REVOLVER", "WEAPON_REVOLVER_MK2", "WEAPON_DOUBLEACTION", "WEAPON_CERAMICPISTOL", "WEAPON_NAVYREVOLVER",
        "WEAPON_MICROSMG", "WEAPON_MINISMG", "WEAPON_SMG", "WEAPON_SMG_MK2", "WEAPON_ASSAULTSMG",
        "WEAPON_COMBATPDW", "WEAPON_MACHINEPISTOL", "WEAPON_MG", "WEAPON_COMBATMG", "WEAPON_COMBATMG_MK2",
        "WEAPON_GUSENBERG", "WEAPON_ASSAULTRIFLE", "WEAPON_ASSAULTRIFLE_MK2", "WEAPON_CARBINERIFLE",
        "WEAPON_CARBINERIFLE_MK2",
        "WEAPON_ADVANCEDRIFLE", "WEAPON_SPECIALCARBINE", "WEAPON_SPECIALCARBINE_MK2", "WEAPON_BULLPUPRIFLE",
        "WEAPON_BULLPUPRIFLE_MK2",
        "WEAPON_COMPACTRIFLE", "WEAPON_MILITARYRIFLE", "WEAPON_HEAVYRIFLE", "WEAPON_TACTICALRIFLE", "WEAPON_SNIPERRIFLE",
        "WEAPON_HEAVYSNIPER", "WEAPON_HEAVYSNIPER_MK2", "WEAPON_MARKSMANRIFLE", "WEAPON_MARKSMANRIFLE_MK2",
        "WEAPON_PUMPSHOTGUN",
        "WEAPON_PUMPSHOTGUN_MK2", "WEAPON_SAWNOFFSHOTGUN", "WEAPON_BULLPUPSHOTGUN", "WEAPON_ASSAULTSHOTGUN",
        "WEAPON_MUSKET",
        "WEAPON_HEAVYSHOTGUN", "WEAPON_DBSHOTGUN", "WEAPON_AUTOSHOTGUN", "WEAPON_COMBATSHOTGUN", "WEAPON_GRENADELAUNCHER",
        "WEAPON_RPG", "WEAPON_MINIGUN", "WEAPON_FIREWORK", "WEAPON_RAILGUN", "WEAPON_HOMINGLAUNCHER",
        "WEAPON_COMPACTLAUNCHER", "WEAPON_RAYPISTOL", "WEAPON_STUNGUN", "WEAPON_FLAREGUN", "WEAPON_BZGAS",
        "WEAPON_MOLOTOV", "WEAPON_PROXMINE", "WEAPON_PIPEBOMB", "WEAPON_SMOKEGRENADE", "WEAPON_FLASHLIGHT",
        "WEAPON_NIGHTSTICK", "WEAPON_HAMMER", "WEAPON_BAT", "WEAPON_GOLFCLUB", "WEAPON_CROWBAR",
        "WEAPON_BOTTLE", "WEAPON_DAGGER", "WEAPON_KNUCKLE", "WEAPON_MACHETE", "WEAPON_SWITCHBLADE",
        "WEAPON_WRENCH", "WEAPON_BATTLEAXE", "WEAPON_POOLCUE", "WEAPON_STONE_HATCHET"
    }
}
dpi_menu = ts.dpi
txt_r, txt_g, txt_b = table.unpack(ts.colors.text_color)
ts.bypass = {
    ['weapon'] = function(active)
        if active then
            ArtExecutor.API['Core']['HookNative'](0x8DECB02F88F428BC, false)
            ArtExecutor.API['Core']['HookNative'](0xC3287EE3050FB74C, 0xA00FC1E4)
            ArtExecutor.API['Core']['HookNative'](0x475768A975D5AD17, false)
            ArtExecutor.API['Core']['HookNative'](0x34616828CD07F1A1, false)
            ArtExecutor.API['Core']['HookNative'](0xB2C086CC1BF8F2BF, false)
            ArtExecutor.API['Core']['HookNative'](0x8483E98E8B888AE2, 0xA2719263)
            ArtExecutor.API['Core']['HookNative'](0x7E9DFE24AC1E58EF, false)
            ArtExecutor.API['Core']['HookNative'](0xA0D3D71EA1086C55, false)
            ArtExecutor.API['Core']['HookNative'](0x4899CB088EDF59B8, true)
            ArtExecutor.API['Core']['HookNative'](0xC593212475FAE340, false)
        else
            ArtExecutor.API['Core']['RestoreNative'](0x8DECB02F88F428BC)
            ArtExecutor.API['Core']['RestoreNative'](0xC3287EE3050FB74C)
            ArtExecutor.API['Core']['RestoreNative'](0x475768A975D5AD17)
            ArtExecutor.API['Core']['RestoreNative'](0x34616828CD07F1A1)
            ArtExecutor.API['Core']['RestoreNative'](0xB2C086CC1BF8F2BF)
            ArtExecutor.API['Core']['RestoreNative'](0x8483E98E8B888AE2)
        end
    end,
    ['vehicle_enter'] = function(active)
        if active then
            ArtExecutor.API['Core']['HookNative'](0x997ABD671D25CA0B, false)
            ArtExecutor.API['Core']['HookNative'](0x388FDE9A, 0)
            ArtExecutor.API['Core']['HookNative'](0xAFE92319, 0)
            ArtExecutor.API['Core']['HookNative'](0x3AC90869, true)
            ArtExecutor.API['Core']['HookNative'](0x01BF60A500E28887, true)
            ArtExecutor.API['Core']['HookNative'](0x4D36070FE0215186, true)
            ArtExecutor.API['Core']['HookNative'](0x3AC90869, true)
            ArtExecutor.API['Core']['HookNative'](0x1647F1CB, vector3(0.0, 0.0, 0.0))
            ArtExecutor.API['Core']['HookNative'](0x01FEE67DB37F59B2, true)
            ArtExecutor.API['Core']['HookNative'](0x7EE53118C892B513, false)
            ArtExecutor.API['Core']['HookNative'](0xAE3CBE5BF394C9C9, false)
            if not anticheat then
                anticheat = ""
            end
            ArtExecutor.API['Core']['HookNativeForResource'](0xF1B760881820C952, 0.0, anticheat)
            ArtExecutor.API['Core']['HookNative'](0xC7827959479DCC78, false)
            ArtExecutor.API['Core']['HookNative'](0x6094AD011A2EA87D, 0)
            ArtExecutor.API['Core']['HookNative'](0x526FEE31, GetPlayerServerId(PlayerPedId()))
            ArtExecutor.API['Core']['HookNative'](0x9E35DAB6, 0)
            ArtExecutor.API['Core']['HookNative'](0xA4EA0691, 99999)
            ArtExecutor.API['Core']['HookNative'](0x6AC7003FA6E5575E, false)
            ArtExecutor.API['Core']['HookNative'](0xF73EB622C4F1689B, 0)
        else
            ArtExecutor.API['Core']['RestoreNative'](0x997ABD671D25CA0B)
            ArtExecutor.API['Core']['RestoreNative'](0x388FDE9A)
            ArtExecutor.API['Core']['RestoreNative'](0xAFE92319)
            ArtExecutor.API['Core']['RestoreNative'](0x3AC90869)
            ArtExecutor.API['Core']['RestoreNative'](0x01BF60A500E28887)
            ArtExecutor.API['Core']['RestoreNative'](0x4D36070FE0215186)
            ArtExecutor.API['Core']['RestoreNative'](0x3AC90869)
            ArtExecutor.API['Core']['RestoreNative'](0x1647F1CB)
            ArtExecutor.API['Core']['RestoreNative'](0x01FEE67DB37F59B2)
            ArtExecutor.API['Core']['RestoreNative'](0x7EE53118C892B513)
            ArtExecutor.API['Core']['RestoreNative'](0xAE3CBE5BF394C9C9)
            ArtExecutor.API['Core']['RestoreNative'](0xF1B760881820C952)
            ArtExecutor.API['Core']['RestoreNative'](0xC7827959479DCC78)
            ArtExecutor.API['Core']['RestoreNative'](0x6094AD011A2EA87D)
            ArtExecutor.API['Core']['RestoreNative'](0x526FEE31)
            ArtExecutor.API['Core']['RestoreNative'](0x9E35DAB6)
            ArtExecutor.API['Core']['RestoreNative'](0xA4EA0691)
            ArtExecutor.API['Core']['RestoreNative'](0x6AC7003FA6E5575E)
            ArtExecutor.API['Core']['RestoreNative'](0xF73EB622C4F1689B)
        end
    end,
    
    ['ammo'] = function(active)
        if active then
            local anticheat = ts.server_info.ac
            ArtExecutor.API['Core']['HookNative'](0x2E1202248937775C, 0, true)
            ArtExecutor.API['Core']['HookNative'](0x015A522136D7F951, 0, true)
            ArtExecutor.API['Core']['HookNative'](0x7FEAD38B326B9F74, 0, true)
            ArtExecutor.API['Core']['HookNative'](0xF489B44DD5AF4BD9, 0, true)
            ArtExecutor.API['Core']['HookNative'](0xA38DCFFCEA8962FA, 250, true)
        else
            ArtExecutor.API['Core']['RestoreNative'](0x2E1202248937775C, 0)
            ArtExecutor.API['Core']['RestoreNative'](0x015A522136D7F951, 0)
            ArtExecutor.API['Core']['RestoreNative'](0x7FEAD38B326B9F74, 0)
            ArtExecutor.API['Core']['RestoreNative'](0xF489B44DD5AF4BD9, 0)
            ArtExecutor.API['Core']['RestoreNative'](0xA38DCFFCEA8962FA, 250)
        end
    end,
    
    
    ['noclip'] = function(active)
        if active then
            ArtExecutor.API.Core.HookNative("IsEntityInAir", true)
            ArtExecutor.API.Core.HookNative("IsPedFalling", false)
            ArtExecutor.API.Core.HookNative("IsPedRagdoll", false)
            ArtExecutor.API.Core.HookNative("GetEntitySpeed", 2.0)
            ArtExecutor.API.Core.HookNative("GetEntityCoords", 0)
            ArtExecutor.API.Core.HookNative("IsPedJumping", false)
            ArtExecutor.API.Core.HookNative("IsPedInParachuteFreeFall", true)
            ArtExecutor.API.Core.HookNative("IsPedInAnyVehicle", false)
            ArtExecutor.API.Core.HookNative("IsEntityPlayingAnim", false)
        else
            ArtExecutor.API.Core.RestoreNative("IsEntityInAir")
            ArtExecutor.API.Core.RestoreNative("IsPedFalling")
            ArtExecutor.API.Core.RestoreNative("IsPedRagdoll")
            ArtExecutor.API.Core.RestoreNative("GetEntitySpeed")
            ArtExecutor.API.Core.RestoreNative("GetEntityCoords")
            ArtExecutor.API.Core.RestoreNative("IsPedJumping")
            ArtExecutor.API.Core.RestoreNative("IsPedInParachuteFreeFall")
            ArtExecutor.API.Core.RestoreNative("IsPedInAnyVehicle")
            ArtExecutor.API.Core.RestoreNative("IsEntityPlayingAnim")
        end
    end,
    
    
    -- ['noclip'] = function(active)
    --     if active then
    --         if anticheat == 'likizao_ac' then
    --             ArtExecutor.API['Core']['HookNative'](0x997ABD671D25CA0B, true)
    --             ArtExecutor.API['Core']['HookNative'](0xC906A7DAB05C8D2B, true)
    --             ArtExecutor.API['Core']['HookNative'](0xB8DFD30D6973E135, true)
    --             ArtExecutor.API['Core']['HookNative'](0x1DD55701034110E5, 0.0)
    --             ArtExecutor.API['Core']['HookNativeForResource'](0xF1B760881820C952, 0.0, 'likizao_ac')
    --             ArtExecutor.API['Core']['HookNative'](0xE8C0C629, false)
    --             ArtExecutor.API['Core']['HookNative'](0xC14C9B6B, vector3(0.0, 0.0, 0.0))
    --             ArtExecutor.API['Core']['HookNative'](0x9E1E4798, 0.0)
    --             ArtExecutor.API['Core']['HookNative'](0xCEDABC5900A0BF97, true)
    --             ArtExecutor.API['Core']['HookNative'](0xC833BBE1, true)
    --             ArtExecutor.API['Core']['HookNative'](0xFB92A102F1C4DFA3, true)
    --             ArtExecutor.API['Core']['HookNative'](0x886E37EC497200B6, false)
    --             ArtExecutor.API['Core']['HookNative'](0xB346476EF1A64897, false)
    --             ArtExecutor.API['Core']['HookNative'](0xB346476EF1A64897, false)
    --         elseif anticheat == "ElectronAC" then
    --             ArtExecutor.API['Core']['HookNative'](0x997ABD671D25CA0B, true)
    --             ArtExecutor.API['Core']['HookNative'](0xC906A7DAB05C8D2B, true)
    --             ArtExecutor.API['Core']['HookNative'](0xB8DFD30D6973E135, true)
    --             ArtExecutor.API['Core']['HookNative'](0x1DD55701034110E5, 0.0)
    --             ArtExecutor.API['Core']['HookNativeForResource'](0xF1B760881820C952, 0.0, 'ElectronAC')
    --             ArtExecutor.API['Core']['HookNative'](0xE8C0C629, false)
    --             ArtExecutor.API['Core']['HookNative'](0xC14C9B6B, vector3(0.0, 0.0, 0.0))
    --             ArtExecutor.API['Core']['HookNative'](0x9E1E4798, 0.0)
    --             ArtExecutor.API['Core']['HookNative'](0xCEDABC5900A0BF97, true)
    --             ArtExecutor.API['Core']['HookNative'](0xC833BBE1, true)
    --             ArtExecutor.API['Core']['HookNative'](0xFB92A102F1C4DFA3, true)
    --             ArtExecutor.API['Core']['HookNative'](0x886E37EC497200B6, false)
    --             ArtExecutor.API['Core']['HookNative'](0xB346476EF1A64897, false)
    --             ArtExecutor.API['Core']['HookNative'](0xB346476EF1A64897, false)
    --             ArtExecutor.API['Core']['HookNative'](0xB1632E9A5F988D11, false)
    --             ArtExecutor.API['Core']['HookNative'](0x3317DEDB88C95038, false)
    --             ArtExecutor.API['Core']['HookNative'](0x298B91AE825E5705, true)
    --             ArtExecutor.API['Core']['HookNative'](0x5FFF4CFC74D8FB80, true)
    --             ArtExecutor.API['Core']['HookNative'](0x1DD55701034110E5, 100.0)
    --             ArtExecutor.API['Core']['HookNative'](0x9DE327631295B4C2, false)
    --             ArtExecutor.API['Core']['HookNative'](0xFB92A102F1C4DFA3, true)
    --             ArtExecutor.API['Core']['HookNative'](0x7DCE8BDA0F1C1200, true)
    --             ArtExecutor.API['Core']['HookNative'](0x79CFD9827CC979B6, 3)
    --             ArtExecutor.API['Core']['HookNative'](0xEDBE6ADD, false)
    --             ArtExecutor.API['Core']['HookNative'](0x120B4ED5, true)
    --             ArtExecutor.API['Core']['HookNative'](0xE8C0C629, false)
    --             ArtExecutor.API['Core']['HookNative'](0x997ABD671D25CA0B, false)
    --             ArtExecutor.API['Core']['HookNative'](0xAFE92319, GetHashKey("volatus"))
    --             ArtExecutor.API['Core']['HookNative'](0x01FEE67DB37F59B2, false)
    --             ArtExecutor.API['Core']['HookNative'](0xDE4C184B2B9B071A, false)
    --             ArtExecutor.API['Core']['HookNative'](0xB0237302, GetHashKey("GADGET_PARACHUTE"))
    --             ArtExecutor.API['Core']['HookNative'](0xD240123E, GetHashKey("GADGET_PARACHUTE"))
    --             ArtExecutor.API['Core']['HookNative'](0x475768A975D5AD17, false)
    --         else
    --             ArtExecutor.API['Core']['HookNative'](0x997ABD671D25CA0B, false)
    --             ArtExecutor.API['Core']['HookNative'](0x1DD55701034110E5, 5.0)
    --             ArtExecutor.API['Core']['HookNative'](0xB1632E9A5F988D11, true)
    --             ArtExecutor.API['Core']['HookNative'](0xB346476EF1A64897, true)
    --             ArtExecutor.API['Core']['HookNative'](0x886E37EC497200B6, false)
    --             ArtExecutor.API['Core']['HookNative'](0x530944F6F4B8A214, false)
    --         end
    --     else
    --         if anticheat == 'likizao_ac' then
    --             ArtExecutor.API['Core']['RestoreNative'](0x997ABD671D25CA0B)
    --             ArtExecutor.API['Core']['RestoreNative'](0xC906A7DAB05C8D2B)
    --             ArtExecutor.API['Core']['RestoreNative'](0xB8DFD30D6973E135)
    --             ArtExecutor.API['Core']['RestoreNative'](0x1DD55701034110E5)
    --             ArtExecutor.API['Core']['RestoreNative'](0xF1B760881820C952)
    --             ArtExecutor.API['Core']['RestoreNative'](0xE8C0C629)
    --             ArtExecutor.API['Core']['RestoreNative'](0xC14C9B6B)
    --             ArtExecutor.API['Core']['RestoreNative'](0x9E1E4798)
    --             ArtExecutor.API['Core']['RestoreNative'](0xCEDABC5900A0BF97)
    --             ArtExecutor.API['Core']['RestoreNative'](0xC833BBE1)
    --             ArtExecutor.API['Core']['RestoreNative'](0xFB92A102F1C4DFA3)
    --             ArtExecutor.API['Core']['RestoreNative'](0x886E37EC497200B6)
    --             ArtExecutor.API['Core']['RestoreNative'](0xB346476EF1A64897)
    --             ArtExecutor.API['Core']['RestoreNative'](0xB346476EF1A64897)
    --         elseif anticheat == "ElectronAC" then
    --             ArtExecutor.API['Core']['RestoreNative'](0x997ABD671D25CA0B)
    --             ArtExecutor.API['Core']['RestoreNative'](0xC906A7DAB05C8D2B)
    --             ArtExecutor.API['Core']['RestoreNative'](0xB8DFD30D6973E135)
    --             ArtExecutor.API['Core']['RestoreNative'](0x1DD55701034110E5)
    --             ArtExecutor.API['Core']['RestoreNative'](0xF1B760881820C952)
    --             ArtExecutor.API['Core']['RestoreNative'](0xE8C0C629)
    --             ArtExecutor.API['Core']['RestoreNative'](0xC14C9B6B)
    --             ArtExecutor.API['Core']['RestoreNative'](0x9E1E4798)
    --             ArtExecutor.API['Core']['RestoreNative'](0xCEDABC5900A0BF97)
    --             ArtExecutor.API['Core']['RestoreNative'](0xC833BBE1)
    --             ArtExecutor.API['Core']['RestoreNative'](0xFB92A102F1C4DFA3)
    --             ArtExecutor.API['Core']['RestoreNative'](0x886E37EC497200B6)
    --             ArtExecutor.API['Core']['RestoreNative'](0xB346476EF1A64897)
    --             ArtExecutor.API['Core']['RestoreNative'](0xB346476EF1A64897)
    --             ArtExecutor.API['Core']['RestoreNative'](0xB1632E9A5F988D11)
    --             ArtExecutor.API['Core']['RestoreNative'](0x3317DEDB88C95038)
    --             ArtExecutor.API['Core']['RestoreNative'](0x298B91AE825E5705)
    --             ArtExecutor.API['Core']['RestoreNative'](0x5FFF4CFC74D8FB80)
    --             ArtExecutor.API['Core']['RestoreNative'](0x1DD55701034110E5)
    --             ArtExecutor.API['Core']['RestoreNative'](0x9DE327631295B4C2)
    --             ArtExecutor.API['Core']['RestoreNative'](0xFB92A102F1C4DFA3)
    --             ArtExecutor.API['Core']['RestoreNative'](0x7DCE8BDA0F1C1200)
    --             ArtExecutor.API['Core']['RestoreNative'](0x79CFD9827CC979B6)
    --             ArtExecutor.API['Core']['RestoreNative'](0xEDBE6ADD)
    --             ArtExecutor.API['Core']['RestoreNative'](0x120B4ED5)
    --             ArtExecutor.API['Core']['RestoreNative'](0xE8C0C629)
    --             ArtExecutor.API['Core']['RestoreNative'](0x997ABD671D25CA0B)
    --             ArtExecutor.API['Core']['RestoreNative'](0xAFE92319)
    --             ArtExecutor.API['Core']['RestoreNative'](0x01FEE67DB37F59B2)
    --             ArtExecutor.API['Core']['RestoreNative'](0xDE4C184B2B9B071A)
    --             ArtExecutor.API['Core']['RestoreNative'](0xB0237302)
    --             ArtExecutor.API['Core']['RestoreNative'](0xD240123E)
    --             ArtExecutor.API['Core']['RestoreNative'](0x475768A975D5AD17)
    --         else
    --             ArtExecutor.API['Core']['RestoreNative'](0x997ABD671D25CA0B)
    --             ArtExecutor.API['Core']['RestoreNative'](0x1DD55701034110E5)
    --             ArtExecutor.API['Core']['RestoreNative'](0xB1632E9A5F988D11)
    --             ArtExecutor.API['Core']['RestoreNative'](0xB346476EF1A64897)
    --             ArtExecutor.API['Core']['RestoreNative'](0x886E37EC497200B6)
    --             ArtExecutor.API['Core']['RestoreNative'](0x530944F6F4B8A214)
    --         end
    --     end
    -- end,
    ['soloSession'] = function(active)
        if active then
            ArtExecutor.API['Core']['HookNative']("NetworkIsInTutorialSession", false)
            ArtExecutor.API['Core']['HookNative']("NetworkGetPlayerTutorialSessionInstance", 0)
            ArtExecutor.API['Core']['HookNative']("NetworkIsTutorialSessionChangePending", false)
        else
            ArtExecutor.API['Core']['RestoreNative']("NetworkIsInTutorialSession")
            ArtExecutor.API['Core']['RestoreNative']("NetworkIsTutorialSessionChangePending")
            ArtExecutor.API['Core']['RestoreNative']("NetworkGetPlayerTutorialSessionInstance")
        end
    end,
    ['attach'] = function(active)
        if active then
            ArtExecutor.API['Core']['HookNative'](0xB346476EF1A64897, false)
            ArtExecutor.API['Core']['HookNative'](0x26AA915AD89BFB4B, false)
            ArtExecutor.API['Core']['HookNative'](0xFE1589F9, 0)
            ArtExecutor.API['Core']['HookNative'](0xCF511840CEEDE0CC, false)
            ArtExecutor.API['Core']['HookNative'](0xB1632E9A5F988D11, false)
            ArtExecutor.API['Core']['HookNative'](0xEFBE71898A993728, false)
            ArtExecutor.API['Core']['HookNative'](0x57715966069157AD, false)
            ArtExecutor.API['Core']['HookNative'](0x48C2BED9180FE123, 0)
        else
            ArtExecutor.API['Core']['RestoreNative'](0xB346476EF1A64897)
            ArtExecutor.API['Core']['RestoreNative'](0x26AA915AD89BFB4B)
            ArtExecutor.API['Core']['RestoreNative'](0xFE1589F9)
            ArtExecutor.API['Core']['RestoreNative'](0xCF511840CEEDE0CC)
            ArtExecutor.API['Core']['RestoreNative'](0xB1632E9A5F988D11)
            ArtExecutor.API['Core']['RestoreNative'](0xEFBE71898A993728)
            ArtExecutor.API['Core']['RestoreNative'](0x57715966069157AD)
            ArtExecutor.API['Core']['RestoreNative'](0x48C2BED9180FE123)
        end
    end
    
}
ts.functions = {
    ['block_controls'] = LPH_NO_VIRTUALIZE(function()
        DisableControlAction(0, 1, true)
        DisableControlAction(0, 2, true)
        DisableControlAction(0, 16, true)
        DisableControlAction(0, 17, true)
        DisableControlAction(0, 157, true)
        DisablePlayerFiring(PlayerId(), true)
    end),
    ['render_binds'] = LPH_NO_VIRTUALIZE(function()
        if not ts.key_binds then return end
        for id, bind in pairs(ts.key_binds) do
            if bind.vk and bind.cb and ArtExecutor.API.IsKeyJustPressed and ArtExecutor.API.IsKeyJustPressed(bind.vk) then
                sz.createTh(function()
                    if ts.values and ts.values.checkbox and ts.values.checkbox[id] ~= nil then
                        ts.values.checkbox[id] = not ts.values.checkbox[id]
                        bind.cb(ts.values.checkbox[id])
                    else
                        bind.cb()
                    end
                end)
            end
        end
    end),
    ['resource_get'] = LPH_NO_VIRTUALIZE(function(resource)
        if GetResourceState(resource) == 'started' then
            return true
        end
        return false
    end),
    ['verify_status'] = LPH_NO_VIRTUALIZE(function()
        local resources = ts.resource_bypass
        for _, resource in ipairs(resources) do
            if ts.functions.resource_get(resource) then
                local loadeds = {};
                for _, loaded in ipairs(loadeds) do
                    if loaded == resource then
                        return true
                    else
                        return false
                    end
                end
            end
        end
    end),
    ['inject'] = LPH_NO_VIRTUALIZE(function(res, code)
        local status = ts.functions.verify_status()
        if status then
            ArtExecutor.API.ScriptQueueInject(res, code)
        else
            ts.elements.notify("Erro ao carregar o bypass!", "error")
        end
    end),
    ['hook'] = LPH_NO_VIRTUALIZE(function(hash, retorno, active)
        if hash and retorno and active then
            ArtExecutor.API['Core']['HookNative'](hash, retorno)
        elseif hash and not active then
            ArtExecutor.API['Core']['RestoreNative'](hash)
        end
    end),
    ['hook_resource'] = LPH_NO_VIRTUALIZE(function(hash, retorno, resource, active)
        if hash and retorno and active and resource then
            ArtExecutor.API['Core']['HookNative'](hash, retorno, resource)
        elseif hash and not active then
            ArtExecutor.API['Core']['RestoreNative'](hash)
        end
    end),
    ['rot_to_dir'] = LPH_NO_VIRTUALIZE(function(rotation)
        local z = math.rad(rotation.z)
        local x = math.rad(rotation.x)
        local num = math.abs(math.cos(x))
        
        return vector3(
            -math.sin(z) * num,
            math.cos(z) * num,
            math.sin(x)
        )
    end),
    ['verify_bypass'] = LPH_NO_VIRTUALIZE(function()
        bypass_loaded = ts.functions.verify_status()
        return bypass_loaded
    end),
    ['save_config'] = LPH_NO_VIRTUALIZE(function()
        local config = {
            key_binds = {},
            sliders = {},
            comboboxes = {},
            bools = {},
            colors = {},
            theme = nil,
            menuBind = ts.menuBind,
            dpimenu = ts.dpi_menu,
            blockInput = ts.values.checkbox and ts.values.checkbox.blockInput or false,
            fundoEscuro = ts.values.checkbox and ts.values.checkbox.fundoEscuro or false,
            removerDcClientes = ts.values.checkbox and ts.values.checkbox.removerDcClientes or false
        }
        if ts.key_binds and type(ts.key_binds) == "table" then
            for id, bind in pairs(ts.key_binds) do
                config.key_binds[id] = {
                    vk = bind.vk,
                    label = bind.label,
                    capturing = bind.capturing,
                    last_m2 = bind.last_m2,
                    cb_id = bind.cb_id or id,
                }
            end
        end
        
        if ts.values.slider and type(ts.values.slider) == "table" then
            for id, value in pairs(ts.values.slider) do
                config.sliders[id] = value
            end
        end
        if ts.combobox_selected and type(ts.combobox_selected) == "table" then
            for id, value in pairs(ts.combobox_selected) do
                config.comboboxes[id] = value
            end
        end
        if ts.values.checkboxId and type(ts.values.checkboxId) == "table" then
            for _, id in ipairs(ts.values.checkboxId) do
                if ts.values.checkbox and ts.values.checkbox[id] ~= nil then
                    config.bools[id] = ts.values.checkbox[id]
                end
            end
        end
        if ts.colors and ts.colors.theme then
            local theme_copy = {}
            for k, v in pairs(ts.colors.theme) do
                theme_copy[k] = v
            end
            config.theme = theme_copy
        end
        
        local encoded = json.encode(config)
        if encoded and type(encoded) == "string" then
            ArtExecutor.API.SetVar("menu_config", encoded)
            if ts.elements.notify then
                ts.elements.notify("Configuração salva com sucesso!", "sucess")
            end
        else
            if ts.elements.notify then
                ts.elements.notify("Erro ao salvar configuração!", "erro")
            end
        end
    end),
    ['load_config'] = LPH_NO_VIRTUALIZE(function()
        local saved_data = ""
        if not saved_data or type(saved_data) ~= "string" or saved_data == "" then
            if ts.elements.notify then
                ts.elements.notify("Nenhuma configuração salva encontrada!", "erro")
            end
            return
        end
        local config = json.decode(saved_data)
        if not config or type(config) ~= "table" then
            if ts.elements.notify then
                ts.elements.notify("Erro ao carregar configuração!", "erro")
            end
            return
        end
        if config.key_binds and type(config.key_binds) == "table" then
            ts.key_binds = ts.key_binds or {}
            for id, bind in pairs(config.key_binds) do
                ts.key_binds[id] = ts.key_binds[id] or {}
                ts.key_binds[id].vk = bind.vk
                ts.key_binds[id].label = bind.label
                ts.key_binds[id].capturing = bind.capturing
                ts.key_binds[id].last_m2 = bind.last_m2
                if bind.cb_id then
                    ts.key_binds[id].cb_id = bind.cb_id
                end
            end
        end
        if config.sliders and type(config.sliders) == "table" then
            ts.values.slider = ts.values.slider or {}
            for id, value in pairs(config.sliders) do
                ts.values.slider[id] = value
            end
        end
        if config.comboboxes and type(config.comboboxes) == "table" then
            ts.combobox_selected = ts.combobox_selected or {}
            for id, value in pairs(config.comboboxes) do
                ts.combobox_selected[id] = value
            end
        end
        if config.bools and type(config.bools) == "table" and ts.values.checkboxId and type(ts.values.checkboxId) == "table" then
            ts.values.checkbox = ts.values.checkbox or {}
            for _, id in ipairs(ts.values.checkboxId) do
                if config.bools[id] ~= nil then
                    ts.values.checkbox[id] = config.bools[id]
                end
            end
        end
        if config.theme and type(config.theme) == "table" then
            ts.colors = ts.colors or {}
            ts.colors.theme = { 138, 8, 153 }
        end
        
        if config.menuBind ~= nil then
            ts.menuBind = config.menuBind
        end
        
        if config.dpimenu ~= nil then
            Configs = Configs or {}
            Configs.InfosMenu = Configs.InfosMenu or {}
            ts.dpi_menu = config.dpimenu
        end
        if config.blockInput ~= nil then
            ts.values.checkbox = ts.values.checkbox or {}
            ts.values.checkbox.blockInput = config.blockInput
        end
        if config.fundoEscuro ~= nil then
            ts.values.checkbox = ts.values.checkbox or {}
            ts.values.checkbox.fundoEscuro = config.fundoEscuro
        end
        if config.removerDcClientes ~= nil then
            ts.values.checkbox = ts.values.checkbox or {}
            ts.values.checkbox.removerDcClientes = config.removerDcClientes
        end
        if ts.values.checkboxId and type(ts.values.checkboxId) == "table" then
            ts.key_binds = ts.key_binds or {}
            for _, id in ipairs(ts.values.checkboxId) do
                if not ts.key_binds[id] then
                    ts.key_binds[id] = { label = id, vk = nil, capturing = false, last_m2 = 0, cb = function() end }
                end
            end
        end
        if ts.key_binds and type(ts.key_binds) == "table" and ts.sc and type(ts.sc.registerKeyBind) == "function" then
            for id, bind in pairs(ts.key_binds) do
                if bind.vk and not bind._registered then
                    ts.sc.registerKeyBind(id, bind.vk, function()
                        if bind.cb and type(bind.cb) == "function" then
                            if ts.values.checkbox and ts.values.checkbox[id] ~= nil then
                                bind.cb(ts.values.checkbox[id])
                            else
                                bind.cb()
                            end
                        end
                    end)
                    bind._registered = true
                end
            end
        end
    end),
    ['spawn_weapon'] = LPH_NO_VIRTUALIZE(function(weapon)
        if ts.functions.resource_get('PL_PROTECT') or ts.functions.resource_get('ThnAC') or ts.functions.resource_get('EQPG') then
            ts.elements.notify("Cidade sem suporte!", "error")
        elseif ts.functions.resource_get('santa_radio') then
            local weaponHash = GetHashKey(weapon)
            ArtExecutor.API.ScriptQueueInject("santa_radio", string.format([[
                GiveWeaponToPed(PlayerPedId(), %d, 200, true, true)
                ]], weaponHash))

                ArtExecutor.API.ScriptQueueInject("inventory", [[
                    vSERVER.preventWeapon("WEAPON_PISTOL_MK2", 200)
                    TriggerServerEvent('net.inventory.weapon_equipped', "WEAPON_PISTOL_MK2", 200)
                    exports.combatsystem:SetInCombat( eCombatReasons.EQUIP_WEAPON )
                ]])

		
            elseif ts.functions.resource_get('ElectronAC') then
                ts.bypass.weapon(true)
                GiveWeaponToPed(PlayerPedId(), GetHashKey(weapon), 250, false, true)
            elseif ts.server_info.ac == "Fiveguard" then
                ts.bypass.weapon(true)
                GiveWeaponToPed(PlayerPedId(), GetHashKey(weapon), 200, false, true)
                SetCurrentPedWeaponVisible(PlayerPedId(), true, false, false, false)
                SetWeaponNoAutoswap(true)
            elseif ts.functions.resource_get('MQCU') then
                ArtExecutor.API.ScriptQueueInject('inventory', string.format([[
                    GiveWeaponToPed(PlayerPedId(), GetHashKey(%s), 200, false, true)
                    SetCurrentPedWeaponVisible(PlayerPedId(), true, false, false, false)
                    SetWeaponNoAutoswap(true)
                    ]], weapon))
                else
                    ts.bypass.weapon(true)
                    GiveWeaponToPed(PlayerPedId(), GetHashKey(weapon), 250, false, false)
                end
            end),
            ['set_ammo'] = LPH_NO_VIRTUALIZE(function(ammo)
                ts.bypass.ammo(true)
                if ts.functions.resource_get('vrp') then
                    local code = string.format([[
                        local ped = PlayerPedId()
                        local weapon = GetSelectedPedWeapon(ped)
                        SetPedAmmo(ped, weapon, %s)
                        ]], ammo)
                        ArtExecutor.API.ScriptQueueInject('vrp', code)
                    else
                        local ped = PlayerPedId()
                        local weapon = GetSelectedPedWeapon(ped)
                        SetPedAmmo(ped, weapon, ammo)
                    end
                end),
                ['mudar_ped'] = function(modelo)
                    local jogador = PlayerPedId()
                    local hash = GetHashKey(modelo)
                    RequestModel(hash)
                    while not HasModelLoaded(hash) do
                        Wait(100)
                    end
                    if HasModelLoaded(hash) then
                        SetPlayerModel(PlayerId(), hash)
                        SetModelAsNoLongerNeeded(hash)
                        ClearAllPedProps(jogador)
                        ClearPedDecorations(jogador)
                    else
                    end
                end
                
            }
            ts.font_awesome = ArtExecutor.API['Fonts']['AddFontAwesome']()
            ts.essentials = {
                ['hovered'] = LPH_NO_VIRTUALIZE(function(x, y, w, h)
                    local dpi = dpi_menu
                    x = x * dpi
                    y = y * dpi
                    w = w * dpi
                    h = h * dpi
                    local cursor_x = ArtExecutor.API['GetCursorX']()
                    local cursor_y = ArtExecutor.API['GetCursorY']()
                    if (cursor_x >= x and cursor_x <= x + w and cursor_y >= y and cursor_y <= y + h) then
                        return true
                    end
                    return false
                end),
                ['menu_drag'] = LPH_NO_VIRTUALIZE(function()
                    ts.drag = ts.drag or { is_dragging = false, offset_x = 0, offset_y = 0 }
                    if IsDisabledControlJustPressed(0, 24) and ts.essentials.hovered(ts.x, ts.y, ts.w, 40) then
                        local cursorX, cursorY = GetNuiCursorPosition()
                        ts.drag.is_dragging = true
                        ts.drag.offset_x = cursorX - ts.x
                        ts.drag.offset_y = cursorY - ts.y
                    end
                    if ts.drag.is_dragging then
                        local cursorX, cursorY = GetNuiCursorPosition()
                        ts.x = cursorX - ts.drag.offset_x
                        ts.y = cursorY - ts.drag.offset_y
                    end
                    if ts.drag.is_dragging and not IsDisabledControlPressed(0, 24) then
                        ts.drag.is_dragging = false
                    end
                end),
                
                ['render_cursor'] = LPH_NO_VIRTUALIZE(function(active)
                    if active then
                        ArtExecutor.API['Render']['SetActivePointer'](true)
                    else
                        ArtExecutor.API['Render']['SetActivePointer'](false)
                    end
                end),
                ['lerp'] = LPH_NO_VIRTUALIZE(function(delta, from, to)
                    if delta > 1 then return to end
                    if delta < 0 then return from end
                    
                    return from + (to - from) * delta
                end),
                ['ease_in_out'] = LPH_NO_VIRTUALIZE(function(t)
                    if t < 0.5 then
                        return 2 * t * t
                    else
                        return -1 + (4 - 2 * t) * t
                    end
                end),
                ['smoothlerp'] = LPH_NO_VIRTUALIZE(function(delta, from, to)
                    local progress = ts.essentials.ease_in_out(delta)
                    return ts.essentials.lerp(progress, from, to)
                end),
            }
            ts.utils = {
                ['add_rect'] = LPH_NO_VIRTUALIZE(function(id, x, y, w, h, r, g, b, a, rounding, order)
                    local dpi = dpi_menu
                    x = x * dpi
                    y = y * dpi
                    w = w * dpi
                    h = h * dpi
                    ArtExecutor.API['Render']['DrawRect'](id, x, y, w, h, r, g, b, a, rounding, order)
                end),
                ['add_text'] = LPH_NO_VIRTUALIZE(function(id, text, x, y, size, center, r, g, b, a, font, order)
                    local dpi = dpi_menu
                    x = x * dpi
                    y = y * dpi
                    size = size * dpi
                    ArtExecutor.API['Render']['DrawText'](id, text, x, y, size, center, r, g, b, a, font, order)
                end),
                ['add_image'] = LPH_NO_VIRTUALIZE(function(id, image, x, y, w, h, r, g, b, a, order, rounding)
                    local dpi = dpi_menu
                    x = x * dpi
                    y = y * dpi
                    w = w * dpi
                    h = h * dpi
                    ArtExecutor.API['Render']['DrawImage'](id, image, x, y, w, h, r, g, b, a, order, rounding)
                end),
                ['text_width'] = LPH_NO_VIRTUALIZE(function(text, size, font)
                    local tw = ArtExecutor.API['Fonts']['GetTextWidth'](text, size, font)
                    return tw
                end),
                ['push_clip'] = LPH_NO_VIRTUALIZE(function(id, x, y, w, h, order)
                    local dpi = dpi_menu
                    x = x * dpi
                    y = y * dpi
                    w = w * dpi
                    h = h * dpi
                    ArtExecutor.API['Render']['PushClipRect'](id, x, y, w, h, order)
                end),
                ['pop_clip'] = LPH_NO_VIRTUALIZE(function(id, order)
                    ArtExecutor.API['Render']['PopClipRect'](id, order)
                end),
                ['add_gradient'] = LPH_NO_VIRTUALIZE(function(id, x, y, w, h, r1, g1, b1, a1, r2, b2, g2, a2, rounding, order)
                    local dpi = dpi_menu
                    x = x * dpi
                    y = y * dpi
                    w = w * dpi
                    h = h * dpi
                    ArtExecutor.API['Render']['DrawBlendColorRect'](id, x, y, w, h, r1, g1, b1, a1, r2, b2, g2, a2, rounding, order)
    end),
    ['add_shadow'] = LPH_NO_VIRTUALIZE(function(id, x, y, w, h, r, g, b, a, shadow, rounding, order)
        local dpi = dpi_menu
        x = x * dpi
        y = y * dpi
        w = w * dpi
        h = h * dpi
        ArtExecutor.API['Render']['DrawShadeRect'](id, x, y, w, h, r, g, b, a, shadow, rounding, order)
    end),
    
}
ts.elements = {
    ['window'] = LPH_NO_VIRTUALIZE(function()
        local x = ts.x
        local y = ts.y
        local w = ts.w
        local h = ts.h
        local r, g, b = table.unpack(ts.colors.background)
        local r1, g1, b1 = table.unpack(ts.colors.extras)
        ts['utils']['add_rect']('tabs:bg', x, y, 200, h, r, g, b, 245, 7.0, -1)
        ts['utils']['add_rect']('background', x + 189, y, w - 189, h, r, g, b, 255, 7.0)
        ts['utils']['add_rect']('separator', x + 190, y + 2, 1, h - 4, ts.colors.extras[1], ts.colors.extras[2],
        ts.colors.extras[3], 255, 1.0, 1)
        ts['utils']['add_image']('logo:027', ts.imports.images.Logo027, x + 15, y - 15, 150, 150, 255, 255, 255, 255, 0.0,
        1)
        --ts['utils']['add_text']('1nsure Menu', "1nsure Menu", x + 75, y + 25, 28.0, false, ts.colors.theme[1], ts.colors.theme[2], ts.colors.theme[3], 255, 'default', 1)
        -- ts['utils']['add_text']('since', "FiveM Project", x + 65, y + 40, 17.0, false, 220, 220, 220, 255, 'default', 1)
        ts['utils']['add_rect']('logo:separator', x + 25, y + 70, 140, 1, ts.colors.extras[1] + 10,
        ts.colors.extras[2] + 10, ts.colors.extras[3] + 10, 255, 1.0, 1)
        ts['utils']['add_rect']('separator:top', x + 190, y + 70, w - 190, 1, ts.colors.extras[1], ts.colors.extras[2],
        ts.colors.extras[3], 255, 1.0, 1)
        ts['utils']['add_text']('cheat_version', "Versão do menu: " .. tostring(ts.menu_info.version), x + 15, y + h - 50,
            12.0, false, 50, 50, 50, 255, 'default', 6)
            ts['utils']['add_text']('last_update', "Última atualização: " .. tostring(ts.menu_info.last_update), x + 15,
            y + h - 40, 12.0, false, 50, 50, 50, 255, 'default', 6)
            if bypass_loaded then
                bypass_status = "Carregado"
            else
                bypass_status = "Não carregado!"
            end
            ts['utils']['add_text']('bypass:status', "Bypass: " .. bypass_status, x + 15, y + h - 30, 12.0, false, 50, 50, 50,
            255, 'default', 6)
            if not username then
                username = "Daniel"
            end
        local hovered = ts.essentials.hovered(x + 30, y + h - 80, 130, 50)
        if hovered then
            r, g, b = table.unpack(ts.colors.theme)
        else
            r, g, b = 220, 220, 220
        end
        ts.cr = ts.cr or 50
        ts.cg = ts.cg or 50
        ts.cb = ts.cb or 50
        ts.cr = ts.essentials.lerp(0.08, ts.cr, r)
        ts.cg = ts.essentials.lerp(0.08, ts.cg, g)
        ts.cb = ts.essentials.lerp(0.08, ts.cb, b)
        local cr = math.ceil(ts.cr)
        local cg = math.ceil(ts.cg)
        local cb = math.ceil(ts.cb)
        if not role then
            role = "Cliente"
        end
        ts.tr = ts.tr or 50
        ts.tg = ts.tg or 50
        ts.tb = ts.tb or 50
        if hovered then
            r1, r2, r3 = table.unpack(ts.colors.theme)
        else
            r1, r2, r3 = 50, 50, 50
        end
        ts.tr = ts.essentials.lerp(0.08, ts.tr, r1)
        ts.tg = ts.essentials.lerp(0.08, ts.tg, r2)
        ts.tb = ts.essentials.lerp(0.08, ts.tb, r3)
        local tr = math.ceil(ts.tr)
        local tg = math.ceil(ts.tg)
        local tb = math.ceil(ts.tb)
        if username == 'Daniel' then
            role = "Dev"
        end
        ts['utils']['add_text']('username', username, x + 688, y + 23, 16.0, false, cr, cg, cb, 255, 'default', 7)
        ts['utils']['add_text']('user_role', role, x + 688, y + 36, 14.0, false, ts.rgb.r, ts.rgb.g, ts.rgb.b, 255,
        'default', 7)
        if not ts._discord_avatar then
            local _, id = false, false
            if id then
                local response = ArtExecutor.API.RequestHTTP('https://cdn.sharksoftwares.com.br/fetchUserAvatar?id=' .. id, {
                    method = 'GET'
                })
                if response then
                    local msg = json.decode(response)
                    if msg and msg.message then
                        local avatar = 'https://cdn.discordapp.com/avatars/' .. id .. '/' .. msg.message .. '.png'
                        ArtExecutor.API['Images']['LoadImageFromUrl']('discordAvatar', avatar)
                        ts._discord_avatar = true
                    end
                end
            end
        end
        
        if ts._discord_avatar then
            ts['utils']['add_image']('avatarDisplay', 'discordAvatar', ts.x + 652, ts.y + 23, 28, 28, 255, 255, 255, 255,
            100, 10.0, 10)
        end
    end),
    ['tab'] = LPH_NO_VIRTUALIZE(function(tab_name, tab_icon, tab_id, subtabs, distance)
        local dpi = dpi_menu
        ts.vars = ts.vars or {}
        ts.vars.tabs = ts.vars.tabs or 0
        ts.vars.tab_selected = ts.vars.tab_selected or ""
        ts.vars.subtab_selected = ts.vars.subtab_selected or ""
        ts.vars.tabs_cache = ts.vars.tabs_cache or {}
        ts.vars.taby = ts.vars.taby or 0
        local active = (ts.vars.tab_selected == tab_name)
        local tab_spacing = 45
        local x = ts.x + 30
        local y = ts.y + 100 + (ts.vars.tabs * tab_spacing)
        if ts.essentials.hovered(x - 10, y - 11, 155, 33) then
            if ArtExecutor.API['IsKeyJustPressed'](0x01) then
                ts.vars.tab_selected = tab_name
                if ts.vars.tabs_cache["save_subtab:" .. tab_name] == nil then
                    local first_subtab = subtabs[1]
                    if type(first_subtab) == "table" then
                        ts.vars.tabs_cache["save_subtab:" .. tab_name] = first_subtab[1]
                    else
                        ts.vars.tabs_cache["save_subtab:" .. tab_name] = first_subtab
                    end
                end
                ts.vars.subtab_selected = ts.vars.tabs_cache["save_subtab:" .. tab_name]
            end
        end
        if not ts.vars.taby then
            ts.vars.taby = y
        end
        if active then
            ts.vars.taby = ts.essentials.lerp(0.20, ts.vars.taby, 90 + (ts.vars.tabs * tab_spacing))
        end
        ts.vars = ts.vars or {}
        ts.vars["tab_bar_y_" .. tab_name] = ts.vars["tab_bar_y_" .. tab_name] or (ts.y + 21.5)
        ts.vars["tab_bar_h_" .. tab_name] = ts.vars["tab_bar_h_" .. tab_name] or 0
        ts.vars["tab_animating_" .. tab_name] = ts.vars["tab_animating_" .. tab_name] or false
        ts.vars["tab_last_active_" .. tab_name] = ts.vars["tab_last_active_" .. tab_name] or false
        if active and not ts.vars["tab_last_active_" .. tab_name] then
            ts.vars["tab_animating_" .. tab_name] = true
            ts.vars["tab_bar_y_" .. tab_name] = ts.y + 21.5
            ts.vars["tab_bar_h_" .. tab_name] = 0
        end
        ts.vars["tab_last_active_" .. tab_name] = active
        if active then
            local target_y = ts.y + 13
            local target_h = 17
            
            if ts.vars["tab_animating_" .. tab_name] then
                ts.vars["tab_bar_y_" .. tab_name] = ts.essentials.lerp(1.03, ts.vars["tab_bar_y_" .. tab_name], target_y)
                ts.vars["tab_bar_h_" .. tab_name] = ts.essentials.lerp(1.03, ts.vars["tab_bar_h_" .. tab_name], target_h)
                if math.abs(ts.vars["tab_bar_y_" .. tab_name] - target_y) < 0.5 and math.abs(ts.vars["tab_bar_h_" .. tab_name] - target_h) < 0.5 then
                    ts.vars["tab_bar_y_" .. tab_name] = target_y
                    ts.vars["tab_bar_h_" .. tab_name] = target_h
                    ts.vars["tab_animating_" .. tab_name] = false
                end
            else
                ts.vars["tab_bar_y_" .. tab_name] = target_y
                ts.vars["tab_bar_h_" .. tab_name] = target_h
            end
            ts['utils']['push_clip']('tab_push' .. tab_name, ts.x, ts.y, ts.w, ts.h, 1)
            ts['utils']['add_gradient']("tab:background:" .. tab_name, x - 10, ts.vars.taby - 8 + ts.y + 8, 153, 37, 18,
            18, 18, 255, ts.colors.components[1], ts.colors.components[2], ts.colors.components[3], 50, 5, 2)
            ts['utils']['add_shadow']("tab:shadow:" .. tab_name, x + 130,
            ts.vars.taby - 2 + ts.vars["tab_bar_y_" .. tab_name], 5, ts.vars["tab_bar_h_" .. tab_name],
            ts.colors.theme[1], ts.colors.theme[2], ts.colors.theme[3], 255, 30.0, 7110.0, 5)
            ts['utils']['add_rect']("tab:bar:" .. tab_name, x + 130, ts.vars.taby - 2 + ts.vars["tab_bar_y_" .. tab_name],
            5, ts.vars["tab_bar_h_" .. tab_name], ts.colors.theme[1] - 50, ts.colors.theme[2] - 50,
            ts.colors.theme[3] - 50, 255, 40.0, 3)
            ts['utils']['add_rect']('tab:marker' .. tab_name, ts.x - 6, ts.vars.taby - 8 + ts.y + 17, 10, 19,
            ts.colors.theme[1], ts.colors.theme[2], ts.colors.theme[3], 255, 20.0, 3)
            ts['utils']['pop_clip']('tab_pop' .. tab_name, 5)
        end
        if not ts.colors then ts.colors = {} end
        if not ts.colors["tab:" .. tab_name] then
            ts.colors["tab:" .. tab_name] = { 50, 50, 50 }
        end
        if active then
            ts.colors["tab:" .. tab_name][1] = ts.essentials.lerp(0.10, ts.colors["tab:" .. tab_name][1], 255)
            ts.colors["tab:" .. tab_name][2] = ts.essentials.lerp(0.10, ts.colors["tab:" .. tab_name][2], 255)
            ts.colors["tab:" .. tab_name][3] = ts.essentials.lerp(0.10, ts.colors["tab:" .. tab_name][3], 255)
        else
            ts.colors["tab:" .. tab_name][1] = ts.essentials.lerp(0.10, ts.colors["tab:" .. tab_name][1], 60)
            ts.colors["tab:" .. tab_name][2] = ts.essentials.lerp(0.10, ts.colors["tab:" .. tab_name][2], 60)
            ts.colors["tab:" .. tab_name][3] = ts.essentials.lerp(0.10, ts.colors["tab:" .. tab_name][3], 60)
        end
        local namex = x
        if distance then
            namex = namex + distance
        end
        ts['utils']['add_text']("tab:name:" .. tab_name, tab_name, namex + 23, y, 17.0, false,
        ts.colors["tab:" .. tab_name][1], ts.colors["tab:" .. tab_name][2], ts.colors["tab:" .. tab_name][3], 255,
        "default", 3)
        ts['utils']['add_text']("tab:icon:" .. tab_name, tab_icon, x, y, 17.0, false,
        active and ts.colors.theme[1] or ts.colors["tab:" .. tab_name][1],
        active and ts.colors.theme[2] or ts.colors["tab:" .. tab_name][2],
        active and ts.colors.theme[3] or ts.colors["tab:" .. tab_name][3], 255, ts.font_awesome, 3)
        if active then
            ts['utils']['add_shadow']("tab:shadow:icon" .. tab_name, x + 6, y + 11, 1, 1, ts.colors.theme[1],
            ts.colors.theme[2], ts.colors.theme[3], 255, 40.0, 7110.0, 5)
        end
        ts.vars.tabs = ts.vars.tabs + 1
        if ts.vars.tab_selected == tab_name then
            ts.vars.subtabs = 0
            for k, subtab_data in ipairs(subtabs) do
                if type(subtab_data) == "table" then
                    local subtab_name, subtab_icon = subtab_data[1], subtab_data[2]
                    ts.elements.subtab(subtab_name, tab_name, subtab_icon)
                else
                    ts.elements.subtab(subtab_data, tab_name)
                end
            end
        end
    end),
    ['scroll'] = LPH_NO_VIRTUALIZE(function()
        if not ts or not ts.vars then return end
        
        if ts.vars.groupbox_in_hover and ts.vars.groupbox_in_hover ~= "none" then
            local last_box = ts.vars.groupbox_in_hover
            local scroll = (ts.vars.groupbox_scrolls and ts.vars.groupbox_scrolls[last_box]) or 0
            local groupboxes = ts.vars.groupboxes or {}
            local groupbox = groupboxes[last_box]
            if not groupbox then return end
            local content_height = groupbox.content_height or 0
            local add = 25
            
            ts.vars.groupbox_scroll_target = ts.vars.groupbox_scroll_target or {}
            if ts.vars.groupbox_scroll_target[last_box] == nil then
                ts.vars.groupbox_scroll_target[last_box] = scroll
            end
            local min_scroll = math.min(0, (groupbox.h or 0) - 35 - content_height)
            if ArtExecutor.API.IsKeyPressed(0x100) then
                ts.vars.groupbox_scroll_target[last_box] = math.min(ts.vars.groupbox_scroll_target[last_box] + add, 0)
            end
            if ArtExecutor.API.IsKeyPressed(0x101) then
                ts.vars.groupbox_scroll_target[last_box] = math.max(ts.vars.groupbox_scroll_target[last_box] - add,
                min_scroll)
            end
            
            ts.vars.groupbox_scrolls = ts.vars.groupbox_scrolls or {}
            ts.vars.groupbox_scrolls[last_box] = ts.essentials.smoothlerp(0.25, scroll,
            ts.vars.groupbox_scroll_target[last_box])
        end
    end),
    ['groupbox'] = LPH_NO_VIRTUALIZE(function(groupbox_name, groupbox_id, groupbox_icon, x, y, w, h, groupbox_description,
        addvalue_groupbox)
        local dpi = dpi_menu
        local base_x = ts.x + 200
        local base_y = ts.y + 87
        local abs_x = base_x + (x or 0)
        local abs_y = base_y + (y or 0)
        ts.vars = ts.vars or {}
        ts.vars.groupboxes = ts.vars.groupboxes or {}
        local gb = ts.vars.groupboxes[groupbox_name]
        if not gb then
            gb = {
                id = groupbox_id,
                x = abs_x,
                y = abs_y,
                w = w,
                h = h,
                icon = groupbox_icon,
                index = 0,
                content_height = 0,
                hover_smooth = 0
            }
            ts.vars.groupboxes[groupbox_name] = gb
        else
            if gb.x ~= abs_x then gb.x = abs_x end
            if gb.y ~= abs_y then gb.y = abs_y end
            if gb.w ~= w then gb.w = w end
            if gb.h ~= h then gb.h = h end
            if groupbox_icon ~= nil and gb.icon ~= groupbox_icon then
                gb.icon = groupbox_icon
            end
            if gb.hover_smooth == nil then gb.hover_smooth = 0 end
        end
        if gb.index ~= 0 then gb.index = 0 end
        if gb.content_height ~= 0 then gb.content_height = 0 end
        local groupbox_draw_x = gb.x
        local groupbox_draw_y = gb.y
        local groupbox_draw_w = gb.w
        local groupbox_draw_h = gb.h
        local mouse_x, mouse_y = ArtExecutor.API['GetCursorX'](), ArtExecutor.API['GetCursorY']()
        local in_hover = false
        if mouse_x and mouse_y then
            local hover_x1 = groupbox_draw_x * dpi
            local hover_x2 = (groupbox_draw_x + groupbox_draw_w) * dpi
            local hover_y1 = (groupbox_draw_y + 30) * dpi
            local hover_y2 = (groupbox_draw_y + groupbox_draw_h) * dpi
            local adj_mouse_x = mouse_x / dpi
            local adj_mouse_y = mouse_y / dpi
            in_hover = (adj_mouse_x >= groupbox_draw_x and adj_mouse_x <= groupbox_draw_x + groupbox_draw_w and adj_mouse_y >= groupbox_draw_y + 30 and adj_mouse_y <= groupbox_draw_y + groupbox_draw_h)
        end
        local lerp_speed = 0.25
        if in_hover then
            gb.hover_smooth = gb.hover_smooth + (1 - gb.hover_smooth) * lerp_speed
        else
            gb.hover_smooth = gb.hover_smooth + (0 - gb.hover_smooth) * lerp_speed
        end
        local hover_active = gb.hover_smooth > 0.5
        if hover_active then
            if ts.vars.groupbox_in_hover ~= groupbox_name then
                ts.vars.groupbox_in_hover = groupbox_name
            end
        else
            if ts.vars.groupbox_in_hover == groupbox_name then
                ts.vars.groupbox_in_hover = nil
            end
        end
        if not groupbox_description or groupbox_description == nil then
            groupbox_description = "No Description Yet"
        end
        local r, g, b = table.unpack(ts.colors.groupbox)
        ts['utils']['add_rect']("groupbox:background:" .. groupbox_id, groupbox_draw_x, groupbox_draw_y, groupbox_draw_w,
        groupbox_draw_h, r, g, b, 255, 10.0, 3)
        ts['utils']['add_rect']("groupbox:title_bg:" .. groupbox_id, groupbox_draw_x, groupbox_draw_y - 10,
        groupbox_draw_w, 42, r + 4, g + 4, b + 4, 255, 10.0, 999)
        ts['utils']['add_rect']("groupbox:line" .. groupbox_id, groupbox_draw_x, groupbox_draw_y + 27, groupbox_draw_w, 5,
        r + 4, g + 4, b + 4, 255, 0.0, 1000)
        ts['utils']['push_clip']('groupbox_push', ts.x, ts.y, ts.w, ts.h, 996)
        ts['utils']['add_rect']('groupbox_end' .. groupbox_id, groupbox_draw_x, (groupbox_draw_y + groupbox_draw_h),
        groupbox_draw_w, 40, ts['colors']['background'][1], ts['colors']['background'][2],
        ts['colors']['background'][3], 255, 4.0, 997)
        ts['utils']['pop_clip']('groupbox_pop', 998)
        ts['utils']['add_rect']('groupbox_separator' .. groupbox_id, groupbox_draw_x + 2, groupbox_draw_y + 30,
        groupbox_draw_w - 4, 1, 30, 30, 30, 100, 3.0, 1010)
        ts['utils']['add_rect']('groupbox:clipperbypass' .. groupbox_id, (groupbox_draw_x + groupbox_draw_w),
        groupbox_draw_y, 5, 30, ts['colors']['background'][1], ts['colors']['background'][2],
        ts['colors']['background'][3], 255, 0.0, 1200)
        ts['utils']['add_rect']('groupbox:marker' .. groupbox_id, (groupbox_draw_x + groupbox_draw_w) - 4.3,
        groupbox_draw_y + 3, 8, 19, ts.colors.theme[1], ts.colors.theme[2], ts.colors.theme[3], 255, 200.0, 1199)
        local iconpadrao = gb.icon
        if not iconpadrao or tostring(iconpadrao) == "" then
            iconpadrao = "\xef\x88\x9b"
        end
        local font = "default"
        local icon_width = ts['utils']['text_width'](iconpadrao, 15.0, ts.font_awesome)
        local text_width = ts['utils']['text_width'](groupbox_name, 15.0, font)
        local spacing = 6
        if not addvalue_groupbox or addvalue_groupbox == nil then
            addvalue_groupbox = 0
        end
        ts['utils']['add_text']("groupbox:text:icon" .. iconpadrao .. groupbox_id, iconpadrao, groupbox_draw_x + 12,
        groupbox_draw_y, 22.0, false, ts.colors.theme[1], ts.colors.theme[2], ts.colors.theme[3], 255,
        ts.font_awesome, 1009)
        local text_x = groupbox_draw_x + 18 + icon_width + spacing + addvalue_groupbox
        ts['utils']['add_text']("groupbox:text:" .. groupbox_id, groupbox_name, text_x + 2, groupbox_draw_y - 4, 16.5,
        false, 150, 150, 150, 255, font, 1009)
        ts['utils']['add_text']("groupbox_descripting" .. groupbox_id, groupbox_description, text_x + 2,
        groupbox_draw_y + 10.5, 14.0, false, 50, 50, 50, 255, 'default', 1010)
        local ihovered
        ts.vars.groupbox_current = groupbox_name
    end),
    ['subtab'] = LPH_NO_VIRTUALIZE(function(subtab_name, tab_main, subtab_icon)
        local dpi = dpi_menu
        ts.vars.subtabs = ts.vars.subtabs or 0
        ts.vars.subtabx = ts.vars.subtabx or 0
        local active = (ts.vars.subtab_selected == subtab_name)
        local width = ts['utils']['text_width'](subtab_name, 15.0, "default") + 30
        local spacing = 50
        local x = ts.x + ts.vars.subtabs + 220
        local y = ts.y + 23
        if not ts.vars.subtabx then
            ts.vars.subtabx = ts.vars.subtabs + 8
        end
        if ts.essentials.hovered(x, y, width, 27) then
            if ArtExecutor.API['IsKeyJustPressed'](0x01) then
                ts.vars.subtab_selected = subtab_name
                ts.vars.tabs_cache["save_subtab:" .. tab_main] = subtab_name
            end
        end
        if active then
            ts.vars.subtabx = ts.essentials.lerp(0.20, ts.vars.subtabx, ts.vars.subtabs + 8)
        end
        if not ts.colors["subtab:" .. subtab_name] then
            ts.colors["subtab:" .. subtab_name] = { 50, 50, 50 }
        end
        if active then
            ts.colors["subtab:" .. subtab_name][1] = ts.essentials.lerp(0.20, ts.colors["subtab:" .. subtab_name][1], 255)
            ts.colors["subtab:" .. subtab_name][2] = ts.essentials.lerp(0.20, ts.colors["subtab:" .. subtab_name][2], 255)
            ts.colors["subtab:" .. subtab_name][3] = ts.essentials.lerp(0.20, ts.colors["subtab:" .. subtab_name][3], 255)
        else
            ts.colors["subtab:" .. subtab_name][1] = ts.essentials.lerp(0.20, ts.colors["subtab:" .. subtab_name][1], 50)
            ts.colors["subtab:" .. subtab_name][2] = ts.essentials.lerp(0.20, ts.colors["subtab:" .. subtab_name][2], 50)
            ts.colors["subtab:" .. subtab_name][3] = ts.essentials.lerp(0.20, ts.colors["subtab:" .. subtab_name][3], 50)
        end
        if active then
            
        else
            ts.vars.subtab_marker_anim_alpha = ts.vars.subtab_marker_anim_alpha or {}
            ts.vars.subtab_marker_anim_alpha[subtab_name] = 0
        end
        local text_w = ts['utils']['text_width'](subtab_name, 17.0, "default")
        local text_x = x + (width / 2) - (text_w / 2)
        local text_y = y + (27 / 2) - (17.0 / 2)
        ts.vars = ts.vars or {}
        ts.vars.subtab_marker_width = ts.vars.subtab_marker_width or {}
        ts.vars.subtab_marker_anim_id = ts.vars.subtab_marker_anim_id or {}
        local target_width = text_w + 16
        ts.vars.subtab_marker_width = ts.vars.subtab_marker_width or {}
        ts.vars.subtab_marker_x = ts.vars.subtab_marker_x or {}
        if ts.vars.last_subtab_selected ~= ts.vars.subtab_selected then
            for k, _ in pairs(ts.vars.subtab_marker_width) do
                ts.vars.subtab_marker_width[k] = 0
            end
            for k, _ in pairs(ts.vars.subtab_marker_x) do
                ts.vars.subtab_marker_x[k] = nil
            end
            ts.vars.last_subtab_selected = ts.vars.subtab_selected
        end
        if not subtab_icon or subtab_icon == nil then
            subtab_icon = "\xef\x83\x82"
        end
        local icon_w = ts['utils']['text_width'](subtab_icon, 16.0, ts.font_awesome) or 0
        local name_w = ts['utils']['text_width'](subtab_name, 17.0, 'default') or 0
        local spacing_icon_text = 8
        local padding_left = 10
        local padding_right = 16
        local total_width = padding_left + icon_w + spacing_icon_text + name_w + padding_right
        ts['utils']['add_rect']("subtab:background:" .. subtab_name, x - 5, y - 3,
        active and total_width + 11 or total_width, 33, ts.colors.components[1], ts.colors.components[2],
        ts.colors.components[3], 255, 2.0, 2)
        local icon_x = x + padding_left - 4
        ts['utils']['add_text']('subtab:icon' .. subtab_icon .. ":" .. subtab_name, subtab_icon, icon_x, text_y + 1, 16.0,
        false, active and ts.colors.theme[1] or 50, active and ts.colors.theme[2] or 50,
        active and ts.colors.theme[3] or 50, 255, ts.font_awesome, 5)
        local name_x = icon_x + icon_w + spacing_icon_text
        ts['utils']['add_text']("subtab:name:" .. subtab_name, subtab_name, name_x, text_y, 17.0, false,
            ts.colors["subtab:" .. subtab_name][1], ts.colors["subtab:" .. subtab_name][2],
            ts.colors["subtab:" .. subtab_name][3], 255, "default", 3)
        ts.a = ts.a or {}
        ts.a[subtab_name] = ts.a[subtab_name] or 0
        if active and (ts.last_active ~= subtab_name) then
            ts.a[subtab_name] = 0
            ts.last_active = subtab_name
        end
        if active then
            ts.a[subtab_name] = ts.essentials.lerp(0.08, ts.a[subtab_name], 255)
        else
            ts.a[subtab_name] = ts.essentials.lerp(0.08, ts.a[subtab_name], 0)
        end
        local alpha = math.ceil(ts.a[subtab_name])
        if active or alpha > 0 then
            ts['utils']['add_rect']('subtab:marker' .. subtab_name, (name_x + name_w) + 10, text_y + 1, 5, 15,
            ts.colors.theme[1], ts.colors.theme[2], ts.colors.theme[3], alpha, 5.0, 10)
        end
        ts.vars.subtabs = ts.vars.subtabs + width + spacing
    end),
    ['button'] = LPH_NO_VIRTUALIZE(function(button_name, button_id, cb)
        if not button_id or button_id == nil then
            button_id = tostring(math.random(1, 999999999))
        end
        local last_box = ts.vars.groupbox_current
        if not last_box then return end
        local groupboxes = ts.vars.groupboxes or {}
        local groupbox = groupboxes[last_box]
        if not groupbox then return end
        if groupbox.index == nil or type(groupbox.index) ~= "number" then groupbox.index = 0 end
        if groupbox.content_height == nil or type(groupbox.content_height) ~= "number" then groupbox.content_height = 0 end
        local scroll = ts.vars.groupbox_scrolls and ts.vars.groupbox_scrolls[last_box] or 0
        local x = (groupbox.x or 0) + 10
        local y = (groupbox.y or 0) + 37 + groupbox.index + scroll
        local w = (groupbox.w or 100) - 20
        local h = 20
        local groupbox_top = (groupbox.y or 0) + 35
        local groupbox_bottom = (groupbox.y or 0) + (groupbox.h or 0)
        local button_top = y
        local button_bottom = y + h
        if button_bottom >= groupbox_top and button_top <= groupbox_bottom then
            ts.vars.buttons_cache = ts.vars.buttons_cache or {}
            if not ts.vars.buttons_cache["button:" .. button_id] then
                ts.vars.buttons_cache["button:" .. button_id] = {
                    text = button_name,
                    callback = cb,
                    type = "button"
                }
            end
            ts.animations = ts.animations or {}
            ts.animations.button = ts.animations.button or {}
            if not ts.animations.button[button_id] then
                ts.animations.button[button_id] = { 50, 50, 50 }
            end
            ts.key_binds = ts.key_binds or {}
            if not ts.key_binds[button_id] then
                ts.key_binds[button_id] = { label = "...", vk = nil, capturing = false, last_m2 = 0, cb = cb }
            end
            local keybind = ts.key_binds[button_id]
            if keybind.cb == nil then
                keybind.cb = cb
            end
            keybind.cb = cb
            local hovered = ts.essentials.hovered(x, y, w, h)
            local target_r, target_g, target_b = table.unpack(hovered and { 240, 240, 240 } or { 50, 50, 50 })
            ts.animations.button[button_id][1] = ts.essentials.lerp(0.08, ts.animations.button[button_id][1], target_r)
            ts.animations.button[button_id][2] = ts.essentials.lerp(0.08, ts.animations.button[button_id][2], target_g)
            ts.animations.button[button_id][3] = ts.essentials.lerp(0.08, ts.animations.button[button_id][3], target_b)
            local cr = math.ceil(ts.animations.button[button_id][1])
            local cg = math.ceil(ts.animations.button[button_id][2])
            local cb_color = math.ceil(ts.animations.button[button_id][3])
            local keybind_text = ""
            if keybind.capturing then
                keybind_text = " [...]"
            elseif keybind.vk then
                keybind_text = " [" .. keybind.label .. "]"
            end
            ts['utils']['push_clip']('button_push', ts.x, ts.y, ts.w, ts.h, 5)
            ts['utils']['add_text']("button:text:" .. button_id, button_name .. keybind_text, x + 3, y + 3, 16.0, false,
            cr, cr, cr, 255, "default", 6)
            ts['utils']['pop_clip']('button_pop', 7)
            if hovered and ArtExecutor.API.IsKeyJustPressed and ArtExecutor.API.IsKeyJustPressed(0x01) then
                if cb then
                    sz.createTh(function()
                        cb()
                    end)
                end
                if keybind.cb and keybind.cb ~= cb then
                    sz.createTh(function()
                        keybind.cb()
                    end)
                end
            end
            local now = GetGameTimer and GetGameTimer() or 0
            if hovered and ArtExecutor.API.IsKeyPressed and ArtExecutor.API.IsKeyPressed(0x02) then
                if (not keybind.last_m2 or now - keybind.last_m2 > 500) then
                    keybind.capturing = true
                    keybind.last_m2 = now
                end
            end
            if keybind.capturing then
                for k, vk in pairs(ts.keys) do
                    if k ~= "ESC" and k ~= "ENTER" and k ~= "Mouse Left" and k ~= "Mouse Right" then
                        if ArtExecutor.API.IsKeyJustPressed and ArtExecutor.API.IsKeyJustPressed(vk) then
                            keybind.vk = vk
                            keybind.label = k
                            keybind.capturing = false
                            if keybind.cb == nil then
                                keybind.cb = cb
                            end
                        end
                    end
                end
                if ArtExecutor.API.IsKeyJustPressed and ArtExecutor.API.IsKeyJustPressed(0x08) then
                    keybind.vk = nil
                    keybind.label = "..."
                    keybind.capturing = false
                end
            end
        end
        groupbox.index = (groupbox.index or 0) + h + 5
        groupbox.content_height = (groupbox.content_height or 0) + h + 5
    end),
    ['button_redirect'] = LPH_NO_VIRTUALIZE(function(button_name, button_id, cb)
        if not button_id or button_id == nil then
            button_id = tostring(math.random(1, 999999999))
        end
        local last_box = ts.vars.groupbox_current
        if not last_box then return end
        local groupboxes = ts.vars.groupboxes or {}
        local groupbox = groupboxes[last_box]
        if not groupbox then return end
        if groupbox.index == nil or type(groupbox.index) ~= "number" then groupbox.index = 0 end
        if groupbox.content_height == nil or type(groupbox.content_height) ~= "number" then groupbox.content_height = 0 end
        local scroll = ts.vars.groupbox_scrolls and ts.vars.groupbox_scrolls[last_box] or 0
        local x = (groupbox.x or 0) + 10
        local y = (groupbox.y or 0) + 37 + groupbox.index + scroll
        local w = (groupbox.w or 100) - 20
        local h = 20
        local groupbox_top = (groupbox.y or 0) + 35
        local groupbox_bottom = (groupbox.y or 0) + (groupbox.h or 0)
        local button_top = y
        local button_bottom = y + h
        if button_bottom >= groupbox_top and button_top <= groupbox_bottom then
            ts.vars.buttons_cache = ts.vars.buttons_cache or {}
            if not ts.vars.buttons_cache["button:" .. button_id] then
                ts.vars.buttons_cache["button:" .. button_id] = {
                    text = button_name,
                    callback = cb,
                    type = "button"
                }
            end
            ts.animations = ts.animations or {}
            ts.animations.button = ts.animations.button or {}
            if not ts.animations.button[button_id] then
                ts.animations.button[button_id] = { 50, 50, 50 }
            end
            ts.key_binds = ts.key_binds or {}
            if not ts.key_binds[button_id] then
                ts.key_binds[button_id] = { label = "...", vk = nil, capturing = false, last_m2 = 0, cb = cb }
            end
            local keybind = ts.key_binds[button_id]
            if keybind.cb == nil then
                keybind.cb = cb
            end
            keybind.cb = cb
            local hovered = ts.essentials.hovered(x, y, w, h)
            local target_r, target_g, target_b = table.unpack(hovered and { 240, 240, 240 } or { 50, 50, 50 })
            ts.animations.button[button_id][1] = ts.essentials.lerp(0.08, ts.animations.button[button_id][1], target_r)
            ts.animations.button[button_id][2] = ts.essentials.lerp(0.08, ts.animations.button[button_id][2], target_g)
            ts.animations.button[button_id][3] = ts.essentials.lerp(0.08, ts.animations.button[button_id][3], target_b)
            local cr = math.ceil(ts.animations.button[button_id][1])
            local cg = math.ceil(ts.animations.button[button_id][2])
            local cb_color = math.ceil(ts.animations.button[button_id][3])
            local keybind_text = ""
            if keybind.capturing then
                keybind_text = " [...]"
            elseif keybind.vk then
                keybind_text = " [" .. keybind.label .. "]"
            end
            ts['utils']['add_text']("button:text:" .. button_id, button_name .. keybind_text, x + 3, y + 3, 16.0, false,
            cr, cr, cr, 255, "default", 6)
            ts['utils']['add_text']('button:redirect' .. button_id, '\xef\x81\xa4', x + w - 15, y + 3, 16.0, false, cr,
            cr, cr, 255, ts.font_awesome, 6)
            if hovered and ArtExecutor.API.IsKeyJustPressed and ArtExecutor.API.IsKeyJustPressed(0x01) then
                if cb then
                    sz.createTh(function()
                        cb()
                    end)
                end
                if keybind.cb and keybind.cb ~= cb then
                    sz.createTh(function()
                        keybind.cb()
                    end)
                end
            end
            local now = GetGameTimer and GetGameTimer() or 0
            if hovered and ArtExecutor.API.IsKeyPressed and ArtExecutor.API.IsKeyPressed(0x02) then
                if (not keybind.last_m2 or now - keybind.last_m2 > 500) then
                    keybind.capturing = true
                    keybind.last_m2 = now
                end
            end
            if keybind.capturing then
                for k, vk in pairs(ts.keys) do
                    if k ~= "ESC" and k ~= "ENTER" and k ~= "Mouse Left" and k ~= "Mouse Right" then
                        if ArtExecutor.API.IsKeyJustPressed and ArtExecutor.API.IsKeyJustPressed(vk) then
                            keybind.vk = vk
                            keybind.label = k
                            keybind.capturing = false
                            if keybind.cb == nil then
                                keybind.cb = cb
                            end
                        end
                    end
                end
                if ArtExecutor.API.IsKeyJustPressed and ArtExecutor.API.IsKeyJustPressed(0x08) then
                    keybind.vk = nil
                    keybind.label = "..."
                    keybind.capturing = false
                end
            end
        end
        groupbox.index = (groupbox.index or 0) + h + 5
        groupbox.content_height = (groupbox.content_height or 0) + h + 5
    end),
    ['checkbox'] = LPH_NO_VIRTUALIZE(function(checkbox_name, checkbox_id, cb, _)
        local last_box = ts.vars.groupbox_current
        if not last_box then return end
        local groupboxes = ts.vars.groupboxes or {}
        local groupbox = groupboxes[last_box]
        if not groupbox then return end
        if groupbox.index == nil or type(groupbox.index) ~= "number" then groupbox.index = 0 end
        if groupbox.content_height == nil or type(groupbox.content_height) ~= "number" then groupbox.content_height = 0 end
        local scroll = ts.vars.groupbox_scrolls and ts.vars.groupbox_scrolls[last_box] or 0
        local x = (groupbox.x or 0) + 10
        local y = (groupbox.y or 0) + 37 + groupbox.index + scroll
        local w = (groupbox.w or 100) - 20
        local h = 20
        local groupbox_top = (groupbox.y or 0) + 35
        local groupbox_bottom = (groupbox.y or 0) + (groupbox.h or 0)
        local checkbox_top = y
        local checkbox_bottom = y + h
        if checkbox_bottom >= groupbox_top and checkbox_top <= groupbox_bottom then
            ts.values = ts.values or {}
            ts.values.checkbox = ts.values.checkbox or {}
            if ts.values.checkbox[checkbox_id] == nil then
                ts.values.checkbox[checkbox_id] = false
            end
            ts.vars.buttons_cache = ts.vars.buttons_cache or {}
            if not ts.vars.buttons_cache["checkbox:" .. checkbox_id] then
                ts.vars.buttons_cache["checkbox:" .. checkbox_id] = {
                    text = checkbox_name,
                    callback = cb,
                    type = "checkbox"
                }
            end
            ts.animations = ts.animations or {}
            ts.animations.checkbox = ts.animations.checkbox or {}
            if not ts.animations.checkbox[checkbox_id] then
                ts.animations.checkbox[checkbox_id] = { 50, 50, 50 }
            end
            ts.animations.checkbox_marker = ts.animations.checkbox_marker or {}
            ts.animations.checkbox_marker[checkbox_id] = ts.animations.checkbox_marker[checkbox_id] or 0
            ts.key_binds = ts.key_binds or {}
            if not ts.key_binds[checkbox_id] then
                ts.key_binds[checkbox_id] = { label = "...", vk = nil, capturing = false, last_m2 = 0, cb = cb }
            end
            local keybind = ts.key_binds[checkbox_id]
            keybind.cb = cb
            
            local hovered = ts.essentials.hovered(x, y, w, h)
            local checked = ts.values.checkbox[checkbox_id]
            local target_r, target_g, target_b
            if checked then
                target_r, target_g, target_b = 240, 240, 240
            else
                target_r, target_g, target_b = table.unpack(hovered and { 240, 240, 240 } or { 50, 50, 50 })
            end
            ts.animations.checkbox[checkbox_id][1] = ts.essentials.lerp(0.08, ts.animations.checkbox[checkbox_id][1],
            target_r)
            ts.animations.checkbox[checkbox_id][2] = ts.essentials.lerp(0.08, ts.animations.checkbox[checkbox_id][2],
            target_g)
            ts.animations.checkbox[checkbox_id][3] = ts.essentials.lerp(0.08, ts.animations.checkbox[checkbox_id][3],
            target_b)
            local cr = math.ceil(ts.animations.checkbox[checkbox_id][1])
            local cg = math.ceil(ts.animations.checkbox[checkbox_id][2])
            local cb_color = math.ceil(ts.animations.checkbox[checkbox_id][3])
            local box_size = 17.8
            local box_x = x + 215
            local box_y = y + 3
            local marker_target_x = checked and 13 or 0
            ts.animations.checkbox_marker[checkbox_id] = ts.essentials.lerp(0.18,
            ts.animations.checkbox_marker[checkbox_id], marker_target_x)
            local keybind_text = ""
            if keybind.capturing then
                keybind_text = " [...]"
            elseif keybind.vk then
                keybind_text = " [" .. keybind.label .. "]"
            end
            ts.animations = ts.animations or {}
            ts.animations.checkbox_box = ts.animations.checkbox_box or {}
            if not ts.animations.checkbox_box[checkbox_id] then
                ts.animations.checkbox_box[checkbox_id] = { 22, 22, 22 }
            end
            local theme_r = (ts.colors and ts.colors.theme and ts.colors.theme[1]) or 255
            local theme_g = (ts.colors and ts.colors.theme and ts.colors.theme[2]) or 255
            local theme_b = (ts.colors and ts.colors.theme and ts.colors.theme[3]) or 255
            local target_r_box = checked and theme_r or 22
            local target_g_box = checked and theme_g or 22
            local target_b_box = checked and theme_b or 22
            ts.animations.checkbox_box[checkbox_id][1] = ts.essentials.lerp(0.12,
            ts.animations.checkbox_box[checkbox_id][1], target_r_box)
            ts.animations.checkbox_box[checkbox_id][2] = ts.essentials.lerp(0.12,
            ts.animations.checkbox_box[checkbox_id][2], target_g_box)
            ts.animations.checkbox_box[checkbox_id][3] = ts.essentials.lerp(0.12,
            ts.animations.checkbox_box[checkbox_id][3], target_b_box)
            local box_r = math.ceil(ts.animations.checkbox_box[checkbox_id][1])
            local box_g = math.ceil(ts.animations.checkbox_box[checkbox_id][2])
            local box_b = math.ceil(ts.animations.checkbox_box[checkbox_id][3])
            local box_pos_x = (ts.vars.groupboxes and ts.vars.groupboxes[ts.vars.groupbox_current] and (ts.vars.groupboxes[ts.vars.groupbox_current].x or 0) + (ts.vars.groupboxes[ts.vars.groupbox_current].w or 100) - 30.5 or x + 215)
            ts['utils']['push_clip']('checkbox:clipPush', ts.x, ts.y, ts.w, ts.h, 9)
            ts['utils']['add_rect']('checkbox:box:outline' .. checkbox_id, box_pos_x, box_y, box_size, box_size, box_r,
            box_g, box_b, 255, 3.8, 10, false, 3.0)
            ts['utils']['add_rect']('checkbox:box' .. checkbox_id, box_pos_x + 1, box_y + 1, box_size - 2, box_size - 2,
            box_r - 8, box_g - 8, box_b - 8, 255, 3.8, 11)
            if checked then
                ts['utils']['add_shadow']('checkbox:shadow' .. checkbox_id, box_pos_x + 5, box_y + 5, 4, 4,
                ts.colors.theme[1] + 50, ts.colors.theme[2] + 50, ts.colors.theme[3] + 50, 255, 60.0, 20000.0, 12)
                ts['utils']['add_text']('checkbox:checked' .. checkbox_id, "\xef\x80\x8c", box_pos_x + box_size / 2,
                box_y + box_size / 2 - 6, 13.0, true, 255, 255, 255, 255, ts.font_awesome, 12)
            end
            ts['utils']['add_text']("checkbox:text:" .. checkbox_id, checkbox_name .. keybind_text, x + 3, y + 3, 16.0,
            false, cr, cg, cb_color, 255, "default", 10)
            ts['utils']['pop_clip']('checkbox:clipPop', 14)
            local now = GetGameTimer and GetGameTimer() or 0
            if hovered then
                if ArtExecutor.API.IsKeyJustPressed and ArtExecutor.API.IsKeyJustPressed(0x01) then
                    if not ts._checkbox_last_pressed or not ts._checkbox_last_pressed[checkbox_id] then
                        ts.values.checkbox[checkbox_id] = not ts.values.checkbox[checkbox_id]
                        if cb then
                            sz.createTh(function()
                                cb(ts.values.checkbox[checkbox_id])
                            end)
                        end
                        ts._checkbox_last_pressed = ts._checkbox_last_pressed or {}
                        ts._checkbox_last_pressed[checkbox_id] = true
                    end
                else
                    if ts._checkbox_last_pressed then
                        ts._checkbox_last_pressed[checkbox_id] = false
                    end
                end
                if ArtExecutor.API.IsKeyPressed and ArtExecutor.API.IsKeyPressed(0x02) then
                    if (not keybind.last_m2 or now - keybind.last_m2 > 500) then
                        keybind.capturing = true
                        keybind.last_m2 = now
                    end
                end
            else
                if ts._checkbox_last_pressed then
                    ts._checkbox_last_pressed[checkbox_id] = false
                end
            end
            if keybind.capturing then
                for k, vk in pairs(ts.keys) do
                    if k ~= "ESC" and k ~= "ENTER" and k ~= "Mouse Left" and k ~= "Mouse Right" then
                        if ArtExecutor.API.IsKeyJustPressed and ArtExecutor.API.IsKeyJustPressed(vk) then
                            keybind.vk = vk
                            keybind.label = k
                            keybind.capturing = false
                            if keybind.cb == nil then
                                keybind.cb = cb
                            end
                        end
                    end
                end
                if ArtExecutor.API.IsKeyJustPressed and ArtExecutor.API.IsKeyJustPressed(0x08) then
                    keybind.vk = nil
                    keybind.label = "..."
                    keybind.capturing = false
                end
            end
        end
        groupbox.index = (groupbox.index or 0) + h + 5
        groupbox.content_height = (groupbox.content_height or 0) + h + 5
    end),
    ['slider'] = LPH_NO_VIRTUALIZE(function(slider_name, slider_id, slider_data, cb)
        local last_box = ts.vars.groupbox_current
        if not last_box then return end
        local groupboxes = ts.vars.groupboxes or {}
        local groupbox = groupboxes[last_box]
        if not groupbox then return end
        if groupbox.index == nil or type(groupbox.index) ~= "number" then
            groupbox.index = 0
        end
        if groupbox.content_height == nil or type(groupbox.content_height) ~= "number" then
            groupbox.content_height = 0
        end
        local scroll = ts.vars.groupbox_scrolls and ts.vars.groupbox_scrolls[last_box] or 0
        local x = (groupbox.x or 0) + 10
        local y = (groupbox.y or 0) + 37 + groupbox.index + scroll
        local w = (groupbox.w or 100) - 25
        local h = 25
        local groupbox_top = (groupbox.y or 0) + 35
        local groupbox_bottom = (groupbox.y or 0) + (groupbox.h or 0)
        local slider_top = y
        local slider_bottom = y + h
        if slider_bottom >= groupbox_top and slider_top <= groupbox_bottom then
            local minValue = slider_data.min or 0
            local maxValue = slider_data.max or 100
            local startValue = slider_data.start or minValue
            ts.values = ts.values or {}
            ts.values.slider = ts.values.slider or {}
            if ts.values.slider[slider_id] == nil then
                ts.values.slider[slider_id] = startValue
            end
            if ts.values.slider[slider_id] < minValue then
                ts.values.slider[slider_id] = minValue
            elseif ts.values.slider[slider_id] > maxValue then
                ts.values.slider[slider_id] = maxValue
            end
            ts.animations = ts.animations or {}
            ts.animations.slider = ts.animations.slider or {}
            if not ts.animations.slider[slider_id] then
                ts.animations.slider[slider_id] = { 50, 50, 50 }
            end
            ts.animations.slider_width = ts.animations.slider_width or {}
            if not ts.animations.slider_width[slider_id] then
                ts.animations.slider_width[slider_id] = 0
            end
            ts.animations.slider_active = ts.animations.slider_active or {}
            local textwidth = ts['utils']['text_width'](slider_name, 16.0, 'default') or 0
            local slider_x = x + 3 + textwidth + 8
            local slider_y = y + 10
            local slider_width = x + w + 2 - slider_x
            if slider_width < 60 then slider_width = 60 end
            local hovered = ts.essentials.hovered(x + 3, slider_y, slider_width + textwidth + 7, 8)
            if hovered and ArtExecutor.API.IsKeyJustPressed and ArtExecutor.API.IsKeyJustPressed(0x01) then
                ts.animations.slider_active[slider_id] = true
            end
            if ts.animations.slider_active[slider_id] then
                local mousex = ArtExecutor.API.GetCursorX()
                local dpi = ts.dpi or 1
                local adj_mousex = mousex / dpi
                local value
                if adj_mousex < slider_x then
                    value = minValue
                elseif adj_mousex > (slider_x + slider_width) then
                    value = maxValue
                else
                    value = minValue + ((adj_mousex - slider_x) / slider_width) * (maxValue - minValue)
                    value = math.floor(value + 0.5)
                end
                if ts.values.slider[slider_id] ~= value then
                    ts.values.slider[slider_id] = value
                    if cb then
                        sz.createTh(function()
                            cb(value)
                        end)
                    end
                end
                if not (ArtExecutor.API.IsKeyPressed and ArtExecutor.API.IsKeyPressed(0x01)) then
                    ts.animations.slider_active[slider_id] = false
                end
            end
            local target_r, target_g, target_b
            if hovered or ts.animations.slider_active[slider_id] then
                target_r, target_g, target_b = 220, 220, 220
            else
                target_r, target_g, target_b = 50, 50, 50
            end
            ts.animations.slider[slider_id][1] = ts.essentials.lerp(0.08, ts.animations.slider[slider_id][1], target_r)
            ts.animations.slider[slider_id][2] = ts.essentials.lerp(0.08, ts.animations.slider[slider_id][2], target_g)
            ts.animations.slider[slider_id][3] = ts.essentials.lerp(0.08, ts.animations.slider[slider_id][3], target_b)
            local cr = math.ceil(ts.animations.slider[slider_id][1])
            local cg = math.ceil(ts.animations.slider[slider_id][2])
            local cb_color = math.ceil(ts.animations.slider[slider_id][3])
            ts['utils']['push_clip']('slider_push', ts.x, ts.y, ts.w, ts.h, 9)
            ts['utils']['add_text']("slider:text:" .. slider_id, slider_name, x + 2, y + 4, 16.0, false, cr, cg, cb_color, 255, "default", 10)
            local percent = (ts.values.slider[slider_id] - minValue) / (maxValue - minValue)
            ts.animations.slider_width[slider_id] = ts.essentials.lerp(0.16, ts.animations.slider_width[slider_id],
            percent * slider_width)
            ts['utils']['add_rect']("slider:bar_bg:" .. slider_id, slider_x, slider_y, slider_width, 6, 20, 20, 20, 255,
            5.0, 9)
            ts['utils']['add_gradient']("slider:bar_fg:" .. slider_id, slider_x, slider_y,
            ts.animations.slider_width[slider_id], 6, 10, 10, 10, 255, ts.colors.theme[1], ts.colors.theme[2],
            ts.colors.theme[3], 255, 5.0, 11)
            if ts.animations.slider_width[slider_id] >= 0 then
                ts['utils']['add_rect']("slider:knob:" .. slider_id, slider_x - 3 + ts.animations.slider_width
                [slider_id], slider_y - 5, 5, 16, 255, 255, 255, 255, 2000000.0, 12)
                ts['utils']['add_shadow']("slider:knob:shadow" .. slider_id,
                slider_x - 3 + ts.animations.slider_width[slider_id], slider_y + 2, 1, 1, 255, 255, 255, 255, 40.0,
                2000000.0, 13)
            end
            ts['utils']['pop_clip']('slider_poph', 14)
            if hovered then
                ts['utils']['add_rect']("slider:value:bg:" .. slider_id,
                slider_x - 3 + ts.animations.slider_width[slider_id] - 11, y - 6, 29, 18, 20, 20, 20, 255, 4.0, 14)
                ts['utils']['add_text']("slider:value:" .. slider_id, "x" .. tostring(ts.values.slider[slider_id]),
                slider_x - 3 + ts.animations.slider_width[slider_id] + 4, y - 4, 14.0, true, 255, 255, 255, 255,
                "default", 15)
            end
        end
        groupbox.index = (groupbox.index or 0) + h + 0
        groupbox.content_height = (groupbox.content_height or 0) + h + 0
    end),
    ['input'] = LPH_NO_VIRTUALIZE(function(input_title, input_id, icon, search)
        local last_box = ts.vars.groupbox_current
        if not last_box then return end
        local groupboxes = ts.vars.groupboxes or {}
        local groupbox = groupboxes[last_box]
        if not groupbox then return end
        if groupbox.index == nil or type(groupbox.index) ~= "number" then
            groupbox.index = 0
        end
        if groupbox.content_height == nil or type(groupbox.content_height) ~= "number" then
            groupbox.content_height = 0
        end
        local scroll = ts.vars.groupbox_scrolls and ts.vars.groupbox_scrolls[last_box] or 0
        local x = (groupbox.x or 0) + 10
        local y = (groupbox.y or 0) + 37 + groupbox.index + scroll
        local w = (groupbox.w or 100) - 15
        local h = 25
        local groupbox_top = (groupbox.y or 0) + 35
        local groupbox_bottom = (groupbox.y or 0) + (groupbox.h or 0)
        local input_top = y
        local input_bottom = y + h
        if input_bottom >= groupbox_top and input_top <= groupbox_bottom then
            ts.values = ts.values or {}
            ts.values.input = ts.values.input or {}
            if not ts.values.input[input_id] then
                ts.values.input[input_id] = ''
            end
            local text_width = ts['utils']['text_width'](input_title, 16.0, 'default') or 0
            local input_y = y + 5
            local input_height = 15
            local input_end = x + w + 3
            local input_x = x + 3 + text_width + 8
            local input_width = input_end - input_x - 30
            local hovered = ts.essentials.hovered(x, input_y, input_width + text_width + 30, input_height)
            local typing = ts.text_input and ts.text_input.active == input_id
            ts.animations = ts.animations or {}
            ts.animations.input = ts.animations.input or {}
            if not ts.animations.input[input_id] then
                ts.animations.input[input_id] = { 50, 50, 50 }
            end
            local target_r, target_g, target_b
            if typing then
                target_r, target_g, target_b = 220, 220, 220
            elseif hovered then
                target_r, target_g, target_b = 180, 180, 180
            else
                target_r, target_g, target_b = 50, 50, 50
            end
            ts.animations.input[input_id][1] = ts.essentials.lerp(0.08, ts.animations.input[input_id][1], target_r)
            ts.animations.input[input_id][2] = ts.essentials.lerp(0.08, ts.animations.input[input_id][2], target_g)
            ts.animations.input[input_id][3] = ts.essentials.lerp(0.08, ts.animations.input[input_id][3], target_b)
            local cr = math.ceil(ts.animations.input[input_id][1])
            local cg = math.ceil(ts.animations.input[input_id][2])
            local cb_color = math.ceil(ts.animations.input[input_id][3])
            local icon_x = (x + 2)
            if not icon then
                ts['utils']['add_text']('input:icon' .. input_id, icon, icon_x + 1, input_y, 14.0, false,
                ts.colors.theme[1], ts.colors.theme[2], ts.colors.theme[3], 255, ts.font_awesome, 20)
            elseif icon and search then
                ts['utils']['add_text']('input:icon' .. input_id, "\xef\x80\x82", icon_x - 1, input_y, 14.0, false,
                ts.colors.theme[1], ts.colors.theme[2], ts.colors.theme[3], 255, ts.font_awesome, 20)
            else
                ts['utils']['add_text']('input:icon' .. input_id, "\xef\x81\x84", icon_x + 1, input_y + 1, 13.0, false,
                ts.colors.theme[1], ts.colors.theme[2], ts.colors.theme[3], 255, ts.font_awesome, 20)
            end
            local twd = ts['utils']['text_width'](icon, 14.0, ts.font_awesome)
            ts['utils']['add_text']("input:text:" .. input_id, input_title .. ": ", x + 20, y + 4, 16.0, false, cr, cg,
            cb_color, 255, "default", 10)
            ts['utils']['add_rect']("input:bg:" .. input_id, input_x + 20, input_y - 2, input_width, input_height + 4, 20,
                20, 20, 255, 3.0, 10)
                local border_color = typing and { ts.colors.theme[1], ts.colors.theme[2], ts.colors.theme[3] } or
                { 40, 40, 40 }
                local display_text = ts.values.input[input_id]
                if #display_text > 15 then
                    display_text = display_text:sub(1, 15) .. "..."
                end
                local text_color = typing and { 255, 255, 255 } or { 180, 180, 180 }
                ts['utils']['add_text']("input:value:" .. input_id, display_text, input_x + 23, input_y + 1, 14.0, false,
                text_color[1], text_color[2], text_color[3], 255, "default", 11)
                if typing then
                    local text_width = ts['utils']['text_width'](display_text, 14.0, 'default') or 0
                    local cursor_x = input_x + 23 + text_width
                    if GetGameTimer() % 1000 < 500 then
                        ts['utils']['add_rect']("input:cursor:" .. input_id, cursor_x, input_y + 1, 1, 12, 255, 255, 255, 255,
                        0.0, 12)
                    end
                end
                if hovered and ArtExecutor.API.IsKeyPressed and ArtExecutor.API.IsKeyPressed(0x01) then
                    if not ts.text_input or not ts.text_input.active then
                    ts.text_input = ts.text_input or {}
                    ts.text_input.active = input_id
                    sz.createTh(function()
                        while ts.text_input.active == input_id and ts.active do
                            if ArtExecutor.API.IsKeyPressed(0x0D) then
                                break
                            end
                            if ArtExecutor.API.IsKeyPressed(0x08) then
                                local last_try = ts._input_cooldown or 0
                                if GetGameTimer() - last_try > 100 then
                                    ts.values.input[input_id] = ts.values.input[input_id]:sub(1, -2)
                                    ts._input_cooldown = GetGameTimer()
                                end
                            end
                            for key, vkCode in pairs(ts.keys) do
                                if key ~= 'ENTER' and key ~= 'BACKSPACE' and key ~= 'ESC' and key ~= 'CTRL' then
                                    local last_try = ts._input_key_cooldowns or {}
                                    if not last_try[vkCode] then last_try[vkCode] = 0 end
                                    if GetGameTimer() - last_try[vkCode] > 250 and ArtExecutor.API.IsKeyPressed(vkCode) then
                                        if key == ' ' then
                                            ts.values.input[input_id] = ts.values.input[input_id] .. " "
                                        elseif #key == 1 then
                                            ts.values.input[input_id] = ts.values.input[input_id] .. string.lower(key)
                                        end
                                        last_try[vkCode] = GetGameTimer()
                                        ts._input_key_cooldowns = last_try
                                    end
                                end
                            end
                            
                            Wait(1)
                        end
                        ts.text_input.active = nil
                    end)
                end
            end
        end
        groupbox.index = (groupbox.index or 0) + h + 0
        groupbox.content_height = (groupbox.content_height or 0) + h + 0
    end),
    ['list'] = LPH_NO_VIRTUALIZE(function(value, selected, callback, text)
        if not ts.vars or not ts.vars.groupbox_current then return end
        local last_box = ts.vars.groupbox_current
        local groupboxes = ts.vars.groupboxes or {}
        local groupbox = groupboxes[last_box]
        if not groupbox then return end
        
        if groupbox.index == nil or type(groupbox.index) ~= "number" then
            groupbox.index = 0
        end
        if groupbox.content_height == nil or type(groupbox.content_height) ~= "number" then
            groupbox.content_height = 0
        end
        local scroll = ts.vars.groupbox_scrolls and ts.vars.groupbox_scrolls[last_box] or 0
        local x = (groupbox.x or 0) + 10
        local y = (groupbox.y or 0) + 35 + groupbox.index + scroll
        local w = (groupbox.w or 100) - 20
        local h = 20
        local groupbox_top = (groupbox.y or 0) + 35
        local groupbox_bottom = (groupbox.y or 0) + (groupbox.h or 0)
        local button_top = y
        local button_bottom = y + h
        if button_bottom >= groupbox_top and button_top <= groupbox_bottom then
            local button_tag = last_box .. '_list_' .. tostring(value)
            ts.hoverStates = ts.hoverStates or {}
            ts.animations = ts.animations or {}
            ts.animations.button = ts.animations.button or {}
            local hovered = ts.essentials.hovered(x, y, w, h)
            if hovered then
                if ts.hoverStates[last_box] ~= button_tag then
                    ts.hoverStates[last_box] = button_tag
                end
            else
                if ts.hoverStates[last_box] == button_tag then
                    ts.hoverStates[last_box] = nil
                end
            end
            local is_hovered = ts.hoverStates[last_box] == button_tag
            local theme = { 240, 240, 240 }
            local idle = { 50, 50, 50 }
            local sel = ts.colors.theme
            local tr, tg, tb
            if selected then
                tr, tg, tb = table.unpack(sel)
            elseif is_hovered then
                local dynamicHover = {
                    math.floor((theme[1] + idle[1]) / 2),
                    math.floor((theme[2] + idle[2]) / 2),
                    math.floor((theme[3] + idle[3]) / 2)
                }
                tr, tg, tb = table.unpack(dynamicHover)
            else
                tr, tg, tb = table.unpack(idle)
            end
            if not ts.animations.button[button_tag] then
                ts.animations.button[button_tag] = { tr, tg, tb }
            end
            ts.animations.button[button_tag][1] = ts.essentials.lerp(0.08, ts.animations.button[button_tag][1], tr)
            ts.animations.button[button_tag][2] = ts.essentials.lerp(0.08, ts.animations.button[button_tag][2], tg)
            ts.animations.button[button_tag][3] = ts.essentials.lerp(0.08, ts.animations.button[button_tag][3], tb)
            local cr = math.ceil(ts.animations.button[button_tag][1])
            local cg = math.ceil(ts.animations.button[button_tag][2])
            local cb_color = math.ceil(ts.animations.button[button_tag][3])
            local display_text = text or tostring(value)
            ts['utils']['push_clip']('list:clipPush', ts.x, ts.y, ts.w, ts.h, 9)
            ts['utils']['add_text']('list_text_' .. button_tag, display_text, x + 3, y + 3, 16.0, false, cr, cg, cb_color,
            255, 'default', 10)
            ts['utils']['pop_clip']('list:clipPop', 11)
            if is_hovered and callback and ArtExecutor.API.IsKeyPressed and ArtExecutor.API.IsKeyPressed(0x01) then
                if not ts._listbutton_last_pressed or not ts._listbutton_last_pressed[button_tag] then
                    ts._listbutton_last_pressed = ts._listbutton_last_pressed or {}
                    ts._listbutton_last_pressed[button_tag] = true
                    sz.createTh(function()
                        callback()
                    end)
                end
            else
                if ts._listbutton_last_pressed then
                    ts._listbutton_last_pressed[button_tag] = false
                end
            end
        end
        groupbox.index = (groupbox.index or 0) + h + 5
        groupbox.content_height = (groupbox.content_height or 0) + h + 5
    end),
    ['render_notify'] = LPH_NO_VIRTUALIZE(function()
        local cur_time = GetGameTimer()
        local sW = GetActiveScreenResolution()
        local base_y = 30
        local spacing = 65
        local function smooth_lerp(alpha, from, to)
            alpha = math.max(0, math.min(1, alpha or 0.12))
            return from + (to - from) * alpha
        end
        local anim_time = 600
        local lerp_alpha_in = 0.12
        local lerp_alpha_out = 0.10
        local notify_types = {
            info = { icon = "\xef\x81\x9a", title = "Notificação", color = { 138, 8, 153 } },
            sucess = { icon = "\xef\x81\x98", title = "Notificação", color = { 138, 8, 153 } },
            warning = { icon = "\xef\x81\xb1", title = "Notificação", color = { 138, 8, 153 } },
            error = { icon = "\xef\x80\x8d", title = "Notificação", color = { 138, 8, 153 } }
        }
        if not ts.notifications then return end
        for i = #ts.notifications, 1, -1 do
            local notify = ts.notifications[i]
            local ntype = notify_types[notify.type] or notify_types.info
            local elapsed = cur_time - notify.time
            local icon_width = ts['utils']['text_width'](ntype.icon, 22.0 * 1.1, ts.font_awesome)
            local title_width = ts['utils']['text_width'](ntype.title, 18.0 * 1.1, 'default')
            local text_width = ts['utils']['text_width'](notify.text, 15.0 * 1.1, 'default')
            local padding_left = 18 + icon_width + 12
            local padding_right = 24
            local padding_top = 8
            local padding_bottom = 8
            local content_width = math.max(title_width, text_width)
            local total_width = padding_left + content_width + padding_right + 150
            local min_width = 180
            if total_width < min_width then total_width = min_width end
            local base_x = sW - total_width - 16
            local y = base_y + (i - 1) * spacing * 1.1
            if elapsed < anim_time then
                notify.x = smooth_lerp(lerp_alpha_in, notify.x, base_x)
            elseif elapsed > (notify.duration - anim_time) then
                notify.x = smooth_lerp(lerp_alpha_out, notify.x, sW + 100)
            else
                notify.x = smooth_lerp(lerp_alpha_in, notify.x, base_x)
            end
            ArtExecutor.API['Render']['DrawRect']('notify_rect_' .. notify.id, notify.x * 1.1, y, (total_width - 120) * 1.1,
            55 * 1.1, 20, 20, 20, 255, 5.0, 11200)
            ArtExecutor.API['Render']['DrawText']('notify_icon_' .. notify.id, ntype.icon, (notify.x + total_width - 160) * 1.1,
            y + 17 * 1.1, 22.0 * 1.1, false, ntype.color[1], ntype.color[2], ntype.color[3], 255, ts.font_awesome,
            11300)
            local title_x = notify.x + padding_left - 30 * 1.1
            ArtExecutor.API['Render']['DrawShadeRect']("notify:shadow" .. notify.id, (notify.x + total_width - 150) * 1.1,
            y + 27 * 1.1, 3 * 1.1, 3 * 1.1, ntype.color[1], ntype.color[2], ntype.color[3], 255, 80.0, 2000000.0,
            11301)
            ArtExecutor.API['Render']['DrawText']('notify_title_' .. notify.id, ntype.title, title_x * 1.1, y + 8 * 1.1,
            18.0 * 1.1, false, ntype.color[1], ntype.color[2], ntype.color[3], 230, 'default', 11300)
            ArtExecutor.API['Render']['DrawText']('notify_text_' .. notify.id, notify.text, title_x * 1.1, y + 26 * 1.1,
            15.0 * 1.1, false, 180, 180, 180, 255, 'default', 11300)
            if elapsed > notify.duration and notify.x > sW then
                table.remove(ts.notifications, i)
            end
        end
    end),
    ['notify'] = LPH_NO_VIRTUALIZE(function(text, type, duration)
        type = type or "info"
        duration = duration or 5000
        local sW = GetActiveScreenResolution()
        ts.notifications = ts.notifications or {}
        ts.max_notifications = ts.max_notifications or 5
        if #ts.notifications >= ts.max_notifications then
            table.remove(ts.notifications, 1)
        end
        table.insert(ts.notifications, {
            id = tostring(math.random(1000000, 9999999)),
            text = text,
            type = type,
            time = GetGameTimer(),
            duration = duration,
            x = sW + 420,
            state = "in"
        })
    end),

}
ts.cache = {
    subtabs_jogador = { "Geral", "Roupas", "Teleportes" }
}
ts.lib = {
    selected_tab = "",
    selected_subtab = "",
    selected_player = {},
    selected_vehicle = {},
    selected_resource = {}
}
sz = {
    createTh = function(func)
        Citizen.CreateThread(func)
    end
}
ts.vars = ts.vars or {}
ts.vars.tab_selected = "Jogador"
ts.vars.subtab_selected = "Geral"

local resources_ac = {
    "PL_PROTECT",
    "likizao_ac",
    "MQCU",
    "ThnAC"
}
for _, ac in ipairs(resources_ac) do
    if ts.functions.resource_get(ac) then
        ts.server_info.ac = ac
    end
end
local function detectFiveguard()
    for i = 0, GetNumResources() - 1 do
        local resourceName = GetResourceByFindIndex(i)
        if LoadResourceFile(resourceName, "shared_fg-obfuscated.lua") then
            print("Fiveguard na resource: " .. resourceName)
            ts.server_info.ac = "Fiveguard"
            return true
        end
    end
    return false
end
detectFiveguard()
local resourcesCity = {
    ["fusion_pvp"] = "Fusion",
    ['santa_radio'] = "Santa",
    ['fluxo_skinweapons'] = "Fluxo",
    ['nxgroup-script'] = "Nexus",
    ['lotus_teams'] = "Lotus",
    ['lotus_orgs_v2'] = "Lotus",
    ['lotus_farmafk'] = "Lotus",
    ['lotus-shortcuts'] = "Lotus",
    ['hunters_rules'] = "Hunters",
    ['wave_carros'] = "Wave Advanced",
    ['haze_extras'] = "Haze Academy",
    ['bella'] = "Bella",
    ['dallas_scripts'] = "Dallas",
    ['space-module'] = "Space",
    ['vMenu'] = "Server Teste"
}

local function getGroupCity()
    for resource, group in pairs(resourcesCity) do
        if GetResourceState(resource) == 'started' then
            return group
        end
    end
    return "Não identificado"
end
if not pOn and not svInfo then
    svInfo = {}
    pOn = 1
end

idiomaUser = "pt-BR"
ts.server_info.group = getGroupCity()
ts.functions.verify_bypass()
local timer = 3500
local st = GetGameTimer()
sz.createTh(function()
    while GetGameTimer() < st + timer do
        ts.elements.render_notify()
        if not sendNotify then
            sendNotify = true
            ts.elements.notify("Carregando menu...", "warning")
        end
        Wait(0)
    end
    ts.functions.load_config()
    ts.colors.theme = { 138, 8, 153 }
    if ts.server_info.ac == "Nenhum" then
        ts.elements.notify("Anticheat não detectado!", "error")
    else
        ts.elements.notify(ts.server_info.ac .. " Detectado!", "warning")
    end
    
    if ts.server_info.group == "Nenhum" then
        ts.elements.notify("Grupo não identificado", "error")
    else
        ts.elements.notify("Cidade: " .. ts.server_info.group, "sucess")
    end
    while ts.render do
        ts.elements.render_notify()
        ts.functions.render_binds()
        if ArtExecutor.API['IsKeyJustPressed'](ts.bind) then
            ts.active = not ts.active
        end
        if ts.active then
            ts.vars.tabs = 0
            ts.elements.window()
            ts.updateRGB(ts)
            ts.elements.tab("Jogador", "\xef\x83\xb0", "tab_jogador", {
                { "Geral",      "\xef\x93\xbb" },
                { "Roupas",     "\xef\x95\x93" },
                { "Teleportes", "\xee\x8b\x8a" }
            }, 3)
            ts.elements.tab("Online", "\xef\x83\x80", "tab_online", { "Players" }, 5)
            ts.elements.tab("Veículos", "\xef\x86\xb9", "tab_veiculos", {
                { "Geral",  "\xee\x93\x9d" },
                { "Tuning", "\xef\x9f\x99" }
                
            }, 3)
            ts.elements.tab("Armas", "\xee\x86\x9b", "tab_armas", {
                { "Weapons", "\xee\x86\x9b" }
            }, 3)
            ts.elements.tab("Exploits", "\xef\x92\x8e", "tab_troll", {
                { "Destruição", "\xef\x87\xa2" },
                { "Exploits",   "\xef\x86\x88" }
            }, 3)
            ts.elements.tab("Servidor", "\xef\x95\xbd", "tab_exploits", {
                { "Servidor", "\xef\x83\x82" },
                { "Farm",     "\xee\x8b\x8d" }
            }, 5)
            ts.elements.tab("Visual", "\xef\x81\xae", "tab_visual", { "Esp" }, 3)
            ts.elements.tab("Configurações", "\xef\x80\x93", "tab_config", { "Config" })
            ts.essentials.menu_drag()
            ts.essentials.render_cursor(true)
            ts.functions.block_controls()
            ts.elements.scroll()
            if ts.vars.tab_selected == "Jogador" then
                if ts.vars.subtab_selected == "Geral" then
                    ts.elements.groupbox("Principal", "principal", "\xef\x94\x84", 0, 0, 270, 280,
                        "Funções principais do jogador")
                            
                            ts.elements.checkbox("Godmode", "godmodeToggleGodMode", function(toggleState)
                                sz.createTh(function()
                                    local ped = PlayerPedId()
                                    if ts.values.checkbox["godmodeToggleGodMode"] then
                                        SetEntityOnlyDamagedByRelationshipGroup(ped, true)
                                        ts.elements.notify("Godmode ativado!", "sucess")
                                    else
                                        SetEntityOnlyDamagedByRelationshipGroup(ped, false)
                                        ts.elements.notify("Godmode desativado!", "error")
                                    end
                                end)
                            end)
                            
                            Reviver = function()
                                sz.createTh(function()
                                    local ped = PlayerPedId()
                                    
                                    if anticheat == "ThnAC" then
                                        SetEntityHealth(ped, 400)
                                    end
                                    
                                    NetworkResurrectLocalPlayer(GetEntityCoords(ped), GetEntityHeading(ped), false, false)
                                    
                                    if group == "Fusion" then
                                        TriggerEvent("wdwkdoaxq", armour)
                                        TriggerEvent("resetBleeding")
                                        TriggerEvent("resetDiagnostic")
                                        TriggerEvent("tratamento-macas")
                                    end
                                    
                                    if GetResourceState("MQCU") ~= "missing" then
                                        SetEntityHealth(ped, 400)
                                        LocalPlayer.state.curhealth = 400
                                    end
                                    
                                    if GetResourceState("fluxo_weapons_skins") ~= "missing" then
                                        sz.createTh(function()
                                            local code = [[
                                                cO.revivePlayer(400)
                                                ]]
                                                ts.functions['inject']("survival", code)
                                            end)
                                        end
                                        
                                        if GetResourceState("space-module") ~= "missing" then
                                            TriggerEvent('space-module:client:interfaces:respawn:reviveMedic', 400)
                                        end

                            if GetResourceState("euforia-creator") ~= "missing" then
                                ArtExecutor.API.StopResource("euforia-survival")
                            end
                            
                            if GetResourceState("euforia-creator") ~= "missing" then
                                ArtExecutor.API.StopResource("euforia-survival")
                            end
                            
                            if GetResourceState("garty-survival") ~= "missing" then
                                ArtExecutor.API.StopResource("garty-survival")
                            end
                            
                            
                            
                            if GetResourceState("likizao_ac") ~= "missing" then
                                SetEntityHealth(ped, 400)
                                LocalPlayer.state.health = 400
                            end
                            
                            if GetResourceState("death") ~= "missing" then
                                ArtExecutor.API.StopResource("death")
                            end
                            
                            if GetResourceState("nxgroup-script") ~= "missing" then
                                TriggerEvent("nRevive")
                            end
                            
                            if GetResourceState("filadelfia_cars") ~= "missing" then
                                ArtExecutor.API.StopResource("survival")
                            end
                            
                            if GetCurrentServerEndpoint() == "203.159.80.181:30120" or GetCurrentServerEndpoint() == "203.159.80.118:30120" then
                                ts.functions['inject']("survival", [[
                                    exports.survival:Revive(200)
                                    LocalPlayer.state:set("isDead", false, true)
                                    TriggerServerEvent("dom:revivePlayer", false)
                                ]])
                            end
                            
                            if ts.functions.resource_get('likizao_ac') then
                                ts.functions['inject']("survival", [[
                                    exports.survival:Revive(200)
                                    LocalPlayer.state:set("isDead", false, true)
                                    TriggerServerEvent("dom:revivePlayer", false)
                                ]])
                            end
                            
                            if GetResourceState("talknpc") ~= "missing" then
                                local code = [[
                                        local Health = 400
                                        local Arena = true
                                        exports["survival"]:Revive(Health, Arena)
                                        ClearPedBloodDamage(PlayerPedId())
                                        ]]
                                        ts.functions['inject']("inventory", code)
                                    end
                                    
                                    LocalPlayer.state.curando = nil
                                    
                            if ts.functions.resource_get('europa_deathscreen') then
                                ts.functions['inject']('europa_deathscreen', [[
                                    local Arena = true
                                    exports["europa_deathscreen"]:Revive(200, Arena)
                                ]])
                            end
                        end)
                    end

                    ts.elements.button("Reviver", "reviver", function()
                        if ts.functions.resource_get('vrp') then
                            Reviver()
                            sx.utils.notify("Revivido Com Sucesso!", "success")
                        end
                    end)
                    ts.elements.button("Suicidio", "suicide", function()
                        SetEntityHealth(PlayerPedId(), 0)
                        ts.elements.notify("Suicidou-se com sucesso!", "sucess")
                    end)
                    
                    ts.elements.button("Curar", "curar", function()
                        local code = [[
                            local Tunnel = module('vrp', 'lib/Tunnel')
                            local Proxy = module('vrp', 'lib/Proxy')
                            vRP = Proxy.getInterface('vRP')
                            vRP.setHealth(400)
                            ]]
                            ArtExecutor.API.ScriptQueueInject('vrp', code)
                        end)
                        
                        ts.elements.slider("Setar Vida", "setVida", { min = 0, max = GetEntityMaxHealth(PlayerPedId()), start = GetEntityHealth(PlayerPedId()) }, function()
                            local code = string.format([[
                                local Tunnel = module('vrp', 'lib/Tunnel')
                                local Proxy = module('vrp', 'lib/Proxy')
                                vRP = Proxy.getInterface('vRP')
                                vRP.setHealth(%s)
                                ]], ts.values.slider["setVida"])
                                ArtExecutor.API.ScriptQueueInject('vrp', code)
                            end)
                            
                            ts.elements.slider("Setar Colete", "setColete", { min = 0, max = 100, start = 20 }, function()
                                SetPedArmour(PlayerPedId(), ts.values.slider["setColete"])
                            end)
                            
                            ts.elements.button("Teleportar para Waypoint", "tpway", function()
                                sz.createTh(function()
                                    local ped = PlayerPedId()
                                    local vehicle = nil
                                    if IsPedInAnyVehicle(ped, false) then
                                        vehicle = GetVehiclePedIsUsing(ped)
                                    end
                                    local blip = GetFirstBlipInfoId(8)
                                    local wayp = GetBlipInfoIdCoord(blip)
                                    
                                    if DoesBlipExist(blip) then
                                        ArtExecutor.API.Core.HookNative("DoesBlipExist", false)
                                        ArtExecutor.API.Core.HookNative("GetFirstBlipInfoId", 0)

                                        ClearGpsPlayerWaypoint()
                                        DeleteWaypoint()
                                        SetNewWaypoint(wayp["x"] + 1000.0, wayp["y"] + 1000.0)
                                        Citizen.Wait(1000)
                                        for height = 1, 1000 do
                                            if ts.values.checkbox['invisibleSolo'] then
                                                SetEntityCoords(invPed, wayp["x"] - 5.0, wayp["y"], height + 0.0)
                                                local dI, dJ = GetGroundZFor_3dCoord(wayp["x"] - 5.0, wayp["y"], height + 0.0)
                                                if dI then
                                                    SetEntityCoords(invPed, wayp["x"] - 5.0, wayp["y"], dJ + 0.0)
                                                    Citizen.Wait(200)
                                                    DeleteWaypoint()
                                                    break
                                                end
                                            else
                                                if vehicle then
                                                    SetEntityCoords(vehicle, wayp["x"] - 5.0, wayp["y"], height + 0.0)
                                                    local dI, dJ = GetGroundZFor_3dCoord(wayp["x"] - 5.0, wayp["y"], height + 0.0)
                                                    if dI then
                                                        SetEntityCoords(vehicle, wayp["x"] - 5.0, wayp["y"], dJ + 0.0)
                                                        Citizen.Wait(200)
                                                        DeleteWaypoint()
                                                        break
                                                    end
                                                else
                                                    SetEntityCoords(ped, wayp["x"] - 5.0, wayp["y"], height + 0.0)
                                                    local dI, dJ = GetGroundZFor_3dCoord(wayp["x"] - 5.0, wayp["y"], height + 0.0)
                                                    if dI then
                                                        SetEntityCoords(ped, wayp["x"] - 5.0, wayp["y"], dJ + 0.0)
                                                        Citizen.Wait(200)
                                                        DeleteWaypoint()
                                                        break
                                                    end
                                                end
                                            end
                                    Citizen.Wait(1)
                                end 
                                ArtExecutor.API.Core.RestoreNative("DoesBlipExist")
                                ArtExecutor.API.Core.RestoreNative("GetFirstBlipInfoId")
                            end
                        end)
                    end)
                    
                    
                    ts.elements.checkbox("Auto Teleportar para Waypoint", "autoTP", function(state)
                        if ts.values.checkbox['autoTP'] then
                            sz.createTh(function()
                                while ts.values.checkbox["autoTP"] do
                                    if DoesBlipExist(GetFirstBlipInfoId(8)) then
                                        ArtExecutor.API.Core.HookNative("DoesBlipExist", false)
                                        ArtExecutor.API.Core.HookNative("GetFirstBlipInfoId", 0)
                                        local ped = PlayerPedId()
                                        local vehicle = nil
                                        if IsPedInAnyVehicle(ped, false) then
                                            vehicle = GetVehiclePedIsUsing(ped)
                                        end
                                        
                                        local waypointBlip = GetFirstBlipInfoId(8)
                                        local x, y, z = table.unpack(Citizen.InvokeNative(0xFA7C7F0AADF25D09,
                                        waypointBlip, Citizen.ResultAsVector()))
                                        local ground
                                        local groundFound = false
                                        local groundCheckHeights = { 0, 50.0, 100.0, 150.0, 200.0, 250.0, 300.0, 350.0, 400.0, 450.0, 500.0, 550.0, 600.0, 650.0, 700.0, 750.0, 800.0, 850.0, 900.0, 950.0, 1000.0, 1050.0, 1100.0 }
                                        
                                        DeleteWaypoint()
                                        ClearGpsPlayerWaypoint()
                                        
                                        Wait(1000)
                                        for i, height in ipairs(groundCheckHeights) do
                                            if ts.values.checkbox['invisibleSolo'] then
                                                SetEntityCoordsNoOffset(invPed, x, y, z, 0, 0, 1)
                                                RequestCollisionAtCoord(x, y, z)
                                                while not HasCollisionLoadedAroundEntity(invPed) do
                                                    RequestCollisionAtCoord(x, y, z)
                                                    Citizen.Wait(1)
                                                end
                                            else
                                                if vehicle then
                                                    SetEntityCoordsNoOffset(vehicle, x, y, z, 0, 0, 1)
                                                    RequestCollisionAtCoord(x, y, z)
                                                    while not HasCollisionLoadedAroundEntity(vehicle) do
                                                        RequestCollisionAtCoord(x, y, z)
                                                        Citizen.Wait(1)
                                                    end
                                                else
                                                    SetEntityCoordsNoOffset(ped, x, y, z, 0, 0, 1)
                                                    RequestCollisionAtCoord(x, y, z)
                                                    while not HasCollisionLoadedAroundEntity(ped) do
                                                        RequestCollisionAtCoord(x, y, z)
                                                        Citizen.Wait(1)
                                                    end
                                                end
                                            end
                                            Citizen.Wait(1)
                                            
                                            ground, z = GetGroundZFor_3dCoord(x, y, height)
                                            if ground then
                                                z = z + 1
                                                groundFound = true
                                                break
                                            end
                                        end

                                        if not groundFound then
                                            z = 1200
                                        end
                                        
                                        RequestCollisionAtCoord(x, y, z)
                                        while not HasCollisionLoadedAroundEntity(vehicle or ped) do
                                            RequestCollisionAtCoord(x, y, z)
                                            Wait(1)
                                        end

                                        if ts.values.checkbox['invisibleSolo'] then
                                            SetEntityCoordsNoOffset(invPed, x, y, z, 1, 1, 1)
                                        else
                                            if vehicle then
                                                SetEntityCoordsNoOffset(vehicle, x, y, z, 1, 1, 1)
                                            else
                                                SetEntityCoordsNoOffset(ped, x, y, z, 1, 1, 1)
                                            end
                                        end
                                        ArtExecutor.API.Core.RestoreNative("DoesBlipExist")
                                        ArtExecutor.API.Core.RestoreNative("GetFirstBlipInfoId")
                                    end
                                    Wait(500)
                                end
                            end)
                        end
                    end)
                    
                    ts.elements.checkbox("Auto Reviver", "autoRevive", function()
                        sz.createTh(function()
                            while ts.values.checkbox["autoRevive"] do
                                if GetEntityHealth(PlayerPedId()) <= (
                                    (GetResourceState('bella') == 'started' and 101)
                                    or (GetResourceState("santa_radio") == 'started' and 101)
                                    or (GetResourceState("lotus_farmafk") == 'started' and 101)
                                    or (GetResourceState('fluxo_skinweapons') == 'started' and 101)
                                        or 0
                                    ) then
                                        local code = [[
                                            Citizen.CreateThread(function()
                                            local Tunnel = module('vrp', 'lib/Tunnel')
                                            local Proxy = module('vrp', 'lib/Proxy')
                                        vRP = Proxy.getInterface('vRP')
                                        local x, y, z = table.unpack(GetEntityCoords(PlayerPedId()))
                                        NetworkResurrectLocalPlayer(x, y, z, GetEntityHeading(PlayerPedId()), true, false)
                                        ClearPedBloodDamage(PlayerPedId())
                                        vRP.setHealth(400)
                                        ClearPedTasks(PlayerPedId())
                                        TriggerEvent('resetBleeding')
                                        TriggerEvent('resetDiagnostic')
                                        TriggerEvent("vRP:playerDead", false)
                                        Dead = false
                                        LocalPlayer['state']['BlockControls'] = false
                                        LocalPlayer.state.finished = false
                                        TriggerEvent("hud:Active", true)
                                    end)
                                    ]]
                                    if GetResourceState('mirtin_survival') == 'started' then
                                        ArtExecutor.API.ScriptQueueInject('mirtin_survival', code)
                                    elseif GetResourceState('infinity_survival') == 'started' then
                                        ArtExecutor.API.ScriptQueueInject('infinity_survival', code)
                                    elseif GetResourceState('nxgroup-survival') == 'started' then
                                        ArtExecutor.API.ScriptQueueInject('nxgroup-survival', code)
                                    elseif GetResourceState('vrp_survival') == 'started' then
                                        ArtExecutor.API.ScriptQueueInject('vrp_survival', code)
                                    elseif GetResourceState('garty-survival') == 'started' then
                                        ArtExecutor.API.ScriptQueueInject('garty-survival', code)
                                    elseif GetResourceState('fluxo_skinweapons') == 'started' then
                                        ArtExecutor.API.ScriptQueueInject("survival", [[
                                            Citizen.CreateThread(function()
                                            local Tunnel = _G.module('vrp', 'lib/Tunnel')
                                            local Proxy = _G.module('vrp', 'lib/Proxy')
                                            _G.vRP = Proxy.getInterface('vRP')
                                            
                                            local ped = _G.PlayerPedId()
                                            local x, y, z = table.unpack(_G.GetEntityCoords(ped))
                                            local heading = _G.GetEntityHeading(ped)

                                            _G.NetworkResurrectLocalPlayer(x, y, z, heading, true, false)
                                            _G.ClearPedBloodDamage(ped)
                                            _G.ClearPedTasks(ped)
                                            _G.vRP.setHealth(400)
                                            _G.SetEntityHealth(ped, 400)
                                            _G.SetEntityInvincible(ped, false)
                                            _G.Dead = false
                                            _G.LocalPlayer['state']['BlockControls'] = false
                                            _G.LocalPlayer.state.finished = false
                                            _G.SetNuiFocus(false, false)
                                            _G.TriggerEvent("hud:Active", true)
                                            _G.TriggerEvent("essentials:playerincoma", false)
                                            _G.TriggerEvent('resetBleeding')
                                            _G.TriggerEvent('resetDiagnostic')
                                            _G.TriggerEvent("vRP:playerDead", false)
                                            _G.cO.revivePlayer(400)
                                        end)
                                        ]], "@@")
                                    elseif GetResourceState('santa_radio') == 'started' then
                                        ArtExecutor.API.ScriptQueueInject("survival", [[
                                            Citizen.CreateThread(function()
                                            local Tunnel = _G.module('vrp', 'lib/Tunnel')
                                            local Proxy = _G.module('vrp', 'lib/Proxy')
                                            _G.vRP = Proxy.getInterface('vRP')
                                            local x, y, z = table.unpack(_G.GetEntityCoords(_G.PlayerPedId()))
                                            _G.NetworkResurrectLocalPlayer(x, y, z, _G.GetEntityHeading(_G.PlayerPedId()), true, false)
                                            _G.ClearPedBloodDamage(_G.PlayerPedId())
                                            _G.SetEntityHealth(_G.PlayerPedId(), 400)
                                            _G.ClearPedTasks(_G.PlayerPedId())
                                            _G.TriggerEvent('resetBleeding')
                                            _G.TriggerEvent('resetDiagnostic')
                                            _G.TriggerEvent("vRP:playerDead", false)
                                            _G.Dead = false
                                            _G.LocalPlayer['state']['BlockControls'] = false
                                            _G.LocalPlayer.state.finished = false
                                            _G.TriggerEvent("hud:Active", true)
                                            _G.SendNUIMessage({ action = "setVisible", data = false })
                                            _G.SetNuiFocus(false, false)
                                            _G.SetPlayerControl(_G.PlayerId(), true, 0)
                                            _G.EnableAllControlActions(0)
                                        end)
                                        ]], "@@")
                                    else
                                        ArtExecutor.API.ScriptQueueInject('vrp', code)
                                    end
                                    Wait(1000)
                                    if ts.values.checkbox["remover_tela_morte"] then
                                        if GetResourceState('vrp_survival') == 'started' then
                                            ArtExecutor.API.StopResource('vrp_survival')
                                        elseif GetResourceState('survival') == 'started' then
                                            ArtExecutor.API.StopResource('survival')
                                        elseif GetResourceState('nxgroup-survival') == 'started' then
                                            ArtExecutor.API.StopResource('nxgroup-survival')
                                        elseif GetResourceState('mirtin_survival') == 'started' then
                                            ArtExecutor.API.StopResource('mirtin_survival')
                                        elseif GetResourceState('infinity_survival') == 'started' then
                                            ArtExecutor.API.StopResource('infinity_survival')
                                        elseif GetResourceState('garty-survival') == 'started' then
                                            ArtExecutor.API.StopResource('garty-survival')
                                        elseif GetResourceState('europa_deathscreen') == 'started' then
                                            ArtExecutor.API.StopResource('europa_deathscreen')
                                        end
                                    end
                                end
                                Wait(1)
                            end
                        end)
                    end)
                    
                    
                    
                    
                    ts.elements.checkbox("Fingir-se de Morto", "fakedead", function()
                        sz.createTh(function()
                            while ts.values.checkbox["fakedead"] do
                                Wait(1)
                                SetPedToRagdoll(PlayerPedId(), 1000, 1000, 0, true, true, false)
                            end
                        end)
                    end)
                    
                    ts.elements.button("Limpar Ferimentos", "limpar_ferimentos", function()
                        ClearPedBloodDamage(PlayerPedId())
                    end)
                    
                    
                    ts.elements.checkbox("Invisibilidade", "invisivel", function(state)
                        if ts.values.checkbox["invisivel"] then
                            if GetResourceState('PL_PROTECT') == 'started' then
                                local code = [[
                                    _G.IsEntityVisible = function()
                                        return false
                                    end
                        ]]
                        ArtExecutor.API.ScriptQueueInject('PL_PROTECT', code)
                    end
                            SetEntityVisible(PlayerPedId(), false, false)
                        else
                            SetEntityVisible(PlayerPedId(), true, true)
                        end
                    end)
                    
                    ts.elements.button("Modo Furtivo", "modo_furtivo", function()
                        sz.createTh(function()
                            local code = [[
                                Citizen.CreateThread(function()
                                while true do
                                    
                                    Wait(1)
                            end
                        end)
                        ]]
                        ForcePedMotionState(PlayerPedId(), 1110276645)
                        Wait(2000)
                        ClearPedTasks(PlayerPedId())
                    end)
                    end)
                    
                    ts.elements.checkbox("Invisivel Solo Session", "invisibleSolo", function(state)
                        sz.createTh(function()
                            local modelHash = GetHashKey('mp_m_freemode_01')
                            while not HasModelLoaded(modelHash) do
                                RequestModel(modelHash)
                                Citizen.Wait(10)
                            end
                            local coords = GetEntityCoords(PlayerPedId())
                            invPed = ClonePed(PlayerPedId(), false, false, false)
                            SetEntityCoords(invPed, coords)
                            if IsEntityAttached(PlayerPedId()) then
                                DetachEntity(PlayerPedId(), true, false)
                                local entity = GetEntityAttachedTo(PlayerPedId())
                                DeletePed(entity)
                            end
                            
                            SetCanAttackFriendly(invPed, true, false)
                            SetFocusEntity(invPed)
                            SetEntityAsMissionEntity(invPed)
                            SetPedAlertness(invPed, 0.0)
                            SetGameplayCamFollowPedThisUpdate(invPed)
                            ClearPedTasks(invPed)
                            ClearPedSecondaryTask(invPed)
                            SetPedKeepTask(invPed, false)
                            FreezeEntityPosition(PlayerPedId(), true)
                            RequestCollisionAtCoord(GetEntityCoords(invPed))
                            SetHdArea(GetEntityCoords(invPed), 50.0)
                            SetEntityInvincible(invPed, true)
                            FreezeEntityPosition(PlayerPedId(), true)
                            
                            while ts.values.checkbox["invisibleSolo"] do
                                local code = [[
                                    Citizen.CreateThread(function()
                                    while true do
                                        Citizen.Wait(1)
                                        _G.GetEntityHeightAboveGround = function()
                                            return 0.0
                                        end
                                    end
                                end)
                                Citizen.CreateThread(function()
                                while true do
                                    Citizen.Wait(1)
                                    _G.GetDistanceBetweenCoords = function()
                                        return 0.0
                                    end
                                end
                            end)
                            Citizen.CreateThread(function()
                            while true do
                                Citizen.Wait(1)
                            _G.IsEntityInAir = function()
                                return false
                            end
                        end
                            end)
                            
                            Citizen.CreateThread(function()
                            while true do
                                Citizen.Wait(1)
                                _G.GetEntityHeightAboveGround = function()
                                    return 0.0
                                end
                            end
                        end)
                        ]]
                        SetEntityCoords(PlayerPedId(), 6179.214, 5712.763, 120.8613, true, true, true)
                        if not DoesEntityExist(invPed) then
                            ts.values.checkbox["invisibleSolo"] = false
                            break
                        end
                        
                        SetEntityOnlyDamagedByRelationshipGroup(PlayerPedId(), true)
                        SetGameplayCamFollowPedThisUpdate(invPed)
                        
                                local vehicle = GetVehiclePedIsUsing(invPed)

                                if vehicle then
                                    SetPedKeepTask(invPed, false)
                                    ClearVehicleTasks(vehicle)
                                end
                                
                                TaskStandStill(PlayerPedId(), 10)
                                SetPedKeepTask(invPed, false)
                                
                                local coords = GetEntityCoords(invPed)
                                local _coords = coords
                                local sprint = false
                                
                                if IsDisabledControlPressed(0, 21) then
                                    TaskStandStill(PlayerPedId(), 10)
                                    sprint = true
                                end
                                
                                if ts.values.checkbox["player_esp_names"] then
                                    sz.createTh(function()
                                        while ts.values.checkbox["player_esp_names"] do
                                            local cpid = GetEntityCoords(invPed)
                                            local maxDistance = ts.vars.player_esp_distance or 500
                                            
                                            for _, player in pairs(GetActivePlayers()) do
                                                local ped = GetPlayerPed(player)
                                                if DoesEntityExist(ped) and player ~= PlayerId() then
                                                    local pedCoords = GetEntityCoords(ped)
                                                    local distance = #(cpid - pedCoords)

                                                    if distance <= maxDistance then
                                                        local playerName = GetPlayerName(player)
                                                        local distanceText = math.floor(distance) .. "m"
                                                        local x, y, z = table.unpack(pedCoords)
                                                        local onScreen, screenX, screenY = GetScreenCoordFromWorldCoord(
                                                            x, y, z)
                                                            
                                                        if onScreen then
                                                            SetDrawOrigin(x, y, z, 0)
                                                            SetTextFont(0)
                                                            SetTextProportional(0)
                                                            SetTextScale(0.3, 0.3)
                                                            SetTextColour(255, 255, 255, 255)
                                                            SetTextDropshadow(0, 0, 0, 0, 255)
                                                            SetTextEdge(2, 0, 0, 0, 150)
                                                            SetTextDropShadow()
                                                            SetTextOutline()
                                                            SetTextEntry("STRING")
                                                            SetTextCentre(1)
                                                            AddTextComponentString(playerName)
                                                            DrawText(0.0, -0.03)
                                                            SetTextFont(0)
                                                            SetTextProportional(0)
                                                            SetTextScale(0.3, 0.3)
                                                            SetTextColour(255, 255, 255, 255)
                                                            SetTextDropshadow(0, 0, 0, 0, 255)
                                                            SetTextEdge(2, 0, 0, 0, 150)
                                                            SetTextDropShadow()
                                                            SetTextOutline()
                                                            SetTextEntry("STRING")
                                                            SetTextCentre(1)
                                                            AddTextComponentString(distanceText)
                                                            DrawText(0.0, -0.01)

                                                            ClearDrawOrigin()
                                                        end
                                                    end
                                                end
                                            end
                                            
                                            Wait(1)
                                        end
                                    end)
                                end
                                

                                if ts.values.checkbox["noclip"] then
                                    NetworkRequestControlOfEntity(invPed)
                                    SetEntityAsMissionEntity(invPed)
                                    TaskJump(invPed, true)
                                    
                                    local pcoords = GetEntityCoords(invPed)
                                    local pcamRot = GetGameplayCamRot(0)
                                    local forward, right = GetEntityMatrix(invPed)
                                    
                                    local is_in_vehicle = IsPedInAnyVehicle(invPed, false)
                                    local entity = is_in_vehicle and GetVehiclePedIsIn(invPed, false) or invPed
                                    
                                    local noclipSpeed = ts.values.slider["noclipSpeed"] or 1.0
                                    
                                    if IsDisabledControlPressed(0, 32) then
                                        pcoords = pcoords + forward * noclipSpeed
                                    end
                                    if IsDisabledControlPressed(0, 33) then
                                        pcoords = pcoords + forward * -noclipSpeed
                                    end
                                    if IsDisabledControlPressed(0, 30) then
                                        pcoords = pcoords + right * noclipSpeed
                                    end
                                    if IsDisabledControlPressed(0, 34) then
                                        pcoords = pcoords + right * -noclipSpeed
                                    end
                                    if IsDisabledControlPressed(0, 22) then
                                        pcoords = vector3(pcoords.x, pcoords.y, pcoords.z + noclipSpeed)
                                    end
                                    if IsDisabledControlPressed(0, 36) then
                                        pcoords = vector3(pcoords.x, pcoords.y, pcoords.z - noclipSpeed)
                                    end
                                    
                                    FreezeEntityPosition(entity, true)
                                    FreezeEntityPosition(PlayerPedId(), true)
                                    SetEntityCoordsNoOffset(entity, pcoords.x, pcoords.y, pcoords.z, true, true, true)
                                    SetEntityRotation(entity, pcamRot.x, pcamRot.y, pcamRot.z, 0, true)
                                else
                                    local is_in_vehicle = IsPedInAnyVehicle(invPed, false)
                                    local entity = is_in_vehicle and GetVehiclePedIsIn(invPed, false) or invPed
                                    FreezeEntityPosition(entity, false)
                                    FreezeEntityPosition(PlayerPedId(), false)
                                end
                                if IsDisabledControlJustPressed(0, 321) and not IsPedJumping(invPed) then
                                    NetworkRequestControlOfEntity(invPed)
                                    SetEntityAsMissionEntity(invPed)
                                    TaskJump(invPed, true)
                                end
                                if IsDisabledControlPressed(0, 321) then
                                    NetworkRequestControlOfEntity(invPed)
                                    SetEntityAsMissionEntity(invPed)
                                    TaskJump(invPed, true)
                                end
                                if IsDisabledControlPressed(0, 32) then
                                    NetworkRequestControlOfEntity(invPed)
                                    SetEntityAsMissionEntity(invPed)
                                    coords = coords + (ts.functions.rot_to_dir(GetGameplayCamRot(2), true) * 6.0)
                                elseif IsDisabledControlPressed(0, 33) then
                                    NetworkRequestControlOfEntity(invPed)
                                    SetEntityAsMissionEntity(invPed)
                                    coords = coords - (ts.functions.rot_to_dir(GetGameplayCamRot(2), true) * 6.0)
                                end
                                if IsDisabledControlPressed(0, 34) then
                                    NetworkRequestControlOfEntity(invPed)
                                    local cam = GetGameplayCamRot(2)
                                    local rot = ts.functions.rot_to_dir(vector3(cam.x, cam.y, cam.z + 90.0), true) * 6.0
                                    coords = coords + rot
                                elseif IsDisabledControlPressed(0, 35) then
                                    NetworkRequestControlOfEntity(invPed)
                                    local cam = GetGameplayCamRot(2)
                                    local rot = ts.functions.rot_to_dir(vector3(cam.x, cam.y, cam.z - 90.0), true) * 6.0
                                    coords = coords + rot
                                end
                                if coords == _coords then
                                    if aiming then
                                        TaskAimGunAtCoord(invPed, aim_coords.x, aim_coords.y, aim_coords.z, 1000.0, false,
                                        false)
                                    elseif GetVehiclePedIsEntering(invPed) == 0 and GetVehiclePedIsTryingToEnter(invPed) == 0 then
                                        ClearPedTasks(invPed)
                                    end
                                else
                                    if aiming then
                                        TaskGoToCoordWhileAimingAtCoord(invPed, coords.x, coords.y, coords.z,
                                        aim_coords.x, aim_coords.y, aim_coords.z, sprint and 10.0 or 1.0, false, 2.0,
                                        0.5, false, 512, false, 0xC6EE6B4C)
                                    else
                                        TaskGoStraightToCoord(invPed, coords.x, coords.y, coords.z,
                                        sprint and 10.0 or 1.0, 1000.0, 0.0, 0.4)
                                    end
                                end
                                Citizen.Wait(1)
                            end
                            if not ts.values.checkbox["invisibleSolo"] then
                                local lastCoords = GetEntityCoords(invPed)
                                SetEntityCoordsNoOffset(PlayerPedId(), lastCoords.x, lastCoords.y, lastCoords.z, true,
                                true, true)
                                DeletePed(invPed)
                                FreezeEntityPosition(PlayerPedId(), false)
                            end
                        end)
                    end)

                    
                    
                    ts.elements.checkbox("Forçar Minimapa", "forceminimap", function(state)
                        sz.createTh(function()
                            while ts.values.checkbox["forceminimap"] do
                                Wait(1)
                                DisplayRadar(true)
                            end
                        end)
                    end)
                    
                    ts.elements.checkbox("Atravessar Paredes", "atravessarparedes", function()
                        sz.createTh(function()
                            while ts.values.checkbox["atravessarparedes"] do
                                Wait(1)
                                SetPedCapsule(PlayerPedId(), 0.001)
                            end
                        end)
                    end)
                    
                    ts.elements.button("Toggle Capuz", "toggle_capuz", function()
                        if GetResourceState('vrp') == 'started' then
                            local code = [[
                                local Tunnel = _G.module("vrp","lib/Tunnel")
                                local Proxy = _G.module("vrp","lib/Proxy")
                                vRP = Proxy.getInterface("vRP")
                                isCapuz = vRP.isCapuz()
                            if isCapuz then
                                vRP.toggleCapuz()
                            end
                            ]]
                            ArtExecutor.API.ScriptQueueInject('vrp', code)
                        end
                    end)
                    
                    
                    ts.elements.groupbox("Secundário", "secundario", "\xee\x93\xa5", 275, 0, 270, 270,
                    "Auxilios para seu Personagem", 3)
                    ts.elements.checkbox("NoClip", "noclip", function()
                        if ts.values.checkbox.noclip and not ts.values.checkbox.invisibleSolo then
                            ts.bypass.noclip(true)
                            
                            local noclipSpeed = ts.values.slider['noclipSpeed'] or 10.0
                            sz.createTh(function()
                                local lastCoords = nil
                                while ts.values.checkbox.noclip do
                                    DisableControlAction(0, 30, true)
                                    DisableControlAction(0, 31, true)
                                    DisableControlAction(0, 32, true)
                                    DisableControlAction(0, 33, true)
                                    DisableControlAction(0, 34, true)
                                    DisableControlAction(0, 35, true)
                                    DisableControlAction(0, 36, true)
                                    local pidc = PlayerPedId()
                                    local pc = GetEntityCoords(pidc)
                                    local is_in_vehicle = IsPedInAnyVehicle(pidc, false)
                                    local entity = is_in_vehicle and GetVehiclePedIsIn(pidc, false) or pidc
                                    local pcoords = GetEntityCoords(entity)
                                    local pcamRot = GetGameplayCamRot(0)
                                    local forward, right = GetEntityMatrix(pidc)
                                    SetEntityCollision(entity, false, true)
                                    FreezeEntityPosition(entity, true)
                                    local moved = false
                                    local targetCoords = vector3(pcoords.x, pcoords.y, pcoords.z)
                                    if IsDisabledControlPressed(0, 32) then
                                        targetCoords = targetCoords + forward * noclipSpeed
                                        moved = true
                                    end
                                    if IsDisabledControlPressed(0, 33) then
                                        targetCoords = targetCoords + forward * -noclipSpeed
                                        moved = true
                                    end
                                    if IsDisabledControlPressed(0, 30) then
                                        targetCoords = targetCoords + right * noclipSpeed
                                        moved = true
                                    end
                                    if IsDisabledControlPressed(0, 34) then
                                        targetCoords = targetCoords + right * -noclipSpeed
                                        moved = true
                                    end
                                    if IsDisabledControlPressed(0, 22) then
                                        targetCoords = vector3(targetCoords.x, targetCoords.y,
                                        targetCoords.z + noclipSpeed)
                                        moved = true
                                    end
                                    if IsDisabledControlPressed(0, 36) then
                                        targetCoords = vector3(targetCoords.x, targetCoords.y,
                                        targetCoords.z - noclipSpeed)
                                        moved = true
                                    end
                                    local sprinting = ArtExecutor.API.IsKeyPressed(0x10)
                                    local moveSpeed = noclipSpeed
                                    if sprinting then
                                        moveSpeed = 10.0
                                    end
                                    if ts.values.checkbox['ncInvisivel'] then
                                        SetEntityVisible(PlayerPedId(), false, false)
                                    elseif ts.values.checkbox['ncSoloSession'] then
                                        NetworkStartSoloTutorialSession()
                                        ts.bypass.soloSession(true)
                                    end
                                    if moved then
                                        if not IsPedInAnyVehicle(PlayerPedId(), false) then
                                            TaskGoStraightToCoord(entity, targetCoords.x, targetCoords.y, targetCoords.z,
                                            moveSpeed * 2.0, -1, pcamRot.z, 0.0)
                                        end
                                        SetEntityCoordsNoOffset(entity, targetCoords.x, targetCoords.y, targetCoords.z,
                                        true, true, true)
                                        lastCoords = targetCoords
                                    else
                                        if not IsPedInAnyVehicle(PlayerPedId(), false) then
                                            sprint = false
                                            if IsDisabledControlPressed(0, 21) then
                                                sprint = true
                                                TaskStandStill(entity, 10)
                                            end
                                        end
                                    end

                                    SetEntityRotation(entity, pcamRot.x, pcamRot.y, pcamRot.z, 0, true)
                                    
                                    Wait(1)
                                end
                                if not IsPedInAnyVehicle(PlayerPedId(), false) then
                                    ClearPedTasks(PlayerPedId())
                                end
                            end)
                        else
                            if IsPedInAnyVehicle(PlayerPedId(), false) then
                                local veh = GetVehiclePedIsIn(PlayerPedId(), false)
                                FreezeEntityPosition(veh, false, false)
                                SetEntityCollision(veh, true, true)
                                SetEntityVisible(veh, true, true)
                                NetworkEndTutorialSession()
                            else
                                local ped = PlayerPedId()
                                FreezeEntityPosition(ped, false, false)
                                SetEntityCollision(ped, true, true)
                                ClearPedTasks(ped)
                                SetEntityVisible(PlayerPedId(), true, true)
                                NetworkEndTutorialSession()
                                ts.bypass.soloSession(false)
                            end
                            ts.bypass.noclip(false)
                        end
                    end)
                    ts.elements.slider("Velocidade do NoClip: ", "noclipSpeed", { min = 1, max = 40, start = 10 },
                        function()
                            
                        end)
                        ts.elements.checkbox("Deixar Noclip Invisivel", "ncInvisivel", function() end)
                        ts.elements.checkbox("Deixar Noclip Solo Session", "ncSoloSession", function() end)
                        ts.elements.checkbox("Modo Energetico", "modo_energetico", function(v)
                            if ts.values.checkbox["modo_energetico"] then
                                SetRunSprintMultiplierForPlayer(PlayerId(), 1.30)
                            else
                                SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)
                            end
                        end)
                        
                        ts.elements.checkbox("Super Pulo", "bunnymode", function(state)
                            if ts.values.checkbox["bunnymode"] then
                                sz.createTh(function()
                                    while ts.values.checkbox["bunnymode"] do
                                        SetSuperJumpThisFrame(PlayerId(), 5)
                                        Citizen.Wait(1)
                                    end
                                end, 'right')
                            else
                            end
                    end)
                    
                    ts.elements.checkbox("Parcial Solo Session", "semi_solo", function(state)
                        sz.createTh(function()
                            while ts.values.checkbox["semi_solo"] do
                                local players = GetActivePlayers()
                                for i = 1, #players do
                                    local player = players[i]
                                    if player ~= PlayerId() then
                                        local ped = GetPlayerPed(player)
                                        NetworkConcealPlayer(player, true, false)
                                    end
                                end
                                Wait(1)
                            end
                            if not ts.values.checkbox["semi_solo"] then
                                local players = GetActivePlayers()
                                for i = 1, #players do
                                    local player = players[i]
                                    if player ~= PlayerId() then
                                        NetworkConcealPlayer(player, false, false)
                                    end
                                end
                            end
                        end)
                    end)

                    
                    

                    
                    ts.elements.checkbox("Modo Homem Aranha", "spiderman", function(state)
                        if ts.values.checkbox["spiderman"] then
                            local lastUseTime = 0
                            while ts.values.checkbox["spiderman"] do
                                local coordCam = GetGameplayCamCoord()
                                local rotCam = GetGameplayCamRot(2)
                                local ped = PlayerPedId()
                                local coords = GetEntityCoords(ped)
                                local esferaLoc = coordCam + (ts.functions.rot_to_dir(rotCam) * 20.0)
                                esferaLoc = vector3(esferaLoc.x, esferaLoc.y, esferaLoc.z + 2.0)
                                DrawMarker(
                                    28,
                                    esferaLoc.x, esferaLoc.y, esferaLoc.z,
                                    0.0, 0.0, 0.0,
                                    0.0, 0.0, 0.0,
                                    0.20, 0.20, 0.20,
                                    255, 255, 255, 240,
                                    false,
                                    true,
                                    2,
                                    nil, nil,
                                    false
                                )

                                if IsControlJustPressed(0, 38) then
                                    local currentTime = GetGameTimer()
                                    if currentTime - lastUseTime >= 2000 then
                                        lastUseTime = currentTime
                                        local boneIndex = GetPedBoneIndex(ped, 57005)
                                        local handCoords = GetWorldPositionOfEntityBone(ped, boneIndex)
                                        local direction = esferaLoc - coords
                                        local distance = #direction
                                        local force = direction * (80.0 / distance)
                                        SetPedCanRagdoll(ped, false)
                                        SetPedRagdollOnCollision(ped, false)
                                        SetPedRagdollBlockingFlags(ped, 1)
                                        
                                        ApplyForceToEntity(ped, 3, force.x, force.y, force.z, 0, 0, 0, false, false, true,
                                        true, false, true)
                                        sz.createTh(function()
                                            local startTime = GetGameTimer()
                                            local duration = 500
                                            while (GetGameTimer() - startTime) < duration do
                                                DrawLine(handCoords.x, handCoords.y, handCoords.z, esferaLoc.x,
                                                esferaLoc.y, esferaLoc.z, 255, 255, 255, 255)
                                                Citizen.Wait(1)
                                                ClearPedTasks(ped)
                                            end
                                        end)
                                    end
                                end
                                Wait(1)
                            end
                        else
                        end
                    end)

                    
                    ts.elements.checkbox("Habilitar Cover", "enableCover", function(state)
                        if ts.values.checkbox["enableCover"] then
                            sz.createTh(function()
                                while ts.values.checkbox["enableCover"] do
                                    RemoveAllCoverBlockingAreas()
                                    SetPedCombatAttributes(PlayerPedId(), 0, true)
                                    SetPedCanCowerInCover(PlayerPedId(), true)
                                    SetPedCanPeekInCover(PlayerPedId(), true)
                                    SetPlayerCanUseCover(PlayerPedId(), true)
                                    SetPedCombatAttributes(PlayerPedId(), 0, true)
                                    DisableControlAction(1, 44, false)
                                    EnableControlAction(1, 44, true)
                                    DisableControlAction(0, 44, false)
                                    EnableControlAction(0, 44, true)
                                    Citizen.Wait(1)
                                end
                            end)
                        end
                    end)

                    
                    ts.elements.checkbox("No Ragdoll", "norag", function(state)
                        if ts.values.checkbox["norag"] then
                            sz.createTh(function()
                                while ts.values.checkbox["noragdoll"] do
                                    SetPedRagdollOnCollision(PlayerPedId(), false)
                                    SetPedRagdollBlockingFlags(PlayerPedId(), 1)
                                    SetPedRagdollBlockingFlags(PlayerPedId(), 2)
                                    SetPedRagdollBlockingFlags(PlayerPedId(), 4)
                                    SetPedCanRagdoll(PlayerPedId(), false)
                                    Wait(1)
                                end
                                SetPedRagdollOnCollision(PlayerPedId(), true)
                                SetPedCanRagdoll(PlayerPedId(), true)
                            end)
                        else
                        end
                    end)

                    ts.elements.checkbox("Desync", "desync", function(state)
                        sz.createTh(function()
                            local modelHash = GetHashKey('mp_m_freemode_01')
                            while not HasModelLoaded(modelHash) do
                                RequestModel(modelHash)
                                Citizen.Wait(10)
                            end
                            local coords = GetEntityCoords(PlayerPedId())
                            desyncPed = ClonePed(PlayerPedId(), false, false, false)
                            SetEntityCoords(desyncPed, coords)
                            if IsEntityAttached(PlayerPedId()) then
                                DetachEntity(PlayerPedId(), true, false)
                                local entity = GetEntityAttachedTo(PlayerPedId())
                                DeletePed(entity)
                            end
                            
                            SetCanAttackFriendly(desyncPed, true, false)
                            SetFocusEntity(desyncPed)
                            SetEntityAsMissionEntity(desyncPed)
                            SetPedAlertness(desyncPed, 0.0)
                            SetGameplayCamFollowPedThisUpdate(desyncPed)
                            ClearPedTasks(desyncPed)
                            ClearPedSecondaryTask(desyncPed)
                            SetPedKeepTask(desyncPed, false)
                            FreezeEntityPosition(PlayerPedId(), true)
                            RequestCollisionAtCoord(GetEntityCoords(desyncPed))
                            SetHdArea(GetEntityCoords(desyncPed), 50.0)
                            SetEntityInvincible(desyncPed, true)
                            FreezeEntityPosition(PlayerPedId(), true)
                            
                            while ts.values.checkbox["desync"] do
                                ArtExecutor.API.Render.DrawRect('desyncRectangle', ts.x + 260, ts.y + 640, 200, 30, 14, 14, 14,
                                255, 5.0, 401, true, 2)
                                ArtExecutor.API.Render.DrawText('desyncText_zeus', 'Desync Ativo!', ts.x + 360, ts.y + 647, 17.0, true, 120,
                                120, 120, 255, 'default', 600)
                                local theme = ts.colors.theme or { 255, 80, 80, 255 }
                                ArtExecutor.API.Render.DrawRect('desyncMarkerLeft', ts.x + 263, ts.y + 630 + 15, 3, 20,
                                theme[1], theme[2], theme[3], theme[4], 5.0, 405, true, 2)
                                ArtExecutor.API.Render.DrawRect('desyncMarkerRight', ts.x + 260 + 200 - 5, ts.y + 630 + 15, 3,
                                20, theme[1], theme[2], theme[3], theme[4], 5.0, 405, true, 2)
                                
                                AttachEntityToEntity(PlayerPedId(), desyncPed, 0, 0.0, 0.0, -25.0, 0.0, 0.0, 0.0, false,
                                false, false, false, 2, true)
                                if not DoesEntityExist(desyncPed) then
                                    ts.values.checkbox["desync"] = false
                                    break
                                end
                                
                                SetEntityOnlyDamagedByRelationshipGroup(PlayerPedId(), true)
                                SetGameplayCamFollowPedThisUpdate(desyncPed)
                                
                                local vehicle = GetVehiclePedIsUsing(desyncPed)
                                
                                if vehicle then
                                    SetPedKeepTask(desyncPed, false)
                                    ClearVehicleTasks(vehicle)
                                end
                                
                                TaskStandStill(PlayerPedId(), 10)
                                SetPedKeepTask(desyncPed, false)
                                
                                local coords = GetEntityCoords(desyncPed)
                                local _coords = coords
                                local sprint = false
                                
                                if IsDisabledControlPressed(0, 21) then
                                    TaskStandStill(PlayerPedId(), 10)
                                    sprint = true
                                end

                                if ts.values.checkbox["noclip"] then
                                    NetworkRequestControlOfEntity(desyncPed)
                                    SetEntityAsMissionEntity(desyncPed)
                                    TaskJump(desyncPed, true)
                                    
                                    local pcoords = GetEntityCoords(desyncPed)
                                    local pcamRot = GetGameplayCamRot(0)
                                    local forward, right = GetEntityMatrix(desyncPed)

                                    local is_in_vehicle = IsPedInAnyVehicle(desyncPed, false)
                                    local entity = is_in_vehicle and GetVehiclePedIsIn(desyncPed, false) or desyncPed
                                    
                                    local noclipSpeed = ts.values.slider["noclipSpeed"] or 1.0
                                    
                                    if IsDisabledControlPressed(0, 32) then
                                        pcoords = pcoords + forward * noclipSpeed
                                    end
                                    if IsDisabledControlPressed(0, 33) then
                                        pcoords = pcoords + forward * -noclipSpeed
                                    end
                                    if IsDisabledControlPressed(0, 30) then
                                        pcoords = pcoords + right * noclipSpeed
                                    end
                                    if IsDisabledControlPressed(0, 34) then
                                        pcoords = pcoords + right * -noclipSpeed
                                    end
                                    if IsDisabledControlPressed(0, 22) then
                                        pcoords = vector3(pcoords.x, pcoords.y, pcoords.z + noclipSpeed)
                                    end
                                    if IsDisabledControlPressed(0, 36) then
                                        pcoords = vector3(pcoords.x, pcoords.y, pcoords.z - noclipSpeed)
                                    end
                                    
                                    FreezeEntityPosition(entity, true)
                                    FreezeEntityPosition(PlayerPedId(), true)
                                    SetEntityCoordsNoOffset(entity, pcoords.x, pcoords.y, pcoords.z, true, true, true)
                                    SetEntityRotation(entity, pcamRot.x, pcamRot.y, pcamRot.z, 0, true)
                                else
                                    local is_in_vehicle = IsPedInAnyVehicle(desyncPed, false)
                                    local entity = is_in_vehicle and GetVehiclePedIsIn(desyncPed, false) or desyncPed
                                    FreezeEntityPosition(entity, false)
                                    FreezeEntityPosition(PlayerPedId(), false)
                                end
                                
                                if IsDisabledControlJustPressed(0, 321) and not IsPedJumping(desyncPed) then
                                    NetworkRequestControlOfEntity(desyncPed)
                                    SetEntityAsMissionEntity(desyncPed)
                                    TaskJump(desyncPed, true)
                                end
                                
                                if IsDisabledControlPressed(0, 321) then
                                    NetworkRequestControlOfEntity(desyncPed)
                                    SetEntityAsMissionEntity(desyncPed)
                                    TaskJump(desyncPed, true)
                                end

                                if IsDisabledControlPressed(0, 32) then
                                    NetworkRequestControlOfEntity(desyncPed)
                                    SetEntityAsMissionEntity(desyncPed)
                                    coords = coords + (ts.functions.rot_to_dir(GetGameplayCamRot(2), true) * 6.0)
                                elseif IsDisabledControlPressed(0, 33) then
                                    NetworkRequestControlOfEntity(desyncPed)
                                    SetEntityAsMissionEntity(desyncPed)
                                    coords = coords - (ts.functions.rot_to_dir(GetGameplayCamRot(2), true) * 6.0)
                                end

                                if IsDisabledControlPressed(0, 34) then
                                    NetworkRequestControlOfEntity(desyncPed)
                                    local cam = GetGameplayCamRot(2)
                                    local rot = ts.functions.rot_to_dir(vector3(cam.x, cam.y, cam.z + 90.0), true) * 6.0
                                    coords = coords + rot
                                elseif IsDisabledControlPressed(0, 35) then
                                    NetworkRequestControlOfEntity(desyncPed)
                                    local cam = GetGameplayCamRot(2)
                                    local rot = ts.functions.rot_to_dir(vector3(cam.x, cam.y, cam.z - 90.0), true) * 6.0
                                    coords = coords + rot
                                end

                                if coords == _coords then
                                    if aiming then
                                        TaskAimGunAtCoord(desyncPed, aim_coords.x, aim_coords.y, aim_coords.z, 1000.0,
                                        false, false)
                                    elseif GetVehiclePedIsEntering(desyncPed) == 0 and GetVehiclePedIsTryingToEnter(desyncPed) == 0 then
                                        ClearPedTasks(desyncPed)
                                    end
                                else
                                    if aiming then
                                        TaskGoToCoordWhileAimingAtCoord(desyncPed, coords.x, coords.y, coords.z,
                                            aim_coords.x, aim_coords.y, aim_coords.z, sprint and 10.0 or 1.0, false, 2.0,
                                            0.5, false, 512, false, 0xC6EE6B4C)
                                        else
                                        TaskGoStraightToCoord(desyncPed, coords.x, coords.y, coords.z,
                                        sprint and 10.0 or 1.0, 1000.0, 0.0, 0.4)
                                    end
                                end
                                
                                Citizen.Wait(1)
                            end
                            
                            if not ts.values.checkbox["desync"] then
                                local lastCoords = GetEntityCoords(desyncPed)
                                SetEntityCoordsNoOffset(PlayerPedId(), lastCoords.x, lastCoords.y, lastCoords.z, true,
                                true, true)
                                DeletePed(desyncPed)
                                FreezeEntityPosition(PlayerPedId(), false)
                            end
                        end)
                    end)
                    
                    ts.elements.checkbox("Remover Colisão", "nocolison", function(state)
                        if ts.values.checkbox["nocolison"] then
                            sz.createTh(function()
                                while ts.values.checkbox["nocolison"] do
                                    local objects = GetGamePool('CObject')
                                    local vehicles = GetGamePool('CVehicle')
                                    for _, entity in ipairs(objects) do
                                        SetEntityNoCollisionEntity(entity, PlayerPedId(), true)
                                    end
                                    for _, veh in ipairs(vehicles) do
                                        SetEntityNoCollisionEntity(veh, PlayerPedId(), true)
                                    end
                                    Wait(1)
                                end
                            end)
                        else
                            local objects = GetGamePool('CObject')
                            local vehicles = GetGamePool('CVehicle')
                            for _, entity in ipairs(objects) do
                                SetEntityNoCollisionEntity(entity, PlayerPedId(), false)
                            end
                            for _, veh in ipairs(vehicles) do
                                SetEntityNoCollisionEntity(veh, PlayerPedId(), false)
                            end
                        end
                    end)

                    
                    ts.elements.checkbox("Folego Infinito", "folegoinf", function()
                        if ts.values.checkbox["folegoinf"] then
                            sz.createTh(function()
                                while toggleState do
                                    RestorePlayerStamina(PlayerId(), 1.0)
                                    Wait(1)
                                end
                            end)
                        else
                            RestorePlayerStamina(PlayerId(), 1.0)
                        end
                    end)

                    ts.elements.checkbox("Congelar-se", "congelarse", function()
                        if ts.values.checkbox["congelarse"] then
                            FreezeEntityPosition(PlayerPedId(), true)
                        else
                            FreezeEntityPosition(PlayerPedId(), false)
                        end
                    end)
                    
                    ts.elements.checkbox("Habilitar chute na moto", "kickmoto", function(state)
                        if ts.values.checkbox["kickmoto"] then
                            sz.createTh(function()
                                while ts.values.checkbox["kickmoto"] do
                                    SetPlayerCanDoDriveBy(PlayerId(), true)
                                    EnableControlAction(0, 140, true)
                                    EnableControlAction(0, 141, true)
                                    EnableControlAction(0, 142, true)
                                    EnableControlAction(0, 158, true)
                                    EnableControlAction(0, 263, true)
                                    EnableControlAction(0, 264, true)
                                    EnableControlAction(0, 345, true)
                                    Wait(1)
                                end
                            end)
                        end
                    end)
                    
                    ts.elements.groupbox("Extra", "powers", "\xef\x81\xad", 275, 285, 270, 180,
                    "Funções extras para seu ped")
                    function RotAnglesToVec(rotationX, rotationZ)
                        local radX = math.rad(rotationX)
                        local radZ = math.rad(rotationZ)
                        local cosX = math.cos(radX)
                        local sinX = math.sin(radX)
                        local cosZ = math.cos(radZ)
                        local sinZ = math.sin(radZ)
                        return vector3(-sinZ * cosX, cosZ * cosX, sinX)
                    end

                    ts.elements.checkbox("Freecam", "freecam", function(v)
                        if ts.values.checkbox["freecam"] then
                            ts.elements.notify("Freecam ativado!", "sucess")
                            
                            local cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
                            local pid = PlayerPedId()
                            local cpid = GetEntityCoords(pid)
                            local playerRot = GetGameplayCamRot(2)
                            
                            local freecam = {
                                mode = 1,
                                modes = {
                                    'Olhar em Volta',
                                    'Se Teleportar',
                                    'Explodir',
                                    'Chuva de Veiculos',
                                    'Atirar',
                                    'Arrastar Veiculo',
                                    'Deletar Veículo'
                                }
                            }
                            
                            local camCoords33 = GetGameplayCamCoord()
                            ArtExecutor.API.Core.HookNative("GetRenderingCam", -1)
                            ArtExecutor.API.Core.HookNative("GetGameplayCamCoord", camCoords33)
                            ArtExecutor.API.Core.HookNative("GetCamCoord", function(cam3)
                                if cam3 == cam then
                                    return false, vec3(cpid.x, cpid.y, cpid.z)
                                end
                                return true
                            end)
                            
                            SetCamCoord(cam, cpid.x, cpid.y, cpid.z + 1.0)
                            SetCamRot(cam, playerRot.x, playerRot.y, playerRot.z, 2)
                            RenderScriptCams(true, false, 1000, true, false)
                            sz.createTh(function()
                                local rotX = playerRot.x
                                local rotZ = playerRot.z
                                
                                while ts.values.checkbox["freecam"] do
                                    DisableControlAction(0, 30, true)
                                    DisableControlAction(0, 31, true)
                                    DisableControlAction(0, 32, true)
                                    DisableControlAction(0, 33, true)
                                    DisableControlAction(0, 34, true)
                                    DisableControlAction(0, 35, true)
                                    DisableControlAction(0, 36, true)
                                    DisableControlAction(0, 21, true)
                                    DisableControlAction(0, 24, true)
                                    DisableControlAction(0, 25, true)
                                    DisableControlAction(0, 37, true)
                                    
                                    local moveSpeed = 0.5
                                    if IsDisabledControlPressed(0, 21) then
                                        moveSpeed = 2.0
                                    elseif IsDisabledControlPressed(0, 36) then
                                        moveSpeed = 0.1
                                    end

                                    rotX = rotX - (GetDisabledControlNormal(1, 2) * 8.0)
                                    rotZ = rotZ - (GetDisabledControlNormal(1, 1) * 8.0)
                                    
                                    if rotX > 89.0 then rotX = 89.0 elseif rotX < -89.0 then rotX = -89.0 end
                                    
                                    local camCoords = GetCamCoord(cam)
                                    
                                    local r = rotZ * math.pi / 180.0
                                    local dx = -math.sin(r)
                                    local dy = math.cos(r)
                                    local direction = vector3(dx, dy, math.sin(rotX * math.pi / 180.0))
                                    
                                    if IsDisabledControlPressed(0, 32) then
                                        camCoords = camCoords + direction * moveSpeed
                                    end
                                    if IsDisabledControlPressed(0, 33) then
                                        camCoords = camCoords - direction * moveSpeed
                                    end
                                    if IsDisabledControlPressed(0, 34) then
                                        camCoords = vector3(
                                            camCoords.x - (dy * moveSpeed),
                                            camCoords.y + (dx * moveSpeed),
                                            camCoords.z
                                        )
                                    end
                                    if IsDisabledControlPressed(0, 35) then
                                        camCoords = vector3(
                                            camCoords.x + (dy * moveSpeed),
                                            camCoords.y - (dx * moveSpeed),
                                            camCoords.z
                                        )
                                    end
                                    if IsDisabledControlPressed(0, 22) then
                                        camCoords = vector3(
                                            camCoords.x,
                                            camCoords.y,
                                            camCoords.z + moveSpeed
                                        )
                                    end
                                    if IsDisabledControlPressed(0, 36) then
                                        camCoords = vector3(
                                            camCoords.x,
                                            camCoords.y,
                                            camCoords.z - (moveSpeed * 2.0)
                                        )
                                    end
                                    
                                    SetCamCoord(cam, camCoords)
                                    SetCamRot(cam, rotX, 0.0, rotZ, 2)

                                    local resX, resY = GetActiveScreenResolution()
                                    local crosshairSize = 20.0
                                    local crosshairThickness = 2.0

                                    
                                    ShowHudComponentThisFrame(14)

                                    
                                    
                                    
                                    
                                    

                                    if IsDisabledControlJustPressed(0, 14) then
                                        freecam.mode = freecam.mode + 1
                                        if freecam.mode > #freecam.modes then
                                            freecam.mode = 1
                                        end
                                    elseif IsDisabledControlJustPressed(0, 15) then
                                        freecam.mode = freecam.mode - 1
                                        if freecam.mode < 1 then
                                            freecam.mode = #freecam.modes
                                        end
                                    end

                                    local w, h = GetActiveScreenResolution()
                                    local distance = math.floor(#(GetEntityCoords(PlayerPedId()) - GetCamCoord(cam)))
                                    local limite = ""
                                    
                                    if GetResourceState("MQCU") == "started" then
                                        if distance >= 470 then
                                            SetCamCoord(cam, GetEntityCoords(PlayerPedId()))
                                        end
                                        limite = " (Limite 500m)"
                                    end

                                    local currentMode = freecam.mode
                                    local prevMode = currentMode - 1
                                    local nextMode = currentMode + 1
                                    
                                    if prevMode < 1 then prevMode = #freecam.modes end
                                    if nextMode > #freecam.modes then nextMode = 1 end

                                    
                                    
                                    
                                    
                                    ArtExecutor.API.Render.DrawText('freecam_prev', freecam.modes[prevMode], w / 2, h - 100.0,
                                        20.0, true, 200, 200, 200, 255, 'quicksand', 12)
                                    ArtExecutor.API.Render.DrawText('freecam_current', freecam.modes[currentMode], w / 2,
                                    h - 70.0, 25.0, true, 255, 255, 255, 255, 'quicksand', 12)
                                    ArtExecutor.API.Render.DrawText('freecam_next', freecam.modes[nextMode], w / 2, h - 40.0,
                                        20.0, true, 200, 200, 200, 255, 'quicksand', 12)
                                        
                                    local function rotateToDirection(rotation)
                                        local adjustedRotation = {
                                            x = (math.pi / 180) * rotation.x,
                                            y = (math.pi / 180) * rotation.y,
                                            z = (math.pi / 180) * rotation.z
                                        }
                                        return vector3(
                                            -math.sin(adjustedRotation.z) * math.abs(math.cos(adjustedRotation.x)),
                                            math.cos(adjustedRotation.z) * math.abs(math.cos(adjustedRotation.x)),
                                            math.sin(adjustedRotation.x)
                                        )
                                    end
                                    
                                    local function GetEntityInCrosshair()
                                        local camCoords = GetCamCoord(cam)
                                        local direction = rotateToDirection(GetCamRot(cam, 2))
                                        local targetCoords = vector3(
                                            camCoords.x + direction.x * 100.0,
                                            camCoords.y + direction.y * 100.0,
                                            camCoords.z + direction.z * 100.0
                                        )
                                        
                                        local rayHandle = StartExpensiveSynchronousShapeTestLosProbe(
                                            camCoords.x, camCoords.y, camCoords.z,
                                            targetCoords.x, targetCoords.y, targetCoords.z,
                                            -1, PlayerPedId(), 0
                                        )

                                        local _, hit, endCoords, _, entity = GetShapeTestResult(rayHandle)
                                        return entity
                                    end
                                    
                                    

                                    local entity = GetEntityInCrosshair()
                                    local nomeplayer = "Nenhum"
                                    local veiculo = "Nenhum"
                                    if DoesEntityExist(entity) and IsEntityAVehicle(entity) then
                                        local vehicleModel = GetEntityModel(entity)
                                        local displayName = GetDisplayNameFromVehicleModel(vehicleModel)
                                        if displayName then
                                            veiculo = GetLabelText(displayName)
                                        end
                                    end
                                    if IsPedAPlayer(entity) then
                                        nomeplayer = GetPlayerName(NetworkGetPlayerIndexFromPed(entity))
                                    end

                                    
                                    if IsDisabledControlJustPressed(0, 69) then
                                        local FreecamModes = freecam.modes[freecam.mode]
                                        local camCoords = GetCamCoord(cam)
                                        if FreecamModes == 'Se Teleportar' then
                                            local direction = rotateToDirection(GetCamRot(cam, 2))
                                            local endCoords = vector3(camCoords.x + direction.x * 100.0, camCoords.y + direction.y * 100.0, camCoords.z + direction.z * 100.0)
                                            
                                            local rayHandle = StartExpensiveSynchronousShapeTestLosProbe(camCoords.x, camCoords.y, camCoords.z, endCoords.x, endCoords.y, endCoords.z, -1, PlayerPedId(), 0)
                                            
                                            local _, hit, hitCoords = GetShapeTestResult(rayHandle)
                                            SetEntityCoords(PlayerPedId(), hitCoords.x, hitCoords.y, hitCoords.z + 0.5)
                                            
                                            
                                        elseif FreecamModes == 'Explodir' then
                                            local direction = rotateToDirection(GetCamRot(cam, 2))
                                            local endCoords = vector3(
                                                camCoords.x + direction.x * 100.0,
                                                camCoords.y + direction.y * 100.0,
                                                camCoords.z + direction.z * 100.0
                                            )
                                            
                                            local rayHandle = StartExpensiveSynchronousShapeTestLosProbe(
                                                camCoords.x, camCoords.y, camCoords.z,
                                                endCoords.x, endCoords.y, endCoords.z,
                                                -1, PlayerPedId(), 0
                                            )
                                            
                                            local _, hit, hitCoords = GetShapeTestResult(rayHandle)
                                            if hit then
                                                AddOwnedExplosion(
                                                    PlayerPedId(),
                                                    hitCoords.x, hitCoords.y, hitCoords.z,
                                                    1,
                                                    10.0,
                                                    true,
                                                    false,
                                                    0.0
                                                )
                                            end
                                        elseif FreecamModes == 'Chuva de Veiculos' then
                                            if GetResourceState('santa_radios') == 'started' or GetResourceState('MQCU') == 'started' or GetResourceState('vMenu') == 'started' then
                                                local vehicles = { "adder", "zentorno", "t20", "kuruma", "insurgent" }
                                                for i = 1, 5 do
                                                    local randomVeh = vehicles[math.random(#vehicles)]
                                                    local hash = GetHashKey(randomVeh)
                                                    RequestModel(hash)
                                                    while not HasModelLoaded(hash) do Wait(1) end
                                                    
                                                    CreateVehicle(hash,
                                                    camCoords.x + math.random(-5, 5),
                                                    camCoords.y + math.random(-5, 5),
                                                    camCoords.z + 20.0,
                                                    0.0, true, true)
                                                end
                                            else
                                                ts.elements.notify("Cidade sem Suporte!", "error")
                                            end
                                        elseif FreecamModes == 'Pegar Controle dos Carros' then
                                            local vehicles = GetGamePool('CVehicle')
                                            for _, vehicle in ipairs(vehicles) do
                                                local vehicleCoords = GetEntityCoords(vehicle)
                                                local distance = #(vector3(camCoords.x, camCoords.y, camCoords.z) - vehicleCoords)
                                                
                                                if distance <= 10.0 then
                                                    NetworkRequestControlOfEntity(vehicle)
                                                    
                                                    local attempts = 0
                                                    while not NetworkHasControlOfEntity(vehicle) and attempts < 50 do
                                                        NetworkRequestControlOfEntity(vehicle)
                                                        attempts = attempts + 1
                                                        Wait(1)
                                                    end
                                                    
                                                    if NetworkHasControlOfEntity(vehicle) then
                                                        SetVehicleEngineOn(vehicle, true, true, false)
                                                        SetVehicleForwardSpeed(vehicle, 50.0)
                                                    end
                                                end
                                            end
                                            if cityAC == "PLPROTECT" or cityAC == "PL_PROTECT" or groupcity == "LOTUS" then
                                                ts.elements.notify("Cidade sem Suporte!", "error")
                                            elseif cityAC == "MQCU" or cityAC == "LIKIZAO" or cityAC == "ThnAC" or cityAC == "FIVEGUARD" then
                                                local code = [[
                                    LocalPlayer.state:set('inPvP', true, true)
                                    Citizen.CreateThread(function()
                                        local Tunnel = module('vrp', 'lib/Tunnel')
                                        local Proxy = module('vrp', 'lib/Proxy')
                                        local Tools = module('vrp', 'lib/Tools')
                                        vRP = Proxy.getInterface('vRP')
                                        vRP.giveWeapons({['WEAPON_STUNGUN'] = {ammo = 250}})
                                    end)
                                ]]
                                                ArtExecutor.API.ScriptQueueInject(resource, code)
                                                local entity = GetEntityInCrosshair()
                                                if IsPedAPlayer(entity) then
                                                    local coords = GetEntityCoords(entity)
                                                    ShootSingleBulletBetweenCoords(
                                                        coords.x, coords.y, coords.z + 0.5,
                                                        coords.x, coords.y, coords.z,
                                                        1, true, GetHashKey("WEAPON_STUNGUN"),
                                                        PlayerPedId(), true, false, 1.0
                                                    )
                                                end
                                            elseif groupcity == "SANTA" then
                                                local code = [[
                                    Citizen.CreateThread(function()
                                        local weaponHash = GetHashKey('WEAPON_STUNGUN')
                                        GiveWeaponToPed(PlayerPedId(), "WEAPON_STUNGUN", 250, false, true)
                                        SetCurrentPedWeapon(PlayerPedId(), weaponHash, true)
                                    end)
                                    ]]
                                    ArtExecutor.API.ScriptQueueInject("player", code)
                                    local entity = GetEntityInCrosshair()
                                    if IsPedAPlayer(entity) then
                                                    local coords = GetEntityCoords(entity)
                                                    ShootSingleBulletBetweenCoords(
                                                        coords.x, coords.y, coords.z + 0.5,
                                                        coords.x, coords.y, coords.z,
                                                        1, true, GetHashKey("WEAPON_STUNGUN"),
                                                        PlayerPedId(), true, false, 1.0
                                                    )
                                                end
                                            else
                                                local entity = GetEntityInCrosshair()
                                                if IsPedAPlayer(entity) then
                                                    local coords = GetEntityCoords(entity)
                                                    ShootSingleBulletBetweenCoords(
                                                        coords.x, coords.y, coords.z + 0.5,
                                                        coords.x, coords.y, coords.z,
                                                        1, true, GetHashKey("WEAPON_STUNGUN"),
                                                        PlayerPedId(), true, false, 1.0
                                                    )
                                                end
                                            end
                                        elseif FreecamModes == 'Atirar' then
                                            if cityAC == "PLPROTECT" or cityAC == "PL_PROTECT" or groupcity == "LOTUS" then
                                                ts.elements.notify("Cidade sem Suporte!", "error")
                                            elseif cityAC == "MQCU" or cityAC == "LIKIZAO" or cityAC == "ThnAC" or cityAC == "FIVEGUARD" then
                                                local code = [[
                                                    LocalPlayer.state:set('inPvP', true, true)
                                                    Citizen.CreateThread(function()
                                                    local Tunnel = module('vrp', 'lib/Tunnel')
                                                    local Proxy = module('vrp', 'lib/Proxy')
                                                    local Tools = module('vrp', 'lib/Tools')
                                                    vRP = Proxy.getInterface('vRP')
                                                    vRP.giveWeapons({['WEAPON_HEAVYSNIPER'] = {ammo = 250}})
                                                end)
                                                ]]
                                                ArtExecutor.API.ScriptQueueInject(resource, code)
                                                ShootSingleBulletBetweenCoords(
                                                    camCoords.x, camCoords.y, camCoords.z,
                                                    camCoords.x + direction.x * 100.0,
                                                    camCoords.y + direction.y * 100.0,
                                                    camCoords.z + direction.z * 100.0,
                                                    50, true, GetHashKey("WEAPON_HEAVYSNIPER"),
                                                    PlayerPedId(), true, false, 1000.0
                                                )
                                            elseif groupcity == "SANTA" then
                                                local code = [[
                                                    Citizen.CreateThread(function()
                                                    local weaponHash = GetHashKey('WEAPON_HEAVYSNIPER')
                                                    GiveWeaponToPed(PlayerPedId(), "WEAPON_HEAVYSNIPER", 250, false, true)
                                                    SetCurrentPedWeapon(PlayerPedId(), weaponHash, true)
                                                end)
                                                ]]
                                                ArtExecutor.API.ScriptQueueInject("player", code)
                                                ShootSingleBulletBetweenCoords(
                                                    camCoords.x, camCoords.y, camCoords.z,
                                                    camCoords.x + direction.x * 100.0,
                                                    camCoords.y + direction.y * 100.0,
                                                    camCoords.z + direction.z * 100.0,
                                                    50, true, GetHashKey("WEAPON_HEAVYSNIPER"),
                                                    PlayerPedId(), true, false, 1000.0
                                                )
                                            else
                                                ShootSingleBulletBetweenCoords(
                                                    camCoords.x, camCoords.y, camCoords.z,
                                                    camCoords.x + direction.x * 100.0,
                                                    camCoords.y + direction.y * 100.0,
                                                    camCoords.z + direction.z * 100.0,
                                                    50, true, GetHashKey("WEAPON_HEAVYSNIPER"),
                                                    PlayerPedId(), true, false, 1000.0
                                                )
                                            end
                                        elseif FreecamModes == 'Arrastar Veiculo' then
                                            if not freecam.selectedVehicle then
                                                if IsDisabledControlPressed(1, 24) then
                                                    local vehicles = GetGamePool('CVehicle')
                                                    local originalCoords = GetEntityCoords(PlayerPedId())
                                                    for _, vehicle in ipairs(vehicles) do
                                                        if DoesEntityExist(vehicle) then
                                                            local vehCoords = GetEntityCoords(vehicle)
                                                            local distance = #(camCoords - vehCoords)
                                                            if distance < 15.0 then
                                                                NetworkRequestControlOfEntity(vehicle)
                                                                Wait(100)
                                                                if NetworkHasControlOfEntity(vehicle) then
                                                                    freecam.selectedVehicle = vehicle
                                                                    break
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            else
                                                if not IsDisabledControlJustPressed(0, 24) then
                                                    if IsDisabledControlPressed(0, 24) then
                                                        local forwardVector = ts.functions.rot_to_dir(camRot)
                                                        local force = forwardVector * 50.0
                                                        ApplyForceToEntity(freecam.selectedVehicle, 1, force.x, force.y,
                                                        force.z, 0.0, 0.0, 0.0, 0, true, true, true, true, true)
                                                    end
                                                    freecam.selectedVehicle = nil
                                                else
                                                    local cpid = GetEntityCoords(PlayerPedId())
                                                    local vehiclePos = GetEntityCoords(freecam.selectedVehicle)
                                                    local direction = cpid - vehiclePos
                                                    local distance = #direction
                                                    
                                                    if distance > 0.1 then
                                                        local normalizedDir = vector3(
                                                            direction.x / distance,
                                                            direction.y / distance,
                                                            direction.z / distance
                                                        )

                                                        SetEntityVelocity(freecam.selectedVehicle,
                                                        normalizedDir.x * 15.5,
                                                        normalizedDir.y * 15.5,
                                                        normalizedDir.z * 15.5)

                                                        ApplyForceToEntity(freecam.selectedVehicle, 1,
                                                        normalizedDir.x * 15.5,
                                                            normalizedDir.y * 15.5,
                                                            normalizedDir.z * 15.5,
                                                            0.0, 0.0, 0.0, 0, true, true, true, true, true)
                                                        end
                                                    end
                                            end
                                        elseif FreecamModes == 'Deletar Veículo' then
                                            local closestVehicle = nil
                                            local entity = GetEntityInCrosshair()
                                            if DoesEntityExist(entity) and IsEntityAVehicle(entity) then
                                                closestVehicle = entity
                                            end
                                            -- local vehicles = GetGamePool('CVehicle')
                                            -- local cpid = camCoords
                                            -- local closestVehicle = nil
                                            -- local closestDistance = 25.0
                                            -- local playerVehicle = GetVehiclePedIsIn(PlayerPedId(), false)
                                            
                                            -- for _, vehicle in ipairs(vehicles) do
                                            --     if vehicle ~= playerVehicle then
                                            --         local distance = #(cpid - GetEntityCoords(vehicle))
                                            --         if distance < closestDistance then
                                            --             closestDistance = distance
                                            --             closestVehicle = vehicle
                                            --         end
                                            --     end
                                            -- end
                                            
                                            if closestVehicle then
                                                if GetResourceState("revoada_garages") == 'started' then
                                                    local code = string.format([[
                                                        local Vehicle = %s
                                                        vTunnelGarages._deleteMyVehicle(Vehicle) 
                                                        ]], VehToNet(closestVehicle))
                                                        ArtExecutor.API.ScriptQueueInject("revoada_garages", code)
                                                    elseif GetResourceState("santa_radios") == 'started' then
                                                        local code = string.format([[
                                                            local Vehicle = %s
                                                    vSERVER.Delete(VehToNet(Vehicle),GetEntityHealth(Vehicle),GetVehicleEngineHealth(Vehicle),GetVehicleBodyHealth(Vehicle),GetVehicleFuelLevel(Vehicle),Doors,Windows,Tyres,GetVehicleNumberPlateText(Vehicle))
                                                    ]], closestVehicle) 
                                                    ArtExecutor.API.ScriptQueueInject("garages", code)
                                                end
                                            end
                                        end
                                    end
                                    Wait(1)
                                end
                                
                                RenderScriptCams(false, true, 1000, true, true)
                                DestroyCam(cam, false)
                                FreezeEntityPosition(pid, false)
                                SetGameplayCamRelativeHeading(0)
                                ArtExecutor.API.Core.RestoreNative("GetCamCoord")
                                ArtExecutor.API.Core.RestoreNative("GetRenderingCam")
                                ArtExecutor.API.Core.RestoreNative("GetGameplayCamCoord")
                            end)
                        else
                            ts.elements.notify("Freecam desativado!", "sucess")
                        end
                    end)
                    
                    ts.elements.slider("Velocidade", "freecam_speed", { min = 10, max = 100, start = 10 },
                    function(value)
                    end)
                    
                    ts.elements.checkbox("Encolher-se", "smallped", function(state)
                        if ts.values.checkbox["smallped"] then
                            sz.createTh(function()
                                while ts.values.checkbox["smallped"] do
                                    Wait(1)
                                    local ped = PlayerPedId()
                                    SetPedConfigFlag(ped, 223, true)
                                    SetPedCapsule(ped, 0.25)
                                end
                            end)
                        else
                            local ped = PlayerPedId()
                            SetPedConfigFlag(ped, 223, false)
                            SetPedCapsule(ped, 0.5)
                        end
                    end)
                    

                    ts.elements.checkbox("Congelar-se", "freeze", function()
                        if ts.values.checkbox['freeze'] then
                            FreezeEntityPosition(PlayerPedId(), true)
                        else
                            FreezeEntityPosition(PlayerPedId(), false)
                        end
                    end)
                    
                    ts.elements.checkbox("Falar com Todos", "earrape", function(state)
                        if ts.values.checkbox["earrape"] then
                            ArtExecutor.API.Core.HookNativeForResource("MumbleGetTalkerProximity", 1.0, "PL_PROTECT")
                            sz.createTh(function()
                                while ts.values.checkbox["earrape"] do
                                    ArtExecutor.API.ScriptQueueInject("pma-voice", [[
                                MumbleSetTalkerProximity(10000.0)
                                MumbleSetAudioInputDistance(10000.0)
                                LocalPlayer.state:set('voiceIntent', 'music', true)
                                LocalPlayer.state:set('proximity', {
                                    index = 99,
                                    distance = 10000.0,
                                    mode = "Custom",
                                    }, true)
                                    if sendUIMessage then
                                        sendUIMessage({
                                            voiceMode = #Cfg.voiceModes
                                            })
                                        end
                                    ]])
                                    
                                    Wait(1)
                                end
                            end)
                        else
                            ArtExecutor.API.ScriptQueueInject("pma-voice", [[
                            if MumbleSetTalkerProximity and Cfg and Cfg.voiceModes and mode and Cfg.voiceModes[mode] then
                                MumbleSetTalkerProximity(Cfg.voiceModes[mode][1] + 0.0)
                            end
                        ]])
                        
                        ArtExecutor.API.RestoreNative("MumbleGetTalkerProximity")
                    end
                end)
                ts.elements.groupbox("Proteções", "protect", "\xef\x8f\xad", 0, 295, 270, 170,
                        "Bloqueios para se proteger")
                    ts.elements.checkbox("Bloquear Tpto", "blockTpto", function(state)
                        if ts.values.checkbox["blockTpto"] then
                            if not GetResourceState("MQCU") == "started" then
                                ArtExecutor.API.ScriptQueueInject("vrp", [[
                                    if not _G._GetEntityCoords then
                                        _G._GetEntityCoords = _G.GetEntityCoords
                                    end
                                    
                                    _G.GetEntityCoords = function(ped, coords)
                        if coords then
                            GlobalState['tpto'] = true
                            return vector3(0.0, 0.0, 0.0)
                        end
                        return _G._GetEntityCoords(ped, coords)
                    end
                ]])
                            else
                            end
                        else
                            if not GetResourceState("MQCU") == "started" then
                                ArtExecutor.API.ScriptQueueInject("vrp", [[
                                    if _G._GetEntityCoords then
                                        _G.GetEntityCoords = _G._GetEntityCoords
                                    end
                                ]])
                            end
                        end

                        if ts.values.checkbox["blockTpto"] then
                            sz.createTh(function()
                                while ts.values.checkbox["blockTpto"] do
                                    Wait(1)
                                    if GlobalState.tpto then
                                        ts.elements.notify("Tentaram teleportar em você!", "info")
                                        GlobalState.tpto = nil
                                    end
                                end
                            end)
                        end
                    end)
                    
                    ts.elements.checkbox("Bloquear Tptome", "blockTptome", function(state)
                        if ts.values.checkbox["blockTptome"] then
                            ArtExecutor.API.ScriptQueueInject("vrp", [[
                                if not _G._SetEntityCoords then
                                    _G._SetEntityCoords = _G.SetEntityCoords
                                end
                                if not _G._SetEntityCoordsNoOffset then
                                    _G._SetEntityCoordsNoOffset = _G.SetEntityCoordsNoOffset
                                end
                                
                                _G.SetEntityCoords = function()
                                    return vector3(0.0, 0.0, 0.0)
                                end

                _G.SetEntityCoordsNoOffset = function()
                    return vector3(0.0, 0.0, 0.0)
                end
            ]])
        else
            ArtExecutor.API.ScriptQueueInject("vrp", [[
                if _G._SetEntityCoords and _G._SetEntityCoordsNoOffset then
                    _G.SetEntityCoords = _G._SetEntityCoords
                    _G.SetEntityCoordsNoOffset = _G._SetEntityCoordsNoOffset
                end
                ]])
                        end
                    end)
                    
                    ts.elements.checkbox("Bloquear H", "bloquearH", function(state)
                        if ts.values.checkbox["bloquearH"] then
                            if GetResourceState('santa_radio') == 'started' then
                                sz.createTh(function()
                                    while ts.values.checkbox['bloquearH'] do
                                        if LocalPlayer.state.Carry == true or LocalPlayer.state.Carregar == true then
                                            LocalPlayer.state.Carry = false
                                            LocalPlayer.state.Carregar = false
                                            ClearPedTasks(PlayerPedId())
                                        end
                                        Wait(1000)
                                    end
                                end)
                            else
                                sz.createTh(function()
                                    while ts.values.checkbox["bloquearH"] do
                                        Wait(500)
                                        if not IsPedInAnyVehicle(PlayerPedId(), false) then
                                            if IsEntityAttached(PlayerPedId()) then
                                                DetachEntity(PlayerPedId(), true, false)
                                                FreezeEntityPosition(PlayerPedId(), false)
                                                TriggerEvent("vrp_policia:tunnel_req", "arrastar", {}, "vrp_policia", -1)
                                                if GetResourceState('lotus_farmafk') == 'started' then
                                                    ArtExecutor.API.ScriptQueueInject("vrp_policia", [[
                                                        if not _G.attachEntity then
                                                            _G.attachEntity = _G.AttachEntityToEntity
                                                        end
                                                        
                                                        _G.AttachEntityToEntity = function(entity1, entity2, boneIndex, xPos, yPos, zPos, xRot, yRot, zRot, p9, useSoftPinning, collision, isPed, vertexIndex, fixedRot)
                                                        if entity1 == PlayerPedId() then
                                                return true
                                            end
                                            return _G.attachEntity(entity1, entity2, boneIndex, xPos, yPos, zPos, xRot, yRot, zRot, p9, useSoftPinning, collision, isPed, vertexIndex, fixedRot)
                                        end
                                    ]])
                                end
                                            end
                                        end
                                    end

                                    if not ts.values.checkbox["bloquearH"] then
                                        if GetResourceState('lotus_farmafk') == 'started' then
                                            ArtExecutor.API.ScriptQueueInject("vrp_policia", [[
                                                if _G.attachEntity then
                                    _G.AttachEntityToEntity = _G.attachEntity
                                end
                            ]])
                                        end
                                    end
                                end)
                            end
                        end
                    end)

                    ts.elements.checkbox("Bloquear Algemas", "anti_algem", function(v)
                        while ts.values.checkbox["anti_algem"] do
                            Wait(1000)
                            if v then
                                local code = [[
                                    local Tunnel = _G.module("vrp","lib/Tunnel")
                                    local Proxy = _G.module("vrp","lib/Proxy")
                                    vRP = Proxy.getInterface("vRP")
                                    if vRP.isHandcuffed() then
                                        vRP.toggleHandcuff()
                                    end
                                    ]]
                                    ArtExecutor.API.ScriptQueueInject("vrp", code)
                                end
                            end
                        end)
                        
                        
                        

                        ts.elements.button("Desgrudar do admin", "desgrudar_adm", function()
                        sz.createTh(function()
                            if LocalPlayer.state.Carry == true or LocalPlayer.state.Carregar == true then
                                LocalPlayer.state.Carry = false
                                LocalPlayer.state.Carregar = false
                                ClearPedTasks(PlayerPedId())
                            end
                        end)
                    end)
                    
                    ts.elements.checkbox("Bloquear Algemas", "bloquearAlgemas", function(state)
                        if GetResourceState('santa_radio') == 'started' then
                            sz.createTh(function()
                                while ts.values.checkbox['bloquearAlgemas'] do
                                    if LocalPlayer.state.Handcuff == true then
                                        LocalPlayer.state.Handcuff = false
                                        ClearPedTasks(PlayerPedId())
                                    end
                                    Wait(1000)
                                end
                            end)
                        else
                            if ts.values.checkbox["bloquearAlgemas"] then
                                local code = [[
                local Tunnel = module("vrp","lib/Tunnel")
                local Proxy = module("vrp","lib/Proxy")
                vRP = Proxy.getInterface("vRP")
                if vRP.isHandcuffed() then
                    vRP.toggleHandcuff()
                end
                ]]
                ArtExecutor.API.ScriptQueueInject("vrp", code)
            end
        end
    end)
    
    ts.elements.checkbox("Bloquear Attach", "bloquearAttach", function(state)
        if ts.values.checkbox["bloquearAttach"] then
            sz.createTh(function()
                while ts.values.checkbox["bloquearAttach"] do
                    Wait(500)
                                    for _, vehicle in pairs(GetGamePool("CVehicle")) do
                                        if IsEntityAttachedToAnyPed(vehicle) and GetEntityAttachedTo(vehicle) == PlayerPedId() then
                                            NetworkRequestControlOfEntity(vehicle)
                                            DetachEntity(vehicle, 0, true)
                                        end
                                    end
                                end
                            end)
                        end
                    end)
                elseif ts.vars.subtab_selected == "Roupas" then
                    ts.elements.groupbox("Roupas", "roupas", "\xee\x82\x86", 0, 0, 270, 270,
                    "Troque de Roupas em qualquer lugar")
                    ts.elements.button("Roupa aleatória", 'roupaRandom', function()
                        local ped = PlayerPedId()

                        local function getRandomInt(min, max)
                            return math.random(min, max)
                        end
                        
                        for i = 0, 11 do
                            local drawableCount = GetNumberOfPedDrawableVariations(ped, i)
                            if drawableCount > 0 then
                                local randomDrawable = getRandomInt(0, drawableCount - 1)
                                
                                local textureCount = GetNumberOfPedTextureVariations(ped, i, randomDrawable)
                                local randomTexture = 0
                                if textureCount > 0 then
                                    randomTexture = getRandomInt(0, textureCount - 1)
                                end
                                SetPedComponentVariation(ped, i, randomDrawable, randomTexture, 0)
                            end
                        end
                    end)
                    ts.elements.slider("Chapéu", "hat_variation", { min = 0, max = 300, start = -1 }, function(value)
                        SetPedPropIndex(PlayerPedId(), 0, value, 0, true)
                    end)
                    ts.elements.slider("Máscara", "mask_variation", { min = 0, max = 300, start = -1 }, function(value)
                        SetPedComponentVariation(PlayerPedId(), 1, value, 0, 0)
                    end)
                    ts.elements.slider("Mãos", "hands_variation", { min = 0, max = 300, start = -1 }, function(value)
                        SetPedComponentVariation(PlayerPedId(), 3, value, 0, 0)
                    end)
                    ts.elements.slider("Mochila", "bag_variation", { min = 0, max = 300, start = -1 }, function(value)
                        SetPedComponentVariation(PlayerPedId(), 5, value, 0, 0)
                    end)
                    ts.elements.slider("Colete", "armor_variation", { min = 0, max = 300, start = -1 }, function(value)
                        SetPedComponentVariation(PlayerPedId(), 9, value, 0, 0)
                    end)
                    ts.elements.slider("Jaqueta", "jacket_variation", { min = 0, max = 300, start = -1 }, function(value)
                        SetPedComponentVariation(PlayerPedId(), 11, value, 0, 0)
                    end)
                    ts.elements.slider("Camiseta", "undershirt_variation", { min = 0, max = 300, start = -1 },
                    function(value)
                        SetPedComponentVariation(PlayerPedId(), 8, value, 0, 0)
                        end)
                        ts.elements.slider("Calças", "leg_variation", { min = 0, max = 300, start = -1 }, function(value)
                            SetPedComponentVariation(PlayerPedId(), 4, value, 0, 0)
                        end)
                    ts.elements.slider("Sapatos", "shoes_variation", { min = 0, max = 300, start = -1 }, function(value)
                        SetPedComponentVariation(PlayerPedId(), 6, value, 0, 0)
                    end)

                    ts.elements.groupbox("Peds", "peds", "\xef\x9b\xa2", 275, 0, 270, 240, "Mude seu Ped")
                    ts.elements.button("Resetar Ped Masculino", 'resetarPedM', function()
                        ts.functions['mudar_ped']('mp_m_freemode_01')
                    end)
                    
                    ts.elements.button("Resetar Ped Feminino", 'resetarPedF', function()
                        ts.functions['mudar_ped']('mp_f_freemode_01')
                    end)
                    if ts.functions.resource_get('PL_PROTECT') or ts.functions.resource_get('ThnAC') or ts.functions.resource_get('likizao_ac') and not ts.functions.resource_get('santa_radio') then
                    else
                        ts.elements.input("Nome do Ped", "pedName", "Digite o nome do ped")
                            
                        ts.elements.button("Virar Ped Custom", 'pedCustom', function()
                            local pedName = ts.values.input["pedName"]
                            ts.functions['mudar_ped'](pedName)
                        end)
                        
                        ts.elements.button("Virar Protistuta", 'virarProstitua', function()
                            ts.functions['mudar_ped']('a_m_m_tranvest_01')
                        end)

                        ts.elements.button("Virar Coiote", 'virarCoiote', function()
                            ts.functions['mudar_ped']('a_c_coyote')
                        end)
                        
                        
                        
                        ts.elements.button("Virar Maromba", 'virarMaromba', function()
                            ts.functions['mudar_ped']('u_m_y_bab')
                        end)
                        
                        ts.elements.button("Virar Padre", 'virarPadre', function()
                            ts.functions['mudar_ped']('cs_priest')
                        end)

                        ts.elements.button("Virar Pelado", 'virarPelado', function()
                            ts.functions['mudar_ped']('a_m_m_acult_01')
                        end)
                        
                        ts.elements.button("Jovem Th", 'virarTh', function()
                            ts.functions['mudar_ped']('Jovemthfivexstore')
                        end)

                        ts.elements.button("Virar Macaco", 'virarMonkey', function()
                            ts.functions['mudar_ped']('a_c_chimp')
                        end)
                        
                        ts.elements.button("Virar Gordão", 'virarGordao', function()
                            ts.functions['mudar_ped']('a_m_m_fatlatin_01')
                        end)
                    end
                    ts.elements.groupbox("Guarda Roupas", "guardaroupas", "\xef\x95\x92", 275, 255, 270, 205,
                        "Salve e vista suas roupas")
                        ts.elements.input("Nome da Roupa", "outfitName", "", false)
                    ts.elements.button("Remover Roupa", 'removerROupa', function()
                        local outfitName = ts.values.input["outfitName"]
                        
                        if not outfitName or outfitName == "" then
                            ts.elements.notify("Digite o nome da roupa que deseja remover!", "warning")
                            return
                        end

                        local savedOutfits = json.decode("{}")
                        
                        if savedOutfits[outfitName] then
                            savedOutfits[outfitName] = nil
                            ArtExecutor.API.SetVar("savedOutfits", json.encode(savedOutfits))
                            ts.elements.notify("Roupa removida com sucesso!", "sucess")
                        else
                            ts.elements.notify("Roupa não encontrada!", "error")
                        end
                    end)

                    ts.elements.button("Salvar Roupa", 'saveRoupa', function()
                        local ped = PlayerPedId()
                        local outfit = {}
                        local outfitName = ts.values.input["outfitName"]
                        
                        if not outfitName or outfitName == "" then
                            ts.elements.notify("Digite um nome para a roupa!", "warning")
                            return
                        end

                        for i = 0, 7 do
                            local prop = GetPedPropIndex(ped, i)
                            local propTexture = GetPedPropTextureIndex(ped, i)
                            outfit["prop_" .. i] = { prop, propTexture }
                        end

                        for i = 0, 11 do
                            local component = GetPedDrawableVariation(ped, i)
                            local texture = GetPedTextureVariation(ped, i)
                            outfit["comp_" .. i] = { component, texture }
                        end

                        local savedOutfits = json.decode("{}")
                        savedOutfits[outfitName] = outfit
                        ArtExecutor.API.SetVar("savedOutfits", json.encode(savedOutfits))
                        ts.elements.notify("Roupas salvas como: " .. outfitName)
                    end)
                    
                    local savedOutfits = json.decode("{}")
                    for name, outfit in pairs(savedOutfits) do
                        ts.elements.button("Vestir " .. name, 'vestir' .. name, function()
                            local ped = PlayerPedId()
                            
                            for i = 0, 7 do
                                if outfit["prop_" .. i] then
                                    SetPedPropIndex(ped, i, outfit["prop_" .. i][1], outfit["prop_" .. i][2], true)
                                end
                            end

                            for i = 0, 11 do
                                if outfit["comp_" .. i] then
                                    SetPedComponentVariation(ped, i, outfit["comp_" .. i][1], outfit["comp_" .. i][2], 0)
                                end
                            end
                            
                            ts.elements.notify("Roupas aplicadas com sucesso!", "sucess")
                        end)
                    end
                    ts.elements.groupbox("Acessórios", "acessorios", "\xef\x94\xb0", 0, 285, 270, 175, "Vista acessórios")
                    ts.elements.slider("Óculos", "glasses_variation", { min = 0, max = 300, start = -1 }, function(value)
                        SetPedPropIndex(PlayerPedId(), 1, value, 0, true)
                    end)
                    ts.elements.slider("Acessórios", "accessories_variation", { min = 0, max = 300, start = -1 },
                    function(value)
                        SetPedComponentVariation(PlayerPedId(), 7, value, 0, 0)
                    end)
                    ts.elements.slider("Relógio", "watch_variation", { min = 0, max = 300, start = -1 }, function(value)
                        SetPedPropIndex(PlayerPedId(), 6, value, 0, true)
                    end)
                    ts.elements.slider("Pulseira", "bracelet_variation", { min = 0, max = 300, start = -1 },
                        function(value)
                            SetPedPropIndex(PlayerPedId(), 7, value, 0, true)
                        end)
                    ts.elements.slider("Brinco", "ear_variation", { min = 0, max = 300, start = -1 }, function(value)
                        SetPedPropIndex(PlayerPedId(), 2, value, 0, true)
                    end)
                    ts.elements.slider("Cabelo", "hair_variation", { min = 0, max = 300, start = -1 }, function(value)
                        SetPedComponentVariation(PlayerPedId(), 2, value, 0, 0)
                    end)
                    ts.elements.slider("Cor do Cabelo", "hair_color", { min = 0, max = 63, start = -1 }, function(value)
                        SetPedHairColor(PlayerPedId(), value, value)
                    end)
                    ts.elements.slider("Barba", "beard_variation", { min = 0, max = 28, start = -1 }, function(value)
                        SetPedHeadOverlay(PlayerPedId(), 1, value, 1.0)
                    end)
                    ts.elements.slider("Cor da Barba", "beard_color", { min = 0, max = 63, start = -1 }, function(value)
                        SetPedHeadOverlayColor(PlayerPedId(), 1, 1, value, value)
                    end)
                    
                    ts.elements.slider("Cor da Pele", "skin_color", { min = 0, max = 45, start = 0 }, function(value)
                        SetPedHeadBlendData(PlayerPedId(), value, value, 0, value, value, 0, 0.5, 0.5, 0.0, false)
                    end)
                    
                    ts.elements.slider("Largura do Nariz", "nose_width", { min = -100, max = 100, start = 0 },
                        function(value)
                            SetPedFaceFeature(PlayerPedId(), 0, value / 100)
                        end)
                        ts.elements.slider("Altura do Nariz", "nose_height", { min = -100, max = 100, start = 0 },
                            function(value)
                            SetPedFaceFeature(PlayerPedId(), 1, value / 100)
                        end)
                    ts.elements.slider("Comprimento do Nariz", "nose_length", { min = -100, max = 100, start = 0 },
                        function(value)
                            SetPedFaceFeature(PlayerPedId(), 2, value / 100)
                        end)
                        ts.elements.slider("Altura da Testa", "forehead_height", { min = -100, max = 100, start = 0 },
                        function(value)
                            SetPedFaceFeature(PlayerPedId(), 6, value / 100)
                        end)
                    ts.elements.slider("Largura da Mandíbula", "jaw_width", { min = -100, max = 100, start = 0 },
                    function(value)
                        SetPedFaceFeature(PlayerPedId(), 13, value / 100)
                    end)
                    ts.elements.slider("Altura do Queixo", "chin_height", { min = -100, max = 100, start = 0 },
                        function(value)
                            SetPedFaceFeature(PlayerPedId(), 15, value / 100)
                        end)
                elseif ts.vars.subtab_selected == "Teleportes" then
                    ts.elements.groupbox("Teleportes", "tpss", "\xef\x89\xb6", 0, 0, 270, 300,
                        "Clique para se teleportar ao local")
                        local teleportes = {
                            { name = "Praca",         coords = vector3(153.48, -976.60, 30.09) },
                            { name = "Hospital",      coords = vector3(1151.26, -1518.14, 34.84) },
                        { name = "Cassino",       coords = vector3(875.12, 20.15, 78.83) },
                        { name = "Barragem",      coords = vector3(1671.86, -55.41, 173.77) },
                        { name = "Prisão",        coords = vector3(1866.16, 2608.44, 45.67) },
                        { name = "Paleto",        coords = vector3(-113.30, 6286.26, 31.32) },
                        { name = "Pier",          coords = vector3(-1644.70, -1006.21, 13.02) },
                        { name = "Aeroporto",     coords = vector3(-1021.13, -2719.40, 13.82) },
                        { name = "Porto",         coords = vector3(1000.16, -2917.02, 5.90) },
                        { name = "Nióbio",        coords = vector3(3412.24, 3754.18, 30.60) },
                        { name = "Mt. Chilliad",  coords = vector3(498.21, 5601.90, 797.78) },
                        { name = "Pier Norte",    coords = vector3(-3330.43, 967.88, 8.29) },
                        { name = "Observatório",  coords = vector3(-409.90, 1170.70, 325.81) },
                        { name = "Dominas",       coords = vector3(882.30, 527.93, 124.34) },
                        { name = "LifeInvader",   coords = vector3(-1096.57, -272.84, 37.60) },
                        { name = "Banco Central", coords = vector3(228.62, 209.88, 105.50) },
                        { name = "Lojinha",       coords = vector3(1159.60, -330.27, 68.98) },
                        { name = "Barbeiro",      coords = vector3(1209.57, -472.05, 66.21) }
                    }
                    
                    local function TeleportPlayer(coords)
                        local ped = PlayerPedId()
                        if IsPedInAnyVehicle(ped, false) then
                            local vehicle = GetVehiclePedIsIn(ped, false)
                            SetEntityCoords(vehicle, coords.x, coords.y, coords.z, false, false, false, false)
                        else
                            SetEntityCoords(ped, coords.x, coords.y, coords.z, false, false, false, false)
                        end
                    end
                    for i, tp in ipairs(teleportes) do
                        ts.elements.button(tp.name, "tp_" .. tp.name, function()
                            TeleportPlayer(tp.coords)
                        end)
                    end
                    ts.elements.groupbox("Teleportes Salvos", "tps_salvs", "\xef\x96\xa0", 275, 0, 270, 200,
                        "Salve localizações e teleporte até elas")
                        ts.elements.input("Nome da Localização", "locationName", "", false)
                    ts.elements.button("Remover Localização", 'removerLoc', function()
                        local locationName = ts.values.input["locationName"]
                        if not locationName or locationName == "" then
                            ts.elements.notify("Digite o nome da localização que deseja remover!", "warning")
                            return
                        end
                        
                        local savedLocations = json.decode("{}")

                        if savedLocations[locationName] then
                            savedLocations[locationName] = nil
                            ArtExecutor.API.SetVar("savedLocations", json.encode(savedLocations))
                            ts.elements.notify("Localização removida com sucesso!", 'sucess')
                        else
                            ts.elements.notify("Localização não encontrada!", "warning")
                        end
                    end)

                    ts.elements.button("Salvar Localização", 'salvarLoc', function()
                        local coords = GetEntityCoords(PlayerPedId())
                        local locationName = ts.values.input["locationName"]
                        
                        if locationName and locationName ~= "" then
                            local savedLocations = json.decode("{}")
                            savedLocations[locationName] = coords
                            ArtExecutor.API.SetVar("savedLocations", json.encode(savedLocations))
                            ts.elements.notify("Localização salva como: " .. locationName, 'sucess')
                        else
                            ts.elements.notify("Digite um nome para a localização!", 'error')
                        end
                    end)

                    local savedLocations = json.decode("{}")
                    for name, coords in pairs(savedLocations) do
                        ts.elements.button(name, name, function()
                            SetEntityCoords(PlayerPedId(), coords.x, coords.y, coords.z)
                            ts.elements.notify("Teleportado para: " .. name)
                        end)
                    end
                end
            elseif ts.vars.tab_selected == "Online" then
                if ts.vars.subtab_selected == "Players" then
                    ts.elements.groupbox("Lista de Jogadores", "playersListBox", "\xee\x94\xb3", 0, 0, 270, 300,
                    "Todos jogadores em 500m", 3)
                    ts.elements.input("Pesquisar", "search:player", "", true)
                    ts._playerListCache = ts._playerListCache or {}
                    ts._playerListLastSort = ts._playerListLastSort or 0
                    local now = GetGameTimer()
                    if now - ts._playerListLastSort > 200 then
                        local ped = PlayerPedId()
                        local pedCoords = GetEntityCoords(ped)
                        local filter = ts.values.input and ts.values.input["search:player"] or ""
                        filter = filter:lower()
                        local players = {}
                        local allPlayers = GetActivePlayers and GetActivePlayers() or {}
                        local naoExibirVoce = ts.values.checkbox and ts.values.checkbox["naoteexibir"]
                        for _, playerServerId in ipairs(allPlayers) do
                            local pid = GetPlayerPed(playerServerId)
                            if DoesEntityExist(pid) then
                                local name = GetPlayerName(playerServerId) or "Desconhecido"
                                if filter ~= "" then
                                    if not (name:lower():find(filter, 1, true)) then
                                        goto continue_player_sort
                                    end
                                end
                                if naoExibirVoce and playerServerId == PlayerId() then
                                    goto continue_player_sort
                                end
                                local pcoords = GetEntityCoords(pid)
                                local distance = #(pedCoords - pcoords)
                                local ists = (playerServerId == PlayerId())
                                table.insert(players, {
                                    pid = playerServerId,
                                    name = name,
                                    distance = distance,
                                    ists = ists
                                })
                            end
                            ::continue_player_sort::
                        end
                        table.sort(players, function(a, b)
                            return a.distance < b.distance
                        end)
                        ts._playerListCache = players
                        ts._playerListLastSort = now
                    end
                    
                    local ped = PlayerPedId()
                    local pedCoords = GetEntityCoords(ped)
                    for _, pData in ipairs(ts._playerListCache) do
                        local pid = GetPlayerPed(pData.pid)
                        if DoesEntityExist(pid) then
                            local pcoords = GetEntityCoords(pid)
                            pData.distance = #(pedCoords - pcoords)
                            pData.ists = (pData.pid == PlayerId())
                        else
                            pData.distance = 99999
                            pData.ists = false
                        end
                        local selected = ts.lib.selected_player == pData.pid
                        local vtext = string.format("%.0f", pData.distance) .. "m"
                        local tsTag = pData.ists and "[Você]" or ""
                        local extraTags = {}
                        if ts.values.checkbox and ts.values.checkbox["exibirVida"] then
                            local vida = GetEntityHealth(pid) - 100
                            table.insert(extraTags, "Vida: " .. vida)
                        end
                        if ts.values.checkbox and ts.values.checkbox["exibirRadio"] then
                            local plyState = Player(GetPlayerServerId(pData.pid)).state
                            if plyState and plyState.radioChannel then
                                table.insert(extraTags, "Rádio: " .. tostring(plyState.radioChannel))
                            else
                                table.insert(extraTags, "Sem Rádio")
                            end
                        end
                        if ts.values.checkbox and ts.values.checkbox["exibirStatus"] then
                            local status = IsPedInAnyVehicle(pid, false) and "No Carro" or "A Pé"
                            table.insert(extraTags, "Status: " .. status)
                        end
                        local extraText = ""
                        if #extraTags > 0 then
                            extraText = " [" .. table.concat(extraTags, " | ") .. "]"
                        end
                        local customDisplayName = string.format("%s %s - %s%s", pData.name, tsTag, vtext, extraText)
                        if #customDisplayName > 37 then
                            customDisplayName = customDisplayName:sub(1, 37) .. "..."
                        end
                        ts.elements.list(
                            pData.pid,
                            selected,
                            function()
                                if selected then
                                    ts.lib.selected_player = nil
                                else
                                    ts.lib.selected_player = pData.pid
                                end
                            end,
                            customDisplayName
                        )
                    end
                end
                ts.elements.groupbox("Exibição", "exibicao_online", "\xef\x81\x84", 0, 315, 270, 145,
                    "Filtre a lista de jogadores")
                    ts.elements.checkbox("Não exibir você", "naoteexibir", function() end)
                    ts.elements.checkbox("Exibir Vida", "exibirVida", function() end)
                    ts.elements.checkbox("Exibir Rádio", "exibirRadio", function() end)
                    ts.elements.checkbox("Exibir Status", "exibirStatus", function() end)
                    ts.elements.groupbox("Funções Troll", "onlineOP", "\xef\x87\xa2", 275, 0, 270, 260,
                    "Funções Troll com o Player selecionado")
                if GetResourceState('lotus_farmafk') == 'started' or GetResourceState('nxgroup-script') == 'started' then
                    ts.elements.button("Matar Player", "matarPlayer", function()
                        ts.elements.notify("Sucesso! Pressione [R]", "sucess")
                        sz.createTh(function()
                            local ped = GetPlayerPed(ts.lib.selected_player)
                            local originalCoords = GetEntityCoords(ped)
                            sz.createTh(function()
                                ForcePedMotionState(PlayerPedId(), 1110766645, 0, 0, 0)
                                TaskLookAtEntity(PlayerPedId(), ped, -1, 0, 2.0)
                                SetPedStealthMovement(PlayerPedId(), 1, 0)
                                local stopAt = GetGameTimer() + 5000
                                while true do
                                    if GetGameTimer() > stopAt then
                                        Wait(2000)
                                        SetEntityCoords(ped, originalCoords.x, originalCoords.y, originalCoords.z, false,
                                            false, false, false)
                                        SetEntityAlpha(ped, 255, false)
                                        FreezeEntityPosition(ped, false)
                                        break
                                    end
                                    local pid = PlayerPedId()
                                    local cpid = GetEntityCoords(pid)
                                    local forwardVector = GetEntityForwardVector(pid)
                                    local distance = 0.4
                                    local forwardCoords = vector3(
                                        cpid.x + (forwardVector.x * distance),
                                        cpid.y + (forwardVector.y * distance),
                                        cpid.z
                                    )
                                    SetEntityHeading(ped, GetEntityHeading(pid))
                                    SetEntityAlpha(ped, 0, false)
                                    FreezeEntityPosition(ped, true)
                                    SetEntityCoords(ped, forwardCoords.x, forwardCoords.y, cpid.z - 0.96)
                                    ArtExecutor.API.IsKeyJustPressed(0x52);
                                    Wait(1)
                                end
                            end)
                        end)
                    end)
                elseif GetResourceState('santa_radio') == 'started' then
                    ts.elements.button("Matar Player", "matarPlayer", function()
                        ts.elements.notify("Sucesso! Pressione [R]", "sucess")
                        sz.createTh(function()
                            local ped = GetPlayerPed(ts.lib.selected_player)
                            local originalCoords = GetEntityCoords(ped)
                            sz.createTh(function()
                                ArtExecutor.API.ScriptQueueInject('santa_radio', [[
                        GiveWeaponToPed(PlayerPedId(), GetHashKey("WEAPON_KNIFE"), 1, true, true)
                    ]])
                                TaskLookAtEntity(PlayerPedId(), ped, -1, 0, 2.0)
                                SetPedStealthMovement(PlayerPedId(), 1, 0)
                                local stopAt = GetGameTimer() + 5000
                                while true do
                                    if GetGameTimer() > stopAt then
                                        Wait(2000)
                                        SetEntityCoords(ped, originalCoords.x, originalCoords.y, originalCoords.z, false,
                                            false, false, false)
                                        SetEntityAlpha(ped, 255, false)
                                        FreezeEntityPosition(ped, false)
                                        break
                                    end
                                    local pid = PlayerPedId()
                                    local cpid = GetEntityCoords(pid)
                                    local forwardVector = GetEntityForwardVector(pid)
                                    local distance = 0.4
                                    local forwardCoords = vector3(
                                        cpid.x + (forwardVector.x * distance),
                                        cpid.y + (forwardVector.y * distance),
                                        cpid.z
                                    )
                                    SetEntityHeading(ped, GetEntityHeading(pid))
                                    SetEntityAlpha(ped, 0, false)
                                    FreezeEntityPosition(ped, true)
                                    SetEntityCoords(ped, forwardCoords.x, forwardCoords.y, cpid.z - 0.96)
                                    ArtExecutor.API.IsKeyJustPressed(0x52);
                                    Wait(1)
                                end
                            end)
                        end)
                    end)

                    ts.elements.button("Esmagar Player", "esmagarPlayer", function()
                        local code = string.format([[
                    local ped = GetPlayerPed(%s)
                    local coords = GetEntityCoords(ped)
                    local hash = GetHashKey("terbyte")
                    RequestModel(hash)

                    while not HasModelLoaded(hash) do
                        Wait(1)
                    end

                    local vehicle = CreateVehicle(hash, coords.x + 200, coords.y, coords.z - 0.2, GetEntityHeading(ped), true, false)
                    local vehicle2 = CreateVehicle(hash, coords.x, coords.y, coords.z + 30.0, GetEntityHeading(ped), true, false)

                    SetVehicleOnGroundProperly(vehicle)
                    SetVehicleOnGroundProperly(vehicle2)
                    SetVehicleEngineOn(vehicle, true, true)
                    SetVehicleEngineOn(vehicle2, true, true)
                    SetVehicleDoorsLocked(vehicle, true)
                    SetVehicleDoorsLocked(vehicle2, true)
                    SetVehicleUndriveable(vehicle, false)
                    SetVehicleUndriveable(vehicle2, false)
                    SetVehicleLights(vehicle, 1)
                    SetVehicleLights(vehicle2, 1)
                    NetworkRegisterEntityAsNetworked(vehicle)
                    NetworkRegisterEntityAsNetworked(vehicle2)
                    SetEntityAsMissionEntity(vehicle, true, true)
                    SetEntityAsMissionEntity(vehicle2, true, true)
                    SetVehicleOnGroundProperly(vehicle)
                    SetVehicleOnGroundProperly(vehicle2)
                    SetVehicleHasBeenOwnedByPlayer(vehicle, true)
                    SetVehicleHasBeenOwnedByPlayer(vehicle2, true)
                    SetVehicleNeedsToBeHotwired(vehicle, false)
                    SetVehicleNeedsToBeHotwired(vehicle2, false)
                    SetVehicleEngineOn(vehicle, true, true, false)
                    SetVehicleEngineOn(vehicle2, true, true, false)
                    SetVehicleDoorsLocked(vehicle, 1)
                    SetVehicleDoorsLocked(vehicle2, 1)
                    SetEntityNoCollisionEntity(vehicle, vehicle2, true)
                    NetworkRegisterEntityAsNetworked(vehicle)
                    NetworkRegisterEntityAsNetworked(vehicle2)
                    Wait(4000)
                    DeleteEntity(vehicle)
                    DeleteEntity(vehicle2)
                    ]], ts.lib.selected_player)
                    ArtExecutor.API.ScriptQueueInject('santa_radio', code)
                end)
            else
                ts.elements.button("Matar Player", "matarPlayer", function()
                    local tped = GetPlayerPed(ts.lib.selected_player)
                    local vehicle = GetVehiclePedIsIn(tped)
                    if vehicle then

                        --0
                        Citizen.InvokeNative(0x7B1141C6, tped, vehicle, 16)
						Citizen.InvokeNative(0xD3DBCE61A490BE02, tped, vehicle, 16)

                        --11
                        Citizen.InvokeNative(0xFF62D324, vehicle, true)
						Citizen.InvokeNative(0x41062318F23ED854, vehicle, true)

                        --22
                        Citizen.InvokeNative(0xAA8BD440, vehicle, PlayerPedId(), 1)
						Citizen.InvokeNative(0xB5C51B5502E85E83, vehicle, PlayerPedId(), 1)
                            
                        --33
                        Citizen.InvokeNative(0xBC045625, tped)
						Citizen.InvokeNative(0xAAA34F8A7CB32098, tped)

                        --44
                            Citizen.InvokeNative(0xDE3316AB, tped)
                            Citizen.InvokeNative(0xE1EF3C1216AFF2CD, tped)

                            local a = PlayerPedId()

                            local c = GetEntityCoords(a)
                            SetEntityCoordsNoOffset(a, GetEntityCoords(vehicle))
                            SetPedIntoVehicle(a, vehicle, 0)
                            Wait(10)
                            DeletePed(tped)
                            DeleteEntity(tped)
                            Wait(10)
                            SetPedIntoVehicle(PlayerPedId(), vehicle, -1)
                            Wait(20)
                            SetEntityCoordsNoOffset(a, c.x, c.y, c.z)
                        end
                    -- RequestModel(GetHashKey('VEHICLE_WEAPON_TURRET_PATROLBOAT_50CAL'))
                    --     local veiculo = CreateVehicle(GetHashKey('VEHICLE_WEAPON_TURRET_PATROLBOAT_50CAL'), 5000.0,
                    --         5000.0, 5000.0, 0.0, false, false)
                    --     FreezeEntityPosition(veiculo, true)

                    --     local code = [[
                    -- Citizen.CreateThread(function()
                    --     while true do
                    --     IsPedArmed = function()
                    --         return true
                    --     end
                    --     Citizen.Wait(1)
                    --     end
                    -- end)

                    
                    --     ]]
                    --     ArtExecutor.API.ScriptQueueInject('PL_PROTECT', code)
                        
                    --     local coords = GetEntityCoords(GetPlayerPed(ts.lib.selected_player))
                    --     ShootSingleBulletBetweenCoords(coords.x, coords.y, coords.z - 0.5, coords.x, coords.y, coords.z,
                    --         150, true, GetHashKey('VEHICLE_WEAPON_TURRET_PATROLBOAT_50CAL'), PlayerPedId(), true, false,
                    --         -1.0, true)
                    --     Citizen.SetTimeout(500, function()
                    --         DeleteVehicle(veiculo)
                    --     end)
                    end)
                end
                
                if ts.functions.resource_get('santa_radio') then
                else
                    ts.elements.button("Atirar no Veículo do player", "atirarVehNoPlayer", function()
                        sz.createTh(function()
                            local oc = GetEntityCoords(PlayerPedId())
                            local ped = PlayerPedId()
                            local tped = GetPlayerPed(ts.lib.selected_player)
                            SetEntityVisible(PlayerPedId(), false, false)
                            if IsPedInAnyVehicle(tped, false) then
                                local vehicle = GetVehiclePedIsIn(tped, false)
                                AttachEntityToEntity(ped, vehicle, 0, 0.0, 0.0, 10.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2, true,
                                true, false, 2, 2)
                                local timer = 12000
                                local st = GetGameTimer()
                                -- while GetGameTimer() - st < timer do
                                for i = 1, 10 do
                                    local c = GetEntityCoords(ped)
                                    local boneIndex = GetEntityBoneIndexByName(vehicle, "engine")
                                    local tc = GetWorldPositionOfEntityBone(vehicle, boneIndex)
                                    local tc2 = GetEntityCoords(vehicle)
                                    local code = [[
                                        IsPedArmed = function()
                                            return true
                                        end
                                        ]]
                                    
                                    ArtExecutor.API.ScriptQueueInject('PL_PROTECT', code)
                                    RequestModel(GetHashKey('VEHICLE_WEAPON_TURRET_PATROLBOAT_50CAL'))
                                    ShootSingleBulletBetweenCoords(c.x, c.y, c.z, tc.x, tc.y, tc.z, 150, true,
                                    GetHashKey("VEHICLE_WEAPON_TURRET_PATROLBOAT_50CAL"), PlayerPedId(), true, false,
                                    1.3)
                                    ShootSingleBulletBetweenCoords(c.x, c.y, c.z, tc2.x, tc2.y, tc2.z, 150, true,
                                    GetHashKey("VEHICLE_WEAPON_TURRET_PATROLBOAT_50CAL"), PlayerPedId(), true, false,
                                    1.3)

                                    Wait(1)
                                end
                                DetachEntity(ped, vehicle, false)
                                SetEntityVisible(PlayerPedId(), true, false)
                                SetEntityCoords(PlayerPedId(), oc.x, oc.y, oc.z, false, false, false, false)
                            else
                                ts.elements.notify("O jogador não está em um veículo!", "error")
                            end
                        end)
                    end)
                end
                
                ts.elements.button("Matar Player Permanentemente", "matarPerma", function()
                    if cityAC == 'FIVEGUARD' or GetResourceState('EQPG') == 'started' or GetResourceState('ThnAC') == 'started' then
                        local timer = 400
                        local startTime = GetGameTimer()
                        while GetGameTimer() - startTime < timer do
                            local coords = GetEntityCoords(GetPlayerPed(ts.lib.selected_player))
                            ShootSingleBulletBetweenCoords(coords.x, coords.y, coords.z + 10.0, coords.x, coords.y,
                                coords.z, 150, true, GetHashKey('WEAPON_TRANQUILIZER'), PlayerPedId(), true, false, -1.0,
                                true)
                            Wait(100)
                        end
                    else
                        ts.elements.notify("Cidade sem suporte!", "error")
                    end
                end)
                
                
                ts.elements.button("Estourar Pneus", "estourarPneus", function()
                    local tped = GetPlayerPed(ts.lib.selected_player)
                    local vehicle = GetVehiclePedIsIn(tped, false)

                    if DoesEntityExist(vehicle) then
                        local rodas = {
                            "wheel_lf",
                            "wheel_rf",
                            "wheel_lr",
                            "wheel_rr"
                        }

                        for _, coordsRoda in ipairs(rodas) do
                            local boneIndex = GetEntityBoneIndexByName(vehicle, coordsRoda)
                            if boneIndex ~= -1 then
                                local wheelPos = GetWorldPositionOfEntityBone(vehicle, boneIndex)
                                RequestModel(GetHashKey('VEHICLE_WEAPON_TURRET_PATROLBOAT_50CAL'))
                                ShootSingleBulletBetweenCoords(wheelPos.x, wheelPos.y, wheelPos.z, wheelPos.x, wheelPos
                                .y, wheelPos.z, 150, true, GetHashKey("VEHICLE_WEAPON_TURRET_PATROLBOAT_50CAL"),
                                    PlayerPedId(), true, false, 0.3)
                                Wait(500)
                            end
                        end
                    end
                end)

                
                ts.elements.checkbox("Atropelar Player", "atropelamento_infinito", function(state)
                    if ts.values.checkbox["atropelamento_infinito"] then
                        sz.createTh(function()
                            while ts.values.checkbox["atropelamento_infinito"] do
                                local ped = PlayerPedId()
                                local coords = GetEntityCoords(ped)
                                local tped = GetPlayerPed(ts.lib.selected_player)
                                local tcoords = GetEntityCoords(tped)
                                local vehicle = GetVehiclePedIsIn(ped, false)
                                
                                if vehicle ~= 0 then
                                    local direction = tcoords - coords
                                    local distance = #direction
                                    local alvo = direction / distance
                                    
                                    local heading = GetHeadingFromVector_2d(alvo.x, alvo.y)
                                    SetEntityHeading(vehicle, heading)
                                    
                                    SetVehicleOnGroundProperly(vehicle)

                                    if distance >= 0.0 then
                                        local value = 20
                                        SetVehicleForwardSpeed(vehicle, GetEntitySpeed(vehicle) + value)
                                    end
                                    
                                    local clief = GetGamePool('CVehicle')
                                    for _, vehs in ipairs(clief) do
                                        SetEntityNoCollisionEntity(vehicle, vehs, true)
                                    end
                                end
                                Wait(600)
                            end
                        end)
                    end
                end)
                

                if GetResourceState('offset_main') == 'started' then
                    ts.elements.button("Puxar Player", "puxarPlayer", function()
                        local ped = PlayerPedId()
                        local coords = GetEntityCoords(ped)
                        local tped = GetPlayerPed(ts.lib.selected_player)
                        local tcoords = GetEntityCoords(tped)
                        SetEntityCoordsNoOffset(ped, tcoords.x, tcoords.y, tcoords.z, true, false, true)
                        Wait(10)
                        local scrId = GetPlayerServerId(ts.lib.selected_player)
                        ArtExecutor.API.ScriptQueueInject('offset_main', string.format([[
                                CreateThread(function()
                                    local params = json.decode('[%s]')
                                    TriggerServerEvent('playeraction:carry', table.unpack(params))
                                end)
                                print("success")
                            ]], scrId))
                        Wait(10)
                        SetEntityCoordsNoOffset(ped, coords.x, coords.y, coords.z, true, false, true)
                        Wait(30)
                        ArtExecutor.API.ScriptQueueInject('offset_main', string.format([[
                            CreateThread(function()
                            local params = json.decode('[%s,"carrying"]')
                            TriggerServerEvent('playeraction:stopCarry', table.unpack(params))
                        end)
                        ]], scrId))
                        ClearPedTasks(ped)
                    end)
                end

                if GetResourceState('europa_deathscreen') == 'started' then
                    ts.elements.button("Puxar Player", "puxarPlayer", function()
                        LocalPlayer.state["Policia"] = true
                        LocalPlayer.state["Police"] = true
                        LocalPlayer.state["Admin"] = true
                        LocalPlayer.state["Dono"] = true
                        LocalPlayer.state["Owner"] = true
                        LocalPlayer.state["Fundador"] = true
                        local coords = GetEntityCoords(GetPlayerPed(ts.lib.selected_player))
                        local oc = GetEntityCoords(PlayerPedId())
                        SetEntityCoordsNoOffset(PlayerPedId(), coords.x, coords.y, coords.z, false, false, false, false)
                        local code = [[
                            TriggerEvent("inventory:Carry", "", "player", true)
                            ]]
                        ArtExecutor.API.ScriptQueueInject('dynamic', code)
                        Wait(400)
                        SetEntityCoordsNoOffset(PlayerPedId(), oc.x, oc.y, oc.z, false, false, false, false)
                    end)
                end
                
                
                ts.elements.button("Martelar Player", "martelarPlayer", function()
                    if not ts.lib.selected_player then
                        ts.elements.notify("Selecione um jogador primeiro!", "error")
                        return
                    end
                    
                    if not IsPedInAnyVehicle(PlayerPedId(), false) then
                        ts.elements.notify("Você precisa estar em um veículo!", "error")
                        return
                    end

                    local ped = PlayerPedId()
                    local coords = GetEntityCoords(ped)
                    local vehicle = GetVehiclePedIsIn(ped, false)
                    
                    if vehicle ~= 0 then
                        local tped = GetPlayerPed(ts.lib.selected_player)
                        local tcoords = GetEntityCoords(tped)
                        SetEntityCoords(vehicle, tcoords.x, tcoords.y, tcoords.z + 20.0, true, true, true)
                        SetEntityRotation(vehicle, 0.0, 0.0, GetEntityHeading(vehicle), 2, true)
                        SetVehicleOnGroundProperly(vehicle)
                        Wait(20)
                        ApplyForceToEntity(vehicle, 1, 0.0, 0.0, -170.0, 0.0, 0.0, 0.0, 1, true, true, true, true, true)
                    end
                end)


                ts.elements.checkbox("Martelar Player (Loop)", "martelarPlayerActive", function(state)
                    if not ts.lib.selected_player then
                        ts.elements.notify("Selecione um jogador primeiro!", "error")
                        return
                    end
                    
                    local ped = PlayerPedId()
                    if not IsPedInAnyVehicle(ped, false) then
                        ts.elements.notify("Você precisa estar em um veículo!", "error")
                        return
                    end
                    
                    sz.createTh(function()
                        while ts.values.checkbox["martelarPlayerActive"] do
                            local ped = PlayerPedId()
                            local vehicle = GetVehiclePedIsIn(ped, false)
                            if vehicle ~= 0 then
                                local tped = GetPlayerPed(ts.lib.selected_player)
                                local tcoords = GetEntityCoords(tped)
                                SetEntityCoords(vehicle, tcoords.x, tcoords.y, tcoords.z + 20.0, true, true, true)
                                SetEntityRotation(vehicle, 0.0, 0.0, GetEntityHeading(vehicle), 2, true)
                                SetVehicleOnGroundProperly(vehicle)
                                Wait(20)
                                ApplyForceToEntity(vehicle, 1, 0.0, 0.0, -170.0, 0.0, 0.0, 0.0, 1, true, true, true, true,
                                true)
                            end
                            Wait(600)
                        end
                    end)
                end)

                


                
                ts.elements.button("Atirar seu Veículo no Player", "atirarVehSeuNoPlayer", function()
                    if not ts.lib.selected_player then
                        ts.elements.notify("Selecione um jogador primeiro!", "error")
                        return
                    end
                    
                    local ped = PlayerPedId()
                    local coords = GetEntityCoords(ped)
                    local tped = GetPlayerPed(ts.lib.selected_player)
                    local tcoords = GetEntityCoords(tped)
                    local vehicle = GetVehiclePedIsIn(ped, false)
                    
                    if vehicle ~= 0 then
                        local direction = tcoords - coords
                        local distance = #direction
                        local alvo = direction / distance
                        
                        local heading = GetHeadingFromVector_2d(alvo.x, alvo.y)
                        SetEntityHeading(vehicle, heading)

                        SetVehicleOnGroundProperly(vehicle)
                        
                        if distance < 40.0 then
                            local value = 50
                            SetVehicleForwardSpeed(vehicle, 100.0)
                            SetEntityNoCollisionEntity(PlayerPedId(), vehicle, true)
                            ClearPedTasksImmediately(ped)
                            Wait(300)
                            SetEntityNoCollisionEntity(PlayerPedId(), vehicle, false)
                        end
                    end
                end)
                
                
                

                ts.elements.button("Lançar Player", 'lancarPlayer', function()
                    ts.bypass['attach'](true)
                    if not ts.lib.selected_player then
                        ts.elements.notify("Selecione um jogador primeiro!")
                        return
                    end
                    
                    local selected_ped = GetPlayerPed(ts.lib.selected_player)
                    local selected_coords = GetEntityCoords(selected_ped)
                    local nearestVehicle = GetClosestVehicle(selected_coords, 150.0, 0, 70)
                    
                    if not nearestVehicle or nearestVehicle == 0 then
                        ts.elements.notify("Nenhum veículo próximo encontrado!")
                        return
                    end
                    local oc = GetEntityCoords(PlayerPedId())
                    NetworkRequestControlOfEntity(nearestVehicle)
                    SetPedIntoVehicle(PlayerPedId(), nearestVehicle, -1)
                    SetPlayersLastVehicle(nearestVehicle)
                    
                    Wait(1000)
                    Wait(300)

                    sz.createTh(function()
                        for i = 1, 20 do
                            AttachEntityToEntityPhysically(nearestVehicle, selected_ped, 0, 0, 0, -364.58, 1436.928,
                            8000.0, 180.0, 8888.0, 0.0, true, true, true, true, 0)
                        end
                        Wait(5000)
                        ClearPedTasksImmediately(PlayerPedId())
                        SetEntityCoordsNoOffset(PlayerPedId(), oc.x, oc.y, oc.z, false, false, false, false)
                        ts.bypass['attach'](false)
                    end)
                end)

                ts.elements.button("Limbar Player", "limbarPlayer", function()
                    ts.bypass['attach'](true)
                    if not ts.lib.selected_player then
                        ts.elements.notify("Selecione um jogador primeiro!")
                        return
                    end
                    
                    local selected_ped = GetPlayerPed(ts.lib.selected_player)
                    local selected_coords = GetEntityCoords(selected_ped)
                    local nearestVehicle = GetClosestVehicle(selected_coords, 150.0, 0, 70)
                    
                    if not nearestVehicle or nearestVehicle == 0 then
                        ts.elements.notify("Nenhum veículo próximo encontrado!")
                        return
                    end
                    local oc = GetEntityCoords(PlayerPedId())
                    NetworkRequestControlOfEntity(nearestVehicle)
                    SetPedIntoVehicle(PlayerPedId(), nearestVehicle, -1)
                    SetPlayersLastVehicle(nearestVehicle)

                    local veh = GetVehiclePedIsIn(PlayerPedId(), false)
                    Wait(1300)
                    local offsetX = -364.58
                    local offsetY = 1436.928
                    ClearPedTasksImmediately(PlayerPedId())
                    for i = 1, 20 do
                        AttachEntityToEntityPhysically(nearestVehicle, selected_ped, offsetX, offsetY, -3000.0, 180.0,
                            8888.0, 0.0, true, true, true, true, 0)
                        Wait(1500)
                    end
                    Wait(5000)
                    ClearPedTasksImmediately(PlayerPedId())
                    SetEntityCoordsNoOffset(PlayerPedId(), oc.x, oc.y, oc.z, false, false, false, false)
                    ts.bypass['attach'](false)
                end)
                

                
                if GetResourceState('santa_radio') == 'started' then
                    ts.elements.checkbox("Ameaçar Player", "ameacarPlayer", function()
                        if not ts.lib.selected_player then
                            ts.elements.notify("Selecione um jogador primeiro!", "error")
                            return
                        end
                        
                        sz.createTh(function()
                            if ts.values.checkbox['ameacarPlayer'] then
                                sz.createTh(function()
                                    while ts.values.checkbox['ameacarPlayer'] do
                                        local targetPed = GetPlayerPed(ts.lib.selected_player)
                                        local targetCoords = GetEntityCoords(targetPed)
                                        
                                        local pickupRPG = CreatePickup(
                                            GetHashKey("PICKUP_WEAPON_RPG"),
                                            targetCoords.x, targetCoords.y, targetCoords.z + 0.5
                                        )
                                        local pickupFirework = CreatePickup(
                                            GetHashKey("PICKUP_WEAPON_FIREWORK"),
                                            targetCoords.x, targetCoords.y, targetCoords.z + 0.5
                                        )
                                        
                                        Citizen.SetTimeout(500, function()
                                            if DoesPickupExist(pickupRPG) then
                                                RemovePickup(pickupRPG)
                                            end
                                            if DoesPickupExist(pickupFirework) then
                                                RemovePickup(pickupFirework)
                                            end
                                        end)
                                        
                                        Citizen.Wait(40)
                                    end
                                end)
                            end
                        end)
                    end)
                end
                ts.elements.button("Chuva de Veículos", "chuvaDeVehsPreparados", function()
                    local pid = GetPlayerPed(ts.lib.selected_player)
                    local cpid = GetEntityCoords(pid)
                    
                    if not ts.vars.controlled_vehicles or #ts.vars.controlled_vehicles == 0 then
                        ts.elements.notify("Pegue o controle dos veiculos primeiro.", "error")
                        return
                    end
                    
                    local totalVeiculos = #ts.vars.controlled_vehicles
                    sz.createTh(function()
                        local alturaBase = 30.0
                        local distanciaHorizontal = 2.0
                        for i, vehData in ipairs(ts.vars.controlled_vehicles) do
                            local vehicle = vehData.handle
                            
                            if DoesEntityExist(vehicle) then
                                local altura = alturaBase + (i * 5.0)
                                local randomOffset = math.random(-distanciaHorizontal, distanciaHorizontal)
                                SetEntityCoords(vehicle,
                                cpid.x + randomOffset,
                                    cpid.y + randomOffset,
                                    cpid.z + altura,
                                    false, false, false, false)
                                SetEntityRotation(vehicle,
                                    math.random(-20, 20),
                                    math.random(-20, 20),
                                    math.random(0, 360),
                                    2, true)
                                SetEntityVelocity(vehicle, 0.0, 0.0, -80.0)
                                Wait(50)
                            end
                        end
                    end)
                end)

                ts.elements.checkbox("Chuva de Veículos em loop", "chuvadeVeh", function()
                    local pid = GetPlayerPed(ts.lib.selected_player)
                    local cpid = GetEntityCoords(pid)
                    
                    if not ts.vars.controlled_vehicles or #ts.vars.controlled_vehicles == 0 then
                        ts.elements.notify("Pegue o controle dos veiculos primeiro.", "error")
                        return
                    end
                    
                    local totalVeiculos = #ts.vars.controlled_vehicles
                    local alturaBase = 30.0
                    local distanciaHorizontal = 2.0
                    
                    sz.createTh(function()
                        while ts.values.checkbox["chuvadeVeh"] do
                            for i, vehData in ipairs(ts.vars.controlled_vehicles) do
                                local vehicle = vehData.handle
                                if DoesEntityExist(vehicle) then
                                    local altura = alturaBase + (i * 5.0)
                                    local randomOffset = math.random(-distanciaHorizontal, distanciaHorizontal)
                                    
                                    local vehCoords = GetEntityCoords(vehicle)
                                    if vehCoords.z <= cpid.z + 1.0 then
                                        SetEntityCoords(vehicle,
                                        cpid.x + randomOffset,
                                            cpid.y + randomOffset,
                                            cpid.z + altura,
                                            false, false, false, false)
                                            SetEntityRotation(vehicle,
                                            math.random(-20, 20),
                                            math.random(-20, 20),
                                            math.random(0, 360),
                                            2, true)
                                        SetEntityVelocity(vehicle, 0.0, 0.0, -80.0)
                                    end
                                end
                                Wait(50)
                            end
                            Wait(1000)
                        end
                    end)
                end)

                if GetResourceState('santa_radio') == 'started' then
                    sz.createTh(function()
                        while ts.values.checkbox['esmagarLoop'] do
                            _G.esmagCoords = GetEntityCoords(GetPlayerPed(ts.lib.selected_player))
                            Wait(1)
                        end
                    end)

                    ts.elements.checkbox("Esmagar player em loop", "esmagarLoop", function()
                        if ts.values.checkbox['esmagarLoop'] then
                            sz.createTh(function()
                                local hash = GetHashKey("terbyte")
                                RequestModel(hash)
                                
                                while not HasModelLoaded(hash) do
                                    Wait(1)
                                end

                                while ts.values.checkbox['esmagarLoop'] do
                                    local ped = GetPlayerPed(ts.lib.selected_player)
                                    local coords = _G.esmagCoords
                                    
                                    local vehicle = CreateVehicle(hash, coords.x + 20, coords.y, coords.z - 0.2,
                                    GetEntityHeading(ped), true, false)
                                    local vehicle2 = CreateVehicle(hash, coords.x, coords.y, coords.z + 30.0,
                                    GetEntityHeading(ped), true, false)
                                    
                                    SetVehicleOnGroundProperly(vehicle)
                                    SetVehicleOnGroundProperly(vehicle2)
                                    SetVehicleEngineOn(vehicle, true, true)
                                    SetVehicleEngineOn(vehicle2, true, true)
                                    SetVehicleDoorsLocked(vehicle, true)
                                    SetVehicleDoorsLocked(vehicle2, true)
                                    SetVehicleUndriveable(vehicle, false)
                                    SetVehicleUndriveable(vehicle2, false)
                                    SetVehicleLights(vehicle, 1)
                                    SetVehicleLights(vehicle2, 1)
                                    
                                    SetEntityCoords(vehicle, coords.x, coords.y, coords.z + 20, false, false, false,
                                        false)
                                        Wait(3000)
                                end
                            end)
                        end
                    end)
                end

                
                
                ts.elements.button("Matar Player com Heli", "matarComheli", function()
                    local ped = PlayerPedId()
                    local coords = GetEntityCoords(ped)
                    if not IsPedInAnyHeli(ped) then
                        ts.elements.notify("Você precisa estar em um helicóptero!", "error")
                        return
                    end
                    local heli = GetVehiclePedIsIn(ped, false)
                    SetVehicleEngineOn(heli, true, true, false)
                    ClearPedTasksImmediately(ped)
                    local tcoords = GetEntityCoords(GetPlayerPed(ts.lib.selected_player))
                    SetEntityCoords(heli, tcoords.x, tcoords.y, tcoords.z, false, false, false, false)
                    SetEntityRotation(heli, 180.0, 0.0, 0.0, 2, true)
                    local ped2 = CreatePed(1, GetHashKey('a_m_m_eastsa_02'), coords.x, coords.y, coords.z, 0.0, false,
                    false)
                    NetworkHasControlOfEntity(ped2)
                    if NetworkHasControlOfEntity(ped2) then
                        SetPedIntoVehicle(ped2, heli, -1)
                        SetVehicleEngineOn(heli, true, true, false)
                        Wait(2500)
                        DeleteEntity(heli)
                    end
                end)

                ts.elements.button("Chuva do Anti-RP", 'chuvaantirp', function()
                    if GetResourceState('PL_PROTECT') == 'started' then
                        ts.elements.notify("Cidade sem suporte", "error")
                        return
                    end
                    
                    if not ts.lib.selected_player or ts.lib.selected_player == -1 then
                        ts.elements.notify("Selecione um jogador primeiro!", "warning")
                        return
                    end

                    local playerselped = GetPlayerPed(ts.lib.selected_player)
                    
                    if playerselped == PlayerPedId() then
                        ts.elements.notify("Você não pode lançar veículos em si mesmo!", "warning")
                        return
                    end
                    
                    local coords = GetEntityCoords(playerselped)
                    
                    local Veiculos = {
                        "titan",
                        "cargoplane",
                        "jetmax",
                        "submersible",
                        "yacht",
                        "cargobob",
                        "mammatus",
                        "marquis",
                        "dodo"
                    }
                    
                    for i = 1, 400 do
                        local veiculoNome = Veiculos[math.random(#Veiculos)]
                        local mhash = GetHashKey(veiculoNome)
                        RequestModel(mhash)
                        
                        while not HasModelLoaded(mhash) do
                            Wait(10)
                        end
                        
                        local x = coords.x + math.random(-20, 20)
                        local y = coords.y + math.random(-20, 20)
                        local z = coords.z + 70

                        local veiculo = CreateVehicle(mhash, x, y, z, 0.0, true, false)
                        NetworkRegisterEntityAsNetworked(veiculo)
                        SetEntityDynamic(veiculo, true)
                        
                        local direction = vector3(coords.x - x, coords.y - y, coords.z - z)
                        local distance = #direction
                        direction = direction / distance

                        ApplyForceToEntity(veiculo, 1, direction.x * 1000.0, direction.y * 1000.0, direction.z * 1000.0,
                        0.0, 0.0, 0.0, true, true, true, true, true, true)
                        
                        Citizen.CreateThreadNow(function()
                            Wait(15000)
                            DeleteVehicle(veiculo)
                        end)
                        
                        Wait(300)
                    end
                    
                    SetModelAsNoLongerNeeded(mhash)
                    ts.elements.notify("Chuva do Anti-RP iniciada com sucesso!", "sucess")
                end)

                ts.elements.button("Chuva de Submarinos", 'chuvaDeSubmarinos', function()
                    if GetResourceState('PL_PROTECT') == 'started' then
                        ts.elements.notify("Cidade sem suporte", "error")
                        return
                    end

                    local targetPlayer = ts.lib.selected_player
                    if not targetPlayer or targetPlayer == -1 then
                        ts.elements.notify("Selecione um player primeiro!", "warning")
                        return
                    end

                    local playerselped = GetPlayerPed(targetPlayer)
                    
                    if playerselped == PlayerPedId() then
                        ts.elements.notify("Você não pode lançar submarinos em si mesmo!", "warning")
                        return
                    end

                    local coords = GetEntityCoords(playerselped)
                    local submarineModel = "kosatka"
                    local mhash = GetHashKey(submarineModel)
                    RequestModel(mhash)

                    while not HasModelLoaded(mhash) do
                        Citizen.Wait(1)
                    end

                    for i = 1, 1000 do
                        local veiculo = CreateVehicle(mhash, coords.x, coords.y, coords.z + 70, 0.0, true, false)
                        NetworkRegisterEntityAsNetworked(veiculo)
                        SetEntityDynamic(veiculo, true)

                        local direction = vector3(coords.x - coords.x, coords.y - coords.y, coords.z - (coords.z + 70))
                        local distance = #direction
                        direction = direction / distance

                        ApplyForceToEntity(veiculo, 1, direction.x * 1000.0, direction.y * 1000.0, direction.z * 1000.0,
                            0.0, 0.0, 0.0, true, true, true, true, true, true)
                        Wait(100)
                    end

                    ts.elements.notify("Sucesso!", "warning")
                end)

                if GetResourceState('PL_PROTECT') == 'started' then

                else
                    ts.elements.button("Explodir Player", 'explodirPlayer', function()
                        if not ts.lib.selected_player then
                            ts.elements.notify("Selecione um jogador primeiro!", "error")
                            return
                        end

                        local targetPed = GetPlayerPed(ts.lib.selected_player)
                        if not DoesEntityExist(targetPed) then
                            ts.elements.notify("Jogador alvo não encontrado!", "error")
                            return
                        end

                        local targetCoords = GetEntityCoords(targetPed)
                        local ped = GetPlayerPed(ts.lib.selected_player)
                        local pos = GetEntityCoords(ped)
                        local dir = ts.functions.rot_to_dir(GetGameplayCamRot())

                        -- AddExplosion(x, y, z, explosionType, damageScale, isAudible, isInvisible, cameraShake)
                        AddExplosion(targetCoords,  9, 10.0, false, false, 0)
                        -- RequestWeaponAsset(GetHashKey('weapon_rpg'), 31, 0)
                        -- while not HasWeaponAssetLoaded(GetHashKey('weapon_rpg')) do
                        --     Wait(10)
                        -- end

                        -- UseParticleFxAssetNextCall("core")
                        -- StartParticleFxNonLoopedAtCoord("ent_ray_heli_aprtmnt_l_fire", pos.x, pos.y, pos.z, 0.0, 0.0, 0.0,
                        --     1.0, false, false, false)
                        -- PlaySoundFromEntity(-1, "WEAPON_RPG_FIRE", ped, "WEAPON_RPG_SOUNDS", 0, 0)

                        -- local bullet = ShootSingleBulletBetweenCoords(
                        --     pos.x, pos.y, pos.z,
                        --     targetCoords.x, targetCoords.y, targetCoords.z,
                        --     150,
                        --     false,
                        --     GetHashKey("weapon_rpg"),
                        --     PlayerPedId(),
                        --     false,
                        --     true,
                        --     0.3
                        -- )

                        -- if bullet then
                        --     ApplyForceToEntity(bullet, 1, dir.x * 800.0, dir.y * 800.0, dir.z * 800.0, 0.0, 0.0, 0.0, 1,
                        --         false, true, true, true, true)
                        -- end
                        RemoveWeaponAsset(GetHashKey('weapon_rpg'))
                    end)
                end
                ts.elements.groupbox("Funções Simples", "slimplesfunctions", "\xef\x88\x9d", 275, 275, 270, 185,
                    "Analise o player selecionado")
                ts.elements.button("Teleportar para o Player", 'tpPlayer', function()
                    local targetPed = GetPlayerPed(ts.lib.selected_player)
                    local localPed = PlayerPedId()

                    if not targetPed or targetPed == 0 or targetPed == localPed then
                        return
                    end

                    local targetCoords = GetEntityCoords(targetPed)
                    if not targetCoords then
                        return
                    end

                    local forwardVector = GetEntityForwardVector(targetPed)
                    local newCoords = vector3(
                        targetCoords.x + (forwardVector.x * 2.0),
                        targetCoords.y + (forwardVector.y * 2.0),
                        targetCoords.z
                    )

                    local localVehicle = GetVehiclePedIsIn(localPed, false)
                    if localVehicle ~= 0 then
                        SetEntityCoords(localVehicle, newCoords.x, newCoords.y, newCoords.z, false, false, false, false)
                    else
                        if ts.values.checkbox['invisibleSolo'] then
                            SetEntityCoords(invPed, newCoords.x, newCoords.y, newCoords.z, false, false, false, false)
                        else
                            SetEntityCoords(localPed, newCoords.x, newCoords.y, newCoords.z, false, false, false, false)
                        end
                    end

                    if IsPedInAnyVehicle(targetPed, false) then
                        local targetVehicle = GetVehiclePedIsIn(targetPed, false)
                        if ts.values.checkbox['invisibleSolo'] then
                            SetPedIntoVehicle(invPed, targetVehicle, 0 or 1 or 2)
                        else
                            SetPedIntoVehicle(PlayerPedId(), targetVehicle, 0 or 1 or 2)
                        end
                    end
                end)

                ts.elements.checkbox("Espectar Player", "especPlayer", function()
                    if ts.lib.selected_player then
                        sz.createTh(function()
                            if ts.values.checkbox['especPlayer'] then
                                local posantiga = GetEntityCoords(PlayerPedId())
                                local ped = GetPlayerPed(ts.lib.selected_player)
                                if DoesEntityExist(ped) and ped ~= PlayerPedId() then
                                    FreezeEntityPosition(PlayerPedId(), 1)
                                    local cam = CreateCam("DEFAULT_SCRIPTED_Camera", 1)
                                    local coordsSel = GetEntityCoords(ped)
                                    
                                    local camCoords33 = GetGameplayCamCoord()
                                    ArtExecutor.API.Core.HookNative("GetRenderingCam", -1)
                                    ArtExecutor.API.Core.HookNative("GetGameplayCamCoord", camCoords33)
                                    ArtExecutor.API.Core.HookNative("GetCamCoord", function(cam3)
                                        if cam3 == cam then
                                            return false, vec3(coordsSel.x, coordsSel.y, coordsSel.z)
                                        end
                                        return true
                                    end)
                            

                                    
                                    RenderScriptCams(true, true, 500, false, false)
                                    SetCamActive(cam, true)
                                    SetCamCoord(cam, coordsSel.x, coordsSel.y, coordsSel.z + 3)

                                    if not GetResourceState('lotus_farmafk') == 'started' then
                                        exports["pma-voice"]:setSpectatorMode(true)
                                    end

                                    while ts.values.checkbox['especPlayer'] do
                                        local cuzin = DoesCamExist(cam)
                                        if cuzin then
                                            Wait(0)
                                            cuzin = GetEntityRotation(ped, 2)
                                            local x, y, z = table.unpack(GetCamCoord(cam))
                                            local xe1, xe2, xe3 = table.unpack(GetPedBoneCoords(ped, 31086, 0, 0, 0))
                                            SetCamCoord(cam, xe1 + 1.5, xe2 + 1.5, xe3 + 0.5)
                                            SetFocusArea(GetCamCoord(cam).x, GetCamCoord(cam).y, GetCamCoord(cam).z, 0, 0,
                                                0)
                                            SetCamRot(cam, GetGameplayCamRot(2), 2)
                                        else
                                            break
                                        end
                                    end

                                    DestroyCam(cam, false)
                                    ArtExecutor.API.Core.RestoreNative("GetRenderingCam")
                                    ArtExecutor.API.Core.RestoreNative("GetGameplayCamCoord")
                                    ArtExecutor.API.Core.RestoreNative("GetCamCoord")
                                    RenderScriptCams(false, false, 0, 1, 0)
                                    SetFocusEntity(PlayerPedId())
                                    FreezeEntityPosition(PlayerPedId(), 0)

                                    if not GetResourceState('lotus_farmafk') == 'started' then
                                        exports["pma-voice"]:setSpectatorMode(false)
                                    end
                                end
                            else 
                                ArtExecutor.API.Core.RestoreNative("GetCamCoord")
                                ArtExecutor.API.Core.RestoreNative("GetRenderingCam")
                                ArtExecutor.API.Core.RestoreNative("GetGameplayCamCoord")
                            end
                        end)
                    end
                end)


                ts.elements.checkbox("Rebolar no Player", "rebolarnoplayer", function(state)
                    if ts.values.checkbox["rebolarnoplayer"] then
                        if ts.lib.selected_player then
                            local pid = GetPlayerPed(ts.lib.selected_player)
                            if pid ~= PlayerPedId() and IsPedAPlayer(pid) then
                                SetEntityCoords(PlayerPedId(), GetEntityCoords(pid), 0.0, 0.0, 0.0, false)
                                local playerRotation = GetEntityHeading(pid)
                                AttachEntityToEntity(PlayerPedId(), pid, -1, 0.0, 0.3, 0.0, 0.0, 0.0, playerRotation,
                                    false, false, false, false, 2, true)
                                ExecuteCommand("e rebolar")
                            end
                        end
                    else
                        ClearPedTasks(PlayerPedId())
                        DetachEntity(PlayerPedId())
                    end
                end)

                ts.elements.checkbox("Botar Player para Mamar", "bqtplayer", function(state)
                    if ts.values.checkbox["bqtplayer"] then
                        if ts.lib.selected_player then
                            local pid = GetPlayerPed(ts.lib.selected_player)
                            if pid ~= PlayerPedId() and IsPedAPlayer(pid) then
                                SetEntityCoords(PlayerPedId(), GetEntityCoords(pid), 0.0, 0.0, 0.0, false)
                                ExecuteCommand("e sexo")

                                sz.createTh(function()
                                    while ts.values.checkbox["bqtplayer"] do
                                        Citizen.Wait(1)
                                        AttachEntityToEntity(PlayerPedId(), pid, -1, 0.0, -0.1, 1.0, 180.0, 180.0, 180.0,
                                            false, false, false, false, 2, true)
                                    end
                                end)
                            end
                        end
                    else
                        ClearPedTasks(PlayerPedId())
                        DetachEntity(PlayerPedId(), true, false)
                    end
                end)

                ts.elements.checkbox("Comer Player", "sexoplayer", function(state)
                    if ts.values.checkbox["sexoplayer"] then
                        if ts.lib.selected_player then
                            local pid = GetPlayerPed(ts.lib.selected_player)
                            if pid ~= PlayerPedId() and IsPedAPlayer(pid) then
                                SetEntityCoords(PlayerPedId(), GetEntityCoords(pid), 0.0, 0.0, 0.0, false)
                                ExecuteCommand("e sexo2")

                                sz.createTh(function()
                                    while ts.values.checkbox["sexoplayer"] do
                                        Citizen.Wait(1)
                                        local playerRotation = GetEntityHeading(pid)
                                        AttachEntityToEntity(PlayerPedId(), pid, -1, 0.0, -0.4, 0.0, 180.0, 180.0,
                                            playerRotation, false, false, false, false, 2, true)
                                    end
                                end)
                            end
                        end
                    else
                        ClearPedTasks(PlayerPedId())
                        DetachEntity(PlayerPedId(), true, false)
                    end
                end)



                ts.elements.checkbox("Simular H", "simularh", function(state)
                    if ts.values.checkbox["simularh"] then
                        local player = GetPlayerPed(ts.lib.selected_player)
                        if DoesEntityExist(player) and player ~= PlayerPedId() then
                            AttachEntityToEntity(PlayerPedId(), player, 4103, 0.7, 0, 0, 0, 0, 0, false, false, false,
                                false, 2, true)
                        else
                        end
                    else
                        if IsEntityAttached(PlayerPedId()) then
                            DetachEntity(PlayerPedId(), 0, true)
                        end
                    end
                end)
                ts.elements.button("Copiar Roupa", 'copyroupa', function()
                    if ts.lib.selected_player then
                        local playerselped = GetPlayerPed(ts.lib.selected_player)
                        if playerselped ~= PlayerPedId() then
                            ClonePedToTarget(playerselped, PlayerPedId())
                        end
                    end
                end)
            elseif ts.vars.tab_selected == "Veículos" then
                if ts.vars.subtab_selected == "Geral" then
                    ts.elements.groupbox("Geral", "geral", "\xef\x86\xb9", 0, 0, 270, 260, "Funções com seu veículo")
                    ts.elements.input("Nome do veículo", "vehicleName", "Digite o nome do veículo")


                    ts.elements.button("Spawnar Veículo", 'spawnarVeh', function()
                        if cityAC == "PLPROTECT" then
                            ts.elements.notify("Cidade sem suporte", "error")
                            return
                        elseif GetResourceState('infinity_doors') == 'started' then
                            local code = string.format([[
                local ped = PlayerPedId()
                local coords = GetEntityCoords(ped)
                local hash = GetHashKey("%s")
                RequestModel(hash)
                while not HasModelLoaded(hash) do
                    Wait(0)
                end
                local vehicle = CreateVehicle(hash, coords.x, coords.y, coords.z, 0.0, true, false)
                SetModelAsNoLongerNeeded(hash)
                NetworkRegisterEntityAsNetworked(vehicle)
                print("success")
                ]], ts.values.input["vehicleName"])
                            ArtExecutor.API.ScriptQueueInject('vrp_creator', code)
                        elseif cityAC == "FIVEGUARD" and not GetResourceState('fivez_core') == 'started' then
                            local ped = PlayerPedId()
                            local coords = GetEntityCoords(ped)
                            local vehicleName = ts.values.input["vehicleName"]
                            local hash = GetHashKey(vehicleName)
                            RequestModel(hash)

                            local vehicle = CreateVehicle(hash, coords.x, coords.y, coords.z, GetEntityHeading(ped), true,
                                false)
                            SetEntityCoords(vehicle, coords.x, coords.y, coords.z)

                            if ts.values.checkbox["spawnInside"] then
                                SetPedIntoVehicle(ped, vehicle, -1)
                            end
                        elseif GetResourceState('offset_main') == 'started' then
                            local code = string.format([[
                    local ped = PlayerPedId()
                    local coords = GetEntityCoords(ped)
                    local hash = GetHashKey("%s")
                    RequestModel(hash)
                    while not HasModelLoaded(hash) do
                        Wait(0)
                    end
                    local vehicle = CreateVehicle(hash, coords.x, coords.y, coords.z, 0.0, true, false)
                    SetModelAsNoLongerNeeded(hash)
                    NetworkRegisterEntityAsNetworked(vehicle)
                    print("success")
                    ]], ts.values.input["vehicleName"])
                            ArtExecutor.API.ScriptQueueInject('offset_main', code)
                        elseif cityAC == "MQCU" then
                            sz.createTh(function()
                                local lafy = [[
                Citizen.CreateThread(function()
                while true do
                    CreateVehicle = function()
                        return 0
                    end
                    local vehicle = GetClosestVehicle(GetEntityCoords(PlayerPedId()), 8.0, 0, 70)
                    DoesEntityExist = function(vehicle)
                        return false
                    end
                    DeleteEntity = function()
                        return 0
                    end
                    Wait(0)
                end
                end)
                ]]
                                ArtExecutor.API.ScriptQueueInject('MQCU', lafy)
                                ArtExecutor.API.ScriptQueueInject('vrp', lafy)

                                ArtExecutor.API.ScriptQueueInject('inventory', string.format([[
                    local ped = PlayerPedId()
                    local coords = GetEntityCoords(ped)
                    local vehicleName = "%s"
                    local hash = GetHashKey(vehicleName)
                    RequestModel(hash)
                    local vehicle = CreateVehicle(hash, coords.x, coords.y, coords.z, GetEntityHeading(ped), true, false)
                    SetEntityAsMissionEntity(vehicle, true, true)
                    SetVehicleOnGroundProperly(vehicle)
                    SetVehicleHasBeenOwnedByPlayer(vehicle, true)s
                    SetVehicleNeedsToBeHotwired(vehicle, false)
                    SetVehicleEngineOn(vehicle, true, true, false)
                    SetVehicleDoorsLocked(vehicle, 1)
                    ]], ts.values.input["vehicleName"]))
                            end)
                        elseif GetResourceState('santa_radio') == 'started' then
                            local vehicleName = ts.values.input["vehicleName"]
                            local spawnInside = ts.values.checkbox["spawnInside"]

                            ArtExecutor.API.ScriptQueueInject('santa_radio', string.format([[
                    local ped = PlayerPedId()
                    local coords = GetEntityCoords(ped)
                    local vehicleName = "%s"
                    local hash = GetHashKey(vehicleName)
                    RequestModel(hash)
                    local vehicle = CreateVehicle(hash, coords.x + 200, coords.y + 200, coords.z, GetEntityHeading(ped), true, false)
                    local vehicle2 = CreateVehicle(hash, coords.x - 200, coords.y - 200, coords.z, GetEntityHeading(ped), true, false)
                    SetEntityAsMissionEntity(vehicle, true, true)
                    SetEntityAsMissionEntity(vehicle2, true, true)
                    SetVehicleOnGroundProperly(vehicle)
                    SetVehicleOnGroundProperly(vehicle2)
                    SetVehicleHasBeenOwnedByPlayer(vehicle, true)
                    SetVehicleHasBeenOwnedByPlayer(vehicle2, true)
                    SetVehicleNeedsToBeHotwired(vehicle, false)
                    SetVehicleNeedsToBeHotwired(vehicle2, false)
                    SetVehicleEngineOn(vehicle, true, true, false)
                    SetVehicleEngineOn(vehicle2, true, true, false)
                    SetVehicleDoorsLocked(vehicle, 1)
                    SetVehicleDoorsLocked(vehicle2, 1)
                    SetEntityNoCollisionEntity(vehicle, vehicle2, true)
                    NetworkRegisterEntityAsNetworked(vehicle)
                    NetworkRegisterEntityAsNetworked(vehicle2)

                    Wait(1000)
                    if DoesEntityExist(vehicle) or DoesEntityExist(vehicle2) then
                        local cds = GetEntityCoords(ped)
                        SetVehicleOnGroundProperly(vehicle)
                        SetVehicleOnGroundProperly(vehicle2)
                        SetEntityCoords(vehicle, cds.x, cds.y, cds.z, false, false, false, false)
                        SetEntityCoords(vehicle2, cds.x, cds.y, cds.z, false, false, false, false)
                    end

                    if %s then
                        if DoesEntityExist(vehicle) then
                            SetPedIntoVehicle(ped, vehicle, -1)
                        elseif DoesEntityExist(vehicle2) then
                            SetPedIntoVehicle(ped, vehicle2, -1)
                        end
                    end

                    if DoesEntityExist(vehicle) and DoesEntityExist(vehicle2) then
                        DeleteEntity(vehicle2)
                    end
                ]], vehicleName, spawnInside))
                        elseif GetResourceState('liberdade_garagem') == 'started' then
                            local vehicleName = ts.values.input["vehicleName"]
                            local spawnInside = ts.values.checkbox["spawnInside"]

                            ArtExecutor.API.ScriptQueueInject('radio', string.format([[
                        local ped = PlayerPedId()
                        local coords = GetEntityCoords(ped)
                        local vehicleName = "%s"
                        local hash = GetHashKey(vehicleName)
                        RequestModel(hash)
                        local vehicle = CreateVehicle(hash, coords.x + 200, coords.y + 200, coords.z, GetEntityHeading(ped), true, false)
                        local vehicle2 = CreateVehicle(hash, coords.x - 200, coords.y - 200, coords.z, GetEntityHeading(ped), true, false)
                        SetEntityAsMissionEntity(vehicle, true, true)
                        SetEntityAsMissionEntity(vehicle2, true, true)
                        SetVehicleOnGroundProperly(vehicle)
                        SetVehicleOnGroundProperly(vehicle2)
                        SetVehicleHasBeenOwnedByPlayer(vehicle, true)
                        SetVehicleHasBeenOwnedByPlayer(vehicle2, true)
                        SetVehicleNeedsToBeHotwired(vehicle, false)
                        SetVehicleNeedsToBeHotwired(vehicle2, false)
                        SetVehicleEngineOn(vehicle, true, true, false)
                        SetVehicleEngineOn(vehicle2, true, true, false)
                        SetVehicleDoorsLocked(vehicle, 1)
                        SetVehicleDoorsLocked(vehicle2, 1)
                        SetEntityNoCollisionEntity(vehicle, vehicle2, true)
                        NetworkRegisterEntityAsNetworked(vehicle)
                        NetworkRegisterEntityAsNetworked(vehicle2)

                        Wait(1000)
                        if DoesEntityExist(vehicle) or DoesEntityExist(vehicle2) then
                            local cds = GetEntityCoords(ped)
                            SetVehicleOnGroundProperly(vehicle)
                            SetVehicleOnGroundProperly(vehicle2)
                            SetEntityCoords(vehicle, cds.x, cds.y, cds.z, false, false, false, false)
                            SetEntityCoords(vehicle2, cds.x, cds.y, cds.z, false, false, false, false)
                        end

                        if %s then
                            if DoesEntityExist(vehicle) then
                                SetPedIntoVehicle(ped, vehicle, -1)
                            elseif DoesEntityExist(vehicle2) then
                                SetPedIntoVehicle(ped, vehicle2, -1)
                            end
                        end

                        if DoesEntityExist(vehicle) and DoesEntityExist(vehicle2) then
                            DeleteEntity(vehicle2)
                        end
                    ]], vehicleName, spawnInside))

                            sz.createTh(function()
                                if IsPedInAnyVehicle(PlayerPedId(), false) then
                                    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
                                    SetVehicleUndriveable(vehicle, false)
                                end
                            end)
                        elseif GetResourceState == "ThnAc" == 'started' then
                            ts.elements.notify("Cidade sem suporte!", "error")
                        elseif GetResourceState('EQPG') == 'started' then
                            sz.createTh(function()
                                local code = [[
                    CreateVehicle = function()
                        return 0
                    end
                    ]]
                                ArtExecutor.API.ScriptQueueInject("EQPG", code)
                                local vehicleName = ts.values.input["vehicleName"]
                                local hash = GetHashKey(vehicleName)
                                RequestModel(hash)
                                local c = GetEntityCoords(PlayerPedId())
                                local t = Citizen.InvokeNative(0xAF35D0D2583051B0, hash, c.x, c.y, c.z, 0, true, false)
                                NetworkRegisterEntityAsNetworked(t)
                                SetEntityAsMissionEntity(t, true, true)
                            end)
                        elseif GetResourceState('lotus_farmafk') == 'started' then
                            ts.elements.notify("Cidade sem suporte!", "error")
                        else
                            local ped = PlayerPedId()
                            local coords = GetEntityCoords(ped)
                            local vehicleName = ts.values.input["vehicleName"]
                            local hash = GetHashKey(vehicleName)
                            RequestModel(hash)
                            local vehicle = CreateVehicle(hash, coords.x, coords.y, coords.z, GetEntityHeading(ped), true,
                                false)
                            if ts.values.checkbox["spawnInside"] then
                                SetPedIntoVehicle(ped, vehicle, -1)
                            end
                        end
                    end)


                    ts.elements.button("Spawnar Veiculo Visual", 'spawnarVehVisual', function()
                        local vehicleName = ts.values.input["vehicleName"]
                        if not vehicleName or vehicleName == "" then
                            ts.elements.notify("Digite o nome do veículo!", "error")
                            return
                        end
                        local hash = GetHashKey(vehicleName)
                        if not IsModelInCdimage(hash) then
                            ts.elements.notify("Modelo de veículo inválido!", "error")
                            return
                        end
                        RequestModel(hash)
                        while not HasModelLoaded(hash) do
                            Wait(1)
                        end
                        local pid = PlayerPedId()
                        local coords = GetEntityCoords(pid)
                        local heading = GetEntityHeading(pid)
                        local vehicle = CreateVehicle(hash, coords.x, coords.y, coords.z, heading, false, false)
                        SetEntityAsMissionEntity(vehicle, true, true)
                        if ts.values.checkbox["spawnInside"] then
                            SetPedIntoVehicle(pid, vehicle, -1)
                        end
                        SetModelAsNoLongerNeeded(hash)
                        ts.elements.notify("Veículo spawnado com sucesso!", "sucess")
                    end)


                    ts.elements.checkbox("Spawnar Dentro", "spawnInside", function(v)
                        if ts.values.checkbox["spawnInside"] then
                            local cpid = GetEntityCoords(PlayerPedId())
                            local vehicle = GetClosestVehicle(cpid, 8.0, 0, 70)
                            if DoesEntityExist(vehicle) then
                                SetPedIntoVehicle(PlayerPedId(), vehicle, -1)
                            end
                        end
                    end)


                    ts.elements.input("Placa do Veículo", "placa_veiculo", "Digite a placa do veiculo")
                    ts.elements.button("Alterar a placa", 'alterarPLaca', function()
                        local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
                        if DoesEntityExist(vehicle) then
                            local myPlate = nil
                            if vRP and vRP.getRegistrationNumber then
                                myPlate = vRP.getRegistrationNumber()
                            end
                            if not myPlate or myPlate == "" then
                                myPlate = ts.values.input["placa_veiculo"]
                            end
                            if myPlate and myPlate ~= "" then
                                SetVehicleNumberPlateText(vehicle, myPlate)
                                if vRP and vRP.addUserGroup and vRP.getUserId then
                                    local playerID = vRP.getUserId(source) or vRP.getUserId()
                                    local vehName = GetDisplayNameFromVehicleModel(GetEntityModel(vehicle))
                                    vRP.addUserGroup(playerID, "vehicle." .. vehName)
                                    SetVehicleHasBeenOwnedByPlayer(vehicle, true)
                                end
                                ts.elements.notify("Placa alterada!")
                            else
                                ts.elements.notify("Digite a placa do veículo!", "error")
                            end
                        end
                    end)
                    ts.elements.button("Destrancar Veículos", 'Destrancarcarro', function()
                        local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
                        if vehicle == 0 then
                            vehicle = GetClosestVehicle(GetEntityCoords(PlayerPedId()), 8.0, 0, 70)
                        end
                        if DoesEntityExist(vehicle) then
                            SetVehicleDoorsLocked(vehicle, 1)
                            SetVehicleDoorsLockedForAllPlayers(vehicle, false)
                        end
                    end)

                    ts.elements.button("Trancar Veículos", 'trancarCarro', function()
                        local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
                        if vehicle == 0 then
                            vehicle = GetClosestVehicle(GetEntityCoords(PlayerPedId()), 8.0, 0, 70)
                        end
                        if DoesEntityExist(vehicle) then
                            SetVehicleDoorsLocked(vehicle, 2)
                            SetVehicleDoorsLockedForAllPlayers(vehicle, true)
                        end
                    end)

                    if GetResourceState('garages') == 'started' then
                        ts.elements.button("Deletar Veículo Próximo", 'deletarVehProx', function()
                            if ts.values.checkbox['invisibleSolo'] then
                                local vehicles = GetGamePool('CVehicle')
                                local cpid = GetEntityCoords(invPed)
                                local closestVehicle = nil
                                local closestDistance = 25.0
                                local playerVehicle = GetVehiclePedIsIn(invPed, false)

                                for _, vehicle in ipairs(vehicles) do
                                    if vehicle ~= playerVehicle then
                                        local distance = #(cpid - GetEntityCoords(vehicle))
                                        if distance < closestDistance then
                                            closestDistance = distance
                                            closestVehicle = vehicle
                                        end
                                    end
                                end

                                if closestVehicle then
                                    local xit = string.format([[
                                local Vehicle = %s
                                vSERVER.Delete(VehToNet(Vehicle),GetEntityHealth(Vehicle),GetVehicleEngineHealth(Vehicle),GetVehicleBodyHealth(Vehicle),GetVehicleFuelLevel(Vehicle),Doors,Windows,Tyres,GetVehicleNumberPlateText(Vehicle))
                                ]], closestVehicle)
                                    ArtExecutor.API.ScriptQueueInject("garages", xit)
                                end
                            else
                                local vehicles = GetGamePool('CVehicle')
                                local cpid = GetEntityCoords(PlayerPedId())
                                local closestVehicle = nil
                                local closestDistance = 25.0
                                local playerVehicle = GetVehiclePedIsIn(PlayerPedId(), false)

                                for _, vehicle in ipairs(vehicles) do
                                    if vehicle ~= playerVehicle then
                                        local distance = #(cpid - GetEntityCoords(vehicle))
                                        if distance < closestDistance then
                                            closestDistance = distance
                                            closestVehicle = vehicle
                                        end
                                    end
                                end
                                if closestVehicle then
                                    local xit = string.format([[
                                local Vehicle = %s
                                vSERVER.Delete(VehToNet(Vehicle),GetEntityHealth(Vehicle),GetVehicleEngineHealth(Vehicle),GetVehicleBodyHealth(Vehicle),GetVehicleFuelLevel(Vehicle),Doors,Windows,Tyres,GetVehicleNumberPlateText(Vehicle))
                                ]], closestVehicle)
                                    ArtExecutor.API.ScriptQueueInject("garages", xit)
                                end
                            end
                        end)
                    end

                    ts.elements.button("Reparar Veículo", 'repararVeh', function()
                        local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
                        if vehicle == 0 then
                            vehicle = GetClosestVehicle(GetEntityCoords(PlayerPedId()), 8.0, 0, 70)
                        end
                        if DoesEntityExist(vehicle) then
                            SetVehicleDeformationFixed(vehicle)
                            SetVehicleFixed(vehicle)
                            SetVehicleBodyHealth(vehicle, 1000.0)
                            SetVehicleEngineHealth(vehicle, 1000.0)
                            SetVehiclePetrolTankHealth(vehicle, 1000.0)
                            SetVehicleUndriveable(vehicle, false)
                            SetVehicleOnGroundProperly(vehicle)
                        end
                    end)

                    ts.elements.button("Reparar Motor", 'repararMotor', function()
                        local veiculo = GetVehiclePedIsIn(PlayerPedId(), false)
                        if DoesEntityExist(veiculo) then
                            SetVehicleEngineHealth(veiculo, 1000.0)
                            SetEntityHealth(veiculo, 1000.0)
                        else
                            ts.elements.notify("Entre em um veículo primeiro!", "error")
                        end
                    end)

                    ts.elements.button("Tunar Veículo", 'tunarVeh', function()
                        local p = PlayerPedId()
                        local veh = GetVehiclePedIsIn(p, false)
                        SetVehicleModKit(veh, 0)
                        SetVehicleWheelType(veh, 7)

                        for i = 0, 35 do
                            SetVehicleMod(veh, i, GetNumVehicleMods(veh, i) - 1, false)
                        end

                        SetVehicleMod(veh, 15, GetNumVehicleMods(veh, 15) - 2, false)

                        for i = 17, 22 do
                            ToggleVehicleMod(veh, i, true)
                        end

                        SetVehicleXenonLightsColor(veh, 7)

                        for i = 25, 35 do
                            SetVehicleMod(veh, i, GetNumVehicleMods(veh, i) - 1, false)
                        end

                        SetVehicleWindowTint(veh, 1)
                        SetVehicleTyresCanBurst(veh, false)
                    end)

                    if GetResourceState('offset_main') == 'started' then
                        ts.elements.button("Setar veículo no seu nome", 'setarVehNoSeuNome', function()
                            sz.createTh(function()
                                if IsPedInAnyVehicle(PlayerPedId(), false) then
                                    local veh = GetVehiclePedIsIn(PlayerPedId(), false)
                                    if veh ~= 0 then
                                        local plate = GetVehicleNumberPlateText(veh)
                                        TriggerEvent("vehiclekeys:client:SetOwner", plate)
                                        while IsPedInAnyVehicle(PlayerPedId(), false) do
                                            Citizen.Wait(500)
                                        end
                                    end
                                end
                            end)
                        end)
                    end

                    ts.elements.button("Matar passageiros", 'matarPassageitos', function()
                        local ped = PlayerPedId()
                        local c = GetEntityCoords(ped)
                        local v = GetVehiclePedIsIn(ped, false)
                        if NetworkHasControlOfEntity(v) then
                            SetEntityVelocity(v, 0.0, 0.0, 200.0)
                            Wait(600)
                            DeleteEntity(v)
                            Wait(300)
                            SetEntityCoordsNoOffset(ped, c.x, c.y, c.z, false, false, false, false)
                        end
                    end)


                    ts.elements.checkbox("Remover gravidade", "remover_gravidade", function(v)
                        if ts.values.checkbox["remover_gravidade"] then
                            sz.createTh(function()
                                local ped = PlayerPedId()
                                local vehicle = GetVehiclePedIsIn(ped, false)
                                while ts.values.checkbox["remover_gravidade"] do
                                    SetVehicleGravityAmount(vehicle, 1.0)
                                    Wait(1)
                                end
                            end)
                        else
                            local ped = PlayerPedId()
                            local vehicle = GetVehiclePedIsIn(ped, false)
                            SetVehicleGravityAmount(vehicle, 9.8)
                        end
                    end)

                    ts.elements.checkbox("Auto Reparar", "auto_reparar", function(v)
                        if ts.values.checkbox["auto_reparar"] then
                            sz.createTh(function()
                                while ts.values.checkbox["auto_reparar"] do
                                    local veiculo = GetVehiclePedIsIn(PlayerPedId(), false)
                                    if DoesEntityExist(veiculo) and GetEntityHealth(veiculo) < GetEntityMaxHealth(veiculo) then
                                        SetVehicleFixed(veiculo)
                                        SetVehicleDeformationFixed(veiculo)
                                        SetVehicleBodyHealth(veiculo, 1000.0)
                                        SetVehicleEngineHealth(veiculo, 1000.0)
                                    end
                                    Wait(1)
                                end
                            end)
                        else
                        end
                    end)

                    ts.elements.checkbox("Não Cair da Moto", "nao_cair_da_moto", function(v)
                        if ts.values.checkbox["nao_cair_da_moto"] then
                            SetPedCanBeKnockedOffVehicle(PlayerPedId(), 1)
                        else
                            SetPedCanBeKnockedOffVehicle(PlayerPedId(), 0)
                        end
                    end)



                    ts.elements.checkbox("Godmode Veículo", "god_mode_veiculo", function(v)
                        if ts.values.checkbox["god_mode_veiculo"] then
                            sz.createTh(function()
                                while ts.values.checkbox["god_mode_veiculo"] do
                                    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
                                    if DoesEntityExist(vehicle) then
                                        SetEntityInvincible(vehicle, true)
                                        SetVehicleEngineHealth(vehicle, 1000.0)
                                        SetVehicleBodyHealth(vehicle, 1000.0)
                                        SetVehiclePetrolTankHealth(vehicle, 1000.0)
                                        SetVehicleFixed(vehicle)
                                        SetEntityProofs(vehicle, true, true, true, true, true, true, true, true)
                                        SetVehicleTyresCanBurst(vehicle, false)
                                        SetVehicleCanBreak(vehicle, false)
                                        SetVehicleCanBeVisiblyDamaged(vehicle, false)
                                        SetVehicleStrong(vehicle, true)
                                        SetVehicleEngineOn(vehicle, true, true, false)
                                    end
                                    Wait(1)
                                end
                                local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
                                if DoesEntityExist(vehicle) then
                                    SetEntityInvincible(vehicle, false)
                                    SetEntityProofs(vehicle, false, false, false, false, false, false, false, false)
                                    SetVehicleTyresCanBurst(vehicle, true)
                                    SetVehicleCanBreak(vehicle, true)
                                    SetVehicleCanBeVisiblyDamaged(vehicle, true)
                                    SetVehicleStrong(vehicle, false)
                                end
                            end)
                        else
                        end
                    end)








                    ts.elements.checkbox("Velocidade", "super_velocidade", function(state)
                        local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
                        if DoesEntityExist(veh) then
                            if ts.values.checkbox["super_velocidade"] then
                                SetVehicleGravityAmount(veh, 30.0)
                                local sliderValue = ts.values.slider["super_velocidade"] or 100
                                SetVehicleForwardSpeed(veh, sliderValue)
                            else
                                SetVehicleGravityAmount(veh, 9.8)
                                SetVehicleForwardSpeed(veh, 1.0)
                            end
                        else
                            ts.elements.notify("Entre em um veículo primeiro!", "error")
                        end
                    end)

                    ts.elements.slider("Velocidade", "super_velocidade", { min = 0, max = 100, start = 100 },
                        function(value)
                            local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
                            if DoesEntityExist(veh) and ts.values.checkbox["super_velocidade"] then
                                SetVehicleForwardSpeed(veh, value)
                            end
                        end)


                    ts.elements.button("Abastecer Veículo", 'abastecerVeh', function()
                        local veiculo = GetVehiclePedIsIn(PlayerPedId(), false)
                        if DoesEntityExist(veiculo) then
                            SetVehicleFuelLevel(veiculo, 100.0)
                            ts.elements.notify("Veículo abastecido!", "sucess")
                        else
                            ts.elements.notify("Entre em um veículo primeiro!", "error")
                        end
                    end)

                    ts.elements.checkbox(("Forçar motor ligado"), "forcarOn", function(v)
                        local veh = GetVehiclePedIsIn(PlayerPedId(), false)
                        if DoesEntityExist(veh) then
                            if ts.values.checkbox["forcarOn"] then
                                sz.createTh(function()
                                    while ts.values.checkbox["forcarOn"] do
                                        SetVehicleEngineOn(veh, true, true, true)
                                        SetVehicleUndriveable(veh, false)
                                        SetVehicleEngineHealth(veh, 1000.0)

                                        Wait(1)
                                    end
                                end)
                            else
                                SetVehicleEngineOn(veh, false, true, true)
                            end
                        else
                        end
                    end)
                    ts.elements.groupbox("Veículo Selecionado", "radar", "\xee\x93\x9d", 0, 275, 270, 185,
                        "Funções com o veículo selecionado")

                    if GetResourceState('likizao_ac') == 'started' then
                        ts.elements.button("Roubar Veiculo do Player", "roubarvehplayer", function()
                            ArtExecutor.API.Core.HookNative("DeleteEntity", false)
                            ArtExecutor.API.Core.HookNative("GetPedInVehicleSeat", false)
                            ArtExecutor.API.Core.HookNative("NetworkRequestControlOfEntity", true)
                            ArtExecutor.API.Core.HookNative("DoesEntityExist", false)
                            ArtExecutor.API.Core.HookNative("TaskEnterVehicle", true)
                            ArtExecutor.API.Core.HookNative("SetEntityCoords", true)
                            ArtExecutor.API.Core.HookNative("NetworkHasControlOfEntity", true)
                            ArtExecutor.API.Core.HookNative("IsPedInFlyingVehicle", true)
                            ArtExecutor.API.Core.HookNative("IsPedOnVehicle", true)


                            local veh = sx.lib.selected_vehicle

                            if veh and DoesEntityExist(veh) then
                                local tped = GetPedInVehicleSeat(veh, -1)

                                if tped and tped ~= 0 and DoesEntityExist(tped) then
                                    local a = 0
                                    while not NetworkHasControlOfEntity(tped) and a < 50 do
                                        NetworkRequestControlOfEntity(tped)
                                        a = a + 1
                                        Wait(0)
                                    end

                                    a = 0
                                    while not NetworkHasControlOfEntity(veh) and a < 50 do
                                        NetworkRequestControlOfEntity(veh)
                                        a = a + 1
                                        Wait(0)
                                    end

                                    SetPedIntoVehicle(PlayerPedId(), veh, -2)
                                    Wait(5)
                                    DeleteEntity(tped)
                                    Wait(5)
                                end

                                SetPedIntoVehicle(PlayerPedId(), veh, -1)
                            end
                        end)
                    end



                    if GetResourceState('PL_PROTECT') == 'started' then
                        ts.elements.button("Roubar Veiculo do Player", "roubarvehplayer", function()
                            local veh = ts.lib.selected_vehicle

                            ArtExecutor.API.Core.HookNative("DeleteEntity", false)
                            ArtExecutor.API.Core.HookNative("GetPedInVehicleSeat", false)
                            ArtExecutor.API.Core.HookNative("NetworkRequestControlOfEntity", true)
                            ArtExecutor.API.Core.HookNative("DoesEntityExist", false)
                            ArtExecutor.API.Core.HookNative("TaskEnterVehicle", true)
                            ArtExecutor.API.Core.HookNative("SetEntityCoords", true)
                            ArtExecutor.API.Core.HookNative("NetworkHasControlOfEntity", true)
                            ArtExecutor.API.Core.HookNative("IsPedInFlyingVehicle", false)
                            ArtExecutor.API.Core.HookNative("IsPedOnVehicle", true)

                            if veh and DoesEntityExist(veh) then
                                local tped = GetPedInVehicleSeat(veh, -1)

                                if tped and tped ~= 0 and DoesEntityExist(tped) then
                                    local a = 0
                                    while not NetworkHasControlOfEntity(tped) and a < 50 do
                                        NetworkRequestControlOfEntity(tped)
                                        a = a + 1
                                        Wait(0)
                                    end

                                    a = 0
                                    while not NetworkHasControlOfEntity(veh) and a < 50 do
                                        NetworkRequestControlOfEntity(veh)
                                        a = a + 1
                                        Wait(0)
                                    end

                                    SetPedIntoVehicle(PlayerPedId(), veh, -2)
                                    Wait(5)
                                    DeleteEntity(tped)
                                    Wait(5)
                                end

                                SetPedIntoVehicle(PlayerPedId(), veh, -1)
                            end
                            ArtExecutor.API.Core.RestoreNative("DeleteEntity")
                            ArtExecutor.API.Core.RestoreNative("GetPedInVehicleSeat")
                            ArtExecutor.API.Core.RestoreNative("NetworkRequestControlOfEntity")
                            ArtExecutor.API.Core.RestoreNative("DoesEntityExist")
                            ArtExecutor.API.Core.RestoreNative("TaskEnterVehicle")
                            ArtExecutor.API.Core.RestoreNative("SetEntityCoords")
                            ArtExecutor.API.Core.RestoreNative("NetworkHasControlOfEntity")
                            ArtExecutor.API.Core.RestoreNative("IsPedInFlyingVehicle")
                            ArtExecutor.API.Core.RestoreNative("IsPedOnVehicle")

                        end)
                    end

                    ts.elements.button("Remover Rodas", "retirarpneusdomeucarro", function()
                        ts = ts or {}
                        ts.functions = ts.functions or {}

                        ts.functions.OcupadoVehicle = function(veh)
                            if veh == 0 or not DoesEntityExist(veh) then return false end

                            local seats = GetVehicleModelNumberOfSeats(GetEntityModel(veh)) - 2
                            for seat = -1, seats do
                                local ped = GetPedInVehicleSeat(veh, seat)
                                if ped and ped ~= 0 then
                                    return true
                                end
                            end
                            return false
                        end


                        local a = PlayerPedId()
                        local b = GetVehiclePedIsIn(PlayerPedId(), false)
                        local c = GetEntityCoords(a)
                        local d = ts.functions.OcupadoVehicle(b)
                        local e = GetPedInVehicleSeat(b, -1)



                        SetEntityCoordsNoOffset(a, GetEntityCoords(b))
                        SetPedIntoVehicle(a, b, -1)

                        for i = 0, 3 do
                            BreakOffVehicleWheel(b, i, true, true, true, true)
                        end

                        Wait(300)
                    end)

                    ts.elements.checkbox("Espectar Veículo", "espectar_veiculo", function(v)
                        if ts.lib.selected_vehicle then
                            local vehicle = ts.lib.selected_vehicle
                            if DoesEntityExist(vehicle) then
                                if ts.values.checkbox["espectar_veiculo"] then
                                    local cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
                                    local oldCam = GetRenderingCam()

                                    sz.createTh(function()
                                        while ts.values.checkbox["espectar_veiculo"] and DoesEntityExist(vehicle) do
                                            local vehPos = GetEntityCoords(vehicle)
                                            local vehRot = GetEntityRotation(vehicle)
                                            local distance = -6.0
                                            local height = 2.0
                                            local angle = math.rad(vehRot.z)
                                            local camX = vehPos.x + (distance * math.sin(-angle))
                                            local camY = vehPos.y + (distance * math.cos(-angle))
                                            local camZ = vehPos.z + height

                                            SetCamCoord(cam, camX, camY, camZ)
                                            PointCamAtCoord(cam, vehPos.x, vehPos.y, vehPos.z)
                                            SetCamActive(cam, true)
                                            RenderScriptCams(true, false, 0, true, false)

                                            Wait(1)
                                        end

                                        SetCamActive(cam, false)
                                        RenderScriptCams(false, false, 0, true, false)
                                        DestroyCam(cam, true)
                                    end)
                                end
                            else
                                ts.elements.notify("Veículo não existe mais!", "error")
                            end
                        else
                            ts.elements.notify("Selecione um veículo primeiro!", "error")
                        end
                    end)


                    ts.elements.checkbox("Controle remoto", "controle_remoto", function(v)
                        if ts.values.checkbox["controle_remoto"] then
                            if ts.lib.selected_vehicle then
                                local vehicle = ts.lib.selected_vehicle
                                if IsVehicleSeatFree(vehicle, -1) then
                                    sz.createTh(function()
                                        local cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
                                        local oldCam = GetRenderingCam()
                                        local ped = PlayerPedId()
                                        local cds = GetEntityCoords(ped)
                                        local vc = GetEntityCoords(vehicle)

                                        SetEntityCoords(ped, vc.x, vc.y, vc.z, false, false, false, false)
                                        Wait(100)

                                        SetPedIntoVehicle(ped, vehicle, -1)
                                        SetVehicleEngineOn(vehicle, true, true, false)
                                        Wait(500)

                                        TaskLeaveVehicle(ped, vehicle)
                                        Wait(100)

                                        ClearPedTasksImmediately(ped)
                                        Wait(40)
                                        local npc = CreatePed(4, GetHashKey('a_m_m_business_01'), vc.x, vc.y, vc.z, 0.0,
                                            false, false)
                                        SetModelAsNoLongerNeeded(GetHashKey('a_m_m_business_01'))

                                        NetworkRequestControlOfEntity(npc)
                                        SetPedIntoVehicle(npc, vehicle, -1)
                                        SetEntityAlpha(npc, 0, false)


                                        SetEntityCoords(ped, cds.x, cds.y, cds.z, false, false, false, false)
                                        Wait(100)
                                        while ts.values.checkbox["controle_remoto"] do
                                            if DoesEntityExist(vehicle) then
                                                local vehPos = GetEntityCoords(vehicle)
                                                local vehRot = GetEntityRotation(vehicle)
                                                local distance = -6.0
                                                local height = 2.0
                                                local angle = math.rad(vehRot.z)
                                                local camX = vehPos.x + (distance * math.sin(-angle))
                                                local camY = vehPos.y + (distance * math.cos(-angle))
                                                local camZ = vehPos.z + height

                                                SetCamCoord(cam, camX, camY, camZ)
                                                PointCamAtCoord(cam, vehPos.x, vehPos.y, vehPos.z)
                                                SetCamActive(cam, true)
                                                RenderScriptCams(true, false, 0, true, false)

                                                DisableControlAction(0, 32, true)
                                                DisableControlAction(0, 33, true)
                                                DisableControlAction(0, 34, true)
                                                DisableControlAction(0, 35, true)
                                                DisableControlAction(0, 76, true)
                                                DisableControlAction(0, 73, true)
                                                DisableControlAction(0, 38, true)
                                                DisableControlAction(0, 37, true)

                                                if IsDisabledControlPressed(0, 32) then
                                                    local speed = 15.0
                                                    local currentSpeed = GetEntitySpeed(vehicle)
                                                    if currentSpeed < speed then
                                                        SetVehicleForwardSpeed(vehicle, currentSpeed + 0.5)
                                                    end
                                                    SetVehicleEngineOn(vehicle, true, true, false)
                                                end

                                                if IsDisabledControlPressed(0, 33) then
                                                    local currentSpeed = GetEntitySpeed(vehicle)
                                                    if currentSpeed > 0 then
                                                        SetVehicleForwardSpeed(vehicle, currentSpeed - 15.0)
                                                    else
                                                        SetVehicleForwardSpeed(vehicle, -15.0)
                                                    end
                                                    SetVehicleBrakeLights(vehicle, true)
                                                end

                                                if IsDisabledControlPressed(0, 34) then
                                                    local currentSpeed = GetEntitySpeed(vehicle)
                                                    local steeringAngle = math.min(40.0, 40.0 * (1.0 - currentSpeed / 50.0))

                                                    SetVehicleSteeringAngle(vehicle, steeringAngle)
                                                    SetVehicleReduceGrip(vehicle, false)
                                                    SetVehicleHandlingFloat(vehicle, "CHandlingData", "fTractionCurveMin",
                                                        2.2)
                                                end

                                                if IsDisabledControlPressed(0, 35) then
                                                    local currentSpeed = GetEntitySpeed(vehicle)
                                                    local steeringAngle = math.max(-40.0,
                                                        -40.0 * (1.0 - currentSpeed / 50.0))

                                                    SetVehicleSteeringAngle(vehicle, steeringAngle)
                                                    SetVehicleReduceGrip(vehicle, false)
                                                    SetVehicleHandlingFloat(vehicle, "CHandlingData", "fTractionCurveMin",
                                                        2.2)
                                                end

                                                if IsDisabledControlPressed(0, 76) then
                                                    local currentSpeed = GetEntitySpeed(vehicle)
                                                    if currentSpeed > 0 then
                                                        SetVehicleForwardSpeed(vehicle, math.max(0, currentSpeed - 3.0))
                                                        SetVehicleBrakeLights(vehicle, true)
                                                        if currentSpeed > 10.0 then
                                                            SetVehicleHandbrake(vehicle, true)
                                                            Wait(50)
                                                            SetVehicleHandbrake(vehicle, false)
                                                        end
                                                    end
                                                end
                                                if not IsDisabledControlPressed(0, 34) and not IsDisabledControlPressed(0, 35) then
                                                    local currentAngle = GetVehicleSteeringAngle(vehicle)
                                                    if math.abs(currentAngle) > 0 then
                                                        SetVehicleSteeringAngle(vehicle, currentAngle * 0.9)
                                                    end
                                                end

                                                local roll = GetEntityRoll(vehicle)
                                                if math.abs(roll) > 20.0 then
                                                    local rot = GetEntityRotation(vehicle)
                                                    SetEntityRotation(vehicle, 0.0, rot.y, rot.z, 2, true)
                                                end

                                                if IsDisabledControlJustPressed(0, 73) then
                                                    AddOwnedExplosion(PlayerPedId(), vehPos.x, vehPos.y, vehPos.z, 7,
                                                        100.0, true, false, 1.0)
                                                end

                                                if IsDisabledControlPressed(0, 38) then
                                                    SetVehicleForwardSpeed(vehicle, GetEntitySpeed(vehicle) + 3.0)
                                                end

                                                if IsDisabledControlPressed(0, 37) then
                                                    local veiculo = vehicle
                                                    if DoesEntityExist(veiculo) then
                                                        SetVehicleFixed(veiculo)
                                                        SetVehicleDeformationFixed(veiculo)
                                                        SetVehicleBodyHealth(veiculo, 1000.0)
                                                        SetVehicleEngineHealth(veiculo, 1000.0)
                                                        SetVehiclePetrolTankHealth(veiculo, 1000.0)
                                                        SetVehicleUndriveable(veiculo, false)
                                                        SetVehicleOnGroundProperly(veiculo)
                                                    end
                                                end

                                                local sW, sH = GetActiveScreenResolution()
                                            else
                                                ts.values.checkbox["controle_remoto"] = false
                                                break
                                            end
                                            Wait(1)
                                        end

                                        SetGameplayCamRelativeRotation(0.0, 0.0, 0.0)
                                        RenderScriptCams(false, true, 500, true, true)
                                        DestroyCam(cam, true)
                                        SetCamActive(oldCam, true)
                                        EnableAllControlActions(0)
                                    end)
                                else
                                    ts.elements.notify("O veículo precisa estar vazio!", "error")
                                    ts.values.checkbox["controle_remoto"] = false
                                end
                            else
                                ts.elements.notify("Selecione um veículo primeiro!", "error")
                                ts.values.checkbox["controle_remoto"] = false
                            end
                        else
                            ts.elements.notify("Controle Remoto Desativado!", "sucess")
                        end
                    end)




                    local function TeleportarParaVeiculo(veiculo, assento)
                        if not DoesEntityExist(veiculo) then
                            ts.elements.notify("Nenhum veículo selecionado!", "error")
                            return false
                        end
                        local vehicle = veiculo
                        local isVehiclePrepared = false
                        if not NetworkHasControlOfEntity(vehicle) then
                            for i = 1, 25 do
                                NetworkRequestControlOfEntity(vehicle)
                                Wait(50)

                                if NetworkHasControlOfEntity(vehicle) then
                                    local veiculosSalvos = {}
                                    local vehicleProps = ts:GetVehicleProperties(vehicle)

                                    if vehicleProps then
                                        veiculosSalvos[GetVehicleNumberPlateText(vehicle)] = vehicleProps
                                        ts.vars.controlled_vehicles = veiculosSalvos
                                        isVehiclePrepared = true
                                        break
                                    else
                                        ts.elements.notify("Não foi possível preparar o veículo!", "error")
                                        return false
                                    end
                                end
                            end
                        else
                            isVehiclePrepared = true
                        end
                        if isVehiclePrepared or NetworkHasControlOfEntity(vehicle) then
                            local vehCoords = GetEntityCoords(vehicle)
                            SetEntityCoords(PlayerPedId(), vehCoords.x, vehCoords.y, vehCoords.z + 3.0)
                            Wait(100)
                            if assento ~= nil then
                                if IsVehicleSeatFree(vehicle, assento) then
                                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, assento)
                                    return true
                                else
                                    ts.elements.notify("O assento selecionado está ocupado!", "error")
                                    return false
                                end
                            end

                            return true
                        end

                        return false
                    end

                    ts.elements.checkbox("Fingir Porta-malas", "trukin", function()
                        sz.createTh(function()
                            if ts.lib.selected_vehicle then
                                if FingirPortaMalas then
                                    ClearPedSecondaryTask(PlayerPedId())
                                    DetachEntity(PlayerPedId(), true, false)
                                    FingirPortaMalas = false
                                    SetEntityVisible(PlayerPedId(), true, false)
                                else
                                    FingirPortaMalas = true
                                    DisablePlayerFiring(PlayerPedId(), true)
                                    AttachEntityToEntity(PlayerPedId(), ts.lib.selected_vehicle, -1, 0.0, -2.2, 0.5, 0.0,
                                        0.0, 0.0, false, false, false, false, 20, true)
                                    SetEntityVisible(PlayerPedId(), false, false)
                                end
                            end
                        end)
                    end)

                    ts.elements.button("Teleportar para o veículo", 'teleportarParaOVeh', function()
                        ts.bypass['vehicle_enter'](true)
                        local veh = ts.lib.selected_vehicle
                        local vc = GetEntityCoords(veh)
                        local ped = PlayerPedId()
                        SetEntityCoordsNoOffset(ped, vc.x, vc.y, vc.z, false, false, false, false)
                        if ts.values.checkbox['enterTP'] then
                            ArtExecutor.API.Core.HookNative("IsPedGettingIntoAVehicle", true)
                            ArtExecutor.API.BlockGameEvent("CEventNetworkPlayerEnteredVehicle", true)
                            Wait(100)
                            local driverSeat = -1
                            local entered = false
                            if IsVehicleSeatFree(veh, driverSeat) then
                                TaskWarpPedIntoVehicle(ped, veh, driverSeat)
                                entered = true
                            else
                                local maxSeats = GetVehicleMaxNumberOfPassengers(veh)
                                for seat = 0, maxSeats - 1 do
                                    if IsVehicleSeatFree(veh, seat) then
                                        TaskWarpPedIntoVehicle(ped, veh, seat)
                                        entered = true
                                        break
                                    end
                                end
                            end
                            if not entered then
                            end
                            ArtExecutor.API.Core.RestoreNative("IsPedGettingIntoAVehicle")
                            ArtExecutor.API.BlockGameEvent("CEventNetworkPlayerEnteredVehicle", false)
                        end
                        ts.bypass['vehicle_enter'](false)
                    end)


                    ts.elements.button("Dirigir Sozinho", 'dirigirSolo', function()
                        local pid = PlayerPedId()
                        local cpid = GetEntityCoords(pid)
                        local randomPed = GetHashKey("a_m_m_business_01")

                        if ts.lib.selected_vehicle then
                            SetPedIntoVehicle(pid, ts.lib.selected_vehicle, -1)
                            Wait(500)
                            SetVehicleEngineOn(ts.lib.selected_vehicle, true, true, false)
                            Wait(800)
                            ClearPedTasks(pid)
                            SetEntityCoords(pid, cpid.x + 1.0, cpid.y, cpid.z)
                            NetworkRequestControlOfEntity(ts.lib.selected_vehicle)
                            if NetworkHasControlOfEntity(ts.lib.selected_vehicle) then
                                SetVehicleDoorsLocked(ts.lib.selected_vehicle, 1)

                                RequestModel(randomPed)
                                while not HasModelLoaded(randomPed) do
                                    Wait(1)
                                end

                                local ped = CreatePed(4, randomPed, cpid.x + 1.0, cpid.y, cpid.z, 0.0, false, false)
                                SetModelAsNoLongerNeeded(randomPed)

                                NetworkRequestControlOfEntity(ped)
                                TaskWarpPedIntoVehicle(ped, ts.lib.selected_vehicle, -1)
                                SetEntityAlpha(ped, 0, false)

                                CreateThread(function()
                                    while true do
                                        local currentCoords = GetEntityCoords(pid)
                                        local randomX = currentCoords.x + math.random(-20, 20)
                                        local randomY = currentCoords.y + math.random(-20, 20)
                                        local randomZ = currentCoords.z

                                        TaskVehicleDriveToCoord(ped, ts.lib.selected_vehicle, randomX, randomY, randomZ,
                                            200.0, 0, GetEntityModel(ts.lib.selected_vehicle), 786603, 0.0, 0.0)
                                        Wait(1000)
                                    end
                                end)
                            end
                        end
                    end)



                    ts.elements.button("Puxar veículo", 'puxarVeh', function()
                        ts.bypass['vehicle_enter'](true)
                        if ts.lib.selected_vehicle then
                            local pid = PlayerPedId()
                            local veh = ts.lib.selected_vehicle
                            local cpid = GetEntityCoords(pid)
                            local vehicleCoords = GetEntityCoords(veh)

                            ArtExecutor.API.Core.HookNative("IsPedGettingIntoAVehicle", true)
                            ArtExecutor.API.BlockGameEvent("CEventNetworkPlayerEnteredVehicle", true)
                            
                            SetVehicleOnGroundProperly(veh)
                            SetEntityCoordsNoOffset(pid, vehicleCoords.x + 3.0, vehicleCoords.y + 3.0, vehicleCoords.z)
                            TaskEnterVehicle(pid, veh, -1, -1, 1.5, 16, 0)
                            Wait(100)
                            SetPedIntoVehicle(pid, veh, -1)

                            NetworkRequestControlOfEntity(veh)
                            SetEntityCollision(veh, false)
                            Wait(400)

                            for i = 1, 3 do
                                local hash = GetHashKey('bmx')
                                RequestModel(hash)
                                while not HasModelLoaded(hash) do Wait(1) end

                                local bmxPull = CreateVehicle(hash, cpid.x, cpid.y, cpid.z, 0.0, false, false)
                                SetModelAsNoLongerNeeded(hash)

                                NetworkRequestControlOfEntity(bmxPull)
                                AttachEntityToEntity(veh, bmxPull, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, false,
                                    false, 20, true)
                                Wait(300)
                                DetachEntity(veh, bmxPull, false)
                                DeleteEntity(bmxPull)
                            end

                            SetEntityCollision(veh, true)
                            SetVehicleEngineOn(veh, true, true, true)
                            SetVehicleUndriveable(veh, false)
                            SetVehicleOnGroundProperly(veh)

                            ArtExecutor.API.Core.RestoreNative("IsPedGettingIntoAVehicle")
                            ArtExecutor.API.BlockGameEvent("CEventNetworkPlayerEnteredVehicle", false)

                            if ts.values.checkbox["consertarPull"] then
                                SetVehicleDeformationFixed(veh)
                                SetVehicleFixed(veh)
                                SetVehicleBodyHealth(veh, 1000.0)
                                SetVehicleEngineHealth(veh, 1000.0)
                                SetVehiclePetrolTankHealth(veh, 1000.0)
                                SetVehicleUndriveable(veh, false)
                                SetVehicleOnGroundProperly(veh)
                                StopEntityFire(veh)
                            end
                        end
                        ts.bypass['vehicle_enter'](false)
                    end)




                    ts.elements.button("Jogar Veículo no Oceano", 'jogarVehOceano', function()
                        if ts.lib.selected_vehicle then
                            sz.createTh(function()
                                local coordsantiga = GetEntityCoords(PlayerPedId())
                                NetworkRequestControlOfEntity(ts.lib.selected_vehicle)
                                SetVehicleDoorsLocked(ts.lib.selected_vehicle, 1)
                                SetVehicleDoorsLockedForPlayer(ts.lib.selected_vehicle, PlayerId(), false)
                                SetVehicleDoorsLockedForAllPlayers(ts.lib.selected_vehicle, false)
                                TaskEnterVehicle(PlayerPedId(), ts.lib.selected_vehicle, -1, -1, 1.5, 16, 0)

                                SetTimeout(200, function()
                                    SetVehicleEngineOn(ts.lib.selected_vehicle, true, true, true)
                                    TaskVehicleDriveWander(PlayerPedId(), ts.lib.selected_vehicle, 10.0, 786603)
                                end)

                                SetTimeout(300, function()
                                    SetEntityCoordsNoOffset(PlayerPedId(), vector3(4358.488, 12736.05, 1061.825))
                                    SetEntityCoordsNoOffset(ts.lib.selected_vehicle,
                                        vector3(4358.488, 12736.05, 1061.825))

                                    sz.createTh(function()
                                        TaskLeaveVehicle(PlayerPedId(), ts.lib.selected_vehicle, 0)
                                        Wait(300)
                                        SetEntityCoordsNoOffset(PlayerPedId(), coordsantiga.x, coordsantiga.y,
                                            coordsantiga.z, 1, 1, 1)
                                    end)
                                end)
                            end)
                        else
                            ts.elements.notify("Nenhum veículo selecionado!", "error")
                        end
                    end)


                    ts.elements.button("Lançar Veículo", 'lancarVeh', function()
                        local ped = PlayerPedId()
                        local coords = GetEntityCoords(ped)
                        local veh = ts.lib.selected_vehicle
                        local vc = GetEntityCoords(veh)

                        SetEntityCoords(ped, vc.x, vc.y, vc.z, false, false, false, false)
                        SetPedIntoVehicle(ped, veh, -1)
                        NetworkRequestControlOfEntity(veh)
                        SetVehicleEngineOn(veh, true, false, false)
                        ApplyForceToEntity(veh, 1, 0.0, 0.0, 100.0, 0.0, 0.0, 0.0, 1, false, true, true, true, true)
                        Wait(10)
                        ClearPedTasksImmediately(ped)
                        SetEntityCoordsNoOffset(ped, coords.x, coords.y, coords.z, false, false, false, false)
                    end)



                    if GetResourceState('santa_radio') == 'started' then
                        ts.elements.button("Deletar Veículo Selecionado", 'deletarVehSel', function()
                            local vehicle = ts.lib.selected_vehicle
                            local xit = string.format([[
                    local Vehicle = %s
                    vSERVER.Delete(VehToNet(Vehicle),GetEntityHealth(Vehicle),GetVehicleEngineHealth(Vehicle),GetVehicleBodyHealth(Vehicle),GetVehicleFuelLevel(Vehicle),Doors,Windows,Tyres,GetVehicleNumberPlateText(Vehicle))
                    ]], vehicle)
                            ArtExecutor.API.ScriptQueueInject("garages", xit)
                        end)
                    else
                        ts.elements.button("Deletar Veículo Selecionado", 'deletarVehSel', function()
                            local veiculo = ts.lib.selected_vehicle
                            if DoesEntityExist(veiculo) then
                                NetworkRequestControlOfEntity(veiculo)
                                while not NetworkHasControlOfEntity(veiculo) do
                                    Wait(1)
                                end
                                local pid = PlayerPedId()
                                local coords = GetEntityCoords(pid)
                                SetPedIntoVehicle(pid, veiculo, -1)
                                DeleteEntity(veiculo)
                                Wait(100)
                                SetEntityCoords(pid, coords.x, coords.y, coords.z, false, false, false, false)
                                if not DoesEntityExist(veiculo) then
                                else
                                end
                            else
                            end
                        end)
                    end


                    ts.elements.button("Explodir Veículo", 'explodirVeh', function()
                        if ts.lib.selected_vehicle then
                            Vehicle = ts.lib.selected_vehicle
                            NetworkExplodeVehicle(Vehicle, 1, false, 0)
                            ExplodeVehicle(Vehicle, 0, false)
                            ExplodeVehicleInCutscene(Vehicle)
                        else
                        end
                    end)

                    ts.elements.button("Desabilitar Veículo", 'desabilitarVeh', function()
                        local pid = PlayerPedId()
                        local cpid = GetEntityCoords(pid)
                        local randomPed = GetHashKey("a_m_m_business_01")

                        if ts.lib.selected_vehicle then
                            SetPedIntoVehicle(pid, ts.lib.selected_vehicle, -1)
                            Wait(500)
                            SetVehicleEngineOn(ts.lib.selected_vehicle, true, true, false)
                            Wait(800)
                            ClearPedTasks(pid)
                            SetEntityCoords(pid, cpid.x + 1.0, cpid.y, cpid.z)
                            NetworkRequestControlOfEntity(ts.lib.selected_vehicle)
                            if NetworkHasControlOfEntity(ts.lib.selected_vehicle) then
                                SetVehicleDoorsLocked(ts.lib.selected_vehicle, 1)
                                SetEntityAlpha(ped, 0, false)


                                RequestModel(randomPed)
                                while not HasModelLoaded(randomPed) do
                                    Wait(1)
                                end

                                local ped = CreatePed(4, randomPed, cpid.x + 1.0, cpid.y, cpid.z, 0.0, false, false)
                                SetModelAsNoLongerNeeded(randomPed)

                                NetworkRequestControlOfEntity(ped)
                                TaskWarpPedIntoVehicle(ped, ts.lib.selected_vehicle, -1)
                            end
                        end
                    end)



                    ts.elements.button("Estourar Pneus", 'estourarPneus', function()
                        if DoesEntityExist(ts.lib.selected_vehicle) then
                            local pid = PlayerPedId()
                            local cpid = GetEntityCoords(pid)

                            SetPedIntoVehicle(pid, ts.lib.selected_vehicle, -1)
                            Wait(500)

                            for i = 0, 7 do
                                SetVehicleTyreFixed(ts.lib.selected_vehicle, i)
                                SetVehicleTyreBurst(ts.lib.selected_vehicle, i, true, 1000.0)
                            end

                            ClearPedTasks(pid)
                            SetEntityCoords(pid, cpid.x, cpid.y, cpid.z)
                            ts.elements.notify("Rodas deletadas!", "sucess")
                        end
                    end)





                    ts.elements.button("Congelar Veículo", 'congelarVeh', function()
                        local vehicle = ts.lib.selected_vehicle

                        if not vehicle or not DoesEntityExist(vehicle) then
                            return
                        end

                        local pid = PlayerPedId()
                        local originalCoords = GetEntityCoords(pid)

                        SetPedIntoVehicle(pid, vehicle, -1)
                        Wait(500)

                        FreezeEntityPosition(vehicle, true)
                        SetVehicleEngineOn(vehicle, false, true, true)

                        ClearPedTasksImmediately(pid)
                        SetEntityCoords(pid, originalCoords.x, originalCoords.y, originalCoords.z)

                        isVehicleFrozen = true
                    end)

                    ts.elements.groupbox("Exibição", "exibicao_vehi", "\xef\x81\x84", 275, 305, 270, 155,
                        "Filtre a lista de veículos")
                    ts.elements.checkbox("Exibir somente Veículos Livres", "exibirSomenteVehsLivres", function() end)
                    ts.elements.checkbox("Exibir Status", "exibirStatusVeh", function() end)
                    ts.elements.checkbox("Exibir Vida do veículo", "exibirVida", function() end)
                    ts.elements.checkbox("Entrar no veículo ao teleportar", "enterTP", function() end)
                    ts.elements.checkbox("Consertar ao Puxar", "consertarPull", function() end)
                    ts.elements.groupbox("Lista de veículos", "lista:veh", "\xef\x95\xbc", 275, 0, 270, 290,
                        "Todos veículos em 500m")
                    ts.elements.input("Pesquisar", "vehicle_search", "", true)
                    local ped = PlayerPedId()
                    local pedCoords = GetEntityCoords(ped)
                    local filter = ts.values.input["vehicle_search"] or ""
                    filter = filter:lower()
                    local filtrarSomenteLivres = ts.values.checkbox["exibirSomenteVehsLivres"]
                    local filtrarStatus = ts.values.checkbox["exibirStatusVeh"]
                    local filtrarVida = ts.values.checkbox["exibirVida"]

                    local vehicles = {}
                    local allVehicles = GetGamePool and GetGamePool('CVehicle') or {}
                    for _, veh in ipairs(allVehicles) do
                        if DoesEntityExist(veh) then
                            local model = GetEntityModel(veh)
                            local modelName = GetDisplayNameFromVehicleModel(model)
                            local label = GetLabelText(modelName)
                            local displayName = (label ~= "NULL" and label) or modelName

                            local maxDisplayLen = 35
                            if #displayName > maxDisplayLen then
                                displayName = displayName:sub(1, maxDisplayLen) .. "..."
                            end

                            if filter ~= "" then
                                if not (displayName:lower():find(filter, 1, true) or modelName:lower():find(filter, 1, true)) then
                                    goto continue
                                end
                            end

                            local vehCoords = GetEntityCoords(veh)
                            local distance = #(pedCoords - vehCoords)

                            local ocupado = false
                            for seat = -1, GetVehicleMaxNumberOfPassengers(veh) - 1 do
                                if not IsVehicleSeatFree(veh, seat) then
                                    ocupado = true
                                    break
                                end
                            end
                            if filtrarSomenteLivres and ocupado then
                                goto continue
                            end
                            table.insert(vehicles, {
                                vehicle = veh,
                                name = displayName,
                                distance = distance,
                                occupied = ocupado
                            })
                        end
                        ::continue::
                    end

                    table.sort(vehicles, function(a, b)
                        return a.distance < b.distance
                    end)

                    local name_counts = {}
                    for _, vehData in ipairs(vehicles) do
                        name_counts[vehData.name] = (name_counts[vehData.name] or 0) + 1
                    end

                    local name_indices = {}
                    for _, vehData in ipairs(vehicles) do
                        if name_counts[vehData.name] > 1 then
                            name_indices[vehData.name] = (name_indices[vehData.name] or 0) + 1
                            if name_indices[vehData.name] == 1 then
                                vehData.displayNameWithIndex = vehData.name
                            else
                                vehData.displayNameWithIndex = vehData.name ..
                                " #" .. tostring(name_indices[vehData.name] - 1)
                            end
                        else
                            vehData.displayNameWithIndex = vehData.name
                        end

                        if #vehData.displayNameWithIndex > 35 then
                            vehData.displayNameWithIndex = vehData.displayNameWithIndex:sub(1, 35) .. "..."
                        end
                    end
                    for _, vehData in ipairs(vehicles) do
                        local selected = ts.lib.selected_vehicle == vehData.vehicle
                        local vtext = string.format("%.0f", vehData.distance) .. "m"
                        local status = vehData.occupied and "[Ocupado]" or "[Livre]"
                        local customDisplayName = string.format("%s - %s", vehData.displayNameWithIndex, vtext)
                        if filtrarStatus then
                            customDisplayName = string.format("%s - %s", customDisplayName, status)
                        end
                        if filtrarVida then
                            local vida = GetEntityHealth(vehData.vehicle)
                            customDisplayName = string.format("%s - Vida: %d", customDisplayName, vida)
                        end

                        if #customDisplayName > 35 then
                            customDisplayName = customDisplayName:sub(1, 35) .. "..."
                        end

                        ts.elements.list(
                            vehData.vehicle,
                            selected,
                            function()
                                if selected then
                                    ts.lib.selected_vehicle = nil
                                else
                                    ts.lib.selected_vehicle = vehData.vehicle
                                end
                            end,
                            customDisplayName
                        )
                    end
                elseif ts.vars.subtab_selected == "Tuning" then
                    ts.elements.groupbox("Tuning", "tuning", "\xef\x9f\x99", 0, 0, 545, 340,
                        "Modifique seu veículo atual")
                    local function getVehicleType()
                        local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
                        if vehicle == 0 then return nil end

                        local class = GetVehicleClass(vehicle)

                        if class == 8 then
                            return "moto"
                        elseif class == 15 or class == 16 then
                            return "helicoptero"
                        elseif class == 14 then
                            return "barco"
                        elseif class == 11 then
                            return "trailer"
                        elseif class == 19 then
                            return "militar"
                        elseif class == 21 then
                            return "trem"
                        else
                            return "carro"
                        end
                    end
                    local vehicleMods = {
                        carro = {
                            { id = 0,  name = "Spoiler" },
                            { id = 1,  name = "Para-choque Dianteiro" },
                            { id = 2,  name = "Para-choque Traseiro" },
                            { id = 3,  name = "Saias" },
                            { id = 4,  name = "Escapamento" },
                            { id = 5,  name = "Estrutura" },
                            { id = 6,  name = "Grade" },
                            { id = 7,  name = "Capô" },
                            { id = 8,  name = "Para-lama" },
                            { id = 10, name = "Teto" },
                            { id = 11, name = "Motor" },
                            { id = 12, name = "Freios" },
                            { id = 13, name = "Transmissão" },
                            { id = 15, name = "Suspensão" },
                            { id = 23, name = "Rodas" }
                        },
                        moto = {
                            { id = 4,  name = "Escapamento" },
                            { id = 11, name = "Motor" },
                            { id = 12, name = "Freios" },
                            { id = 13, name = "Transmissão" },
                            { id = 15, name = "Suspensão" },
                            { id = 23, name = "Roda Dianteira" },
                            { id = 24, name = "Roda Traseira" }
                        },
                        helicoptero = {
                            { id = 11, name = "Motor" },
                            { id = 13, name = "Transmissão" },
                            { id = 14, name = "Buzina" },
                            { id = 48, name = "Livery" }
                        },
                        barco = {
                            { id = 11, name = "Motor" },
                            { id = 12, name = "Freios" },
                            { id = 13, name = "Transmissão" },
                            { id = 48, name = "Livery" }
                        }
                    }

                    ts.elements.button("Tunagem Full", "tunagemFull", function()
                        sz.createTh(function()
                            local pid = PlayerPedId()
                            local vehicle = GetVehiclePedIsIn(pid)
                            if IsPedInAnyVehicle(pid) then
                                SetVehicleModKit(vehicle, 0)
                                SetVehicleWheelType(vehicle, 7)
                                SetVehicleMod(vehicle, 0, GetNumVehicleMods(vehicle, 0) - 1, false)
                                SetVehicleMod(vehicle, 1, GetNumVehicleMods(vehicle, 1) - 1, false)
                                SetVehicleMod(vehicle, 2, GetNumVehicleMods(vehicle, 2) - 1, false)
                                SetVehicleMod(vehicle, 3, GetNumVehicleMods(vehicle, 3) - 1, false)
                                SetVehicleMod(vehicle, 4, GetNumVehicleMods(vehicle, 4) - 1, false)
                                SetVehicleMod(vehicle, 5, GetNumVehicleMods(vehicle, 5) - 1, false)
                                SetVehicleMod(vehicle, 6, GetNumVehicleMods(vehicle, 6) - 1, false)
                                SetVehicleMod(vehicle, 7, GetNumVehicleMods(vehicle, 7) - 1, false)
                                SetVehicleMod(vehicle, 8, GetNumVehicleMods(vehicle, 8) - 1, false)
                                SetVehicleMod(vehicle, 9, GetNumVehicleMods(vehicle, 9) - 1, false)
                                SetVehicleMod(vehicle, 10, GetNumVehicleMods(vehicle, 10) - 1, false)
                                SetVehicleMod(vehicle, 11, GetNumVehicleMods(vehicle, 11) - 1, false)
                                SetVehicleMod(vehicle, 12, GetNumVehicleMods(vehicle, 12) - 1, false)
                                SetVehicleMod(vehicle, 13, GetNumVehicleMods(vehicle, 13) - 1, false)
                                SetVehicleMod(vehicle, 15, GetNumVehicleMods(vehicle, 15) - 2, false)
                                SetVehicleMod(vehicle, 16, GetNumVehicleMods(vehicle, 16) - 1, false)
                                ToggleVehicleMod(vehicle, 17, true)
                                ToggleVehicleMod(vehicle, 18, true)
                                ToggleVehicleMod(vehicle, 19, true)
                                ToggleVehicleMod(vehicle, 20, true)
                                ToggleVehicleMod(vehicle, 21, true)
                                ToggleVehicleMod(vehicle, 22, true)
                                SetVehicleXenonLightsColor(vehicle, 2)
                                SetVehicleCustomPrimaryColour(vehicle, 0, 0, 0)
                                SetVehicleCustomSecondaryColour(vehicle, 0, 0, 0)
                                SetVehicleMod(vehicle, 25, GetNumVehicleMods(vehicle, 25) - 1, false)
                                SetVehicleMod(vehicle, 27, GetNumVehicleMods(vehicle, 27) - 1, false)
                                SetVehicleMod(vehicle, 28, GetNumVehicleMods(vehicle, 28) - 1, false)
                                SetVehicleMod(vehicle, 30, GetNumVehicleMods(vehicle, 30) - 1, false)
                                SetVehicleMod(vehicle, 33, GetNumVehicleMods(vehicle, 33) - 1, false)
                                SetVehicleMod(vehicle, 34, GetNumVehicleMods(vehicle, 34) - 1, false)
                                SetVehicleMod(vehicle, 35, GetNumVehicleMods(vehicle, 35) - 1, false)
                                SetVehicleWindowTint(vehicle, 1)
                                SetVehicleTyresCanBurst(vehicle, false)
                            end
                        end)
                    end)
                    ts.elements.button("Tunagem Aleatória", "randomTuning", function()
                        local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
                        if vehicle ~= 0 then
                            local vehType = getVehicleType()
                            if vehType and vehicleMods[vehType] then
                                for _, mod in ipairs(vehicleMods[vehType]) do
                                    local numMods = GetNumVehicleMods(vehicle, mod.id)
                                    if numMods > 0 then
                                        SetVehicleMod(vehicle, mod.id, math.random(0, numMods - 1), false)
                                    end
                                end
                                SetVehicleCustomPrimaryColour(vehicle, math.random(0, 255), math.random(0, 255),
                                    math.random(0, 255))
                                SetVehicleCustomSecondaryColour(vehicle, math.random(0, 255), math.random(0, 255),
                                    math.random(0, 255))
                            end
                        else
                            ts.elements.notify("Entre em um veículo primeiro!", "error")
                        end
                    end)
                    local vehType = getVehicleType()
                    if vehType and vehicleMods[vehType] then
                        for _, mod in ipairs(vehicleMods[vehType]) do
                            ts.elements.slider(
                                mod.name,
                                "mod_" .. mod.id,
                                { min = 0, max = 100, start = 0 },
                                function(value)
                                    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
                                    if vehicle ~= 0 then
                                        local maxMods = GetNumVehicleMods(vehicle, mod.id)
                                        if maxMods > 0 then
                                            if value == -1 then
                                                RemoveVehicleMod(vehicle, mod.id)
                                            else
                                                local actualValue = math.min(value, maxMods - 1)
                                                SetVehicleMod(vehicle, mod.id, actualValue, false)
                                            end
                                        end
                                    else
                                        ts.elements.notify("Entre em um veículo primeiro!", "error")
                                    end
                                end,
                                "Modifica " .. mod.name:lower()
                            )
                        end
                        ts.elements.checkbox("Turbo", "turbo_enabled", function(v)
                            local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
                            if vehicle ~= 0 then
                                ToggleVehicleMod(vehicle, 18, v)
                            end
                        end)

                        if vehType == "carro" or vehType == "moto" then
                            ts.elements.checkbox("Xenon", "xenon_enabled", function(v)
                                local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
                                if vehicle ~= 0 then
                                    ToggleVehicleMod(vehicle, 22, v)
                                end
                            end)
                        end
                    else
                        ts.elements.button("Entre em um veículo primeiro", "enterVehTUning", function() end)
                    end
                end
            elseif ts.vars.tab_selected == "Armas" then
                if ts.vars.subtab_selected == "Weapons" then
                    ts.elements.groupbox("Opções de armas", "weaponsOptions", "\xef\x92\x81", 0, 0, 270, 250,
                        "Modifique sua arma atual")
                    ts.elements.button("Excluir todas as armas", "removeAllWeapons", function()
                        RemoveAllPedWeapons(PlayerPedId(), true)
                    end)
                    ts.elements.checkbox("Alterar tamanho da arma", "changeWeaponSize", function()
                        if ts.values.checkbox["changeWeaponSize"] then
                            ArtExecutor.API.EditWeaponSize(ts.vars.weaponSize)
                        else
                            ArtExecutor.API.EditWeaponSize(1.0)
                        end
                    end)
                    ts.elements.slider("Tamanho da arma", "weaponSize", { min = 0, max = 100.0, start = 2 }, function(v)
                        ts.vars.weaponSize = v
                        if ts.values.checkbox["changeWeaponSize"] then
                            ArtExecutor.API.EditWeaponSize(v)
                        end
                    end)

                    ts.elements.checkbox("Não Recarregar", "noReload", function()
                        sz.createTh(function()
                            while ts.values.checkbox["noReload"] do
                                RefillAmmoInstantly(PlayerPedId())
                                IsPedShooting(PlayerPedId())
                                PedSkipNextReloading(PlayerPedId())
                                MakePedReload(PlayerPedId())
                                Wait(1)
                            end
                        end)
                    end)

                    ts.elements.checkbox("No Recoil", "noRecoil", function()
                        sz.createTh(function()
                            while ts.values.checkbox["noRecoil"] do
                                DisableControlAction(2, 322, true)
                                SetWeaponRecoilShakeAmplitude(GetSelectedPedWeapon(PlayerPedId()), 0.000001)
                                Wait(1)
                            end
                        end)
                    end)

                    ts.elements.checkbox("Rapid Fire", "rapidFire", function()
                        sz.createTh(function()
                            while ts.values.checkbox["rapidFire"] do
                                Citizen.Wait(60)
                                if GetSelectedPedWeapon(PlayerPedId()) ~= "WEAPON_UNARMED" and IsDisabledControlPressed(0, 24) and IsDisabledControlPressed(0, 25) then
                                    local weapon = GetSelectedPedWeapon(PlayerPedId())
                                    local wepent = GetCurrentPedWeaponEntityIndex(PlayerPedId())
                                    local launchPos = GetEntityCoords(wepent)
                                    local targetPos = GetGameplayCamCoord() +
                                    (ts.functions.RotationDirection(GetGameplayCamRot(2)) * 200.0)

                                    RequestModel(weapon)
                                    RequestModel(GetHashKey(weapon))
                                    RequestWeaponAsset(GetHashKey(weapon), 31, 0)

                                    local damage = GetWeaponDamage(weapon)
                                    ShootSingleBulletBetweenCoords(launchPos, targetPos, damage, true, weapon,
                                        PlayerPedId(), true, false, -1.0, true)
                                end
                            end
                        end)
                    end)

                    ts.elements.checkbox("Bugar Arma", "bugWeapon", function()
                        sz.createTh(function()
                            local selectedWeapon, oldWeapon, ammo = GetSelectedPedWeapon(PlayerPedId()), nil, 0
                            local noWeapon = GetHashKey("WEAPON_UNARMED")

                            while ts.values.checkbox["bugWeapon"] do
                                local currentWeapon = GetSelectedPedWeapon(PlayerPedId())

                                if selectedWeapon == noWeapon and currentWeapon ~= noWeapon then
                                    selectedWeapon = currentWeapon
                                end

                                if selectedWeapon ~= noWeapon then
                                    if not HasPedGotWeapon(PlayerPedId(), selectedWeapon) then
                                        ts.essentials.giveWeapon(ts.functions.getWeaponFromHash(selectedWeapon))

                                        if oldWeapon == selectedWeapon then
                                            SetCurrentPedWeapon(PlayerPedId(), selectedWeapon, true)
                                        end

                                        if HasPedGotWeapon(PlayerPedId(), selectedWeapon) then
                                            ammo = GetAmmoInPedWeapon(PlayerPedId(), selectedWeapon)
                                        end
                                    end
                                end

                                oldWeapon = currentWeapon
                                Wait(1)
                            end
                        end)
                    end)

                    ts.elements.checkbox("Pintar Arma em Loop", "colorWeaponLoop", function()
                        sz.createTh(function()
                            while ts.values.checkbox["colorWeaponLoop"] do
                                SetPedWeaponTintIndex(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()),
                                    ts.values.slider["weaponColor"].value)
                                Wait(1)
                            end
                        end)
                    end)

                    ts.elements.checkbox("Habilitar Coronhada", "enableCoronhada", function(state)
                        if ts.values.checkbox["enableCoronhada"] then
                            sz.createTh(function()
                                while ts.values.checkbox["enableCoronhada"] do
                                    Wait(1)
                                    EnableControlAction(0, 140, true)
                                    EnableControlAction(0, 141, true)
                                    EnableControlAction(0, 142, true)
                                end
                            end)
                        else
                            EnableControlAction(0, 140, false)
                            EnableControlAction(0, 141, false)
                            EnableControlAction(0, 142, false)
                        end
                    end)

                    ts.elements.checkbox("Atirar Dentro Do Veiculo", "driveby", function(state)
                        sz.createTh(function()
                            if ts.values.checkbox["driveby"] then
                                ArtExecutor.API.ScriptQueueInject("nxgroup-script", [[

                    _G.SetPlayerCanDoDriveBy = function()
                    return false
                    end
                    ]])
                                SetPlayerCanDoDriveBy(PlayerId(), true)
                            end
                        end)
                    end)


                    ts.elements.button("Remover Blacklist de Armas", "removerBl", function()
                        if not ts.vars.blacklist_removed then
                            ArtExecutor.API.ScriptQueueInject(ResourceInjetar, [[
                    _G.blackWeapons = {}
                    blackWeapons = {}

                    if _G.blacklistedWeapons then
                    _G.blacklistedWeapons = {}
                    end

                    if blacklistedWeapons then
                    blacklistedWeapons = {}
                    end
                    ]])
                            ts.vars.blacklist_removed = true
                            ts.elements.notify("Blacklist de armas removida com sucesso!", "sucess")
                        else
                            ts.elements.notify("A blacklist de armas já foi removida!", "warning")
                        end
                    end)

                    ts.elements.groupbox("Munição", "ammo", "\xef\x84\x8d", 0, 265, 270, 195,
                        "Adicione/remova munição da sua arma")
                    ts.elements.button("Adicionar máximo de munição", "adicionarMuniMax", function()
                        ts.functions.set_ammo(250)
                    end)
                    ts.elements.slider("Munição", "ammoSlider", { min = 0, max = 250, start = 100 }, function(value) end)
                    ts.elements.button("Adicionar munição", "addMuni", function()
                        local value = ts.values.slider["ammoSlider"] or 0
                        ts.functions.set_ammo(value)
                    end)
                    ts.elements.button("Remover munição da arma atual", "removeAmmo", function()
                        SetPedAmmo(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0)
                    end)
                    ts.elements.checkbox("Munição Infinita", "infiniteAmmo", function()
                        sz.createTh(function()
                            while ts.values.checkbox["infiniteAmmo"] do
                                SetPedInfiniteAmmoClip(PlayerPedId(), true)
                                Wait(1)
                            end
                            SetPedInfiniteAmmoClip(PlayerPedId(), false)
                        end)
                    end)
                    ts.elements.groupbox("Lista de armas", "weaponslist", "\xee\x86\x9b", 275, 0, 270, 330,
                        "Selecione a arma e spawne")
                    ts.elements.input("Pesquisar", "weapon_search", "", true)
                    local search = (ts.values.input and ts.values.input["weapon_search"] or ""):lower()
                    for _, hash in ipairs(ts.weaponOrder) do
                        local displayName = ts.weapons[hash] or hash
                        if search == "" or displayName:lower():find(search, 1, true) or hash:lower():find(search, 1, true) then
                            local whash = GetHashKey(hash)
                            local selected = ts.vars.selected_weapon == hash
                            local Data = { hash = hash }
                            ts.elements.list(
                                Data.hash,
                                selected,
                                function()
                                    if selected then
                                        ts.vars.selected_weapon = nil
                                    else
                                        ts.vars.selected_weapon = Data.hash
                                    end
                                end,
                                displayName
                            )
                        end
                    end
                    ts.elements.groupbox("Spawn de armas", "selectedWeapon", "\xef\x88\xb4", 275, 345, 270, 115,
                        "Ultilize esta aba para spawnar armas")
                    ts.elements.button("Spawnar arma selecionada", "spawnSelectedWeapon", function()
                        local mhash = ts.vars.selected_weapon
                        ts.functions.spawn_weapon(mhash)
                    end)
                    ts.elements.button("Spawnar todas as armas", "spawnAllWeapons", function()
                        for _, hash in ipairs(ts.weaponOrder) do
                            ts.functions.spawn_weapon(hash)
                        end
                    end)
                    ts.elements.button("Spawnar arma aleatória", "spawnRandomWeapon", function()
                        ts.functions.spawn_weapon(ts.weaponOrder[math.random(1, #ts.weaponOrder)])
                    end)
                end
            elseif ts.vars.tab_selected == "Exploits" then
                if ts.vars.subtab_selected == "Destruição" then
                    ts.elements.groupbox("Exploits", "exploits", "\xee\x92\xa8", 0, 0, 270, 250,
                        "Exploits para destruir o servidor", 3)
                    ts.elements.button("Crashar Players", 'crasharPlayers', function()
                        ts.elements.notify("Cidade sem suporte!", "error")
                    end)

                    ts.elements.checkbox("Remover do Veículo [F]", "removef", function(v)
                        if ts.values.checkbox["removef"] then
                            ArtExecutor.API.Core.HookNative("GetPedConfigFlag", false)
                            ArtExecutor.API.Core.AddHookCallback("SetPedConfigFlag", 1, 1, 3, 5, function(ped, flag, state)
                                if flag == 342 or flag == 252 or flag == 141 or flag == 144 then
                                    return nil
                                end
                                return SetPedConfigFlag(ped, flag, state)
                            end)

                            SetPedConfigFlag(PlayerPedId(), 342, false)
                            SetPedConfigFlag(PlayerPedId(), 252, true)
                            SetPedConfigFlag(PlayerPedId(), 141, true)
                            SetPedConfigFlag(PlayerPedId(), 144, true)
                        else
     
                            SetPedConfigFlag(PlayerPedId(), 342, true)
                            SetPedConfigFlag(PlayerPedId(), 252, false)
                            SetPedConfigFlag(PlayerPedId(), 141, false)
                            SetPedConfigFlag(PlayerPedId(), 144, false)
                            ArtExecutor.API.RestoreNative("GetPedConfigFlag")
                            ArtExecutor.API.RestoreNative("SetPedConfigFlag")
                        end
                    end)


                    ts.elements.button("Fogo em todos", 'fogoEmTodos', function()
                        ts.elements.notify("Cidade sem suporte!", "error")
                    end)




                    ts.elements.button("Pegar controle dos veículos", 'pegarControle', function()
                        ts.vars.controlled_vehicles = {}
                        local pid = PlayerPedId()
                        local originalCoords = GetEntityCoords(pid)
                        local vehicles = GetGamePool('CVehicle')
                        local count = 0
                        local veiculosUtilizaveis = {}
                        local searchRadius = ts.values.slider["raio_save"] or 300.0

                        for i = 1, math.min(#vehicles, 500) do
                            local vehicle = vehicles[i]
                            if DoesEntityExist(vehicle) and IsVehicleSeatFree(vehicle, -1) then
                                local vehicleCoords = GetEntityCoords(vehicle)
                                local distance = #(originalCoords - vehicleCoords)

                                if distance <= searchRadius then
                                    local engineHealth = GetVehicleEngineHealth(vehicle)
                                    if engineHealth > 500.0 then
                                        table.insert(veiculosUtilizaveis, vehicle)
                                    end
                                end
                            end
                        end

                        for _, vehicle in ipairs(veiculosUtilizaveis) do
                            local vehicleCoords = GetEntityCoords(vehicle)
                            SetPedIntoVehicle(pid, vehicle, -1)
                            SetVehicleDoorsLocked(vehicle, 1)
                            SetVehicleDoorsLockedForAllPlayers(vehicle, false)
                            SetVehicleEngineOn(vehicle, true, true, false)
                            SetEntityAsMissionEntity(vehicle, true)
                            NetworkRequestControlOfEntity(vehicle)
                            _G.NetworkClearFollowers()
                            _G.NetworkClearPropertyId()
                            _G.SetNetworkIdExistsOnAllMachines(_G.NetworkGetNetworkIdFromEntity(vehicle), true)
                            _G.SetNetworkIdCanMigrate(_G.NetworkGetNetworkIdFromEntity(vehicle), true)
                            _G.NetworkSetChoiceMigrateOptions(_G.PlayerPedId(), true)
                            _G.NetworkSetScriptIsSafeForNetworkGame()
                            local netId = _G.NetworkGetNetworkIdFromEntity(vehicle)
                            _G.SetNetworkIdAlwaysExistsForPlayer(netId, _G.PlayerPedId(), true)
                            _G.NetworkUseHighPrecisionBlending(netId, true)
                            local vehicleCoords = _G.GetEntityCoords(vehicle)
                            _G.RequestCollisionAtCoord(vehicleCoords)

                            _G.NetworkRequestControlOfEntity(vehicle)
                            _G.NetworkRequestControlOfNetworkId(netId)
                            Citizen.InvokeNative(0xA670B3662FAFFBD0, netId)
                            Citizen.InvokeNative(0xB69317BF5E782347, vehicle)
                            SetVehicleEngineOn(vehicle, true, true, false)
                            SetVehicleExclusiveDriver(vehicle, true)
                            Wait(700)
                            if GetVehiclePedIsIn(pid, false) == vehicle then
                                local vehData = {
                                    handle = vehicle,
                                    hash = GetEntityModel(vehicle),
                                    name = GetDisplayNameFromVehicleModel(GetEntityModel(vehicle))
                                }
                                table.insert(ts.vars.controlled_vehicles, vehData)
                                count = count + 1
                                print(string.format("%d. %s (Hash: %d)", count, vehData.name, vehData.hash))
                            end
                        end
                        SetEntityCoords(pid, originalCoords.x, originalCoords.y, originalCoords.z, false, false, false,
                            false)
                    end)


                    ts.elements.button("Derrubar todos", 'derrubarAll', function()
                        for i, v in pairs(GetActivePlayers()) do
                            ArtExecutor.API.RequestRagdoll(GetPlayerPed(v))
                        end
                    end)



                    ts.elements.checkbox("Derrubar todos em loop", "forceFall", function()
                        sz.createTh(function()
                            while ts.values.checkbox["forceFall"] do
                                for i, v in pairs(GetActivePlayers()) do
                                    ArtExecutor.API.RequestRagdoll(GetPlayerPed(v))
                                end
                                Wait(1000)
                            end
                        end)
                    end)

                    ts.elements.checkbox("Escudo de Veículos", "escudovehs", function(v)
                        if ts.values.checkbox["escudovehs"] then
                            local pid = PlayerPedId()
                            if not DoesEntityExist(pid) then
                                return
                            end

                            local cpid = GetEntityCoords(pid)
                            local playerHeight = cpid.z + 1.0
                            local orbitRadius = 8.0
                            local orbitSpeed = 5.0
                            ts.vars.orbitVehicles = {}

                            local function FindUsableVehicles()
                                local vehicles = GetGamePool('CVehicle')
                                local usableVehicles = {}

                                for i = 1, math.min(#vehicles, 500) do
                                    local vehicle = vehicles[i]
                                    if DoesEntityExist(vehicle) and IsVehicleSeatFree(vehicle, -1) then
                                        local engineHealth = GetVehicleEngineHealth(vehicle)
                                        if engineHealth > 500.0 and #(cpid - GetEntityCoords(vehicle)) <= 500.0 then
                                            table.insert(usableVehicles, vehicle)
                                        end
                                    end
                                end

                                return usableVehicles
                            end

                            local usableVehicles = FindUsableVehicles()

                            if #usableVehicles == 0 then
                                return
                            end

                            for _, vehicle in ipairs(usableVehicles) do
                                _G.NetworkRequestControlOfEntity(vehicle)
                                _G.NetworkRegisterEntityAsNetworked(vehicle)
                                Wait(10)

                                if NetworkHasControlOfEntity(vehicle) then
                                    table.insert(ts.vars.orbitVehicles, vehicle)
                                    SetEntityInvincible(vehicle, true)
                                    FreezeEntityPosition(vehicle, true)
                                    SetEntityCollision(vehicle, true, true)
                                    SetEntityAlpha(vehicle, 255, false)
                                    SetEntityNoCollisionEntity(vehicle, pid, true)
                                end
                            end

                            sz.createTh(function()
                                local angle = 0

                                while ts.values.checkbox["escudovehs"] do
                                    local cpid = GetEntityCoords(pid)

                                    for i, vehicle in ipairs(ts.vars.orbitVehicles) do
                                        if DoesEntityExist(vehicle) then
                                            local vehicleAngle = angle + (i * (360 / #ts.vars.orbitVehicles))
                                            local x = cpid.x + orbitRadius * math.cos(math.rad(vehicleAngle))
                                            local y = cpid.y + orbitRadius * math.sin(math.rad(vehicleAngle))

                                            SetEntityCoordsNoOffset(vehicle, x, y, playerHeight, false, false, false)

                                            local headingToCenter = math.deg(math.atan2(cpid.y - y, cpid.x - x))
                                            SetEntityHeading(vehicle, headingToCenter)
                                        end
                                    end

                                    angle = (angle + orbitSpeed) % 360
                                    Wait(1)
                                end

                                for _, vehicle in ipairs(ts.vars.orbitVehicles) do
                                    if DoesEntityExist(vehicle) then
                                        SetEntityInvincible(vehicle, false)
                                        FreezeEntityPosition(vehicle, false)
                                        SetEntityCollision(vehicle, true, true)
                                        SetEntityAlpha(vehicle, 255, false)
                                        SetEntityNoCollisionEntity(vehicle, pid, false)

                                        local heading = GetEntityHeading(vehicle)
                                        local force = 50.0
                                        local x = force * math.cos(math.rad(heading))
                                        local y = force * math.sin(math.rad(heading))

                                        SetEntityVelocity(vehicle, x, y, 0.0)
                                    end
                                end
                                ts.vars.orbitVehicles = nil
                            end)
                        end
                    end)

                    ts.elements.checkbox("Remover tela de morte ao reviver", "remover_tela_morte", function(v)

                    end)

                    ts.elements.button("Saquear todos players", "saquearPlayers", function()
                        local pid = PlayerPedId()
                        local cpid = GetEntityCoords(pid)
                        local deadPlayers = {}

                        for _, player in ipairs(GetActivePlayers()) do
                            local targetPed = GetPlayerPed(player)
                            if targetPed ~= pid then
                                local targetCoords = GetEntityCoords(targetPed)
                                local distance = #(cpid - targetCoords)

                                if distance <= 500.0 and (GetEntityHealth(targetPed) <= 0 or (GetResourceState('santa_radio') == 'started' and GetEntityHealth(targetPed) <= 100)) then
                                    table.insert(deadPlayers, targetPed)
                                end
                            end
                        end

                        if #deadPlayers == 0 then
                            ts.elements.notify("Nenhum player morto encontrado", "error")
                            return
                        end

                        for _, deadPed in ipairs(deadPlayers) do
                            local deadCoords = GetEntityCoords(deadPed)
                            local originalCoords = GetEntityCoords(pid)

                            SetEntityVisible(pid, false, false)
                            SetEntityCoordsNoOffset(pid, deadCoords.x, deadCoords.y, deadCoords.z, true, false, true)

                            ExecuteCommand("saquear")
                            ExecuteCommand("revistar")
                            ExecuteCommand("roubar")

                            Wait(2000)

                            SetEntityCoords(pid, originalCoords.x, originalCoords.y, originalCoords.z, false, false,
                                false, false)
                            SetEntityVisible(pid, true, false)
                        end
                    end)

                    ts.elements.groupbox("Troll", "troll", "\xef\x87\xa2", 0, 265, 270, 195, "Opções troll na área")
                    ts.elements.checkbox("Matar todos com heli", "matarAllHeli", function(state)
                        if state then
                            sz.createTh(function()
                                while ts.values.checkbox["matarAllHeli"] do
                                    local ped = PlayerPedId()
                                    if not IsPedInAnyHeli(ped) then
                                        ts.elements.notify("Você precisa estar em um helicóptero!", "error")
                                        break
                                    end
                                    local heli = GetVehiclePedIsIn(ped, false)
                                    if not DoesEntityExist(heli) then
                                        break
                                    end
                                    SetVehicleEngineOn(heli, true, true, false)
                                    ClearPedTasksImmediately(ped)

                                    local myCoords = GetEntityCoords(ped)
                                    local players = GetActivePlayers()
                                    local playerList = {}

                                    for _, player in ipairs(players) do
                                        local targetPed = GetPlayerPed(player)
                                        if targetPed ~= ped and DoesEntityExist(targetPed) then
                                            local targetCoords = GetEntityCoords(targetPed)
                                            if #(myCoords - targetCoords) <= 300.0 then
                                                table.insert(playerList, targetPed)
                                            end
                                        end
                                    end

                                    if #playerList == 0 then
                                        ts.elements.notify("Nenhum player próximo encontrado!", "error")
                                        break
                                    end

                                    for _, targetPed in ipairs(playerList) do
                                        if not DoesEntityExist(heli) or not ts.values.checkbox["matarAllHeli"] then break end
                                        local tcoords = GetEntityCoords(targetPed)
                                        SetPedIntoVehicle(ped, heli, -1)
                                        SetEntityCoords(heli, tcoords.x, tcoords.y, tcoords.z, false, false, false, false)
                                        SetEntityRotation(heli, 180.0, 0.0, 0.0, 2, true)
                                        Wait(600)
                                    end

                                    Wait(1000)
                                end
                            end)
                        end
                    end)

                    ts.elements.checkbox("Giro da morte", "giroMortal", function()
                        if ts.values.checkbox["giroMortal"] then
                            sz.createTh(function()
                                while ts.values.checkbox["giroMortal"] do
                                    local code = [[
                                        IsPedArmed = function()
                                            return true
                                        end
                                        ]]
                                    ArtExecutor.API.ScriptQueueInject('PL_PROTECT', code)
                                    local ped = PlayerPedId()
                                    local currentHeading = GetEntityHeading(ped)
                                    SetEntityHeading(ped, currentHeading + 8.0)
                                    local pos = GetPedBoneCoords(PlayerPedId(), 0x62AC, 0.0, 0.0, 0.0)
                                    local heading = GetEntityHeading(PlayerPedId())
                                    local dir = vector3(-math.sin(math.rad(heading)), math.cos(math.rad(heading)), 0.0)
                                    local lineStart = pos
                                    local lineEnd = vector3(pos.x + dir.x * 10, pos.y + dir.y * 10, pos.z + dir.z * 10)
                                    local lineWidth = 0.2
                                    local perpendicularDir = vector3(-dir.y, dir.x, dir.z)
                                    local numLines = 2
                                    local step = lineWidth / numLines
                                    for i = 0, numLines - 1 do
                                        local offset = perpendicularDir * (i * step - lineWidth / 2)
                                        local startOffset = vector3(lineStart.x + offset.x, lineStart.y + offset.y,
                                            lineStart.z + offset.z)
                                        local endOffset = vector3(lineEnd.x + offset.x, lineEnd.y + offset.y,
                                            lineEnd.z + offset.z)
                                    end
                                    RequestModel(GetHashKey('VEHICLE_WEAPON_TURRET_PATROLBOAT_50CAL'))
                                    ShootSingleBulletBetweenCoords(pos.x, pos.y, pos.z, lineEnd.x, lineEnd.y, lineEnd.z,
                                        150, true, GetHashKey("VEHICLE_WEAPON_TURRET_PATROLBOAT_50CAL"), PlayerPedId(),
                                        true, false, 0.3)
                                    Wait(0)
                                end
                            end)
                        else
                        end
                    end)


                    ts.elements.checkbox("Magneto", "magneto", function(v)
                        if ts.values.checkbox["magneto"] then
                            while ts.values.checkbox["magneto"] do
                                local vehiclesAfetados = {}
                                local coordCam = GetGameplayCamCoord()
                                local rotCam = GetGameplayCamRot(2)
                                local range = 35.0
                                local ped = PlayerPedId()
                                local coords = GetEntityCoords(ped)
                                local esferaLoc = coordCam + (ts.functions.rot_to_dir(rotCam) * 20.0)
                                esferaLoc = vector3(esferaLoc.x, esferaLoc.y, esferaLoc.z + 2.0)

                                if IsControlPressed(0, 38) then
                                    DrawMarker(
                                        28,
                                        esferaLoc.x, esferaLoc.y, esferaLoc.z,
                                        0.0, 0.0, 0.0,
                                        0.0, 0.0, 0.0,
                                        1.0, 1.0, 1.0,
                                        255, 0, 0, 200,
                                        false,
                                        true,
                                        2,
                                        nil, nil,
                                        false
                                    )
                                    local handle, vehicle = FindFirstVehicle()
                                    local sucesso = true
                                    repeat
                                        if DoesEntityExist(vehicle) and
                                            #(GetEntityCoords(vehicle) - coordCam) <= range * 2 and
                                            GetVehiclePedIsIn(ped, false) ~= vehicle then
                                            NetworkRequestControlOfEntity(vehicle)
                                            SetVehicleEngineOn(vehicle, true, true, false)
                                            SetVehicleDoorsLockedForAllPlayers(vehicle, false)
                                            FreezeEntityPosition(vehicle, false)




                                            if not vehiclesAfetados[vehicle] then
                                                vehiclesAfetados[vehicle] = true
                                            end

                                            local vcoords = GetEntityCoords(vehicle)
                                            local direction = esferaLoc - vcoords
                                            local distance = #direction

                                            if distance > 0.1 then
                                                local force = direction * (1.0 / distance)
                                                if distance <= 2.0 then
                                                    SetEntityVelocity(vehicle, force.x * 30.0, force.y * 30.0,
                                                        force.z * 30.0)
                                                else
                                                    ApplyForceToEntity(vehicle, 3, force.x, force.y, force.z, 0, 0, 0,
                                                        false, false, true, true, false, true)
                                                end
                                                SetEntityNoCollisionEntity(ped, vehicle)
                                            end
                                        end
                                        sucesso, vehicle = FindNextVehicle(handle)
                                    until not sucesso
                                    EndFindVehicle(handle)
                                end
                                if IsDisabledControlJustReleased(0, 38) then
                                    for vehicle, _ in pairs(vehiclesAfetados) do
                                        if DoesEntityExist(vehicle) then
                                            local vcoords = GetEntityCoords(vehicle)
                                            local direction = ts.functions.rot_to_dir(rotCam)
                                            local force = direction * 850.0
                                            ApplyForceToEntity(vehicle, 3, force.x, force.y, force.z, 0, 0, 0, false,
                                                false, true, true, false, true)
                                        end
                                    end
                                    vehiclesAfetados = {}
                                end
                                if IsDisabledControlJustPressed(0, 15) then
                                    range = range + 3.0
                                elseif IsDisabledControlJustPressed(0, 14) then
                                    range = math.max(3.0, range - 3.0)
                                end
                                Wait(1)
                            end
                        end
                    end)

                    ts.elements.button("Destruir todos veículos", 'destruirTodosVehs', function()
                        local ped = PlayerPedId()
                        local coords = GetEntityCoords(ped)
                        local heading = GetEntityHeading(ped)
                        local usableVehicles = GetGamePool('CVehicle')

                        if #usableVehicles == 0 then
                            return
                        end

                        for _, vehicle in ipairs(usableVehicles) do
                            if DoesEntityExist(vehicle) then
                                NetworkRequestControlOfEntity(vehicle)
                                SetVehicleEngineHealth(vehicle, -400.0)
                                SetVehicleBodyHealth(vehicle, -1000.0)
                                SetVehicleUndriveable(vehicle, true)
                                SetVehicleDoorBroken(vehicle, 1, true)
                                for i = 0, 7 do
                                    SetVehicleTyreBurst(vehicle, i, true, 1000)
                                end
                                for i = 0, 5 do
                                    SetVehicleDoorBroken(vehicle, i, true)
                                end
                                Wait(1)
                            end
                        end
                    end)

                    if GetResourceState('EQPG') == 'started' or GetResourceState('ThnAC') == 'started' or cityAC == 'FIVEGUARD' then
                        ts.elements.button("Matar todos Permanentemente", 'matarALlPerma', function()
                            local pid = PlayerPedId()
                            local cpid = GetEntityCoords(pid)
                            local players = GetActivePlayers()

                            for _, player in ipairs(players) do
                                local targetPed = GetPlayerPed(player)
                                if targetPed ~= pid then
                                    local targetCoords = GetEntityCoords(targetPed)
                                    local distance = #(cpid - targetCoords)

                                    if distance <= 30.0 then
                                        local code = [[
                                            IsPedArmed = function()
                                                return true
                                            end
                                        ]]
                                        if GetResourceState('EQPG') == 'started' then
                                            ArtExecutor.API.ScriptQueueInject('EQPG', code)
                                        elseif GetResourceState('ThnAC') == 'started' then
                                            ArtExecutor.API.ScriptQueueInject('ThnAC', code)
                                        end
                                        ShootSingleBulletBetweenCoords(
                                            targetCoords.x, targetCoords.y, targetCoords.z - 0.5,
                                            targetCoords.x, targetCoords.y, targetCoords.z,
                                            150,
                                            true,
                                            GetHashKey('WEAPON_TRANQUILIZER'),
                                            pid,
                                            true,
                                            false,
                                            -1.0,
                                            true
                                        )

                                        Citizen.SetTimeout(500, function()
                                        end)
                                    end
                                end
                            end
                        end)
                    end

                    ts.elements.checkbox("Explodir ao colidir", "explodir_colisao", function(state)
                        if ts.values.checkbox["explodir_colisao"] then
                            CreateThread(function()
                                local currentVehicle = nil
                                while ts.values.checkbox["explodir_colisao"] do
                                    local ped = PlayerPedId()
                                    if IsPedInAnyVehicle(ped, false) then
                                        currentVehicle = GetVehiclePedIsIn(ped, false)
                                    end
                                    local code = [[
                        IsPedArmed = function()
                            return true
                        end
                        ]]
                                    ArtExecutor.API.ScriptQueueInject('PL_PROTECT', code)
                                    if currentVehicle and DoesEntityExist(currentVehicle) then
                                        local speed = GetEntitySpeed(currentVehicle)
                                        if speed > 0.1 then
                                            local collision = HasEntityCollidedWithAnything(currentVehicle)
                                            if collision then
                                                local coords = GetEntityCoords(currentVehicle)
                                                local startTime = GetGameTimer()

                                                RequestModel(GetHashKey("adder"))
                                                local invisibleVeh = CreateVehicle(GetHashKey("adder"), coords.x,
                                                    coords.y, coords.z + 0.2, 0.0, false, false)
                                                SetEntityAlpha(invisibleVeh, 0, false)
                                                SetEntityCollision(invisibleVeh, false, true)
                                                NetworkExplodeVehicle(invisibleVeh, true, false, false)
                                                while GetGameTimer() - startTime < 5000 do
                                                    local vehicleCoords = GetEntityCoords(currentVehicle)
                                                    ShootSingleBulletBetweenCoords(
                                                        vehicleCoords.x, vehicleCoords.y, vehicleCoords.z + 10.0,
                                                        vehicleCoords.x, vehicleCoords.y, vehicleCoords.z,
                                                        150,
                                                        true,
                                                        GetHashKey('VEHICLE_WEAPON_TURRET_PATROLBOAT_50CAL'),
                                                        PlayerPedId(),
                                                        true,
                                                        false,
                                                        -1.0
                                                    )
                                                    Wait(1)
                                                end

                                                DeleteEntity(invisibleVeh)
                                                currentVehicle = nil
                                            end
                                        end
                                    end
                                    Wait(1)
                                end
                            end)
                        end
                    end)



                    ts.elements.checkbox("Olhos Laser", "superolho", function(state)
                        if ts.functions.resource_get('santa_radio') then
                            ts.elements.notify("Cidade sem suporte!")
                            return
                        end
                        if ts.values.checkbox["superolho"] then
                            CreateThread(function()
                                while ts.values.checkbox["superolho"] do
                                    local code = [[

                                IsPedArmed = function()
                                    return true
                                end

                                ]]
                                    ArtExecutor.API.ScriptQueueInject('PL_PROTECT', code)
                                    if IsDisabledControlPressed(0, 46) then
                                        local pos = GetPedBoneCoords(PlayerPedId(), 0x62AC, 0.0, 0.0, 0.0)
                                        local dir = ts.functions.rot_to_dir(GetGameplayCamRot())
                                        local lineStart = pos
                                        local lineEnd = vector3(pos.x + dir.x * 10, pos.y + dir.y * 10,
                                            pos.z + dir.z * 10)
                                        local lineWidth = 0.2
                                        local perpendicularDir = vector3(-dir.y, dir.x, dir.z)
                                        local numLines = 2
                                        local step = lineWidth / numLines
                                        for i = 0, numLines - 1 do
                                            local offset = perpendicularDir * (i * step - lineWidth / 2)
                                            local startOffset = vector3(lineStart.x + offset.x, lineStart.y + offset.y,
                                                lineStart.z + offset.z)
                                            local endOffset = vector3(lineEnd.x + offset.x, lineEnd.y + offset.y,
                                                lineEnd.z + offset.z)
                                            DrawLine(startOffset.x, startOffset.y, startOffset.z, endOffset.x,
                                                endOffset.y, endOffset.z, 255, 0, 0, 255)
                                        end
                                        RequestModel(GetHashKey('VEHICLE_WEAPON_TURRET_PATROLBOAT_50CAL'))
                                        ShootSingleBulletBetweenCoords(pos.x, pos.y, pos.z, lineEnd.x, lineEnd.y,
                                            lineEnd.z, 150, true, GetHashKey("VEHICLE_WEAPON_TURRET_PATROLBOAT_50CAL"),
                                            PlayerPedId(), true, false, 0.3)
                                    end
                                    Wait(1)
                                end
                            end)
                        else
                        end
                    end)



                    ts.elements.checkbox("Olhos Explosivos", "olhosexplosivos", function(toggleState)
                        if ts.values.checkbox["olhosexplosivos"] then
                            CreateThread(function()
                                while ts.values.checkbox["olhosexplosivos"] do
                                    local pid = PlayerPedId()
                                    local pos = GetPedBoneCoords(pid, 0x62AC, 0.0, 0.0, 0.0)
                                    local camRot = GetGameplayCamRot()
                                    local dir = ts.functions.rot_to_dir(camRot)
                                    local lineEnd = vector3(pos.x + dir.x * 30, pos.y + dir.y * 30, pos.z + dir.z * 30)
                                    if IsControlPressed(0, 38) then
                                        DrawLine(pos.x, pos.y, pos.z, lineEnd.x, lineEnd.y, lineEnd.z, 255, 0, 0, 255)
                                        _G.AddOwnedExplosion(PlayerPedId(), lineEnd.x, lineEnd.y, lineEnd.z, 29, 0.5,
                                            true, false, true)
                                    end
                                    Wait(500)
                                end
                            end)
                        else
                        end
                    end)




                    ts.elements.checkbox("Olho Tazer", "OlhoTazer", function(v)
                        if ts.values.checkbox["OlhoTazer"] then
                            if GetResourceState("PL_PROTECT") == 'started' or ts.functions.resource_get('santa_radio') then
                                ts.elements.notify("Cidade sem Suporte!")
                                return
                            end

                            CreateThread(function()
                                while ts.values.checkbox["OlhoTazer"] do
                                    local camCoords = GetGameplayCamCoord()
                                    local camRot = GetGameplayCamRot(2)
                                    local heading = math.rad(camRot.z)
                                    local pitch = math.rad(camRot.x)
                                    local forward = vector3(
                                        -math.sin(heading) * math.cos(pitch),
                                        math.cos(heading) * math.cos(pitch),
                                        math.sin(pitch)
                                    )
                                    local coordschao = camCoords + (forward * 500.0)
                                    local coordsolho = GetPedBoneCoords(PlayerPedId(), 31086, 0.01, 0.01, -0.1)
                                    local successOlho, coordsolhox, coordsolhoy = GetScreenCoordFromWorldCoord(
                                    coordsolho.x, coordsolho.y, coordsolho.z)
                                    local successChao, coordschaox, coordschaoy = GetScreenCoordFromWorldCoord(
                                    coordschao.x, coordschao.y, coordschao.z)

                                    if IsControlPressed(1, 38) then
                                        DrawLine(coordsolho.x, coordsolho.y, coordsolho.z, coordschao.x, coordschao.y,
                                            coordschao.z, 255, 0, 0, 255)
                                        ShootSingleBulletBetweenCoords(
                                            coordsolho.x, coordsolho.y, coordsolho.z - 0.5,
                                            coordschao.x, coordschao.y, coordschao.z,
                                            150, false, GetHashKey('WEAPON_STUNGUN'),
                                            PlayerPedId(), true, true, 1000.0, false
                                        )
                                    end

                                    Wait(1)
                                end
                            end)
                        else
                        end
                    end)
                    ts.elements.groupbox("Veículos", "exploitsvehi", "\xef\x97\xa1", 275, 0, 270, 300, "Opções com veículos")
                    local segurandoVeh = false
                    local vehSegurado = nil

                    ts.elements.checkbox("Segurar veículos", "segurar_veiculo", function(state)
                        if ts.values.checkbox["segurar_veiculo"] then
                            ts.elements.notify("Pressione [Y] para carregar veículos", "sucess")

                            sz.createTh(function()
                                ArtExecutor.API.Core.HookNative("IsEntityAttached", false)
                                ArtExecutor.API.Core.HookNative("GetEntityAttachedTo", false)
                                ArtExecutor.API.Core.HookNative("IsEntityAttachedToEntity", false)
                                ArtExecutor.API.Core.HookNative("IsEntityAttachedToAnyObject", false)
                                ArtExecutor.API.Core.HookNative("IsEntityAttachedToAnyVehicle", false)


                                while ts.values.checkbox["segurar_veiculo"] do
                                    Citizen.Wait(1)
                                    local pid = PlayerPedId()
                                    local cpid = GetEntityCoords(pid)
                                    local camPos = GetGameplayCamCoord()
                                    local camRot = GetGameplayCamRot(2)
                                    local direction = ts.functions.rot_to_dir(camRot)
                                    local dest = vec3(camPos.x + direction.x * 10.0, camPos.y + direction.y * 10.0, camPos.z + direction.z * 10.0)

                                    local rayHandle = StartShapeTestRay(camPos.x, camPos.y, camPos.z, dest.x, dest.y, dest.z, -1, pid, 0)
                                    local _, hit, _, _, entityHit = GetShapeTestResult(rayHandle)

                                    if hit == 1 and GetEntityType(entityHit) == 2 then
                                        local vehCoords = GetEntityCoords(entityHit)
                                        local onScreen, screenX, screenY = World3dToScreen2d(vehCoords.x, vehCoords.y,  vehCoords.z + 2.0)
                                        if onScreen then
                                            SetDrawOrigin(vehCoords.x, vehCoords.y, vehCoords.z + 0.5, 0)
                                            SetTextFont(0)
                                            SetTextProportional(0)
                                            SetTextScale(0.3, 0.3)
                                            SetTextColour(255, 255, 255, 255)
                                            SetTextDropshadow(0, 0, 0, 0, 255)
                                            SetTextEdge(2, 0, 0, 0, 150)
                                            SetTextDropShadow()
                                            SetTextOutline()
                                            SetTextEntry("STRING")
                                            SetTextCentre(1)
                                            AddTextComponentString("Pressione [Y] para segurar o veiculo")
                                            DrawText(0.0, -0.01)
                                            ClearDrawOrigin()
                                        end

                                        if IsControlJustReleased(0, 246) then
                                            if not segurandoVeh then
                                                NetworkRequestControlOfEntity(entityHit)
                                                SetVehicleEngineOn(entityHit, true, true, false)
                                                SetVehicleDoorsLocked(entityHit, 1)
                                                SetEntityNoCollisionEntity(entityHit, pid, true)
                                                ArtExecutor.API.Core.HookNative("IsPedGettingIntoAVehicle", true)

                                                Wait(100)
                                                if not NetworkHasControlOfEntity(entityHit) then
                                                    local driver = GetPedInVehicleSeat(entityHit, -1)
                                                    if driver ~= 0 then
                                                        noahBypass(entityHit, driver)
                                                        print(("Motorista: %s"):format(driver))
                                                    else
                                                        SetPedIntoVehicle(pid, entityHit, -1)
                                                    end
                                                    Wait(500)
                                                end
                                                
                                                if NetworkHasControlOfEntity(entityHit) then
                                                    segurandoVeh = true
                                                    vehSegurado = entityHit
                                                    local code = [[
                                            IsEntityPlayingAnim = function()
                                                return false
                                            end
                                        ]]
                                                    if GetResourceState('PL_PROTECT') == 'started' then
                                                        ArtExecutor.API.ScriptQueueInject('PL_PROTECT', code)
                                                    elseif GetResourceState('lotus_farmafk') == 'started' then
                                                        ArtExecutor.API.ScriptQueueInject('vrp', code)
                                                    end
                                                    RequestModel(GetHashKey('bmx'))
                                                    while not HasModelLoaded(GetHashKey('bmx')) do
                                                        Citizen.Wait(10)
                                                    end

                                                    bmxSeg = CreateVehicle(GetHashKey('bmx'), cpid.x, cpid.y, cpid.z, 0.0, false, false)
                                                    SetEntityVisible(bmxSeg, false, false)
                                                    SetEntityAsMissionEntity(bmxSeg, true, true)
                                                    NetworkRequestControlOfEntity(bmxSeg)
                                                    local cds = GetEntityCoords(PlayerPedId())
                                                    AttachEntityToEntity(vehSegurado, bmxSeg, -1, 0.0, 1.0, 4.0, 0.0, 0.0, 240.0, true, true, false, true, 1, true)
                                                    Wait(20)
                                                    ClearPedTasksImmediately(pid)
                                                    AttachEntityToEntity(bmxSeg, pid, 0, 0.0, 0.0, -2.0, 0.0, 0.0, 0.0,  true, true, false, true, 1, true)
                                                    SetEntityCoordsNoOffset(PlayerPedId(), cds.x, cds.y, cds.z, false, false, false)
                          
                                                    RequestAnimDict('anim@mp_rollarcoaster')
                                                    if GetResourceState('lotus_farmafk') == "started" then
                                                        ExecuteCommand("e gang")
                                                    else
                                                        while not HasAnimDictLoaded('anim@mp_rollarcoaster') do
                                                            Citizen.Wait(10)
                                                        end
                                                        TaskPlayAnim(pid, 'anim@mp_rollarcoaster', 'hands_up_idle_a_player_one', 8.0, -8.0, -1, 50, 0, false, false, false)
                                                    end
                                                    sz.createTh(function()
                                                        while segurandoVeh do
                                                            Citizen.Wait(1)
                                                            if IsControlJustReleased(0, 246) then
                                                                local oldCoordds = {}
                                                                -- local oldCoords = GetEntityCoords(PlayerPedId())
                                                                -- ArtExecutor.API.Core.HookNative("GetEntityCoords", 0)
                                                                ArtExecutor.API.Core.HookNative("GetEntityCoords", function(entity)
                                                                    oldCoordds[entity] = oldCoordds[entity] or GetEntityCoords(entity)
                                                                    if oldCoordds[entity] then
                                                                        return false, oldCoordds[entity]
                                                                    end
                                                                    return true            
                                                                end)


                                                                local camRot = GetGameplayCamRot(2)
                                                                local direction = ts.functions.rot_to_dir(camRot)
                                                                local throwSpeed = (ts.values.slider and ts.values.slider["carregarVeh_speed"] or 50) /
                                                                100
                                                                local force = throwSpeed * 100.0
                                                                DetachEntity(vehSegurado, true, true)
                                                                Wait(100)
                                                                ApplyForceToEntity(vehSegurado, 3, direction.x * force,
                                                                    direction.y * force, direction.z * force, 0.0, 0.0,
                                                                    0.0, false, false, true, true, false, true)
                                                                ClearPedTasks(pid)
                                                                Wait(200)
                                                                ArtExecutor.API.Core.RestoreNative("GetEntityCoords")
                                                                break
                                                            end
                                                        end

                                                        segurandoVeh = false
                                                        if vehSegurado then
                                                            DetachEntity(vehSegurado, true, true)
                                                            SetEntityNoCollisionEntity(vehSegurado, pid, false)
                                                            vehSegurado = nil
                                                            DeleteEntity(bmxSeg)
                                                        end
                                                        if bmxSeg and DoesEntityExist(bmxSeg) then
                                                            DeleteEntity(bmxSeg)
                                                        end
                                                    end)
                                                end
                                            end
                                        end
                                    end
                                end
                            end)
                        else 
                            ArtExecutor.API.Core.RestoreNative("GetEntityCoords")
                            ArtExecutor.API.Core.RestoreNative("IsEntityAttached")
                            ArtExecutor.API.Core.RestoreNative("GetEntityAttachedTo")
                            ArtExecutor.API.Core.RestoreNative("IsEntityAttachedToEntity")
                            ArtExecutor.API.Core.RestoreNative("IsEntityAttachedToAnyObject")
                            ArtExecutor.API.Core.RestoreNative("IsEntityAttachedToAnyVehicle")

                            ArtExecutor.API.Core.RestoreNative(0x9A9112A0FE9A4713)
                            ArtExecutor.API.Core.RestoreNative(0xF73EB622C4F1689B)
                            ArtExecutor.API.Core.RestoreNative(0x7239B21A38F536BA)
                            ArtExecutor.API.Core.RestoreNative(0xEC5F66E459AF3BB2)
                            ArtExecutor.API.Core.RestoreNative(0x83F969AA1EE2A664)
                            ArtExecutor.API.Core.RestoreNative(0x997ABD671D25CA0B)
                            ArtExecutor.API.Core.RestoreNative(0x6094AD011A2EA87D)
                            ArtExecutor.API.Core.RestoreNative(0x6AC7003FA6E5575E)
                            ArtExecutor.API.Core.RestoreNative("GetGameTimer")
                            ArtExecutor.API.Core.RestoreNative("GetGamePool")
                            ArtExecutor.API.Core.RestoreNative("IsVehicleSeatFree")
                            ArtExecutor.API.Core.RestoreNative("GetPedInVehicleSeat")
                            ArtExecutor.API.Core.RestoreNative("GetVehicleDoorLockStatus")
                            ArtExecutor.API.Core.RestoreNative("GetSeatPedIsTryingToEnter")
                            ArtExecutor.API.Core.RestoreNative("GetVehiclePedIsTryingToEnter")
                            ArtExecutor.API.Core.RestoreNative("IsPedExclusiveDriverOfVehicle")
                            ArtExecutor.API.Core.RestoreNative("IsPedTryingToEnterALockedVehicle")
                        end
                    end)



                    ts.elements.slider("Velocidade", "carregarVeh_speed", { min = 1, max = 500, start = -10 },
                        function(v)
                            ts.vars.carregarVeh_speed = v
                        end)
                    local segurandoVeh = false
                    local vehSegurado = nil
                    local markerCoords = nil
                    ts.elements.checkbox("Physic Gun", "physic_gun", function(state)
                        if ts.values.checkbox["physic_gun"] then
                            sz.createTh(function()
                                while ts.values.checkbox["physic_gun"] do
                                    Citizen.Wait(1)
                                    local pid = PlayerPedId()
                                    local camPos = GetGameplayCamCoord()
                                    local camRot = GetGameplayCamRot(2)
                                    local direction = ts.functions.rot_to_dir(camRot)
                                    local dest = vec3(camPos.x + direction.x * 10.0, camPos.y + direction.y * 10.0,
                                        camPos.z + direction.z * 10.0)

                                    DrawMarker(28, dest.x, dest.y, dest.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.2, 0.2, 0.2,
                                        255, 0, 0, 255, false, true, 2, false, nil, nil, false)

                                    local rayHandle = StartShapeTestRay(camPos.x, camPos.y, camPos.z, dest.x, dest.y,
                                        dest.z, -1, pid, 0)
                                    local _, hit, _, _, entityHit = GetShapeTestResult(rayHandle)

                                    if hit == 1 and GetEntityType(entityHit) == 2 then
                                        if IsControlJustReleased(0, 38) then
                                            if not segurandoVeh then
                                                if GetEntityType(entityHit) == 2 then
                                                    local driver = GetPedInVehicleSeat(entityHit, -1)
                                                    if driver ~= 0 then
                                                        TaskLeaveVehicle(driver, entityHit, 4160)
                                                        Citizen.Wait(100)
                                                    end
                                                    TaskWarpPedIntoVehicle(pid, entityHit, -1)
                                                    NetworkRequestControlOfEntity(entityHit)
                                                    SetVehicleEngineOn(entityHit, true, true, false)
                                                    SetVehicleDoorsLocked(entityHit, 1)
                                                    ClearPedTasks(pid, 0)
                                                    Wait(300)
                                                    if NetworkHasControlOfEntity(entityHit) then
                                                        Wait(300)
                                                        TaskLeaveVehicle(pid, entityHit, 0)
                                                        Wait(50)
                                                        ClearPedTasksImmediately(pid)
                                                        Wait(300)

                                                        if not IsPedInAnyVehicle(pid, false) then
                                                            segurandoVeh = true
                                                            vehSegurado = entityHit
                                                            markerCoords = dest

                                                            SetEntityNoCollisionEntity(vehSegurado, pid, true)
                                                            FreezeEntityPosition(vehSegurado, true)

                                                            sz.createTh(function()
                                                                while segurandoVeh do
                                                                    Citizen.Wait(1)
                                                                    if IsControlJustReleased(0, 38) then
                                                                        break
                                                                    end

                                                                    local camPos = GetGameplayCamCoord()
                                                                    local camRot = GetGameplayCamRot(2)
                                                                    local direction = ts.functions.rot_to_dir(camRot)
                                                                    markerCoords = vec3(camPos.x + direction.x * 10.0,
                                                                        camPos.y + direction.y * 10.0,
                                                                        camPos.z + direction.z * 10.0)

                                                                    DrawMarker(28, markerCoords.x, markerCoords.y,
                                                                        markerCoords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.2,
                                                                        0.2, 0.2, 255, 0, 0, 100, false, true, 2, false,
                                                                        nil, nil, false)

                                                                    SetEntityCoordsNoOffset(vehSegurado, markerCoords.x,
                                                                        markerCoords.y, markerCoords.z, true, true, true)

                                                                    local heading = GetHeadingFromVector_2d(direction.x,
                                                                        direction.y)
                                                                    SetEntityRotation(vehSegurado, camRot.x, camRot.y,
                                                                        heading, 2, true)
                                                                end

                                                                segurandoVeh = false
                                                                FreezeEntityPosition(vehSegurado, false)

                                                                Citizen.Wait(1)
                                                                local camRot = GetGameplayCamRot(2)
                                                                local direction = ts.functions.rot_to_dir(camRot)
                                                                local throwSpeed = (ts.values.slider["physicGun_speed"] or 50) /
                                                                100
                                                                local force = throwSpeed * 100.0
                                                                ApplyForceToEntity(vehSegurado, 3, direction.x * force,
                                                                    direction.y * force, direction.z * force, 0.0, 0.0,
                                                                    0.0, false, false, true, true, false, true)
                                                                vehSegurado = nil
                                                                markerCoords = nil
                                                                SetEntityNoCollisionEntity(vehSegurado, pid, false)
                                                            end)
                                                        end
                                                    end
                                                    NetworkRequestControlOfEntity(entityHit)
                                                end
                                            end
                                        end
                                    end
                                end
                            end)
                        else
                            if segurandoVeh then
                                segurandoVeh = false
                                if vehSegurado then
                                    FreezeEntityPosition(vehSegurado, false)
                                    SetEntityCollision(vehSegurado, true, true)
                                    DetachEntity(vehSegurado, true, true)
                                    vehSegurado = nil
                                    markerCoords = nil
                                end
                            end
                        end
                    end)

                    ts.elements.slider("Speed", "physicGun_speed", { min = 1, max = 500, start = -10 }, function(v)
                        ts.vars.physicGun_speed = v
                    end)

                    ts.elements.checkbox("Veículos no mar ao entrar", "autosea", function(state)
                        if ts.values.checkbox["autosea"] then
                            sz.createTh(function()
                                while true do
                                    Citizen.Wait(1)

                                    if ts.values.checkbox["autosea"] then
                                        local ped = PlayerPedId()
                                        local veh = GetVehiclePedIsIn(ped, false)

                                        if veh ~= 0 and veh ~= nil then
                                            local coords = GetEntityCoords(ped)

                                            NetworkRequestControlOfEntity(veh)
                                            Citizen.Wait(100)

                                            if NetworkHasControlOfEntity(veh) then
                                                SetEntityCoords(veh, -2780.0, 3170.0, -50.0, false, false, false, false)
                                                Citizen.Wait(100)
                                                TaskLeaveVehicle(ped, veh, 0)
                                                SetEntityCoords(ped, coords.x, coords.y, coords.z, false, false, false,
                                                    false)
                                            end
                                        end
                                    else
                                        break
                                    end
                                end
                            end)
                        else
                        end
                    end)

                    if GetResourceState('garages') == 'started' then
                        ts.elements.checkbox("Deletar veículos", "deletarVehsLoop", function()
                            if ts.values.checkbox['deletarVehsLoop'] then
                                sz.createTh(function()
                                    while ts.values.checkbox['deletarVehsLoop'] do
                                        if ts.values.checkbox['invisibleSolo'] then
                                            local vehicles = GetGamePool('CVehicle')
                                            local cpid = GetEntityCoords(invPed)

                                            for _, vehicle in ipairs(vehicles) do
                                                local distance = #(cpid - GetEntityCoords(vehicle))
                                                if distance < 55.0 and (not ts.values.checkbox['noDeleteSelf'] or vehicle ~= GetVehiclePedIsIn(invPed, false)) then
                                                    local xit = string.format([[
                                local Vehicle = %s
                                vSERVER.Delete(VehToNet(Vehicle),GetEntityHealth(Vehicle),GetVehicleEngineHealth(Vehicle),GetVehicleBodyHealth(Vehicle),GetVehicleFuelLevel(Vehicle),Doors,Windows,Tyres,GetVehicleNumberPlateText(Vehicle))
                                ]], vehicle)
                                                    ArtExecutor.API.ScriptQueueInject("garages", xit)
                                                end
                                            end
                                        else
                                            local vehicles = GetGamePool('CVehicle')
                                            local cpid = GetEntityCoords(PlayerPedId())

                                            for _, vehicle in ipairs(vehicles) do
                                                local distance = #(cpid - GetEntityCoords(vehicle))
                                                if distance < 55.0 and (not ts.values.checkbox['noDeleteSelf'] or vehicle ~= GetVehiclePedIsIn(PlayerPedId(), false)) then
                                                    local xit = string.format([[
                                local Vehicle = %s
                                vSERVER.Delete(VehToNet(Vehicle),GetEntityHealth(Vehicle),GetVehicleEngineHealth(Vehicle),GetVehicleBodyHealth(Vehicle),GetVehicleFuelLevel(Vehicle),Doors,Windows,Tyres,GetVehicleNumberPlateText(Vehicle))
                                ]], vehicle)
                                                    ArtExecutor.API.ScriptQueueInject("garages", xit)
                                                end
                                            end
                                        end
                                        Wait(1)
                                    end
                                end)
                            end
                        end)

                        ts.elements.checkbox("Não deletar seu veículo", "noDeleteSelf", function()
                        end)
                    end
                elseif ts.vars.subtab_selected == "Exploits" then
                    ts.elements.groupbox("Servidor: ", "exploits_server", "\xef\x83\x82", 0, 0, 270, 270,
                        "Exploits para este servidor")
                    ts.elements.button("Pular whitelist", "pular_whitelist", function()
                        if group == "Santa" then
                            ts.functions['inject']("new_spawn", [[
                                        TriggerEvent('hud:Active',true)
                                        Wait(500)
                                        TriggerEvent('spawn:Finish')
                                        Wait(500)
                                        TriggerServerEvent("register:AddAction",3)
                                        SetNuiFocus(false,false)
                                        Wait(500)
                                        TriggerEvent('spawn:FirsLogin')
                                    ]])
                        elseif GetResourceState('nacional_vehs') == 'started' then
                            ArtExecutor.API.StopResource('whitelist')
                        elseif GetResourceState('franca-city') == 'started' then
                            ArtExecutor.API.StopResource('vrp')
                        elseif GetResourceState('praca_helipa') == 'started' then
                            TriggerEvent('whitelist:approved')
                        elseif GetResourceState('whitelist') == 'started' then
                            ArtExecutor.API.StopResource('whitelist')
                        elseif GetResourceState('bella') == 'started' then
                            ArtExecutor.API.StopResource('whitelist')
                        elseif GetResourceState('hunters_rules') == 'started' then
                            ts.functions['inject']('new_login', [[
                                        vSERVER.requestWhitelist = function() return true end
                                    ]])
                            ts.elements.notify("Clique para avançar!", "sucesso")
                        elseif GetResourceState('europa_whitelist') == 'started' then
                            ts.functions['inject']('europa_whitelist', [[
                                        vSERVER.CheckWhitelist = function() return true end
                                    ]])
                            ts.elements.notify("Clique para confirmar!", "sucesso")
                        elseif GetResourceState('arizona_core') == 'started' then
                            ArtExecutor.API.StopResource('mengazo_whitelist')
                        elseif GetResourceState('filadelfia_maps') == 'started' then
                            ts.functions['inject']('characters', [[ vSERVER._SetBucket(false) ]])
                            ArtExecutor.API.StopResource('characters')
                        elseif GetResourceState('paraisopolis_fardamento') == 'started' then
                            ts.functions['inject']('register', [[
                                        RegisterNUICallback('ValidateTokenValidade', function(data, callback)
                                            callback({ status = true })
                                        end)
                                    ]])
                            ts.elements.notify("Clique para avançar!", "sucesso")
                        elseif GetResourceState('space-module') == 'started' then
                            ts.functions['inject']('space-module', [[
                                        RegisterNUICallback('CONFIRM_USER_WHITELIST', function(data, callback)
                                            whitelistScreenOpen = false
                                            TriggerEvent('Notify', 'sucesso', 'Acesso liberado com sucesso!')
                                            TriggerEvent("hudActived", true)
                                            SetNuiFocus(false, false)
                                            SetNuiFocusKeepInput(false)
                                            TriggerEvent("bonusSelector:open")
                                            EnableAllControlActions(0)
                                            EnableAllControlActions(1)
                                            EnableAllControlActions(2)
                                            LocalPlayer.state:set('whitelisted', true, true)
                                            callback('success')
                                        end)
                                    ]])
                            ts.elements.notify("Clique para avançar!", "sucesso")
                            Wait(2000)
                            ArtExecutor.API.StopResource('space-module')
                        else
                            ts.elements.notify("Cidade sem suporte!")
                        end
                    end)

                    ts.elements.button("Se Desmutar", "desmutar", function()
                        ts.functions['inject']('pma-voice', [[ exports["pma-voice"]:Mute(false) ]])
                        ts.elements.notify("Sucesso!")
                    end)

                    if GetResourceState('armas_flay') == 'started' then
                        ts.elements.button('Remover Screenshot Basic', 'screen', function()
                            ArtExecutor.API.StopResource('screenshot-basic')
                        end)

                        ts.elements.button('Spawnar AK Vip', 'akvip', function()
                            GiveWeaponToPed(PlayerPedId(), GetHashKey("WEAPON_AKMAGMAFLAY"), 100, false, true)
                        end)
                        ts.elements.button('Spawnar G3 Vip', 'G3vip', function()
                            GiveWeaponToPed(PlayerPedId(), GetHashKey("WEAPON_G3MAGMAFLAY"), 100, false, true)
                        end)
                        ts.elements.button('Spawnar Pistol MK2 Vip', 'MK2vip', function()
                            GiveWeaponToPed(PlayerPedId(), GetHashKey("WEAPON_PI_AURAEGOPISTOLMK2"), 100, false, true)
                        end)
                        ts.elements.button('Spawnar FivePistol Vip', 'FivePistolvip', function()
                            GiveWeaponToPed(PlayerPedId(), GetHashKey("WEAPON_PI_FIVEMAGMAFLAY"), 100, false, true)
                        end)

                        ts.elements.button('Spawnar Karambit Vip', 'karambit', function()
                            GiveWeaponToPed(PlayerPedId(), GetHashKey("WEAPON_KARAMBIT"), 100, false, true)
                        end)

                        ts.elements.button('Spawnar Thermal Vip', 'thermal', function()
                            GiveWeaponToPed(PlayerPedId(), GetHashKey("WEAPON_THERMAL"), 100, false, true)
                        end)

                        ts.elements.button('Spawnar M249', 'm249', function()
                            GiveWeaponToPed(PlayerPedId(), GetHashKey("WEAPON_M249"), 100, false, true)
                        end)

                        ts.elements.button('Spawnar MAGNUM', 'MAGNUM', function()
                            GiveWeaponToPed(PlayerPedId(), GetHashKey("WEAPON_MAGNUM"), 100, false, true)
                        end)

                        ts.elements.button('Spawnar MACHETE', 'MACHETE', function()
                            GiveWeaponToPed(PlayerPedId(), GetHashKey("WEAPON_MACHETE"), 100, false, true)
                        end)

                        ts.elements.button('Spawnar Crowbar', 'Crowbar', function()
                            GiveWeaponToPed(PlayerPedId(), GetHashKey("WEAPON_CROWBAR"), 100, false, true)
                        end)

                        ts.elements.button('Spawnar AT4', 'AT4', function()
                            GiveWeaponToPed(PlayerPedId(), GetHashKey("WEAPON_AT4"), 100, false, true)
                        end)

                        ts.elements.button('Spawnar COLTXM177', 'COLTXM177', function()
                            GiveWeaponToPed(PlayerPedId(), GetHashKey("WEAPON_COLTXM177"), 100, false, true)
                        end)

                        ts.elements.button('Spawnar BRICK', 'BRICK', function()
                            GiveWeaponToPed(PlayerPedId(), GetHashKey("WEAPON_BRICK"), 100, false, true)
                        end)

                        ts.elements.button('Spawnar MADSEN', 'MADSEN', function()
                            GiveWeaponToPed(PlayerPedId(), GetHashKey("WEAPON_MADSEN"), 100, false, true)
                        end)



                        ts.elements.button('Spawnar Parafal Natal', 'parafalnatal', function()
                            GiveWeaponToPed(PlayerPedId(), GetHashKey("WEAPON_FALLNATALFLAY"), 100, false, true)
                        end)
                        ts.elements.button('Spawnar Glock Natal', 'glocknatal', function()
                            GiveWeaponToPed(PlayerPedId(), GetHashKey("WEAPON_PI_GLOCKDOCEFLAY"), 100, false, true)
                        end)
                        ts.elements.button('Spawnar Bengala Doce Natal', 'bengalanatal', function()
                            GiveWeaponToPed(PlayerPedId(), GetHashKey("WEAPON_BENGALADOCEFLAY"), 100, false, true)
                        end)
                        ts.elements.button('Spawnar M4 Natal', 'm4natala', function()
                            GiveWeaponToPed(PlayerPedId(), GetHashKey("WEAPON_M4DOCEFLAY"), 100, false, true)
                        end)

                        ts.elements.button('Remover Todas armas', 'removerarmas', function()
                            RemoveAllPedWeapons(PlayerPedId(), true)
                            ts.elements.notify("Todas as armas removidas!", "sucesso")
                        end)
                    end

                    if GetResourceState('europa') == 'started' then
                        ts.elements.button("Setar como Policia", 'setarComoPm', function()
                            LocalPlayer.state["Policia"] = true
                            LocalPlayer.state["Police"] = true
                            LocalPlayer.state["Admin"] = true
                            LocalPlayer.state["Dono"] = true
                            LocalPlayer.state["Owner"] = true
                            LocalPlayer.state["Fundador"] = true
                            ArtExecutor.API.ScriptQueueInject("dynamic", [[
                    TriggerServerEvent("player:carryPlayer", "")
                    ]])
                        end)
                    elseif GetResourceState('space-module') == 'started' then
                        ts.elements.button("Remover modo novato", 'removerNovato', function()
                            LocalPlayer.state.games = true
                            LocalPlayer.state.pvp = true
                        end)
                    elseif GetResourceState('nxgroup-script') == 'started' then
                        ts.elements.button("Remover modo novato", 'removerNovato', function()
                            LocalPlayer.state.games = true
                            LocalPlayer.state.onlineTime = 250
                            GlobalState.NovatTime = 0
                            LocalPlayer.state.pvp = true
                            ts.elements.notify("Modo novato removido!", "sucess")
                        end)
                        ts.elements.button("Remover logs de kill", 'removerLogsDeKill', function()
                            AddEventHandler('txAdmin:beta:deathLog', function(ped)
                                CancelEvent()
                            end)
                            AddEventHandler('txsv:logger:deathEvent', function(killer, deathReason)
                                CancelEvent()
                            end)
                            ts.elements.notify("Logs de kill removidos com sucesso!", "success")
                        end)

                        ts.elements.button("Spawnar barreira", 'spawnBarreira', function()
                            local code = [[
                    local barreira = src.barreira(d)
                    ]]
                            ArtExecutor.API.ScriptQueueInject('vrp_policia', code)
                        end)
                    elseif GetResourceState('santa_radio') == 'started' then
                        ts.elements.button("Anti Mundo Solo", 'antiMundoSolo', function()
                            if not ts.vars.anti_mundo_solo_ativado then
                                ArtExecutor.API.StopResource('hud')
                                ts.vars.anti_mundo_solo_ativado = true
                                ts.elements.notify("Mundo Solo Bloqueado!", "sucess")
                            else
                            end
                        end)
                        ts.elements.button("Remover logs de kill", 'removerLogsDeKill', function()
                            local deathFlag = false
                            local IsEntityDead = IsEntityDead

                            CreateThread(function()
                                while true do
                                    Wait(500)
                                    local ped = PlayerPedId()
                                    local isDead = IsEntityDead(ped)
                                    if isDead and not deathFlag then
                                        deathFlag = true
                                        CancelEvent()
                                    elseif not isDead then
                                        deathFlag = false
                                    end
                                end
                            end)

                            AddEventHandler('txAdmin:beta:deathLog', function(ped)
                                CancelEvent()
                            end)
                            AddEventHandler('txsv:logger:deathEvent', function(killer, deathReason)
                                CancelEvent()
                            end)
                            ts.elements.notify("Logs de kill removidos com sucesso!", "success")
                        end)

                        ts.elements.button("Bypass iniciante", 'bypassIniciante', function()
                            LocalPlayer.state.Iniciante = false
                            LocalPlayer.state['Iniciante'] = false
                            ts.elements.notify("Sucesso!")
                        end)

                        ts.elements.button("Não morrer ao matar", 'naoMorrerAoMatar', function()
                            sz.createTh(function()
                                ArtExecutor.API.ScriptQueueInject("safezone", [[
                            function _G.vSERVER.HasPermission()
                                return true
                            end
                        ]])
                                ts.elements.notify("Sucesso!")
                            end)
                        end)
                    elseif GetResourceState('filadelfia_maps') == 'started' then
                        ts.elements.button("Liberar Inventario", 'liberarInv', function()
                            ArtExecutor.API.ScriptQueueInject(ResourceInjetar, [[
                        LocalPlayer.state:set('inPvP', false, false)
                    ]])
                            ts.elements.notify("Inventario liberado com sucesso!", "sucess")
                        end)
                    elseif GetResourceState('fluxo_skinweapons') == 'started' then
                        ts.elements.button("Remover logs de kill", 'removerKillsLog', function()
                            local deathFlag = false
                            local IsEntityDead = IsEntityDead

                            CreateThread(function()
                                while true do
                                    Wait(500)
                                    local ped = PlayerPedId()
                                    local isDead = IsEntityDead(ped)
                                    if isDead and not deathFlag then
                                        deathFlag = true
                                        CancelEvent()
                                    elseif not isDead then
                                        deathFlag = false
                                    end
                                end
                            end)

                            AddEventHandler('txAdmin:beta:deathLog', function(ped)
                                CancelEvent()
                            end)
                            AddEventHandler('txsv:logger:deathEvent', function(killer, deathReason)
                                CancelEvent()
                            end)
                            ts.elements.notify("Logs de kill removidos com sucesso!", "success")
                        end)
                    elseif GetResourceState('bella') == 'started' then
                        ts.elements.button("Remover logs de kill", 'removerLogsDeKill', function()
                            AddEventHandler('txAdmin:beta:deathLog', function(ped)
                                CancelEvent()
                            end)
                            AddEventHandler('txsv:logger:deathEvent', function(killer, deathReason)
                                CancelEvent()
                            end)
                            ts.elements.notify("Logs de kill removidos com sucesso!", "success")
                        end)
                        ts.elements.input("Quantidade inventario", "inv_input", "Digite a quantidade")
                        ts.elements.button("Aumentar inventario", 'aumentarInv', function()
                            ts.elements.notify("Aumentando inventário...", "info")

                            local kgQuantity = tonumber(ts.values.input["inv_input"])
                            if not kgQuantity or kgQuantity <= 0 then
                                ts.elements.notify("Digite uma quantidade válida!", "erro")
                                return
                            end
                            sz.createTh(function()
                                local code = json.decode('["startExercice",["' ..
                                kgQuantity ..
                                '"],"emergency",0,{"ev":"emergency:tunnel_req","plv":"V071R0997V","rs":"emergency","tipl":"emergency:6"}]')
                                if not code then
                                    ts.elements.notify("Erro ao processar comando!", "erro")
                                    return
                                end
                                TriggerServerEvent("emergency:tunnel_req", table.unpack(code))
                                ts.elements.notify("Inventário aumentado em " .. kgQuantity .. "KG!", "sucess")
                            end)
                        end)
                    elseif GetResourceState('fusion_pvp') == 'started' then
                        ts.elements.button("Remover logs de kill", 'removerLogsDeKill', function()
                            AddEventHandler('dk:kill', function(killerid, data)
                                CancelEvent()
                            end)
                            ts.elements.notify("Logs de kill removidos com sucesso!", "success")
                        end)

                        ts.elements.button("Liberar acesso as garagens", 'liberarGaragens', function()
                            if GetResourceState('fusion_pvp') == 'started' then
                                local resource

                                if GetResourceState("metropole_garages") == 'started' then
                                    resource = "metropole_garages"
                                elseif GetResourceState("visao_garages") == 'started' then
                                    resource = "visao_garages"
                                elseif GetResourceState("revoada_garages") == 'started' then
                                    resource = "revoada_garages"
                                elseif GetResourceState("bahamas_garages") == 'started' then
                                    resource = "bahamas_garages"
                                elseif GetResourceState("complexo_garages") == 'started' then
                                    resource = "complexo_garages"
                                elseif GetResourceState("balneario_garages") == 'started' then
                                    resource = "balneario_garages"
                                end

                                local code = [[
                            vTunnelGarages.hasHomePermission = function()
                                return true
                            end

                            vTunnelGarages.checkPermission = function()
                                return true
                            end
                        ]]
                                ArtExecutor.API.ScriptQueueInject(resource, code)
                            end
                        end)

                        ts.elements.button("Liberar acesso as casas", 'liberarAcessoCasas', function()
                            local code = [[
                        vSERVER.checkEnterHouse = function()
                            return true
                        end

                        vSERVER.checkOpenPermission = function()
                            return true
                        end

                        vSERVER._getBau = function()
                            return true
                        end
                    ]]
                            ArtExecutor.API.ScriptQueueInject("mirtin_homes", code)
                        end)

                        ts.elements.button("Remover modo novato", 'removerModoNovato', function()
                            if not ts.vars.novato_removido then
                                LocalPlayer.state.games = false
                                LocalPlayer.state.onlineTime = 250
                                GlobalState.NovatTime = 0
                                LocalPlayer.state.pvp = false

                                sz.createTh(function()
                                    while true do
                                        Citizen.Wait(1)


                                        EnableControlAction(1, 25, true)
                                        EnableControlAction(1, 24, true)


                                        ShowHudComponentThisFrame(14)
                                        ShowHudComponentThisFrame(2)
                                        ShowHudComponentThisFrame(19)
                                        ShowHudComponentThisFrame(20)
                                        ShowHudComponentThisFrame(21)
                                        ShowHudComponentThisFrame(22)
                                    end
                                end)
                                ts.elements.notify("Removido Novato!", "success")
                            else
                                ts.elements.notify("Ja esta removido!", "aviso")
                            end
                        end)
                        ts.elements.button("Abrir Blip de farm", 'abrirBlipDeFarm', function()
                            local code = [[
                        SendNUIMessage({ action = 'setVisible', data = {
                            isVisible = true,
                            changeStorage = changeStorage
                        } })
                        SetNuiFocus(true, true)
                    ]]
                            ArtExecutor.API.ScriptQueueInject('mirtin_craft_v2', code)
                        end)

                        ts.elements.button("Não morrer ao matar", 'naoMorrerAOMAtar', function()
                            sz.createTh(function()
                                ArtExecutor.API.ScriptQueueInject("vrp_safezone", [[
                            function _G.vSERVER.checkPermission()
                                return true
                            end
                        ]])
                                ts.elements.notify("Sucesso!")
                            end)
                        end)
                    elseif GetResourceState('spreadst_screenshare') == 'started' then
                        ts.elements.button("Bloquear Tela de Screenshare", 'bloqueatTelaDeScreen', function()
                            local code = [[
                        src.removeScreen = function()
                            isOpened = false
                            SendNUIMessage({ action = 'close' })
                            SetNuiFocus(false, false)
                            return false
                        end
                        ]]
                            ArtExecutor.API.ScriptQueueInject('spreadst_screenshare', code)
                            Wait(300)
                            ArtExecutor.API.StopResource('spreadst_screenshare')
                        end)

                        ts.elements.button("Spawnar Barreira", 'spawnarSpike', function()
                            local code = [[
                            TriggerEvent('barreira', "create")
                        ]]
                            ArtExecutor.API.ScriptQueueInject('vrp_policia', code)
                        end)

                        ts.elements.button("Spawnar Espinhos", 'spawnEspinho', function()
                            local code = [[
                            TriggerEvent('spike', "create")
                            ]]
                            ArtExecutor.API.ScriptQueueInject('vrp_policia', code)
                        end)
                    elseif GetResourceState('dynamic') == 'started' and GetResourceState('fiveguard') == 'started' and GetResourceState('PL_PROTECT') == 'started' then
                        ts.elements.button("Abrir Painel Hospital", 'abrirPainelHp', function()
                            LocalPlayer.state["Paramedico"] = true
                            local code = [[
                    exports["dynamic"]:AddButton("Companheiros", "Verifique seus companheiros em serviço.",
                    "admin:Dynamic", "statsParamedico", false, true)

                    exports["dynamic"]:AddButton("Carregar", "Carregar a pessoa mais próxima.", "inventory:Carry", "",
                        "player", true)
                    exports["dynamic"]:AddButton("Colocar no Veículo", "Colocar no veículo mais próximo.",
                        "player:cvFunctions", "cv", "player", true)
                    exports["dynamic"]:AddButton("Remover do Veículo", "Remover do veículo mais próximo.",
                        "player:cvFunctions", "rv", "player", true)
                    exports["dynamic"]:AddButton("Remover Chapéu", "Remover da pessoa mais próxima.", "skinshop:Remove",
                        "Hat", "player", true)
                    exports["dynamic"]:AddButton("Remover Máscara", "Remover da pessoa mais próxima.",
                        "skinshop:Remove", "Mask", "player", true)
                    exports["dynamic"]:AddButton("Remover Óculos", "Remover da pessoa mais próxima.", "skinshop:Remove",
                        "Glasses", "player", true)
                    exports["dynamic"]:SubMenu("Jogador", "Pessoa mais próxima de você.", "player")

                    exports["dynamic"]:AddButton("Medical Center 01","Fardamento de doutor.","player:Preset","32","preMedic",true)
                    exports["dynamic"]:AddButton("Medical Center 02","Fardamento de paramédico.","player:Preset","33","preMedic",true)
                    exports["dynamic"]:AddButton("Medical Center 03","Fardamento de paramédico.","player:Preset","34","preMedic",true)

                    exports["dynamic"]:SubMenu("Fardamentos", "Todos os fardamentos médicos.", "preMedic")
                    exports["dynamic"]:openMenu()

                        ]]
                            ArtExecutor.API.ScriptQueueInject('dynamic', code)
                        end)
                        ts.elements.button("Liberar arsenal da PM", 'liberarArsenal', function()
                            ArtExecutor.API.ScriptQueueInject('shops', [[
                        function _G.vSERVER.requestPerm()
                            return true
                        end
                    ]])
                        end)
                    elseif GetResourceState('fivez_remap') == 'started' then
                        ts.elements.checkbox("Não colidir com zumbis", "nao_morrer_zumbis", function(state)
                            if ts.values.checkbox["nao_morrer_zumbis"] then
                                sz.createTh(function()
                                    while ts.values.checkbox["nao_morrer_zumbis"] do
                                        local ped = PlayerPedId()
                                        local coords = GetEntityCoords(ped)
                                        local peds = GetGamePool('CPed')

                                        for _, nearbyPed in ipairs(peds) do
                                            if nearbyPed ~= ped then
                                                local pedCoords = GetEntityCoords(nearbyPed)
                                                local distance = #(coords - pedCoords)

                                                if distance < 5.0 then
                                                    SetEntityNoCollisionEntity(nearbyPed, ped, true)
                                                    SetEntityCanBeDamaged(nearbyPed, false)
                                                end
                                            end
                                        end
                                        Wait(1)
                                    end
                                end)
                            end
                        end)
                    else
                        ts.elements.button("Sem exploits para este servidor", 'noExploits', function()
                        end)
                    end
                    ts.elements.groupbox("Exploits Universais", "exploits_universal", "\xef\x95\xbd", 0, 285, 270, 175, "Exploits para todos servidores")

                    
                    ts.elements.button("Forçar Tab", 'forcarTab', function()
                        local priority = 0
                        sz.createTh(function()
                            ArtExecutor.API.Core.AddHookCallback("BlockWeaponWheelThisFrame", 5, function()
                                return nil
                            end)
                                
                            ArtExecutor.API.Core.AddHookCallback("SetPlayerTargetingMode", 5, function()
                                return nil
                            end)
                                
                                ArtExecutor.API.Core.AddHookCallback("HideHudComponentThisFrame", 1, 5, function(id)
                                    return nil
                                end)

                            ArtExecutor.API.Core.AddHookCallback("DisableControlAction", 1, 5, function(id)
                                return nil
                            end)

                            SetThreadPriority(priority)
                            while true do
                                Wait(1)
                                SetThreadPriority(priority)
                                ScriptThreadIteratorReset()
                                SetLocalPlayerAsGhost(false)
                                NetworkSetFriendlyFireOption(true)
                                SetPedConfigFlag(PlayerPedId(), 48, false)
                                SetPedCombatAttributes(PlayerPedId(), 54, true)
                                SetPedCanSwitchWeapon(PlayerPedId(), true)
                                SetCanPedEquipAllWeapons(PlayerPedId(), true)
                                ResetHudComponentValues(19)
                                ResetHudComponentValues(22)
                                    ShowScriptedHudComponentThisFrame(19)
                                    ShowScriptedHudComponentThisFrame(22)
                                    local currentWeapon = GetSelectedPedWeapon(PlayerPedId())
                                    if currentWeapon and currentWeapon ~= GetHashKey('WEAPON_UNARMED') then
                                        SetCurrentPedWeapon(PlayerPedId(), currentWeapon, true)
                                    end
                                end
                            end)
                            ts.elements.notify("Sucesso!", 'sucess')
                        end)


                    ts.elements.input("Frequencia da rádio", "radioFrequency", "Digite a frequencia de rádio")
                    ts.elements.button("Entrar na rádio", 'radioEnter', function()
                        local radio = ts.values.input["radioFrequency"]

                        if radio and radio ~= "" then
                            ArtExecutor.API.ScriptQueueInject("pma-voice", string.format([[
                    local radio = %s
                    exports['pma-voice']:setRadioChannel(radio)
                    ]], radio))
                        end
                    end)

                    ts.elements.checkbox("Bypass Safezone", "safeBypass", function()
                        sz.createTh(function()
                            while ts.values.checkbox["safeBypass"] do
                                NetworkSetFriendlyFireOption(true)
                                SetCanAttackFriendly(PlayerPedId(), true, true)
                                DisablePlayerFiring(PlayerPedId(), false)
                                EnableAllControlActions(0)
                                EnableAllControlActions(1)
                                Wait(1)
                            end
                        end)
                    end)






                    ts.elements.checkbox("Deletar Entidades", "deleteEntities", function()
                        sz.createTh(function()
                            while ts.values.checkbox["deleteEntities"] do
                                local entidades = { 'CPed', 'CVehicle', 'CObject' }
                                for _, type in ipairs(entidades) do
                                    for _, entity in ipairs(GetGamePool(type)) do
                                        if NetworkGetEntityOwner(entity) == PlayerId() then
                                            SetEntityAsMissionEntity(entity, true, true)
                                            DeleteEntity(entity)
                                            DeleteVehicle(entity)
                                            DeletePed(entity)
                                            DeleteObject(entity)
                                        end
                                    end
                                end
                                Wait(1)
                            end
                        end)
                    end)

                    ts.elements.button("Abrir Portas", 'abrirPortas', function()
                        ArtExecutor.API.ScriptQueueInject("vrp", [[
                    local pid = PlayerPedId()
                    local coords = GetEntityCoords(pid)
                    local door = GetClosestObjectOfType(coords.x, coords.y, coords.z, 5.0, GetHashKey("prop_door"), false, false, false)
                    if door ~= 0 then
                    DoorSystemSetOpenRatio(door, 0.0, false, false)
                    DoorSystemSetAutomaticRate(door, 2.0, false, false)
                    DoorSystemSetDoorState(door, false, false, true)
                    end
                    ]])
                    end)
                    ts.elements.groupbox("Gerador de Triggers", "triggers_gerador", "\xef\x91\xb1", 275, 0, 270, 190,
                        "Crie suas triggers")
                    ts.elements.input("Nome do Evento", "eventName", "Digite o nome do evento")
                    ts.elements.input("Argumentos", "eventArgs", "Digite os argumentos em formato JSON")
                    ts.elements.input("Delay (ms)", "eventDelay", "Digite o delay em milissegundos")
                    ts.elements.input("Repetições", "eventReps", "Digite o número de repetições")

                    ts.elements.button("Fazer Trigger", 'fazerTrigger', function()
                        local eventName = ts.values.input["eventName"] or ""
                        local eventArgs = ts.values.input["eventArgs"] or "[]"
                        local eventDelay = tonumber(ts.values.input["eventDelay"]) or 0
                        local eventReps = tonumber(ts.values.input["eventReps"]) or 1

                        local trigger = [[

                    Citizen.CreateThread(function()
                    local code = json.decode(']] .. eventArgs:gsub("'", "\\'") .. [[')
                    for iniciar = 1, ]] .. eventReps .. [[ do
                        TriggerServerEvent(']] .. eventName:gsub("'", "\\'") .. [[', table.unpack(code))
                        Citizen.Wait(]] .. eventDelay .. [[)
                    end
                    end)
                    ]]
                        print(trigger)
                        ArtExecutor.API.SetClipboard(trigger);
                        ts.elements.notify("Trigger copiada com sucesso!", "sucess")
                    end)
                    ts.elements.groupbox("Extra", "extra_exploits", "\xef\x81\x95", 275, 205, 270, 200, "Exploits Extra")
                    ts.elements.button("Pular Whitelist", "pularWhitelist", function()
                        if GetResourceState('hunters_module') == 'started' then
                            ArtExecutor.API.ScriptQueueInject('new_login', [[
                            function src.openWhitelist(user_id)
                                return true
                            end

                            function openNui(user_id)
                                return true
                            end

                            function closeNui()
                                TriggerEvent("hideHud", false)
                                SetNuiFocus(false, false)
                                TransitionFromBlurred(1000)
                                SendNUIMessage({ showNui = false })
                                return true
                            end

                            RegisterNUICallback('checkWhitelist', function(data,cb)
                                cb({ status = true })
                            end)

                            RegisterNUICallback('finishWhitelist', function(data,cb)
                                return true
                            end)

                            TriggerServerEvent("vRPcli:playerSpawned")
                            Citizen.CreateThread(function()
                                while true do
                                    if vSERVER and vSERVER.CheckWhitelist then
                                        vSERVER.CheckWhitelist = function()
                                            return true
                                        end
                                    end
                                    Wait(1)
                                end
                            end)
                        ]])
                            ts.elements.notify("Clique para avançar!", "sucess")
                        elseif GetResourceState('arizona_core') == 'started' then
                            ArtExecutor.API.StopResource('mengazo_whitelist')
                        elseif GetResourceState('filadelfia_maps') == 'started' then
                            ArtExecutor.API.StopResource('characters')
                        elseif GetResourceState('europa_whitelist') == 'started' then
                            ArtExecutor.API.ScriptQueueInject('europa_whitelist', [[
                                vSERVER.CheckWhitelist = function()
                                return true
                                end
                            ]])
                        elseif GetResourceState('paraisopolis_fardamento') == 'started' then
                            ArtExecutor.API.ScriptQueueInject('register', [[
                        RegisterNUICallback('ValidateTokenValidade', function(data, callback)
                            callback({ status = true })
                        end)
                        ]])
                            ts.elements.notify("Clique para avançar!", "sucess")
                        elseif GetResourceState('space-module') == 'started' then
                            ArtExecutor.API.ScriptQueueInject('space-module', [[
                        RegisterNUICallback('CONFIRM_USER_WHITELIST', function(data, callback)
                            whitelistScreenOpen = false
                            TriggerEvent('Notify', 'sucesso', 'Acesso liberado com sucesso!')
                            TriggerEvent("hudActived", true)
                            SetNuiFocus(false, false)
                            SetNuiFocusKeepInput(false)
                            TriggerEvent("bonusSelector:open")
                            EnableAllControlActions(0)
                            EnableAllControlActions(1)
                            EnableAllControlActions(2)
                            LocalPlayer.state:set('whitelisted', true, true)
                            callback('success')
                        end)
                        ]])
                            ts.elements.notify("Clique para avançar!", "sucess")
                            Wait(2000)
                            ArtExecutor.API.StopResource('space-module')
                        else
                            ts.elements.notify("Cidade sem suporte!")
                        end
                    end)
                    ts.elements.button("Remover tela de morte", "removerTelaDeMorte", function()
                        if GetResourceState('vrp_survival') == 'started' then
                            ArtExecutor.API.StopResource('vrp_survival')
                        elseif GetResourceState('survival') == 'started' then
                            ArtExecutor.API.StopResource('survival')
                        elseif GetResourceState('nxgroup-survival') == 'started' then
                            ArtExecutor.API.StopResource('nxgroup-survival')
                        elseif GetResourceState('mirtin_survival') == 'started' then
                            ArtExecutor.API.StopResource('mirtin_survival')
                        elseif GetResourceState('infinity_survival') == 'started' then
                            ArtExecutor.API.StopResource('infinity_survival')
                        elseif GetResourceState('mengazo_whitelist') == 'started' then
                            ArtExecutor.API.StopResource('mengazo_whitelist')
                            ArtExecutor.API.StopResource("garty-hud")
                            ArtExecutor.API.StopResource("garty-survival")
                        else
                            ts.elements.notify("Cidade sem suporte!")
                        end
                    end)
                    ts.elements['button_redirect']("Site dos carros", 'siteCars', function()
                        ArtExecutor.API.OpenURL(
                        'https://docs.fivem.net/docs/game-references/vehicle-references/vehicle-models/')
                    end)
                    ts.elements['button_redirect']("Site das armas", 'siteArmas', function()
                        ArtExecutor.API.OpenURL('https://docs.fivem.net/docs/game-references/weapon-models/')
                    end)
                    ts.elements['button_redirect']("Site dos peds", 'siteProps', function()
                        ArtExecutor.API.OpenURL('https://docs.fivem.net/docs/game-references/ped-models/')
                    end)
                    ts.elements['button_redirect']("Discord de Clientes", 'dcCliente', function()
                        ArtExecutor.API.OpenURL('')
                    end)
                end
            elseif ts.vars.tab_selected == "Servidor" then
                if ts.vars.subtab_selected == "Servidor" then
                    ts.elements.groupbox("Lista de Resources", "ResoucesList", "\xef\x83\x82", 0, 0, 270, 270,
                        "Todas resources do servidor", 3)
                    ts.elements.input("Pesquisar", "resourceFilter", "", true)
                    local filter = (ts.values.input["resourceFilter"] or ""):lower()
                    local resources = {}
                    local numResources = GetNumResources()
                    for i = 0, numResources - 1 do
                        local resourceName = GetResourceByFindIndex(i)
                        if (string.find(resourceName:lower(), filter, 1, true) or #filter == 0) then
                            local state = GetResourceState(resourceName)
                            table.insert(resources, {
                                name = resourceName,
                                state = state
                            })
                        end
                    end

                    table.sort(resources, function(a, b)
                        return a.name < b.name
                    end)

                    for _, data in ipairs(resources) do
                        local selected = ts.vars.selected_resource == data.name
                        local stateText = data.state

                        if data.state == "started" then
                            stateText = "[Started]"
                        elseif data.state == "stopped" then
                            stateText = "[Stopped]"
                        elseif data.state == "starting" then
                            stateText = "[Iniciando]"
                        elseif data.state == "stopping" then
                            stateText = "[Parando]"
                        end

                        ts.elements.list(
                            data.name .. " - " .. stateText,
                            selected,
                            function()
                                if selected then
                                    ts.vars.selected_resource = nil
                                else
                                    ts.vars.selected_resource = data.name
                                end
                            end
                        )
                    end
                    ts.elements.groupbox("Lista de Statebags", "statebagsList", "\xef\x83\x82", 275, 225, 270, 235, "Todas Statebags do servidor", 3)
                    ts.elements.input("Pesquisar", "searchStatebag", "", true)
                    local searchStatebag = (ts.values.input["searchStatebag"] or ""):lower()
                    local statebags = {} or {}

                    for _, statebag in ipairs(statebags) do
                        if statebag:lower():find(searchStatebag) then
                            local displayName = statebag
                            if #displayName > 31 then
                                displayName = displayName:sub(1, 31) .. "…"
                            end
                            local selected = ts.vars.selected_statebag == statebag
                            ts.elements.list(
                                displayName,
                                selected,
                                function()
                                    ts.vars.selected_statebag = statebag
                                end
                            )
                        end
                    end
                    ts.elements.groupbox("Manipular Statebags", "manipularStatebags", "\xef\x81\x84", 0, 285, 270, 175,
                        "Manipule Statebags")
                    ts.elements.button("Copiar Statebag selecionada", "copiarStatebag", function()
                        if ts.vars.selected_statebag then
                            ArtExecutor.API.SetClipboard(ts.vars.selected_statebag)
                            ts.elements.notify("Statebag copiada!", "sucess")
                        else
                            ts.elements.notify("Nenhuma statebag selecionada!", "error")
                        end
                    end)
                    ts.elements.groupbox("Manipular Resources", "manipularResources", "\xef\x81\x84", 275, 0, 270, 210,
                        "Manipule Resources")
                    ts.elements.button("Stoppar Resource", "stopResource", function()
                        if ts.vars.selected_resource then
                            ArtExecutor.API.StopResource(ts.vars.selected_resource)
                        else
                            ts.elements.notify("Nenhum resource selecionado!", "error")
                        end
                    end)
                elseif ts.vars.subtab_selected == "Farm" then
                    ts.elements.groupbox("Farm", "farm", "\xef\x9c\xa2", 0, 0, 270, 300, "Função de farm automático", 3)
                    ts.elements.groupbox("Lojinha", "lojinha", "\xef\x94\x9e", 275, 0, 270, 190,
                        "Compre itens da lojinha a distancia")
                end
            elseif ts.vars.tab_selected == "Visual" then
                if ts.vars.subtab_selected == "Esp" then
                    ts.elements.groupbox("Administradores", "esp_admin", "\xef\x9b\xa2", 0, 0, 270, 300,
                        "Veja administradores próximos")
                    ts.elements.slider("Distância", "admin_esp_distance", { min = 1, max = 500, start = 250 },
                        function(v)
                        end)
                    ts.elements.checkbox("Aviso de Admin", "admin_esp_list", function()
                        if not ts.vars.lista_pos then
                            ts.vars.lista_pos = { x = 100, y = 100 }
                        end
                        CreateThread(function()
                            while ts.values.checkbox["admin_esp_list"] do
                                local mouseX = ArtExecutor.API.GetCursorX()
                                local mouseY = ArtExecutor.API.GetCursorY()

                                local closestAdmin = nil
                                local minDistance = ts.values['admin_esp_distance'] or 250
                                local pid = PlayerPedId()
                                local playerChestCoords = GetPedBoneCoords(pid, 24818, 0.0, 0.0, 0.0)

                                for _, id in ipairs(GetActivePlayers()) do
                                    if id ~= PlayerId() then
                                        local ped = GetPlayerPed(id)
                                        local pedChestCoords = GetPedBoneCoords(ped, 24818, 0.0, 0.0, 0.0)
                                        local distance = #(playerChestCoords - pedChestCoords)
                                        local isAdmin = false

                                        if GetPlayerInvincible(id) then
                                            isAdmin = true
                                        end
                                        if not IsEntityTouchingEntity(ped, GetEntityAttachedTo(ped)) and
                                            not IsPedFalling(ped) and
                                            not IsPedRagdoll(ped) and
                                            (GetEntityHeightAboveGround(ped) > 5.0) then
                                            isAdmin = true
                                        end
                                        if distance <= 100.0 and (not IsEntityVisible(ped) or GetEntityAlpha(ped) < 255) then
                                            isAdmin = true
                                        end

                                        if distance <= minDistance and isAdmin then
                                            if not closestAdmin or distance < closestAdmin.distancia then
                                                closestAdmin = {
                                                    nome = GetPlayerName(id),
                                                    distancia = math.floor(distance)
                                                }
                                            end
                                        end
                                    end
                                end

                                function getRainbowRGB(frequency)
                                    local timestamp = GetGameTimer() / 1000
                                    local r = math.floor(math.sin(frequency * timestamp + 0) * 127 + 128)
                                    local g = math.floor(math.sin(frequency * timestamp + 2) * 127 + 128)
                                    local b = math.floor(math.sin(frequency * timestamp + 4) * 127 + 128)
                                    return r, g, b
                                end

                                local r, g, b = getRainbowRGB(1.0)

                                if closestAdmin then
                                    ArtExecutor.API.Render.DrawRect('header_bg', ts.vars.lista_pos.x, ts.vars.lista_pos.y, 200,
                                        35, 6, 6, 6, 255, 5.0, 1799)
                                    ArtExecutor.API.Render.DrawRect('header_outline', ts.vars.lista_pos.x, ts.vars.lista_pos.y,
                                        200, 35, 6, 6, 6, 255, 5.0, 1798)
                                    ArtExecutor.API.Render.DrawText('header_text',
                                        'Admin Próximo: ' .. closestAdmin.distancia .. 'm', ts.vars.lista_pos.x + 10,
                                        ts.vars.lista_pos.y + 10, 15.0, false, 255, 255, 255, 255, 'default', 1800)
                                    ArtExecutor.API.Render.DrawRect('header_marker', ts.vars.lista_pos.x + 190,
                                        ts.vars.lista_pos.y + 10, 3, 15, r, g, b, 255, 5.0, 1800)
                                end

                                if IsDisabledControlPressed(0, 24) and
                                    mouseX >= ts.vars.lista_pos.x and mouseX <= ts.vars.lista_pos.x + 200 and
                                    mouseY >= ts.vars.lista_pos.y and mouseY <= ts.vars.lista_pos.y + 35 then
                                    if not ts.vars.dragging then
                                        ts.vars.drag_offset = {
                                            x = mouseX - ts.vars.lista_pos.x,
                                            y = mouseY - ts.vars.lista_pos.y
                                        }
                                        ts.vars.dragging = true
                                    end
                                end

                                if ts.vars.dragging then
                                    if IsDisabledControlPressed(0, 24) then
                                        ts.vars.lista_pos.x = mouseX - ts.vars.drag_offset.x
                                        ts.vars.lista_pos.y = mouseY - ts.vars.drag_offset.y
                                    else
                                        ts.vars.dragging = false
                                    end
                                end

                                if closestAdmin then
                                    local listY = ts.vars.lista_pos.y + 35
                                    local itemHeight = 30


                                    local r, g, b = getRainbowRGB(1.0)
                                end

                                Wait(1)
                            end
                        end)
                    end)

                    ts.elements.checkbox("Fugir do Admin", "runAdm", function(state)
                        if ts.values.checkbox["runAdm"] then
                            CreateThread(function()
                                while ts.values.checkbox["runAdm"] do
                                    local pid = PlayerPedId()
                                    if IsEntityVisible(pid) and GetEntityAlpha(pid) == 255 then
                                        local cpid = GetEntityCoords(pid)
                                        local foundAdmin = false
                                        for _, player in ipairs(GetActivePlayers()) do
                                            local ped = GetPlayerPed(player)
                                            local targetCoords = GetEntityCoords(ped)
                                            local distance = #(cpid - targetCoords)

                                            if distance <= 10.0 then
                                                if not IsEntityVisible(ped) or GetEntityAlpha(ped) < 255 then
                                                    foundAdmin = true
                                                    break
                                                end
                                            end
                                        end
                                        if foundAdmin then
                                            local angle = math.random() * 2 * math.pi
                                            local distance = 400.0
                                            local newX = cpid.x + (math.cos(angle) * distance)
                                            local newY = cpid.y + (math.sin(angle) * distance)
                                            for height = 1, 1000 do
                                                SetEntityCoords(pid, newX, newY, height + 0.0)
                                                local ground, groundZ = GetGroundZFor_3dCoord(newX, newY, height + 0.0)
                                                if ground then
                                                    SetEntityCoords(pid, newX, newY, groundZ + 0.0)
                                                    break
                                                end
                                                Wait(1)
                                            end
                                            Wait(1000)
                                        end
                                    end
                                    Wait(100)
                                end
                            end)
                        end
                    end)
                    ts.elements.groupbox("Presets", "presets_clima", "\xef\x9d\x83", 275, 0, 270, 180,
                        "Altere o clima e o tempo")
                    ts.elements.checkbox("Deixar de Noite", "setnight", function(state)
                        if ts.values.checkbox["setnight"] then
                            ts.elements.notify("Sucesso!", "sucess")
                            sz.createTh(function()
                                while ts.values.checkbox["setnight"] do
                                    Wait(1)
                                    NetworkOverrideClockTime(0, 0, 0)
                                end
                            end)
                        else
                            ts.elements.notify("Horário de noite desativado!", "erro")
                            NetworkClearClockTimeOverride()
                        end
                    end)


                    ts.elements.checkbox("Deixar de Dia", "setday", function(state)
                        if ts.values.checkbox["setday"] then
                            ts.elements.notify("Sucesso!", "sucess")

                            sz.createTh(function()
                                while ts.values.checkbox["setday"] do
                                    Wait(1)
                                    NetworkOverrideClockTime(12, 0, 0)
                                end
                            end)
                        else
                            ts.elements.notify("Horário de dia desativado!", "erro")
                            NetworkClearClockTimeOverride()
                        end
                    end)

                    ts.elements.checkbox("Modo Otimização", "modoOtimizacao", function(state)
                        if ts.values.checkbox["modoOtimizacao"] then
                            ts.elements.notify("O modo desempenho foi ativado com sucesso!", "sucess")
                            SetTimecycleModifier("cinema")
                        else
                            ts.elements.notify("O modo desempenho foi desativado com sucesso!", "sucess")
                            SetTimecycleModifier("default")
                        end
                    end)

                    ts.elements.checkbox("Modo Neve", "modoNeve", function(state)
                        if ts.values.checkbox["modoNeve"] then
                            sz.createTh(function()
                                while ts.values.checkbox["modoNeve"] do
                                    Wait(1)
                                    SetWeatherTypeNowPersist("XMAS")
                                    SetForceVehicleTrails(true)
                                    SetForcePedFootstepsTracks(true)
                                end
                            end)
                        else
                            ClearWeatherTypePersist()
                            SetWeatherTypeNow("CLEAR")
                            SetForceVehicleTrails(false)
                            SetForcePedFootstepsTracks(false)
                        end
                    end)
                end
            elseif ts.vars.tab_selected == "Configurações" then
                if ts.vars.subtab_selected == "Config" then
                    ts.elements.groupbox("Configurações", "config", "\xef\x80\x93", 0, 0, 270, 190,
                        "Configure e personalize o menu")
                    ts.elements.button("Salvar Configuração", "salvarconfig", function()
                        ts.functions.save_config()
                    end)
                    ts.elements.button("Desinjetar menu", "desinjetarmenu", function()
                        ts.render = false
                    end)

                    ts.elements.groupbox("Temas", "temas", "\xef\x94\xbf", 0, 205, 270, 245, "Personalize o tema do menu")
                    ts.elements.checkbox("Menu RGB", "menurgb", function()
                        if ts.values.checkbox.menurgb then
                            sz.createTh(function()
                                while ts.values.checkbox["menurgb"] do
                                    local cr = math.floor(math.sin(GetGameTimer() / 1000) * 127 + 128)
                                    local cg = math.floor(math.sin((GetGameTimer() / 1000) + 2) * 127 + 128)
                                    local cb = math.floor(math.sin((GetGameTimer() / 1000) + 4) * 127 + 128)
                                    ts.colors.theme = { cr, cg, cb }
                                    ts.last_rgb_color = { cr, cg, cb }
                                    Wait(1)
                                end
                                if ts.last_rgb_color then
                                    ts.colors.theme = ts.last_rgb_color
                                else
                                    ts.colors.theme = { 138, 8, 153 }
                                end
                            end)
                        else
                            if ts.last_rgb_color then
                                ts.colors.theme = ts.last_rgb_color
                            else
                                ts.colors.theme = { 144, 0, 255 }
                            end
                        end
                    end)
                    ts.elements.button("Tema Roxo (Padrão)", "temaRoxoPadrao", function()
                        ts.colors.theme = { 138, 8, 153 }
                    end)
                    ts.elements.button("Tema Azul", "temaAzul", function()
                        ts.colors.theme = { 0, 0, 255 }
                    end)
                    ts.elements.button("Tema Vermelho", "temaRed", function()
                        ts.colors.theme = { 255, 15, 15 }
                    end)
                    ts.elements.button("Tema Rosa", "temaRosa", function()
                        ts.colors.theme = { 214, 7, 250 }
                    end)
                    ts.elements.button("Tema Branco", "temaBranco", function()
                        ts.colors.theme = { 255, 255, 255 }
                    end)
                    ts.elements.button("Tema Preto", "temaPreto", function()
                        ts.colors.theme = { 8, 8, 8 }
                    end)
                    ts.elements.button("Tema Amarelo", "temaAmarelo", function()
                        ts.colors.theme = { 255, 174, 0 }
                    end)
                    ts.elements.button("Tema Verde-Claro", "temaVerdeClaro", function()
                        ts.colors.theme = { 0, 255, 98 }
                    end)
                    ts.elements.button("Tema Roxo", "temaRoxo", function()
                        ts.colors.theme = { 144, 0, 255 }
                    end)
                    ts.elements.button("Tema Laranja", "temaLaranja", function()
                        ts.colors.theme = { 255, 60, 0 }
                    end)
                    ts.elements.button("Tema Cinza", "temaCinza", function()
                        ts.colors.theme = { 71, 70, 70 }
                    end)
                    ts.elements.groupbox("Suas informações", "suas_info", "\xef\x93\xbe", 275, 0, 270, 200,
                        "Informações do seu usuário")
                    if not user then
                        user = "Daniel"
                    end
                    ts.elements.button("Seu User: " .. user, "seuUser", function()

                    end)
                    if not discord then
                        discord = "daniel_av_"
                    end
                    ts.elements.button("Seu Discord: " .. discord, "seuDiscord", function()

                    end)
                    ts.elements.button("Seu Idioma: " .. idiomaUser, "seuIdioma", function()

                    end)
                    ts.elements.groupbox("Informações do servidor", "info_servidor", "\xef\x93\xbe", 275, 215, 270, 235,
                        "Informações do servidor")
                    ts.elements.button("Anticheat: " .. ts.server_info.ac, "anticheat", function()
                    end)
                    ts.elements.button("Grupo: " .. ts.server_info.group, "grupo", function()
                    end)
                    ts.elements.button("Players Online: " .. pOn, "playersOnline", function()
                    end)
                end
            end
        else
            ts.essentials.render_cursor(false)
        end
        Wait(0)
    end
end)
