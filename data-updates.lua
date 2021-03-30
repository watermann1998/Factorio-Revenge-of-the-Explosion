dir = "__Factorio Directed by Michael Bay__"

-- remove dying_explosion from all entities
for a, ent_type in pairs(data.raw) do
	for a, prototype in pairs(ent_type) do
		if prototype.max_health ~= nil then
			prototype.dying_explosion = nil
		end
	end
end