init("0", 1); --以当前应用 Home 键在右边初始化

require "util"
require "battle"
require "makeTeam"
require "init"

function yuhun()
	
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
	local inviteTab = {invite_col, invite_pos, 95, 373, 186, 990, 575};
  inviteX, inviteY = myFindColor(inviteTab);
  --继续邀请
	local fangzhuYesTab = {fangzhuYes_col, fangzhuYes_pos, 95, 0, 0, width, height};
  fangzhuYesX, fangzhuYesY = myFindColor(fangzhuYesTab);
  --组队界面
	
	sysLog("fangzhuYesX="..fangzhuYesX..", fangzhuYesY="..fangzhuYesY);
	
	
  if readyX ~= -1 and readyY ~= -1 then
		sysLog("readyX-old="..readyX..", readyY-old="..readyY);
    readyX = math.random(1136,1291);
		readyY = math.random(525,624);
		tap(readyX,readyY);
		sysLog("readyX="..readyX..", readyY="..readyY);
    mSleep(200);
		yuhun();
	elseif inviteX ~= -1 and inviteY ~= -1 then
    tap(inviteX,inviteY);
    mSleep(200);
		yuhun();
	elseif fangzhuYesX ~= -1 and fangzhuYesY ~= -1 then
		local inviteJoinTeamTab = {inviteJoinTeam_col, inviteJoinTeam_pos, 95, 1001, 410, 1173, 567};
		inviteJoinTeamX, inviteJoinTeamY = myFindColor(inviteJoinTeamTab);
		sysLog("inviteJoinTeamX="..inviteJoinTeamX..", inviteJoinTeamY="..inviteJoinTeamY);
		if inviteJoinTeamX ~= -1 and inviteJoinTeamY ~= -1 then
			yuhun();
		else
			tap(fangzhuYesX,fangzhuYesY);
			mSleep(200);
		end
		yuhun();
	elseif battleWinX ~= -1 and battleWinY ~= -1 then
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
    yuhun();
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
		yuhun();
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
    yuhun();
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
		yuhun();
  else
    yuhun();
  end
end

