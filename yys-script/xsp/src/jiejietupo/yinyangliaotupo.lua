init("0", 1); --以当前应用 Home 键在右边初始化

require "util"
require "init"
require "battle"
require "jiejietupo/yinyangliaotupoStart"
require "makeTeam"

count = 0;
t1 = 0;
t2 = 0;
t3 = 0;
yinyangliaoX = -1;
yinyangliaoY = -1;
attackFlag = 1;

function yinyangliaotupo()
	local readyTab = {ready_col, ready_pos, 95, 0, 0, width, height};
  readyX, readyY = myFindColor(readyTab);
  --待准备界面的鼓
	local battleWinTab = {battleWin_col, battleWin_pos, 95, 0, 0, width, height};
  battleWinX, battleWinY = myFindColor(battleWinTab);
  --战斗胜利
  local battleLoseTab = {battleLose_col, battleLose_pos, 95, 0, 0, width, height};
  battleLoseX, battleLoseY = myFindColor(battleLoseTab);
  --战斗失败
  local battleWinDamoTab = {battleWinDamo_col, battleWinDamo_pos, 95, 0, 0, width, height};
  battleWinDamoX, battleWinDamoY = myFindColor(battleWinDamoTab);
  --战斗结束后的红达摩
  local battleWinGiftTab = {battleWinGift_col, battleWinGift_pos, 95, 0, 0, width, height};
  battleWinGiftX, battleWinGiftY = myFindColor(battleWinGiftTab);
  --打开红达摩后的奖励
	
	if readyX ~= -1 and readyY ~= -1 then
		setTime();
		sysLog("readyX-old="..readyX..", readyY-old="..readyY);
    readyX = math.random(1136,1291);
		readyY = math.random(525,624);
		tap(readyX,readyY);
		sysLog("readyX="..readyX..", readyY="..readyY);
    mSleep(200);
		yinyangliaotupo();
	elseif battleWinX ~= -1 and battleWinY ~= -1 then
    battleWin();
		attackFlag = 1;
    yinyangliaotupo();
  elseif battleLoseX ~= -1 and battleLoseY ~= -1 then
    battleLose();
		attackFlag = 1;
		yinyangliaotupo();
  elseif battleWinDamoX ~= -1 and battleWinDamoY ~= -1 then
    battleWinDamo();
    yinyangliaotupo();
  elseif battleWinGiftX ~= -1 and battleWinGiftY ~= -1 then
    battleWinGift();
		yinyangliaotupo();
	else
		mSleep(0);
		--sysLog("count = "..count);
		--sysLog("t1 = "..t1);
		--sysLog("t2 = "..t2);
		--sysLog("t3 = "..t3);
		local tNow = mTime();
		--sysLog("tNow - t1 = "..tNow - t1);
		--sysLog("tNow - t2 = "..tNow - t2);
		--sysLog("tNow - t3 = "..tNow - t3);
		if (tNow - t1) > 600000 then
			count = 1;
			--sysLog("count = "..count);
			yinyangliaotupoStart();
			yinyangliaotupo();
		elseif (tNow - t2) > 600000 then
			count = 2;
			--sysLog("count = "..count);
			yinyangliaotupoStart();
			yinyangliaotupo();
		elseif (tNow - t3) > 600000 then
			count = 3;
			--sysLog("count = "..count);
			yinyangliaotupoStart();
			yinyangliaotupo();
		else
			rewardSelect();
			yinyangliaotupo();
		end
  end
end
