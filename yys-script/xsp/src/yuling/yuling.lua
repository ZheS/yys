init("0", 1); --以当前应用 Home 键在右边初始化

require "util"
require "battle"
require "makeTeam"
require "init"

function yuling()
	
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
	local challengeBottonTab = {challengeBotton_col, challengeBotton_pos, 95, 0, 0, width, height};
  challengeBottonX, challengeBottonY = myFindColor(challengeBottonTab);
  --挑战按钮
	
  if readyX ~= -1 and readyY ~= -1 then
		sysLog("readyX-old="..readyX..", readyY-old="..readyY);
    readyX = math.random(1136,1291);
		readyY = math.random(525,624);
		tap(readyX,readyY);
		sysLog("readyX="..readyX..", readyY="..readyY);
    mSleep(200);
		yuling();
	elseif challengeBottonX ~= -1 and challengeBottonY ~= -1 then
		sysLog("challengeBottonX-old="..challengeBottonX..", challengeBottonY-old="..challengeBottonY);
		challengeBottonX = math.random(935,1052);
		challengeBottonY = math.random(496,539);
    tap(challengeBottonX,challengeBottonY);
		sysLog("challengeBottonX="..challengeBottonX..", challengeBottonY="..challengeBottonY);
    mSleep(200);
		yuling();
	elseif battleWinX ~= -1 and battleWinY ~= -1 then
    battleWin();
    yuling();
  elseif battleLoseX ~= -1 and battleLoseY ~= -1 then
    battleLose();
		yuling();
  elseif battleWinDamoX ~= -1 and battleWinDamoY ~= -1 then
    battleWinDamo();
    yuling();
  elseif battleWinGiftX ~= -1 and battleWinGiftY ~= -1 then
    battleWinGift();
		yuling();
  else
    yuling();
  end
end

