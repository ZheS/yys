init("0", 1); --以当前应用 Home 键在右边初始化

require "util"
require "init"

function resetCount()
	count = 0;
	countTemp = 0;
end

function addCount()
	if count == 1 then
		count = 2;
	elseif count == 2 then
		count = 3;
	elseif count == 3 then
		count = 0;
	else
	end
end