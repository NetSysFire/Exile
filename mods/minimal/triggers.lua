--namespace
triggers = {}
triggers.player = {} -- for timeouts on effects

-- Nodes -----------------------------------------------------------------

minetest.register_node("minimal:trigger", {
        description = "Exile trigger node",
        tiles = {"climate_air.png"},
        drawtype = "airlike",
        paramtype = "light",
        sunlight_propagates = true,
	move_resistance = 1,
	pointable = false,
        walkable = false,
        buildable_to = false,
        floodable = false,
        groups = {temp_pass = 1, trigger = 1},
	use_texture_alpha = "blend",
})


if minetest.is_creative_enabled() then
   minetest.override_item('minimal:trigger', {
		drawtype = "glasslike",
		pointable = true,
		diggable = true,
		groups = {crumbly = 1, cracky = 3,
			  temp_pass = 1, trigger = 1},
        tiles = {
                "tech_paint_gp_x.png",
        },
   })
end

-- Triggers: -------------------------------------------------------------

local function reset_player(player, pname, pos, nmeta, metastring)
   local pmeta = player:get_meta()
   player:set_hp(20)
   pmeta:set_string("energy", "1000")
   pmeta:set_string("hunger", "1000")
   pmeta:set_string("thirst", "100")
end

local function hurt_player(player, pname, pos, nmeta, metastring)
   local damage = tonumber(metastring) or 2
   player:punch(player, 1.0, {full_punch_interval = 1.0,
			   damage_groups = {fleshy=damage} }, nil)
end
local function sethealth(player, pname, pos, nmeta, metastring)
   local val = tonumber(metastring) or 20
   player:set_hp(val)
end

local function setenergy(player, pname, pos, nmeta, metastring)
   local val = tonumber(metastring)
   if not val then return end
   local pmeta = player:get_meta()
   pmeta:set_string("energy", val * 10) -- energy is 1-1000, tenths of percent
end
local function sethunger(player, pname, pos, nmeta, metastring)
   local val = tonumber(metastring)
   if not val then return end
   local pmeta = player:get_meta()
   pmeta:set_string("hunger", val * 10) -- 1-1000, same as energy
end
local function setthirst(player, pname, pos, nmeta, metastring)
   local val = tonumber(metastring)
   if not val then return end
   local pmeta = player:get_meta()
   pmeta:set_string("thirst", val) -- thirst is 1-100
end

   triggers.defs = {
      ["tr_reset"] = reset_player,
      ["tr_hurt"] = hurt_player,
      ["tr_energy"] = setenergy,
      ["tr_hp"] = sethealth,
      ["tr_hunger"] = sethunger,
      ["tr_thirst"] = setthirst,
   }

function triggers.activate(pos, player, nodemeta)
   if not player or not minetest.is_player(player) then
      minetest.log("error", "Attempted to run a trigger at "..pos.x..
		   "/"..pos.y.."/"..pos.z..
		   "with no valid player!")
      return
   end
   pos = vector.round(pos)
   local posstr = vector.to_string(pos)
   local time = minetest.get_gametime()
   local pname = player:get_player_name()
   -- check if the player has already triggered this recently
   if triggers.player[pname] and triggers.player[pname][posstr] then
      if time - triggers.player[pname][posstr] < 2 then
	 return
      else -- timer has expired
	 triggers.player[pname][posstr] = nil
      end
   end
   minetest.chat_send_player(pname, "You activated a trigger at "..posstr)
   if not nodemeta then
      nodemeta = minetest.get_meta(pos)
   end
   for nm, func in pairs(triggers.defs) do
      local val = nodemeta:get_string(nm)
      if val ~= "" then
	 func(player, pname, pos, nodemeta, val)
      end
   end
   triggers.player[pname] = { [posstr] = time }
end
