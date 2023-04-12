
local function do_sprint(player)
  local ctrl = player:get_player_control()
  local key_press = ctrl.aux1
  

  if not key_press then
    player:set_physics_override({
            speed = 1, 
        })
  elseif key_press then
    player:set_physics_override({
            speed = 6, 
        })
  end

end


minetest.register_globalstep(function(dtime)
  
   for _, player in ipairs(minetest.get_connected_players()) do
     do_sprint(player)
   end
    
 
end)






