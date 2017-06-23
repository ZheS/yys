init("0", 1); --以当前应用 Home 键在右边初始化

require "util"
require "init"

function resetTime()
	if countTemp == 1 then
		t1 = 0;
		countTemp = 0;
	elseif countTemp == 2 then
		t2 = 0;
		countTemp = 0;
	elseif countTemp == 3 then
		t3 = 0;
		countTemp = 0;
	end
end

function addTime()
	if countTemp == 1 then
		t1 = mTime();
	elseif countTemp == 2 then
		t2 = mTime();
	elseif countTemp == 3 then
		t3 = mTime();
	end
end