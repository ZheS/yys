init("0", 1); --以当前应用 Home 键在右边初始化

require "util"
require "init"

function setTime()
	if count == 1 then
		t1 = mTime();
	elseif count == 2 then
		t2 = mTime();
	elseif count == 3 then
		t3 = mTime();
	end
end