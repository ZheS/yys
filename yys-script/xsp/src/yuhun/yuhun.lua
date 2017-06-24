init("0", 1); --以当前应用 Home 键在右边初始化

require "util"
require "init"
require "battle/battle"
require "yuhun/yuhunStart"

function yuhun()
	battle();
	if mainInput == "0" then
		yinyangliaotupoStart();
	elseif mainInput == "2" then
		yuhunStart()
	else
	end
end

