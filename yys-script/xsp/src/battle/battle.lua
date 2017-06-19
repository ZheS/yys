require "util"
require "init"

function battle()
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
		ready();
		isBattle = 1;
	elseif battleWinX ~= -1 and battleWinY ~= -1 then
    battleWin();
		isBattle = 1;
  elseif battleLoseX ~= -1 and battleLoseY ~= -1 then
    battleLose();
		isBattle = 1;
  elseif battleWinDamoX ~= -1 and battleWinDamoY ~= -1 then
    battleWinDamo();
		isBattle = 1;
  elseif battleWinGiftX ~= -1 and battleWinGiftY ~= -1 then
    battleWinGift();
		isBattle = 1;
  else
		isBattle = 0;
  end
	
	
end

function ready()
	sysLog("readyX-old="..readyX..", readyY-old="..readyY);
	readyX = math.random(1136,1291);
	readyY = math.random(525,624);
	tap(readyX,readyY);
	sysLog("readyX="..readyX..", readyY="..readyY);
end

function battleWin()
	sysLog("battleWinX-old="..battleWinX..", battleWinY-old="..battleWinY);
	battleWinX = math.random(1123,1321);
	battleWinY = math.random(454,737);
	tap(battleWinX,battleWinY);
	sysLog("battleWinX="..battleWinX..", battleWinY="..battleWinY);
end

function battleLose()
	sysLog("battleLoseX-old="..battleLoseX..", battleLoseY-old="..battleLoseY);
	battleLoseX = math.random(1123,1321);
	battleLoseY = math.random(454,737);
	tap(battleLoseX,battleLoseY);
	sysLog("battleLoseX="..battleLoseX..", battleLoseY="..battleLoseY);
end

function battleWinDamo()
	sysLog("battleWinDamoX-old="..battleWinDamoX..", battleWinDamoY-old="..battleWinDamoY);
	battleWinDamoX = math.random(1123,1321);
	battleWinDamoY = math.random(454,737);
	tap(battleWinDamoX,battleWinDamoY);
	sysLog("battleWinDamoX="..battleWinDamoX..", battleWinDamoY="..battleWinDamoY);
end

function battleWinGift()
	sysLog("battleWinGiftX-old="..battleWinGiftX..", battleWinGiftY-old="..battleWinGiftY);
	battleWinGiftX = math.random(1123,1321);
	battleWinGiftY = math.random(454,737);
	tap(battleWinGiftX,battleWinGiftY);
	sysLog("battleWinGiftX="..battleWinGiftX..", battleWinGiftY="..battleWinGiftY);
end


function manualToAuto()
  local manualButtonTab = {manualButton_col, manualButton_pos, 95, 0, 0, width, height};
  manualButtonX, manualButtonY = myFindColor(manualButtonTab);
	local autoButtonTab = {autoButton_col, autoButton_pos, 95, 0, 0, width, height};
  autoButtonX, autoButtonY = myFindColor(autoButtonTab);
	
	sysLog("manualButtonX="..manualButtonX..", manualButtonY="..manualButtonY);
	sysLog("autoButtonX="..autoButtonX..", autoButtonY="..autoButtonY);
	
	if manualButtonX ~= -1 and manualButtonY ~= -1 then
		mSleep(1000);
		manualButtonTab = {manualButton_col, manualButton_pos, 95, 0, 0, width, height};
		manualButtonX, manualButtonY = myFindColor(manualButtonTab);
		if manualButtonX ~= -1 and manualButtonY ~= -1 then
			tap(manualButtonX,	manualButtonY);
		end
	elseif autoButtonX ~= -1 and autoButtonY ~= -1 then
	else
		manualToAuto();
	end
end