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

function l2n(s)
	-- compounds
	s = string.gsub(s, "oneight", "18")
	s = string.gsub(s, "nineight", "98")
	s = string.gsub(s, "eighthree", "83")
	s = string.gsub(s, "sevenine", "79")
	s = string.gsub(s, "eightwo", "82")
	s = string.gsub(s, "twone", "21")
	s = string.gsub(s, "fiveight", "58")
	-- singles
	s = string.gsub(s, "one", "1")
	s = string.gsub(s, "two", "2")
	s = string.gsub(s, "three", "3")
	s = string.gsub(s, "four", "4")
	s = string.gsub(s, "five", "5")
	s = string.gsub(s, "six", "6")
	s = string.gsub(s, "seven", "7")
	s = string.gsub(s, "eight", "8")
	s = string.gsub(s, "nine", "9")
	return s
end

function _23012()
	local contents = parse("./2023/one/input", false)
	local noly = l2n(contents)
	local nonl = split(noly)
	local sum = 0
	for i, line in pairs(nonl) do
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

_23012()

-- MAIN END
