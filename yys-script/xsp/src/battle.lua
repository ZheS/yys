require "util"
require "init"

function battle()
  battleStart();
	manualToAuto();
  battleFinish();
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

function battleStart()
  mSleep(500);
  local readyTab = {ready_col, ready_pos, 95, 0, 0, width, height};
  readyX, readyY = myFindColor(readyTab);
  --待准备界面的鼓
  sysLog("readyX="..readyX..", readyY="..readyY);
  if readyX ~= -1 and readyY ~= -1 then
    tap(readyX,readyY);
    mSleep(500);
    readyX, readyY = myFindColor(readyTab);
    sysLog("readyX2="..readyX..", readyY2="..readyY);
    while readyX ~= -1 and readyY ~= -1 do
      tap(readyX,readyY);
      mSleep(500);
      readyX, readyY = myFindColor(readyTab);
      sysLog("readyX3="..readyX..", readyY3="..readyY);
    end
  else
    battleStart();
  end
end

function battleFinish()
  mSleep(500);
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
  
  sysLog("battleWinX="..battleWinX..", battleWinY="..battleWinY);
  sysLog("battleLoseX="..battleLoseX..", battleLoseY="..battleLoseY);
  sysLog("battleWinDamoX="..battleWinDamoX..", battleWinDamoY="..battleWinDamoY);
  sysLog("battleWinGiftX="..battleWinGiftX..", battleWinGiftY="..battleWinGiftY);
  
  if battleWinX ~= -1 and battleWinY ~= -1 then
    tap(battleWinX,battleWinY);
    mSleep(200);
    battleWinX, battleWinY = myFindColor(battleWinTab);
    sysLog("battleWinX2="..battleWinX..", battleWinY2="..battleWinY);
    while battleWinX ~= -1 and battleWinY ~= -1 do
      tap(battleWinX,battleWinY);
      mSleep(200);
      battleWinX, battleWinY = myFindColor(battleWinTab);
      sysLog("battleWinX3="..battleWinX..", battleWinY3="..battleWinY);
    end
    battleFinish();
  elseif battleLoseX ~= -1 and battleLoseY ~= -1 then
    tap(battleLoseX,battleLoseY);
    mSleep(200);
    battleLoseX, battleLoseY = myFindColor(battleLoseTab);
    sysLog("battleLoseX2="..battleLoseX..", battleLoseY2="..battleLoseY);
    while battleLoseX ~= -1 and battleLoseY ~= -1 do
      tap(battleLoseX,battleLoseY);
      mSleep(200);
      battleLoseX, battleLoseY = myFindColor(battleLoseTab);
      sysLog("battleLoseX3="..battleLoseX..", battleLoseY3="..battleLoseY);
    end
  elseif battleWinDamoX ~= -1 and battleWinDamoY ~= -1 then
    tap(battleWinDamoX,	battleWinDamoY);
    mSleep(200);
    battleWinDamoX, battleWinDamoY = myFindColor(battleWinDamoTab);
    sysLog("battleWinDamoX2="..battleWinDamoX..", battleWinDamoY2="..battleWinDamoY);
    while battleWinDamoX ~= -1 and battleWinDamoY ~= -1 do
      tap(battleWinDamoX,	battleWinDamoY);
      mSleep(200);
      battleWinDamoX, battleWinDamoY = myFindColor(battleWinDamoTab);
      sysLog("battleWinDamoX3="..battleWinDamoX..", battleWinDamoY3="..battleWinDamoY);
    end
    battleFinish();
  elseif battleWinGiftX ~= -1 and battleWinGiftY ~= -1 then
    tap(battleWinGiftX,	battleWinGiftY);
    mSleep(200);
    battleWinGiftX, battleWinGiftY = myFindColor(battleWinGiftTab);
    sysLog("battleWinGiftX2="..battleWinGiftX..", battleWinGiftY2="..battleWinGiftY);
    while battleWinGiftX ~= -1 and battleWinGiftY ~= -1 do
      tap(battleWinGiftX,	battleWinGiftY);
      mSleep(200);
      battleWinGiftX, battleWinGiftY = myFindColor(battleWinGiftTab);
      sysLog("battleWinGiftX3="..battleWinGiftX..", battleWinGiftY3="..battleWinGiftY);
    end
  else 
    battleFinish();
  end
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
