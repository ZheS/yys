init("0", 1); --以当前应用 Home 键在右边初始化

require "util"
require "init"
require "battle"
require "jiejietupo/yinyangliaotupoStart"
require "makeTeam"

count = 0; --记录即将攻略的阴阳寮序号
countTemp = 0; --记录正在攻略的阴阳寮序号
t1 = 0;
t2 = 0;
t3 = 0;
yinyangliaoX = -1;
yinyangliaoY = -1;
attackFlag = 1; --战斗标记，1为可点击“攻击按钮”，2为不可点击“攻击按钮”

function yinyangliaotupo()
	sysLog("count = "..count);
	sysLog("t1 = "..t1);
	sysLog("t2 = "..t2);
	sysLog("t3 = "..t3);
	local tNow = mTime();
	sysLog("tNow - t1 = "..tNow - t1);
	sysLog("tNow - t2 = "..tNow - t2);
	sysLog("tNow - t3 = "..tNow - t3);
	if (tNow - t1) > 600000 or (countTemp == 1 and isBattle == "true") then
		count = 1;
		sysLog("count = 1,从yinyangliaotupo进入yinyangliaotupoStart");
		yinyangliaotupoStart();
	elseif (tNow - t2) > 600000 or (countTemp == 2 and isBattle == "true") then
		count = 2;
		sysLog("count = 2,从yinyangliaotupo进入yinyangliaotupoStart");
		yinyangliaotupoStart();
	elseif (tNow - t3) > 600000 or (countTemp == 3 and isBattle == "true") then
		count = 3;
		sysLog("count = 3,从yinyangliaotupo进入yinyangliaotupoStart");
		yinyangliaotupoStart();
	else
		if mainInput == "0" then
			sysLog("mainInput == 0（阴阳寮突破+魂10），从yinyangliaotupo进入yuhunStart");
			yuhunStart();
		elseif mainInput == "1" then
			rewardSelect();
			sysLog("mainInput == 1（突破），从yinyangliaotupo进入yinyangliaotupo");
			yinyangliaotupo();
		else
		end
	end
end
