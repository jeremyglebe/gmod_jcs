function jcs_items()
    local primary = ""
    local secondary = ""
    local special = ""
    --Draw the initial frame for the menu
    local Frame = vgui.Create("DFrame")
    Frame:SetTitle("Player Loadout & Customization")
    --Size proportional to the screen--
    Frame:SetSize((1600 / 1920) * ScrW(), (900 / 1080) * ScrH())
    Frame:Center()
    Frame:MakePopup()

    -- 'function Frame:Paint( w, h )' works too
    Frame.Paint = function(self, w, h)
        --Draw a purple box instead of the frame
        draw.RoundedBox(5, 0, 0, w, h, Color(160, 120, 255, 150))
    end

    --Primary gun model display--
    local prim_model = vgui.Create("DModelPanel", Frame)
    prim_model:SetSize((200 / 1920) * ScrW(), (200 / 1080) * ScrH())
    prim_model:SetPos((600 / 1920) * ScrW(), (25 / 1080) * ScrH())
    --Primary gun name label--
    local prim_label = vgui.Create("DLabel", Frame)
    prim_label:SetPos((600 / 1920) * ScrW(), (225 / 1080) * ScrH())
    prim_label:SetSize((200 / 1920) * ScrW(), (25 / 1080) * ScrH())
    prim_label:SetText("Primary Weapon")
    --Primary gun selection menu--
    local PrimaryMenu = vgui.Create("DComboBox", Frame)
    PrimaryMenu:SetSize((200 / 1920) * ScrW(), (20 / 1080) * ScrH())
    PrimaryMenu:SetPos((600 / 1920) * ScrW(), (250 / 1080) * ScrH())

    --Add all primaries
    for k, v in pairs(pri_list) do
        PrimaryMenu:AddChoice(v)
    end

    PrimaryMenu.OnSelect = function(panel, index, value)
        primary = lookup[value]

        --If we can access the weapons table, show its model & Print Name--
        if weapons.Get(primary) then
            prim_model:SetModel(weapons.Get(primary).WorldModel)
        else --Otherwise, try checking the manual tables
            if manual_models[primary] then
                prim_model:SetModel(manual_models[primary])
            end
        end
    end

    --Secondary gun model display--
    local sec_model = vgui.Create("DModelPanel", Frame)
    sec_model:SetSize((200 / 1920) * ScrW(), (200 / 1080) * ScrH())
    sec_model:SetPos((825 / 1920) * ScrW(), (25 / 1080) * ScrH())
    --Secondary gun name label--
    local sec_label = vgui.Create("DLabel", Frame)
    sec_label:SetPos((825 / 1920) * ScrW(), (225 / 1080) * ScrH())
    sec_label:SetSize((200 / 1920) * ScrW(), (25 / 1080) * ScrH())
    sec_label:SetText("Secondary Weapon")
    --Secondary gun selection menu--
    local SecondaryMenu = vgui.Create("DComboBox", Frame)
    SecondaryMenu:SetSize((200 / 1920) * ScrW(), (20 / 1080) * ScrH())
    SecondaryMenu:SetPos((825 / 1920) * ScrW(), (250 / 1080) * ScrH())

    --Add all secondaries
    for k, v in pairs(sec_list) do
        SecondaryMenu:AddChoice(v)
    end

    SecondaryMenu.OnSelect = function(panel, index, value)
        secondary = lookup[value]

        --If we can access the weapons table, show its model & Print Name--
        if weapons.Get(secondary) then
            sec_model:SetModel(weapons.Get(secondary).WorldModel)
        else --Otherwise, try checking the manual tables
            if manual_models[secondary] then
                sec_model:SetModel(manual_models[secondary])
            end
        end
    end

    --Special gun model display--
    local spe_model = vgui.Create("DModelPanel", Frame)
    spe_model:SetSize((200 / 1920) * ScrW(), (200 / 1080) * ScrH())
    spe_model:SetPos((825 / 1920) * ScrW(), (300 / 1080) * ScrH())
    --Special gun name label--
    local spe_label = vgui.Create("DLabel", Frame)
    spe_label:SetPos((825 / 1920) * ScrW(), (500 / 1080) * ScrH())
    spe_label:SetSize((200 / 1920) * ScrW(), (25 / 1080) * ScrH())
    spe_label:SetText("Special Weapon")
    --Special gun selection menu--
    local SpecialMenu = vgui.Create("DComboBox", Frame)
    SpecialMenu:SetSize((200 / 1920) * ScrW(), (20 / 1080) * ScrH())
    SpecialMenu:SetPos((825 / 1920) * ScrW(), (525 / 1080) * ScrH())

    --Add all secondaries
    for k, v in pairs(spe_list) do
        SpecialMenu:AddChoice(v)
    end

    SpecialMenu.OnSelect = function(panel, index, value)
        special = lookup[value]

        --If we can access the weapons table, show its model--
        if weapons.Get(special) then
            spe_model:SetModel(weapons.Get(special).WorldModel)
        else --Otherwise, try checking the manual tables
            if manual_models[special] then
                spe_model:SetModel(manual_models[special])
            end
        end
    end

    --Submit Button--
    local Button = vgui.Create("DButton", Frame)
    Button:SetText("Submit")
    Button:SetTextColor(Color(255, 255, 255))
    Button:SetPos((1500 / 1920) * ScrW(), (850 / 1080) * ScrH())
    Button:SetSize((70 / 1920) * ScrW(), (30 / 1080) * ScrH())

    Button.Paint = function(self, w, h)
        draw.RoundedBox(0, 0, 0, w, h, Color(200, 120, 255, 200))
    end

    Button.DoClick = function()
        RunConsoleCommand("jcs_set_items", primary, secondary, special)
        Frame:Close()
    end
end

concommand.Add("jcs_items", jcs_items)