uireimp = {};

function uireimp._ClearBackdrop(_F)
	_F.__backdrop = nil;
	if _F.__BLCorner ~= nil then
		_F.__BLCorner:Hide();
	end
	if _F.__TLCorner ~= nil then
		_F.__TLCorner:Hide();
	end
	if _F.__TRCorner ~= nil then
		_F.__TRCorner:Hide();
	end
	if _F.__BRCorner ~= nil then
		_F.__BRCorner:Hide();
	end
	if _F.__LBorder ~= nil then
		_F.__LBorder:Hide();
	end
	if _F.__TBorder ~= nil then
		_F.__TBorder:Hide();
	end
	if _F.__RBorder ~= nil then
		_F.__RBorder:Hide();
	end
	if _F.__BBorder ~= nil then
		_F.__BBorder:Hide();
	end
	if _F.__Center ~= nil then
		_F.__Center:Hide();
	end
end


function uireimp._SetBackdrop(_F, backdrop)
	if backdrop == nil then
		uireimp._ClearBackdrop(_F);
	else
		_F.__backdrop = backdrop;
		local edgeSize = backdrop.edgeSize or defaultEdgeSize;
		--
		local edgeFile = backdrop.edgeFile;
		if edgeFile ~= nil and edgeFile ~= "" then
			local tileEdge = backdrop.tileEdge; if tileEdge == nil then tileEdge = true; end
			local BLCorner = _F.__BLCorner or _F:CreateTexture(nil, "BORDER");
			BLCorner:Show();
			local TLCorner = _F.__TLCorner or _F:CreateTexture(nil, "BORDER");
			TLCorner:Show();
			local TRCorner = _F.__TRCorner or _F:CreateTexture(nil, "BORDER");
			TRCorner:Show();
			local BRCorner = _F.__BRCorner or _F:CreateTexture(nil, "BORDER");
			BRCorner:Show();
			local LBorder = _F.__LBorder or _F:CreateTexture(nil, "BORDER");
			LBorder:Show();
			local TBorder = _F.__TBorder or _F:CreateTexture(nil, "BORDER");
			TBorder:Show();
			local RBorder = _F.__RBorder or _F:CreateTexture(nil, "BORDER");
			RBorder:Show();
			local BBorder = _F.__BBorder or _F:CreateTexture(nil, "BORDER");
			BBorder:Show();
			BLCorner:SetSize(edgeSize, edgeSize);
			TLCorner:SetSize(edgeSize, edgeSize);
			TRCorner:SetSize(edgeSize, edgeSize);
			BRCorner:SetSize(edgeSize, edgeSize);
			LBorder:SetWidth(edgeSize);
			TBorder:SetHeight(edgeSize);
			RBorder:SetWidth(edgeSize);
			BBorder:SetHeight(edgeSize);
			BLCorner:ClearAllPoints();
			BLCorner:SetPoint("BOTTOMLEFT", 0, 0);
			TLCorner:SetPoint("TOPLEFT", 0, 0);
			TRCorner:ClearAllPoints();
			TRCorner:SetPoint("TOPRIGHT", 0, 0);
			BRCorner:SetPoint("BOTTOMRIGHT", 0, 0);
			LBorder:ClearAllPoints();
			LBorder:SetPoint("BOTTOMLEFT", BLCorner, "TOPLEFT", 0, 0);
			LBorder:SetPoint("TOPRIGHT", TLCorner, "BOTTOMRIGHT", 0, 0);
			TBorder:ClearAllPoints();
			TBorder:SetPoint("BOTTOMLEFT", TLCorner, "BOTTOMRIGHT", 0, 0);
			TBorder:SetPoint("TOPRIGHT", TRCorner, "TOPLEFT", 0, 0);
			RBorder:ClearAllPoints();
			RBorder:SetPoint("TOPLEFT", TRCorner, "BOTTOMLEFT", 0, 0);
			RBorder:SetPoint("BOTTOMRIGHT", BRCorner, "TOPRIGHT", 0, 0);
			BBorder:ClearAllPoints();
			BBorder:SetPoint("BOTTOMLEFT", BLCorner, "BOTTOMRIGHT", 0, 0);
			BBorder:SetPoint("TOPRIGHT", BRCorner, "TOPLEFT", 0, 0);
			BLCorner:SetTexture(edgeFile, tileEdge, tileEdge);
			BLCorner:SetTexCoord(97 / 128, 2 / 32, 97 / 128, 30 / 32, 111 / 128, 2 / 32, 111 / 128, 30 / 32);
			BLCorner:SetVertexColor(1.0, 1.0, 1.0, 1.0);
			TLCorner:SetTexture(edgeFile, tileEdge, tileEdge);
			TLCorner:SetTexCoord(65 / 128, 2 / 32, 65 / 128, 30 / 32, 79 / 128, 2 / 32, 79 / 128, 30 / 32);
			TLCorner:SetVertexColor(1.0, 1.0, 1.0, 1.0);
			TRCorner:SetTexture(edgeFile, tileEdge, tileEdge);
			TRCorner:SetTexCoord(81 / 128, 2 / 32, 81 / 128, 30 / 32, 95 / 128, 2 / 32, 95 / 128, 30 / 32);
			TRCorner:SetVertexColor(1.0, 1.0, 1.0, 1.0);
			BRCorner:SetTexture(edgeFile, tileEdge, tileEdge);
			BRCorner:SetTexCoord(113 / 128, 2 / 32, 113 / 128, 30 / 32, 127 / 128, 2 / 32, 127 / 128, 30 / 32);
			BRCorner:SetVertexColor(1.0, 1.0, 1.0, 1.0);
			LBorder:SetTexture(edgeFile, tileEdge, tileEdge);
			LBorder:SetTexCoord(1 / 128, 2 / 32, 1 / 128, 32 / 32, 15 / 128, 2 / 32, 15 / 128, 32 / 32);
			LBorder:SetVertexColor(1.0, 1.0, 1.0, 1.0);
			TBorder:SetTexture(edgeFile, tileEdge, tileEdge);
			TBorder:SetTexCoord(33 / 128, 32 / 32, 47 / 128, 32 / 32, 33 / 128, 2 / 32, 47 / 128, 2 / 32);
			TBorder:SetVertexColor(1.0, 1.0, 1.0, 1.0);
			RBorder:SetTexture(edgeFile, tileEdge, tileEdge);
			RBorder:SetTexCoord(17 / 128, 2 / 32, 17 / 128, 32 / 32, 31 / 128, 2 / 32, 31 / 128, 32 / 32);
			RBorder:SetVertexColor(1.0, 1.0, 1.0, 1.0);
			BBorder:SetTexture(edgeFile, tileEdge, tileEdge);
			BBorder:SetTexCoord(49 / 128, 32 / 32, 63 / 128, 32 / 32, 49 / 128, 2 / 32, 63 / 128, 2 / 32);
			BBorder:SetVertexColor(1.0, 1.0, 1.0, 1.0);
			_F.__BLCorner = BLCorner;
			_F.__TLCorner = TLCorner;
			_F.__TRCorner = TRCorner;
			_F.__BRCorner = BRCorner;
			_F.__LBorder = LBorder;
			_F.__TBorder = TBorder;
			_F.__RBorder = RBorder;
			_F.__BBorder = BBorder;
		else
			if _F.__BLCorner ~= nil then
				_F.__BLCorner:Hide();
			end
			if _F.__TLCorner ~= nil then
				_F.__TLCorner:Hide();
			end
			if _F.__TRCorner ~= nil then
				_F.__TRCorner:Hide();
			end
			if _F.__BRCorner ~= nil then
				_F.__BRCorner:Hide();
			end
			if _F.__LBorder ~= nil then
				_F.__LBorder:Hide();
			end
			if _F.__TBorder ~= nil then
				_F.__TBorder:Hide();
			end
			if _F.__RBorder ~= nil then
				_F.__RBorder:Hide();
			end
			if _F.__BBorder ~= nil then
				_F.__BBorder:Hide();
			end
		end
		--
		local bgFile = backdrop.bgFile;
		if bgFile ~= nil and bgFile ~= "" then
			local tile = backdrop.tile; if tile == nil then tile = true; end
			local Center = _F.__Center or _F:CreateTexture(nil, "BACKGROUND");
			Center:Show();
			Center:ClearAllPoints();
			local insets = backdrop.insets;
			if insets ~= nil then
				Center:SetPoint("BOTTOMLEFT", insets.left or 0, insets.bottom or 0);
				Center:SetPoint("TOPRIGHT", -insets.right or 0, -insets.top or 0);
			else
				Center:SetPoint("BOTTOMLEFT", 0, 0);
				Center:SetPoint("TOPRIGHT", 0, 0);
			end
			Center:SetTexture(bgFile, tile, tile);
			Center:SetVertexColor(1.0, 1.0, 1.0, 1.0);
			_F.__Center = Center;
		elseif _F.__Center ~= nil then
			_F.__Center:Hide();
		end
	end
end

function uireimp._SetBackdropColor(_F, r, g, b, a)
	if _F.__Center ~= nil then
		_F.__Center:SetVertexColor(r, g, b, a);
	end
end

function uireimp._SetBackdropBorderColor(_F, r, g, b, a)
	if _F.__BLCorner ~= nil then
		_F.__BLCorner:SetVertexColor(r, g, b, a);
	end
	if _F.__TLCorner ~= nil then
		_F.__TLCorner:SetVertexColor(r, g, b, a);
	end
	if _F.__TRCorner ~= nil then
		_F.__TRCorner:SetVertexColor(r, g, b, a);
	end
	if _F.__BRCorner ~= nil then
		_F.__BRCorner:SetVertexColor(r, g, b, a);
	end
	if _F.__LBorder ~= nil then
		_F.__LBorder:SetVertexColor(r, g, b, a);
	end
	if _F.__TBorder ~= nil then
		_F.__TBorder:SetVertexColor(r, g, b, a);
	end
	if _F.__RBorder ~= nil then
		_F.__RBorder:SetVertexColor(r, g, b, a);
	end
	if _F.__BBorder ~= nil then
		_F.__BBorder:SetVertexColor(r, g, b, a);
	end
end

-------------------------------------------------------------
-- Name: MTSLUI_Tools									   --
-- Description: contains all shared functions regarding UI --
-------------------------------------------------------------
MTSLUI_TOOLS = {
	-- flag to warn ppl to install tomtom before it can add waypoints
	tomtom_warned = false,

	---------------------------------------------------------------------------------------
	-- Create a generic MTSLUI_FRAME
	--
	-- @type			string		Type of the frame ("Frame", "Button", "Slider")
	-- @name			string		The name of the frame
	-- @parent			ojbect		The parentframe (can be nil)
	-- @template		string		The name of the template to follow (can be nil)
	-- @width			number		The width of the frame
	-- @height			number		The height of the frame
	-- @has_backdrop	boolean		Frame has backgroound or not (can be nil)
	--
	-- returns			Frame		Returns the created frame
	----------------------------------------------------------------------------------------
	CreateBaseFrame = function (self, type, name, parent, template, width, height, has_backdrop)
		local generic_frame = CreateFrame(type, name, parent, template)
		generic_frame:SetWidth(width)
		generic_frame:SetHeight(height)
		generic_frame:SetParent(parent)
		-- Add a background to the frame if we want it
		if has_backdrop ~= nil and has_backdrop == true then
			uireimp._SetBackdrop(generic_frame, {
				bgFile = "Interface/Tooltips/UI-Tooltip-Background",
				edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
				tile = true,
				tileSize = 16,
				edgeSize = 16,
				insets = { left = 4, right = 4, top = 4, bottom = 4 }
			});

			-- generic_frame:SetBackdrop({
			-- 	bgFile = "Interface/Tooltips/UI-Tooltip-Background",
			-- 	edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
			-- 	tile = true,
			-- 	tileSize = 16,
			-- 	edgeSize = 16,
			-- 	insets = { left = 4, right = 4, top = 4, bottom = 4 }
			-- })

			--  Black background
			uireimp._SetBackdropColor(generic_frame, 0, 0, 0, 1);
			-- generic_frame:SetBackdropColor(0,0,0,1)
		end
		-- make sure mouse is captured on our window (NO clicking through)
		generic_frame:EnableMouse(1)
		-- Disable zooming in/out
		generic_frame:EnableMouseWheel(true)
		generic_frame:Show()
		-- return the frame
		return generic_frame
	end,

	---------------------------------------------------------------------------------------
	-- Create a generic MainFrame
	--
	-- @name_parent_class	string		The name of the parent class which will use this mainframe
	-- @name				string		The name of the frame
	-- @width				number		The width of the frame
	-- @height				number		The height of the frame
	-- @swap_frames			Array		List of frames this mainframe can swap too
	--
	-- returns				Frame		Returns the created frame
	----------------------------------------------------------------------------------------
	CreateMainFrame = function(self, name_parent_class, name, width, height, swap_frames)
		local main_frame = self:CreateBaseFrame("Frame", name, nil, nil, width, height, true)
		-- make sure it is shown above other frames
		main_frame:SetFrameLevel(10)
		main_frame:SetToplevel(true)
		-- Set Position to center of screen
		main_frame:SetPoint("CENTER", nil, "CENTER", 0, 0)
		-- hide on creation
		main_frame:Hide()
		-- Dummy operation to do nothing, discarding the zooming in/out
		main_frame:SetScript("OnMouseWheel", function() end)
		-- Make the screen dragable/movable
		self:AddDragToFrame(main_frame)
		-- close/hide window on esc
		tinsert(UISpecialFrames, name)

		-- add the close button
		main_frame.close_button = self:CreateBaseFrame("Button", "", main_frame, "UIPanelButtonTemplate", 24, 24)
		main_frame.close_button:SetText("X")
		-- Set Position to top right of databaseframe
		main_frame.close_button:SetPoint("TOPRIGHT", main_frame, "TOPRIGHT", -2, -2)
		main_frame.close_button:SetScript("OnClick", function()
			_G[name_parent_class]:Hide()
		end)

		if swap_frames ~= nil and swap_frames ~= {} then
			local last_swap_button = main_frame.close_button

			-- Sort the buttons by button_text reversed order
			MTSL_TOOLS:SortArrayByPropertyReversed(swap_frames, "button_text")

			-- Add buttons for each explorer frame taht is provided to be able to swap too
			for _, v in pairs(swap_frames) do
				-- add the swap button
				local swap_button = self:CreateBaseFrame("Button", "", main_frame, "UIPanelButtonTemplate", 60, 24)
				swap_button:SetText(v.button_text)
				-- Set Position to top right of last button
				swap_button:SetPoint("TOPRIGHT", last_swap_button, "TOPLEFT", 0, 0)
				swap_button:SetScript("OnClick", function()
					_G[v.frame_name]:Show()
				end)
				last_swap_button = swap_button
			end
		end

		return main_frame
	end,

	----------------------------------------------------------------------------------------
	-- Creates a checkbox for the given frame
	--
	-- @owner			Frame		The frame for which to create the label
	-- @name			String		The name of the checkbox
	-- @margin_left		Number		The margin left position
	-- @margin_top		Number		The margin top position
	--
	-- returns		Object		The created label
	----------------------------------------------------------------------------------------
	CreateCheckbox = function(self, owner, name, margin_left, margin_top)
		local checkbox = CreateFrame("CheckButton", name, owner, "ChatConfigCheckButtonTemplate");
		checkbox:SetPoint("TOPLEFT", owner, "TOPLEFT", margin_left, margin_top)
		-- ignore the event for ticking checkbox
		checkbox:SetScript("OnClick", function() end)

		return checkbox
	end,

	----------------------------------------------------------------------------------------
	-- Creates a label for the given frame
	--
	-- @owner		Frame		The frame for which to create the label
	-- @text		String		The text to show on the label
	-- @left		Number		The left position where the label starts
	-- @top			Number		The top position where the label starts
	--
	-- returns		Object		The created label
	----------------------------------------------------------------------------------------
	CreateLabel = function (self, owner, text, left, top, font_size, position)
		local new_label = owner:CreateFontString()
		new_label:SetFont(MTSLUI_FONTS.FONTS[font_size]:GetFont())

		new_label:SetPoint(position, left, top)
		if text ~= nil or text ~= "" then
			new_label:SetText(MTSLUI_FONTS.COLORS.TEXT.TITLE .. text)
		end
		return new_label
	end,

	---------------------------------------------------------------------------------------
	-- Create a button with icon and text
	--
	-- @event_class		Frame		The frame for which to create the label
	-- @name			String		The name of the button
	-- @nr_in_list		Number		The number of the button in a list of buttons
	-- @btn_width		Number		The width of the button
	-- @btn_height		Number		The height of the button
	--
	-- returns		Object		The created button
	----------------------------------------------------------------------------------------------------------
	CreateIconTextButton = function(self, event_class, name, nr_in_list, btn_width, btn_height)
		local TEXTURES_BUTTON = {
			SELECTED = "Interface\\Buttons\\UI-Listbox-Highlight",
			HIGHLIGHTED = "Interface\\Tooltips\\UI-Tooltip-Background",
			NOT_SELECTED = "",
		}

		local b = CreateFrame("Button", name, event_class.ui_frame)
		-- assume no scrollbar
		b:SetSize(btn_width, btn_height)
		-- Custom textures for the button
		b:SetPushedTexture(TEXTURES_BUTTON.SELECTED)
		b:SetHighlightTexture(TEXTURES_BUTTON.HIGHLIGHTED)
		b:SetNormalTexture(TEXTURES_BUTTON.NOT_SELECTED)

		-- Add the icon to left with some margin
		local t = b:CreateTexture("btn_icon", "OVERLAY")
		t:SetTexture("Interface\\Icons\\trade_engraving")
		t:SetWidth(16)
		t:SetHeight(16)
		t:SetPoint("LEFT", 3, 0)
		b.texture = t

		b:SetScript("OnClick", function (btn)
			event_class:HandleSelectedListItem(nr_in_list)
		end)

		b.Select = function(btn)
			btn.is_selected = 1
			btn:SetNormalTexture(TEXTURES_BUTTON.SELECTED)
		end

		b.Deselect = function(btn)
			btn.is_selected = 0
			btn:SetNormalTexture(TEXTURES_BUTTON.NOT_SELECTED)
		end

		b.IsSelected = function(btn)
			return btn.is_selected == 1
		end

		-- Add text to button, left of the icon with some margin
		b.text = self:CreateLabel(b, "-", 20, 1, "LABEL", "LEFT")

		return b
	end,

	-----------------------------------------------------------------------------------------
	-- Create a generic ScrollFrame
	--
	-- @parent_class		ojbect		The parentclass
	-- @parent_frame		ojbect		The parentframe
	-- @width				number		The width of the frame
	-- @height				number		The height of the frame
	-- @has_backdrop		boolean		Frame has backgroound or not (can be nil)
	-- @slider_steps		number		The amount of steps the slider has
	-- @height_slider_step	number		The height of 1 step in the slider
	--
	-- returns				Frame		Returns the created frame
	----------------------------------------------------------------------------------------
	CreateScrollFrame = function (self, parent_class, parent_frame, width, height, has_backdrop, height_slider_step)
		local scroll_frame = MTSLUI_TOOLS:CreateBaseFrame("Frame", "", parent_frame, nil, width, height, has_backdrop)
		-- add the vertical slider on the right to the frame
		scroll_frame.slider = MTSL_TOOLS:CopyObject(MTSLUI_VERTICAL_SLIDER)
		scroll_frame.slider:Initialise(parent_class, scroll_frame, height, height_slider_step)
		-- Make the frame scrollable
		scroll_frame:EnableMouseWheel(true)
		-- add mousewheel event to scrollframe
		scroll_frame:SetScript("OnMouseWheel", function(event_frame, delta)
			-- Only scroll if delta is + or -
			if delta ~= nil then
				-- scroll up on positive delta
				if delta > 0 then
					event_frame.slider:ScrollUp()
				else
					event_frame.slider:ScrollDown()
				end
			end
		end)

		-- return the frame
		return scroll_frame
	end,

	----------------------------------------------------------------------------------------
	-- Prints info about addon to chat
	----------------------------------------------------------------------------------------
	PrintAboutMessage = function (self)
		print(MTSLUI_FONTS.COLORS.TEXT.TITLE .. MTSLUI_ADDON.NAME)
		print(MTSLUI_FONTS.COLORS.TEXT.TITLE .. MTSLUI_FONTS.TAB .. self:GetLocalisedLabel("author") .. MTSLUI_FONTS.COLORS.TEXT.NORMAL .. MTSLUI_ADDON.AUTHOR)
		print(MTSLUI_FONTS.COLORS.TEXT.TITLE .. MTSLUI_FONTS.TAB .. self:GetLocalisedLabel("version") .. MTSLUI_FONTS.COLORS.TEXT.NORMAL .. MTSLUI_ADDON.VERSION)
	end,

	----------------------------------------------------------------------------------------
	-- Prints help about addon to chat
	----------------------------------------------------------------------------------------
	PrintHelpMessage = function (self)
		self:PrintAboutMessage()
		local slashtext = "/mtsl"
		print(slashtext  .. "                     Opens the character explorer frame")
		print(slashtext .. " char")
		print(slashtext .. " config         Opens the configuration/options menu")
		print(slashtext .. " options")
		print(slashtext .. " about          Print information about this addon")
		print(slashtext .. " help            Print how to use this addon")
		print(slashtext .. " acc              Opens the account explorer frame")
		print(slashtext .. " account")
		print(slashtext .. " db               Opens the database explorer window")
		print(slashtext .. " database")
		print(slashtext .. " npc             Opens the NPC explorer window")
	end,

	------------------------------------------------------------------------------------------------
	-- Sets the locale used ingame
	--
	-- returns				Boolean		Flag indicating if our language is supported
	------------------------------------------------------------------------------------------------
	SetAddonLocale = function(self)
		local locale = GetLocale()
		if MTSLUI_LOCALES[locale] == nil then
			print(MTSLUI_FONTS.COLORS.TEXT.ERROR .. "MTSL: Your locale " .. locale .. " is not supported!")
			return false
		end
		MTSLUI_CURRENT_LANGUAGE = MTSLUI_LOCALES[locale]
		return true
	end,

	------------------------------------------------------------------------------------------------
	-- Creates a TomTom waypoint if possible
	--
	-- @waypointinfo		Array			The waypointinfo containing the zonename, coords & name npc/object
	-- @item_name			String			The name of the item
	------------------------------------------------------------------------------------------------
	CreateWayPoint = function(self, waypointinfo, item_name)
		-- check if we have coords, if not they are in a dungeon so cant set waypoint then
		if waypointinfo.x and waypointinfo.x ~= "" and waypointinfo.y and waypointinfo.y ~= "" then
			-- only add waypoint is tom tom is installed
			if IsAddOnLoaded("TomTom") and SlashCmdList["TOMTOM_WAY"] ~= nil then
				SlashCmdList["TOMTOM_WAY"](waypointinfo.zone .. " " .. waypointinfo.x .. " " .. waypointinfo.y .. " " .. waypointinfo.name .. " (" .. item_name .. ")")
			elseif not self.tomtom_warned then
				print(MTSLUI_FONTS.COLORS.TEXT.WARNING .. "MTSL: " .. self:GetLocalisedLabel("tomtom needed"))
				self.tomtom_warned = true
			end
		end
	end,

	-----------------------------------------------------------------------------------------
	-- Create a generic Drop down
	--
	-- @frame_owner			Ojbect		The parentframe
	-- @point_owner			Ojbect		The frame owner when setting point
	-- @point_anchor		String		The place where the anchor is set when setting point
	-- @margin_left			Number		The margin from left
	-- @margin_top			Number		The margin from top
	-- @initialiser			Function	The function that initialises/populates the drop down
	-- @with_dd				Number		The width of the drop down
	--
	-- returns				Frame		Returns the created frame
	----------------------------------------------------------------------------------------
	CreateDropDown = function (self, name, frame_owner, point_owner, point_anchor, margin_left, margin_top, initialiser, width_dd)
		local drop_down = CreateFrame("Frame", name, frame_owner, "UIDropDownMenuTemplate")
		drop_down:SetPoint("TOPLEFT", point_owner, point_anchor, margin_left, margin_top)
		drop_down.initialize = initialiser
		UIDropDownMenu_SetWidth(drop_down, width_dd)
		return drop_down
	end,

	------------------------------------------------------------------------------------------------
	-- Fill A drop down list
	--
	-- @values              Array           List containing values to add
	-- @change_handler      Function        Function that handles the change of value in the DDL
	-- @change_frame_name	String			The name of the frame to handle the change event
	------------------------------------------------------------------------------------------------
	FillDropDown = function(self, values, change_handler, change_frame_name)
		local info = UIDropDownMenu_CreateInfo()
		-- add all values
		for _, v in pairs(values) do
			-- already localised in array so no need to index
			info.text = v.name
			-- Dont allow it to be checked/ticked
			info.notCheckable = true
			-- top level has no submenu
			info.func = function()
				if change_frame_name and _G[change_frame_name] then
					change_handler(_G[change_frame_name], v.id, v.name)
				else
					change_handler(v.id, v.name)
				end
				CloseDropDownMenus()
			end
			info.hasArrow = false
			UIDropDownMenu_AddButton(info)
		end
	end,

	------------------------------------------------------------------------------------------------
	-- Fill A drop down list
	--
	-- @values              Array           List containing values to add
	-- @change_handler      Function        Function that handles the change of value in the DDL
	-- @not_checkable		Boolean			Flag indiciting is the item in dropdown is not checkable or it is
	-- @change_frame_name	String			The name of the frame to handle the change event
	-- @ddl_id_name			String			The base tag for each dropdownbutton of the dropdownlist
	------------------------------------------------------------------------------------------------
	FillDropDownCheckable = function(self, values, change_handler, change_frame_name)
		local info = UIDropDownMenu_CreateInfo()
		-- add all values
		for _, v in pairs(values) do
			-- already localised in array so no need to index
			info.text = v.name
			info.checked = v.checked
			-- top level has no submenu
			info.func = function()
				if change_frame_name and _G[change_frame_name] then
					change_handler(_G[change_frame_name], v.id, v.name)
				else
					change_handler(v.id, v.name)
				end
			end
			-- keep it open so we can (un)check multiple items at once
			info.keepShownOnClick = true
			info.hasArrow = false
			UIDropDownMenu_AddButton(info)
		end
	end,

	------------------------------------------------------------------------------------------------
	-- Adds a generic drag to a frame
	------------------------------------------------------------------------------------------------
	AddDragToFrame = function(self, frame_to_drag)
		frame_to_drag:SetMovable(true)
		frame_to_drag:RegisterForDrag("LeftButton")
		frame_to_drag:SetScript("OnDragStart", function(frame) frame:StartMoving() end)
		frame_to_drag:SetScript("OnDragStop", function(frame) frame:StopMovingOrSizing() end)
	end,

	------------------------------------------------------------------------------------------------
	-- Returns the text for a label in the current locale/language
	------------------------------------------------------------------------------------------------
	GetLocalisedLabel = function(self, label)
		if MTSLUI_CURRENT_LANGUAGE == nil then MTSLUI_CURRENT_LANGUAGE = "English" end
		return MTSLUI_LOCALES_LABELS[label][MTSLUI_CURRENT_LANGUAGE]
	end,

	------------------------------------------------------------------------------------------------
	-- Returns the text for a label in the current locale/language
	------------------------------------------------------------------------------------------------
	GetLocalisedLabelSpecialAction = function(self, label)
		if MTSLUI_CURRENT_LANGUAGE == nil then MTSLUI_CURRENT_LANGUAGE = "English" end
		return MTSL_DATA["special_actions"][label]["name"][MTSLUI_CURRENT_LANGUAGE]
	end,

	------------------------------------------------------------------------------------------------
	-- Returns the name of a data object in the current locale/language
	------------------------------------------------------------------------------------------------
	GetLocalisedData = function(self, data)
		return data["name"][MTSLUI_CURRENT_LANGUAGE]
	end,
}