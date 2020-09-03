include("cl_loadout_ui.lua")

--Command listener to open the menu
concommand.Add("jcs_items", createLoadoutUI)
--Server signal listener to open the menu
usermessage.Hook("open_loadout_menu", createLoadoutUI)