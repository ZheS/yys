require "util"
require "init"

local readyTab = {ready_col, ready_pos, 95, 0, 0, width, height};
local battleWinTab = {battleWin_col, battleWin_pos, 95, 0, 0, width, height};
local battleLoseTab = {battleLose_col, battleLose_pos, 95, 0, 0, width, height};
local battleWinDamoTab = {battleWinDamo_col, battleWinDamo_pos, 95, 0, 0, width, height};
local battleWinGiftTab = {battleWinGift_col, battleWinGift_pos, 95, 0, 0, width, height};
  
isBattle = "false";
	
function battle()
  readyX, readyY = myFindColor(readyTab);
  --待准备界面的鼓
  battleWinX, battleWinY = myFindColor(battleWinTab);
  --战斗胜利
  battleLoseX, battleLoseY = myFindColor(battleLoseTab);
  --战斗失败
  battleWinDamoX, battleWinDamoY = myFindColor(battleWinDamoTab);
  --战斗结束后的红达摩
  battleWinGiftX, battleWinGiftY = myFindColor(battleWinGiftTab);
  --打开红达摩后的奖励
	
	if readyX ~= -1 and readyY ~= -1 then
		ready();
	elseif battleWinX ~= -1 and battleWinY ~= -1 then
    battleWin();
  elseif battleLoseX ~= -1 and battleLoseY ~= -1 then
    battleLose();
  elseif battleWinDamoX ~= -1 and battleWinDamoY ~= -1 then
    battleWinDamo();
  elseif battleWinGiftX ~= -1 and battleWinGiftY ~= -1 then
    battleWinGift();
  else
  end
end

function ready()
	isBattle = "true";
	readyX = math.random(1136,1291);
	readyY = math.random(525,624);
	tap(readyX,readyY);
	mSleep(2000);
	readyX, readyY = myFindColor(readyTab);
	while readyX ~= -1 and readyY ~= -1 do
		readyX = math.random(1136,1291);
		readyY = math.random(525,624);
		tap(readyX,readyY);
		mSleep(2000);
		readyX, readyY = myFindColor(readyTab);
	end
	sysLog("isBattle="..isBattle);
end

function battleWin()
	battleWinX = math.random(1123,1321);
	battleWinY = math.random(454,737);
	tap(battleWinX,battleWinY);
	battleWinX, battleWinY = myFindColor(battleWinTab);
	while battleWinX ~= -1 and battleWinY ~= -1 do
		battleWinX = math.random(1123,1321);
		battleWinY = math.random(454,737);
		tap(battleWinX,battleWinY);
		battleWinX, battleWinY = myFindColor(battleWinTab);
	end
	sysLog("isBattle="..isBattle);
end

function battleLose()
	battleLoseX = math.random(1123,1321);
	battleLoseY = math.random(454,737);
	tap(battleLoseX,battleLoseY);
	battleLoseX, battleLoseY = myFindColor(battleLoseTab);
	while battleLoseX ~= -1 and battleLoseY ~= -1 do
		battleLoseX = math.random(1123,1321);
		battleLoseY = math.random(454,737);
		tap(battleLoseX,battleLoseY);
		battleLoseX, battleLoseY = myFindColor(battleLoseTab);
	end
	isBattle = "false";
	sysLog("isBattle="..isBattle);
end

function battleWinDamo()
	battleWinDamoX = math.random(1123,1321);
	battleWinDamoY = math.random(454,737);
	tap(battleWinDamoX,battleWinDamoY);
	battleWinDamoX, battleWinDamoY = myFindColor(battleWinDamoTab);
  while battleWinDamoX ~= -1 and battleWinDamoY ~= -1 do
		battleWinDamoX = math.random(1123,1321);
		battleWinDamoY = math.random(454,737);
		tap(battleWinDamoX,	battleWinDamoY);
		battleWinDamoX, battleWinDamoY = myFindColor(battleWinDamoTab);
	end
	sysLog("isBattle="..isBattle);
end

function battleWinGift()
	battleWinGiftX = math.random(1123,1321);
	battleWinGiftY = math.random(454,737);
	tap(battleWinGiftX, battleWinGiftY);
	battleWinGiftX, battleWinGiftY = myFindColor(battleWinGiftTab);
  while battleWinGiftX ~= -1 and battleWinGiftY ~= -1 do
		battleWinGiftX = math.random(1123,1321);
		battleWinGiftY = math.random(454,737);
		tap(battleWinGiftX,	battleWinGiftY);
    battleWinGiftX, battleWinGiftY = myFindColor(battleWinGiftTab);
	end
	isBattle = "false";
	sysLog("isBattle="..isBattle);
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