init("0", 1); --以当前应用 Home 键在右边初始化

require "util"
require "init"
require "battle/battle"
require "yuhun/yuhunStart"

function yuhun()
	if mainInput == "0" then
		sysLog("mainInput == 0,从yuhun进入yinyangliaotupoStart");
		yinyangliaotupoStart();
	elseif mainInput == "2" then
		sysLog("mainInput == 2,从yuhun进入yuhunStart");
		yuhunStart()
	else
	end
end

