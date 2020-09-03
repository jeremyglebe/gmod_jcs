--CONSOLE COMMAND TO CHOOSE LOADOUT--
function jcs_set_items(ply, cmd, args)
    --If the player is actually valid--
    if ply:IsValid() then
        --If the first argument is there, and a primary weapon--
        if args[1] and pri_list[args[1]] then
            ply.itemlist[1] = args[1]
        end

        --If the second argument is there, and a secondary weapon--
        if args[2] and sec_list[args[2]] then
            ply.itemlist[2] = args[2]
        end

        --If the third argument is there, and a special weapon--
        if args[3] and spe_list[args[3]] then
            ply.itemlist[3] = args[3]
        end
        --This loop adds all arguments to loadout--
        --for k,v in pairs(args) do
        --	ply.itemlist[k] = v
        --end	
    end
end

concommand.Add("jcs_set_items", jcs_set_items)
--CONSOLE COMMAND TO CHOOSE LOADOUT--