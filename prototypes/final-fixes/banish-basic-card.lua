for _, technology in pairs(data.raw.technology) do
	if technology.unit then
		local ingredients = technology.unit.ingredients
		for i = #ingredients, 1, -1 do
			if ingredients[i][1] == "kr-basic-tech-card" then
				table.remove(ingredients, i)
				goto next
			end
		end
	end
	::next::
end

data.raw.recipe["kr-basic-tech-card"].hidden = true
data.raw.recipe["kr-basic-tech-card"].hidden_in_factoriopedia = true

data.raw.tool["kr-basic-tech-card"].hidden = true
data.raw.tool["kr-basic-tech-card"].hidden_in_factoriopedia = true
