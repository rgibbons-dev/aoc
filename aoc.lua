--[[ Navigating this file
	outside of the "UTILS" section, there are groupings of code
	separated by year. if you'd like to go to a specific year,
	i suggest searching "YY BEGIN", where "YY" represents the
	last two digits of the year of advent of code exercises.
	if you'd like to check out a particular day, search
	"YYDDP" where again, "YY" means last two digits of the year,
	"DD" means the two digits represeting the day, and "P"
	means represents the part of the problem. Happy reading!
]]--
-- UTILS BEGIN

function split(file)
	local lines = {}
	for line in file:gmatch"[^\n]+" do
		table.insert(lines, line)
	end
	return lines
end

function parse(path, tbl)
	local file = io.open(path, "r")
	if file then
		local contents = file:read("a")
		file:close()
		if tbl then
			return split(contents)
		else
			return contents
		end
	else
		print("read failed")
	end
end

-- UTILS END

-- 23 BEGIN

function _23011()
	local contents = parse("./2023/one/input", true)
	local sum = 0
	for i, line in pairs(contents) do
		local nochars = ""
		for char in line:gmatch"." do
			local ascii = string.byte(char)
			if ascii < 58 and ascii > 47 then
				nochars = nochars .. char
			end
		end
		local first = string.sub(nochars,1,1)
		local nl = #nochars
		local second = string.sub(nochars,nl,nl)
		local calibrated = first .. second
		sum = sum + tonumber(calibrated)
	end
	print(sum)
end
-- 23 END

-- MAIN BEGIN

_23011()

-- MAIN END
