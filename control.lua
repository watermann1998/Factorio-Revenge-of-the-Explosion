local explosions = {}
explosions[1] = "big-explosion"
explosions[2] = "massive-explosion"
explosions[3] = "medium-explosion"

script.on_event(defines.events.on_entity_died, function(event)
	spawn_explosion(event.entity)
end)

function spawn_explosion(armageddon)
	local shia_labeouf = math.random(3)
	armageddon.surface.create_entity{name = explosions[shia_labeouf], position = armageddon.position, force = game.forces.neutral}
end