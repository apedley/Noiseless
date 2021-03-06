local name, noiseless = ...
local pairs = pairs
local MuteSoundFile = MuteSoundFile

noiseless.presets = {
    ["LFGPing"] = { -- LFG people requesting to join your group ping
        1067667, -- ui_groupfinderreceiveapplication_01.ogg
    },
    ["BFABodyguards"] = { -- Mutes all voice lines by the new BFA Nazjatar followers
        -- Inowari
        2965602, 2965603, 2965604, 2965605, 2965606, 2965607, 2965608, 2965609, 2965610, 2965611, 2965612, 2965613, 2965614, 2965615, 2965616, 2965617, 2965618, 2965619, 2965620, 2965621, 2965622, 2965623,
        2965624, 2965625, 2965626, 2965627, 2965628, 2965629, 2965630, 2965631, 2965632, 2965633, 2965634, 2965635, 2965636, 2965637, 2965638, 2965639, 2965640, 2965641, 2965642, 2965643, 2965644, 2966032,
        2966033, 2966034, 2966035, 2966036, 2966037, 2966038, 2966039, 2966040, 2966068, 2966069, 2966070, 2966071, 2966072, 2966073, 2966074, 2966075, 2966076, 2966077, 2966149, 2966150, 2966151,
        -- Akana
        2965311, 2965312, 2965313, 2965314, 2965315, 2965316, 2965317, 2965318, 2965319, 2965320, 2965321, 2965322, 2965323, 2965324, 2965325, 2965326, 2965327, 2965328, 2965329, 2965330, 2965331, 2965332,
        2965333, 2965334, 2965335, 2965336, 2965337, 2965338, 2965339, 2965340, 2965341, 2965342, 2965343, 2965344, 2965345, 2965346, 2965347, 2965348, 2965349, 2965350, 2965351, 2965352, 2965353, 2965354, 
        2965355, 2965356, 2965357, 2965358, 2965359, 2965360, 2965461, 2965462, 2966102, 2966103, 2966104, 2966105, 2966106, 2966107, 2966108, 2966109, 2966110, 2966111, 2966112, 2966113, 2966140, 2966141, 
        2966142,
        -- Ori
        2993398, 2993399, 2993400, 2993401, 2993402, 2993403, 2993404, 2993405, 2993406, 2993407, 2993408, 2993409, 2993410, 2993411, 2993412, 2993413, 2993414, 2993415, 2993416, 2993417, 2993418, 2993419, 
        2993420, 2993421, 2993422, 2993423, 2993424, 2993425, 2993426, 2993427, 2993428, 2993429, 2993430, 2993431, 2993432, 2993433, 2993434, 2993435, 2993436, 2993437, 2993438, 2993439, 2993440, 2993441, 
        2993442, 2993443, 2993444, 2993445, 2993446, 2993447, 2993448, 2993449, 2993450, 2993451, 2993452, 2993453, 2993454, 2993455, 2993456, 2993457, 2993458, 2993459, 2993460,
        -- Vim
        2967114, 2967115, 2967116, 2967117, 2967118, 2967119, 2967120, 2967121, 2967122, 2967123, 2967124, 2967125, 2967126, 2967127, 2967128, 2967129, 2967130, 2967131, 2967132, 2967133, 2967134, 2967135,
        2967136, 2967137, 2967138, 2967139, 2967140, 2967141, 2967142, 2967143, 2967144, 2967145, 2967146, 2967147, 2967148, 2967149, 2967150, 2967151, 2967152, 2967153, 2967154, 2967155, 2967156, 2967157,
        2967158, 2967159, 2967160, 2967161, 2967162, 2967163, 2967164, 2967165, 2967166, 2967167, 2967168, 2967169, 2967170, 2967171, 2967172, 2967173, 2967174, 2967175, 2967176, 2967177, 2967178, 2967179,
        2967180, 2967181, 2967182, 2967183, 2967184, 2967738, 2967741, 2967742,
        -- Nerin
        2995499, 2995500, 2995501, 2995502, 2995503, 2995624, 2995625, 2995626, 2995627, 2995628, 2995629, 2995630, 2995631, 2995632, 2995633, 2995741, 2995742, 2995743, 2995744, 2995745, 2995746, 2995747,
        2995748, 2995749, 2995750, 2995751, 2995752, 2995753, 2995754, 2995755, 2995756, 2995757, 2995758, 2995759, 2995760, 2995761, 2995762, 2995763, 2995764, 2995765, 2995766, 2996879, 2996880, 2996881,
        2996882, 2996883, 2997024, 2997025, 2997026, 2997027, 2997028, 2997029, 2997030, 2997031, 2997032, 2997033, 2997034, 2997149, 2997150, 2997151, 2997152, 2997153, 2997154, 2997295, 2997296, 2997297,
        2997298, 2997307, 2997308, 2997309, 2997310, 2997311, 2997312, 2997313, 2997314, 2997315, 2997316, 2997353, 2997354, 2997355, 2997356, 2997357, 2997358, 2997359, 2997360, 2997388, 2997389, 2997390,
        2997391, 2997392, 2997439, 2997440, 2997441, 3007282,
        -- Poen
        2981589, 2981590, 2981591, 2981592, 2981593, 2981594, 2981595, 2981596, 2981597, 2981598, 2981599, 2981600, 2981601, 2981602, 2981603, 2981604, 2981605, 2981606, 2981607, 2981608, 2981609, 2981610,
        2981611, 2981612, 2981613, 2981614, 2981615, 2981616, 2981617, 2981618, 2981619, 2981620, 2981621, 2981622, 2981623, 2981624, 2981625, 2981626, 2981627, 2981628, 2981629, 2981630, 2981631, 2981632,
        2981633, 2981634, 2981635, 2981636, 2981637, 2981638, 2981639, 2981640, 2981641, 2981642, 2981643, 2981644, 2981645, 2981646, 2981647, 2981648, 2981649, 2981650, 2981651, 2981652, 2981653, 2981654,
        2981655, 2981656, 2981657, 2981658, 2981659, 2981803, 2981804, 2981805,
    },
    ["MooseMountLanding"] = { -- Landing sound after jumping or hitting the ground while flying
        1023697, -- mon_footstep_quadraped_hooved_medium_dirt_01.ogg
        1023698, -- mon_footstep_quadraped_hooved_medium_dirt_02.ogg
        1023699, -- mon_footstep_quadraped_hooved_medium_dirt_03.ogg
        1023700, -- mon_footstep_quadraped_hooved_medium_dirt_04.ogg
        1023701, -- mon_footstep_quadraped_hooved_medium_dirt_05.ogg
        1023702, -- mon_footstep_quadraped_hooved_medium_dirt_06.ogg
        1023703, -- mon_footstep_quadraped_hooved_medium_dirt_07.ogg
        1023704, -- mon_footstep_quadraped_hooved_medium_dirt_08.ogg
        1023705, -- mon_footstep_quadraped_hooved_medium_dirt_09.ogg
    },
    ["PhoenixMountWingFlap"] = {
        558168, -- phoenixwingflap1.ogg
        558170, -- phoenixwingflap3.ogg
        558173, -- phoenixwingflap2.ogg
        558174, -- phoenixwingflap4.ogg
    },
    ["MechMountWingFlap"] = {
        3014825, -- fx_mechanical_wingflaps_01.ogg
        3014826, -- fx_mechanical_wingflaps_02.ogg
        3014827, -- fx_mechanical_wingflaps_03.ogg
        3014828, -- fx_mechanical_wingflaps_04.ogg
        3014829, -- fx_mechanical_wingflaps_05.ogg
        3014830, -- fx_mechanical_wingflaps_06.ogg
        3014831, -- fx_mechanical_wingflaps_07.ogg
        3014832, -- fx_mechanical_wingflaps_08.ogg
        3014833, -- fx_mechanical_wingflaps_09.ogg
    }
}

function noiseless:UpdateFiles(value, name)
    local presets = noiseless.presets
    if value and name then
        for i=1, #presets[name] do
            local fileID = presets[name][i]
            MuteSoundFile(fileID)
        end
    elseif value ~= true and name then
        for i=1, #presets[name] do
            local fileID = presets[name][i]
            UnmuteSoundFile(fileID)
        end
    else
        for i, table in pairs(presets) do
            if noiseless.db.mutedPresets[i] then
                for i=1, #table do
                    local fileID = table[i]
                    MuteSoundFile(fileID)
                end
            end
        end
    end
end

noiseless.panel = CreateFrame("Frame", "NoiselessPanel", UIParent)
noiseless.panel:RegisterEvent("ADDON_LOADED")
noiseless.panel:RegisterEvent("PLAYER_ENTERING_WORLD")
noiseless.panel:SetScript("OnEvent", function(f, event, addon)
    if event == "ADDON_LOADED" then
        if addon ~= name then return end
        f:UnregisterEvent(event)
        if type(NoiselessDB) ~= "table" then
            NoiselessDB = {}
        end
        noiseless.db = NoiselessDB
        if not noiseless.db.mutedPresets then noiseless.db.mutedPresets = {} end
    elseif event == "PLAYER_ENTERING_WORLD" then
        noiseless:UpdateFiles()
    end
end)