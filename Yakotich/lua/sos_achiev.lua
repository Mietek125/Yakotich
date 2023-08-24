-- [ID] = {}   (image of badges have to have name as achiev have ID)
--         = {name,desc,show, request progress, type of progress}
-- if show is false, desc will be hidden until achieve achievement
-- type of progress - 0 set, 1 add, 2 task   (is ignored, when request progress is 0)
TID_Achievements_Gain = 6028;
TID_ACH_PEZET = 6300;
TID_ACH_PEZET_DESC = 6301;
TID_ACH_HUNT = 6302;
TID_ACH_HUNT_DESC = 6303;
TID_ACH_ALEKSANDR = 6304;
TID_ACH_ALEKSANDR_DESC = 6305;
TID_ACH_FORT = 6306;
TID_ACH_FORT_DESC = 6307;
TID_ACH_SERPENT = 6308;
TID_ACH_SERPENT_DESC = 6309;
TID_ACH_SNAKE = 6310;
TID_ACH_SNAKE_DESC = 6311;
TID_ACH_RIVER = 6312;
TID_ACH_RIVER_DESC = 6313;
TID_ACH_GUNS = 6314;
TID_ACH_GUNS_DESC = 6315;
TID_ACH_KVANTOVY = 6316;
TID_ACH_KVANTOVY_DESC = 6317;
TID_ACH_NEW_WEAPONS = 6318;
TID_ACH_NEW_WEAPONS_DESC = 6319;
TID_ACH_OVSYENKO = 6320;
TID_ACH_OVSYENKO_DESC = 6321;
TID_ACH_FLAME = 6322;
TID_ACH_FLAME_DESC = 6323;
TID_ACH_JANUSZ = 6324;
TID_ACH_JANUSZ_DESC = 6325;
TID_ACH_BERGKAMP = 6326;
TID_ACH_BERGKAMP_DESC = 6327;
TID_ACH_DESTROYER = 6328;
TID_ACH_DESTROYER_DESC = 6329;
TID_ACH_TURRETS = 6330;
TID_ACH_TURRETS_DESC = 6331;
TID_ACH_SECRETS_1 = 6332;
TID_ACH_SECRETS_1_DESC = 6333;


achievements = {
    ['ACH_PEZET'] = {
    	loc(TID_ACH_PEZET), 
    	loc(TID_ACH_PEZET_DESC),
    	false,
    	0,
    	0
    },
    ['ACH_HUNT'] = {
        loc(TID_ACH_HUNT), 
        loc(TID_ACH_HUNT_DESC),
        true,
        1,
        0
    },
    ['ACH_ALEKSANDR'] = {
        loc(TID_ACH_ALEKSANDR), 
        loc(TID_ACH_ALEKSANDR_DESC),
        true,
        0,
        0
    },
    ['ACH_FORT'] = {
        loc(TID_ACH_FORT), 
        loc(TID_ACH_FORT_DESC),
        true,
        0,
        0
    },
    ['ACH_SERPENT'] = {
        loc(TID_ACH_SERPENT), 
        loc(TID_ACH_SERPENT_DESC),
        true,
        0,
        0
    },
    ['ACH_SNAKE'] = {
        loc(TID_ACH_SNAKE), 
        loc(TID_ACH_SNAKE_DESC),
        true,
        0,
        0
    },
    ['ACH_RIVER'] = {
        loc(TID_ACH_RIVER), 
        loc(TID_ACH_RIVER_DESC),
        false,
        0,
        0
    },
    ['ACH_GUNS'] = {
        loc(TID_ACH_GUNS), 
        loc(TID_ACH_GUNS_DESC),
        true,
        1,
        0
    },
    ['ACH_KVANTOVY'] = {
        loc(TID_ACH_KVANTOVY),
        loc(TID_ACH_KVANTOVY_DESC),
        true,
        19,
        2
    },
    ['ACH_NEW_WEAPONS'] = {
        loc(TID_ACH_NEW_WEAPONS), 
        loc(TID_ACH_NEW_WEAPONS_DESC),
        false,
        0,
        0
    },
    ['ACH_OVSYENKO'] = {
        loc(TID_ACH_OVSYENKO), 
        loc(TID_ACH_OVSYENKO_DESC),
        true,
        0,
        0
    },
    ['ACH_FLAME'] = {
        loc(TID_ACH_FLAME), 
        loc(TID_ACH_FLAME_DESC),
        true,
        1,
        0
    },
    ['ACH_SECRETS_1'] = {
        loc(TID_ACH_SECRETS_1), 
        loc(TID_ACH_SECRETS_1_DESC),
        true,
        1,
        0
    },
};

ACHIV_FILTER_MISSION_LIST = {
    {},
    {},
    {
        {'ACH_PEZET', 'ACH_HUNT', 'ACH_ALEKSANDR', 'ACH_FORT'},
        {'ACH_SERPENT', 'ACH_SNAKE', 'ACH_RIVER','ACH_GUNS'},
        {'ACH_KVANTOVY', 'ACH_NEW_WEAPONS','ACH_OVSYENKO', 'ACH_FLAME'}
    },
    {}
};

achievsCategory = {
    [1] = {},
    [2] = {},
    [3] = {
        'ACH_PEZET',
        'ACH_HUNT',
        'ACH_ALEKSANDR',
        'ACH_FORT',
        'ACH_SERPENT',
        'ACH_SNAKE',
        'ACH_RIVER',
        'ACH_GUNS',
        'ACH_KVANTOVY',
        'ACH_NEW_WEAPONS',
        'ACH_OVSYENKO',
        'ACH_FLAME'
    },
    [4] = {},
    [10] = {
        'ACH_SECRETS_1'
    }
};

achievsCategoryName = { 
	--[1] = loc(TID_Achievements_US), 
        --[2] = loc(TID_Achievements_Ares),
        [3] = loc(TID_Achievements_RU),
        --[4] = loc(TID_Achievements_Skir)
	--[2] = loc(TID_Achievements_AR), 
	--[3] = loc(TID_Achievements_RU), 
	--[4] = loc(TID_Achievements_Ally), 
	--[5] = loc(TID_Achievements_Leg), 
	--[6] = loc(TID_Achievements_ACamp), 
	--[7] = loc(TID_Achievements_MP), 
	--[8] = loc(TID_Achievements_Skir),
	--[9] = loc(TID_Achievements_Any),
	[10] = loc(TID_Achievements_master)
};  


-- achiv window ingame
achievWindowGain = getElementEX(
    nil,
    anchorLT,
    XYWH(-300, 250, 300, 85),
    false,
    {
        colour1 = RGB(0, 0, 0),
        border_size = 1,
        border_type = BORDER_TYPE_INNER,
        border_colour = WHITEA(200)
    }
);

achievWindowGain.Image = getElementEX(
	achievWindowGain,
    anchorNone,
    XYWH(0, 0, 85, 85),
    true,
    {
        texture = 'SGUI/Achiev/ACH_TROLL.png'
    }
);

achievWindowGain.Text = getLabelEX(
    achievWindowGain,
    anchorNone,
    XYWH(85, 4, 215, 16),
    nil,
    loc(TID_Achievements_Gain),
    {
        font_colour = WHITEA(210),
        nomouseevent = true,
        font_name = Tahoma_16,
        text_halign = ALIGN_MIDDLE,
        text_valign = ALIGN_TOP,
        scissor = true
    }
);

achievWindowGain.Name = getLabelEX(
    achievWindowGain,
    anchorNone,
    XYWH(85, 30, 215, 16),
    nil,
    '',
    {
        font_colour = WHITEA(210),
        nomouseevent = true,
        font_name = Tahoma_16B,
        text_halign = ALIGN_MIDDLE,
        text_valign = ALIGN_MIDDLE,
        scissor = true,
    }
);

achievWindowGain2 = getElementEX(
    nil,
    anchorLT,
    XYWH(-300, 336, 300, 85),
    false,
    {
        colour1 = RGB(0, 0, 0),
        border_size = 1,
        border_type = BORDER_TYPE_INNER,
        border_colour = WHITEA(200)
    }
);

achievWindowGain2.Image = getElementEX(
    achievWindowGain2,
    anchorNone,
    XYWH(0, 0, 85, 85),
    true,
    {
        texture = 'SGUI/Achiev/ACH_TROLL.png'
    }
);

achievWindowGain2.Text = getLabelEX(
    achievWindowGain2,
    anchorNone,
    XYWH(85, 4, 215, 16),
    nil,
    loc(TID_Achievements_Gain),
    {
        font_colour = WHITEA(210),
        nomouseevent = true,
        font_name = Tahoma_16,
        text_halign = ALIGN_MIDDLE,
        text_valign = ALIGN_TOP,
        scissor = true
    }
);

achievWindowGain2.Name = getLabelEX(
    achievWindowGain2,
    anchorNone,
    XYWH(85, 30, 215, 16),
    nil,
    '',
    {
        font_colour = WHITEA(210),
        nomouseevent = true,
        font_name = Tahoma_16B,
        text_halign = ALIGN_MIDDLE,
        text_valign = ALIGN_MIDDLE,
        scissor = true,
    }
);

achievWindowGain3 = getElementEX(
    nil,
    anchorLT,
    XYWH(-300, 422, 300, 85),
    false,
    {
        colour1 = RGB(0, 0, 0),
        border_size = 1,
        border_type = BORDER_TYPE_INNER,
        border_colour = WHITEA(200)
    }
);

achievWindowGain3.Image = getElementEX(
    achievWindowGain3,
    anchorNone,
    XYWH(0, 0, 85, 85),
    true,
    {
        texture = 'SGUI/Achiev/ACH_TROLL.png'
    }
);

achievWindowGain3.Text = getLabelEX(
    achievWindowGain3,
    anchorNone,
    XYWH(85, 4, 215, 16),
    nil,
    loc(TID_Achievements_Gain),
    {
        font_colour = WHITEA(210),
        nomouseevent = true,
        font_name = Tahoma_16,
        text_halign = ALIGN_MIDDLE,
        text_valign = ALIGN_TOP,
        scissor = true
    }
);

achievWindowGain3.Name = getLabelEX(
    achievWindowGain3,
    anchorNone,
    XYWH(85, 30, 215, 16),
    nil,
    '',
    {
        font_colour = WHITEA(210),
        nomouseevent = true,
        font_name = Tahoma_16B,
        text_halign = ALIGN_MIDDLE,
        text_valign = ALIGN_MIDDLE,
        scissor = true,
    }
);


function displayAchivementWindow(NAME)
	if (NAME == nil) then
		return;
	end;

    if (getX(achievWindowGain) == -300) then
    	setVisible(achievWindowGain, true);
    	setTexture(achievWindowGain.Image, 'SGUI/Achiev/' .. NAME .. '.png');
    	setText(achievWindowGain.Name, achievements[NAME][1]);
    	AddEventSlideX(achievWindowGain.ID, 0, 2, nil);
    	AddSingleUseTimer(4, 'hideAchievmentWindow(' .. achievWindowGain.ID .. ')');
    elseif (getX(achievWindowGain2) == -300) then
        setVisible(achievWindowGain2, true);
        setTexture(achievWindowGain2.Image, 'SGUI/Achiev/' .. NAME .. '.png');
        setText(achievWindowGain2.Name, achievements[NAME][1]);
        AddEventSlideX(achievWindowGain2.ID, 0, 2, nil);
        AddSingleUseTimer(4, 'hideAchievmentWindow(' .. achievWindowGain2.ID .. ')');
    else
        setVisible(achievWindowGain3, true);
        setTexture(achievWindowGain3.Image, 'SGUI/Achiev/' .. NAME .. '.png');
        setText(achievWindowGain3.Name, achievements[NAME][1]);
        AddEventSlideX(achievWindowGain3.ID, 0, 2, nil);
        AddSingleUseTimer(4, 'hideAchievmentWindow(' .. achievWindowGain3.ID .. ')');
    end;
end;

function hideAchievmentWindow(ID)
	AddEventSlideX(ID, -300, 2, 'setVisibleID(' .. ID .. ', 0);');
end;

-- events (display)
--function FROMOW_SETACHIEVEMENTEX(NAME, PROGRESS)
--    AchievProgress(NAME, PROGRESS);
--end;

--function FROMOW_SETACHIEVEMENT(NAME)
--    AchievProgress(NAME, 0);
--end;

--override old!
function showAchievment(name, hidden, cP, gP)
    local y = 0;

    for i= 1, sAchievsCount + 1 do
        if (sAchievs[i] == nil) then
            y = i;
            break;
        end;
    end;

    if y > sAchievsCount then
        sAchievsCount = y;
    end;

    if cP == nil or gP == nil then
        local text = loc(TID_Achiev_Achieved);

        if not hidden then
            text = loc(TID_Achiev_HiddenAchieved);
        end;

        sAchievs[y] = createdSAchiev(y, name, text);
        displayAchivementWindow(name);         
    else
        sAchievs[y] = createdSProgresAchiev(y, name, cP, gP);
        -- displayAchivementWindow(name);
    end;
end;

function showAchivs(mode)
    if mode > 0 then
        -- categories
        achivCategoryclButton(10, 30, loc(TID_Main_Menu_AllAchivs), 'changeCategory(' .. 0 .. ')', 0);

        -- achievsCategoryName = { [1] = loc(TID_Achievements_US), [2] = loc(TID_Achievements_AR), [3] = loc(TID_Achievements_RU), [4] = loc(TID_Achievements_Ally), [5] = loc(TID_Achievements_Leg), [6] = loc(TID_Achievements_ACamp), [7] = loc(TID_Achievements_MP), [8] = loc(TID_Achievements_Skir) ,[9] = loc
        for i = 1, table.getn(achievsCategoryName) do
            achivCategoryclButton(10, 30 + i * 40, achievsCategoryName[i], 'changeCategory(' .. i .. ')', i);
        end;

        displayAchivs(0, 0, 0);

        showMenuButton(0);
        setVisible(menu.window_achivs, true);
    else
        showMenuButton(3);
        setVisible(menu.window_achivs, false);
    end;
end;

function showIGAchievs()    
    sgui_deletechildren(dialog.achievs.scrollbox.ID);

    local rowcolour1 = interface.current.game.ui.achievsBG[1];
    local rowcolour2 = interface.current.game.ui.achievsBG[2];
    local colour = WHITEA;
    local index = 0;
    local yOffset = 0;

    for k, i in pairs(IGAchievs) do
        index = index + 1;
        
        if odd(index) then
            colour = rowcolour1;
        else
            colour = rowcolour2;
        end;
        
        createAchiev(dialog.achievs.scrollbox.ID,yOffset,i,achievements[i],colour);
        yOffset = yOffset + 110;
    end;

    if (not getVisible(gamewindow.pause)) then
        dialogUnpauseAfterClose = true;
        OW_PAUSE();
    end;

    ShowDialog(dialog.achievs);
end;