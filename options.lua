local name, noiseless = ...
local frame, presets, L = noiseless.panel, noiseless.presets, noiseless.L

frame.name = "Noiseless"
frame:Hide()
frame:SetScript("OnShow", function(frame)
    local function updateTable(self, value, name)
        if value == true then
            noiseless.db.mutedPresets[name] = true
        else
            noiseless.db.mutedPresets[name] = false
        end
        noiseless:UpdateFiles(value, name)
    end

    local function createCheckBox(label, description, onClick)
        local check = CreateFrame("CheckButton", "NoiselessCheck"..label, frame, "InterfaceOptionsCheckButtonTemplate")
        check:SetScript("OnClick", function(self)
            local tick = self:GetChecked()
            onClick(self, tick and true or false)
            if tick then
                PlaySound(856) -- SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON
            else
                PlaySound(857) -- SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_OFF
            end
        end)
        check.label = _G[check:GetName().."Text"]
        check.label:SetText(label)
        check.tooltipText = label
        -- check.tooltipRequirement = description
        return check
    end

    local title = frame:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
    title:SetPoint("TOPLEFT", 16, -16)
    title:SetText(name)

    local title2 = frame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    title2:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 2, -22)
    title2:SetText(L.Title2)

    local LFGPing = createCheckBox(L.LFGPing, nil, function(self, value) updateTable(self, value, "LFGPing") end)
    LFGPing:SetChecked(noiseless.db.mutedPresets["LFGPing"])
    LFGPing:SetPoint("TOPLEFT", title2, "BOTTOMLEFT", -2, -16)

    local BFABodyguards = createCheckBox(L.BFABodyguards, nil, function(self, value) updateTable(self, value, "BFABodyguards") end)
    BFABodyguards:SetChecked(noiseless.db.mutedPresets["BFABodyguards"])
    BFABodyguards:SetPoint("TOPLEFT", LFGPing, "BOTTOMLEFT", 0, -8)

    local MooseMountLanding = createCheckBox(L.MooseMountLanding, nil, function(self, value) updateTable(self, value, "MooseMountLanding") end)
    MooseMountLanding:SetChecked(noiseless.db.mutedPresets["MooseMountLanding"])
    MooseMountLanding:SetPoint("TOPLEFT", BFABodyguards, "BOTTOMLEFT", 0, -8)

    local PhoenixMountWingFlap = createCheckBox(L.PhoenixMountWingFlap, nil, function(self, value) updateTable(self, value, "PhoenixMountWingFlap") end)
    PhoenixMountWingFlap:SetChecked(noiseless.db.mutedPresets["PhoenixMountWingFlap"])
    PhoenixMountWingFlap:SetPoint("TOPLEFT", MooseMountLanding, "BOTTOMLEFT", 0, -8)

    local MechMountWingFlap = createCheckBox(L.MechMountWingFlap, nil, function(self, value) updateTable(self, value, "MechMountWingFlap") end)
    MechMountWingFlap:SetChecked(noiseless.db.mutedPresets["MechMountWingFlap"])
    MechMountWingFlap:SetPoint("TOPLEFT", PhoenixMountWingFlap, "BOTTOMLEFT", 0, -8)

    frame:SetScript("OnShow", nil)
end)

InterfaceOptions_AddCategory(frame)