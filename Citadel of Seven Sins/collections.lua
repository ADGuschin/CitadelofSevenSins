function merge(dictionary1, dictionary2)
	local merged = {}
	add_all(merged, dictionary1)
	add_all(merged, dictionary2)
	return merged
end

function add_all(destination, source)
	for key, value in pairs(source) do
		destination[key] = value
	end
end

function length(collection)
	local count = 0
	for _ in pairs(collection) do
		count = count + 1
	end
	return count
end