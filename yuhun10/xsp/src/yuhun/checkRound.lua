init("0", 1); --以当前应用 Home 键在右边初始化

require "util"
require "init"

roundCount = 0;
local round1Tab = {round1_col, round1_pos, 95, 0, 0, width, height};
local round2Tab = {round2_col, round2_pos, 95, 0, 0, width, height};
local round3Tab = {round3_col, round3_pos, 95, 0, 0, width, height};
local signedTab = {signed_col, signed_pos, 95, 0, 0, width, height};

function checkRound()
  round1X, round1Y = myFindColor(round1Tab);
  --第一回合
  round2X, round2Y = myFindColor(round2Tab);
  --第二回合
  round3X, round3Y = myFindColor(round3Tab);
  --第三回合
	
	if round1X ~= -1 and round1Y ~= -1 then
		sysLog("进入第一回合");
		mSleep(200);
		right();
		roundCount = 1;
	elseif round2X ~= -1 and round2Y ~= -1 then
		sysLog("进入第二回合");
		mSleep(200);
		right();
		roundCount = 2;
	elseif round3X ~= -1 and round3Y ~= -1 then
		sysLog("进入第三回合");
		mSleep(200);
		right();
		roundCount = 3;
	else
		yuhun();
	end
end

function right()
	signedX = math.random(943,1002);
	signedY = math.random(159,248);
	tap(signedX,signedY);
	sysLog("点击坐标位置：x="..signedX..",y="..signedY)
	signedX, signedY = myFindColor(signedTab);
	while signedX == -1 and signedY == -1 do
		sysLog("未标记成功")
		signedX = math.random(943,1002);
		signedY = math.random(159,248);
		tap(signedX,signedY);
		sysLog("点击坐标位置：x="..signedX..",y="..signedY)
		signedX, signedY = myFindColor(signedTab);
	end
	sysLog("已标记成功")
end