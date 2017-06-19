init("0", 1); --以当前应用 Home 键在右边初始化

require "util"
require "init"
require "battle/battle"

isBattle = 0;

function yuhun()
	
	battle();
	
	local inviteTab = {invite_col, invite_pos, 95, 373, 186, 990, 575};
  inviteX, inviteY = myFindColor(inviteTab);
  --继续邀请
	local fangzhuYesTab = {fangzhuYes_col, fangzhuYes_pos, 95, 0, 0, width, height};
  fangzhuYesX, fangzhuYesY = myFindColor(fangzhuYesTab);
  --组队界面
	
  if readyX ~= -1 and readyY ~= -1 then
		sysLog("readyX-old="..readyX..", readyY-old="..readyY);
    readyX = math.random(1136,1291);
		readyY = math.random(525,624);
		tap(readyX,readyY);
		sysLog("readyX="..readyX..", readyY="..readyY);
    mSleep(200);
		yuhun();
	elseif inviteX ~= -1 and inviteY ~= -1 then
		sysLog("inviteX-old="..inviteX..", inviteY-old="..inviteY);
		inviteX = math.random(707,872);
		inviteY = math.random(427,471);
    tap(inviteX,inviteY);
		sysLog("inviteX="..inviteX..", inviteY="..inviteY);
    mSleep(200);
		yuhun();
	elseif fangzhuYesX ~= -1 and fangzhuYesY ~= -1 then
		sysLog("playerAccountInput="..playerAccountInput);
		sysLog("fangzhuYesX-old="..fangzhuYesX..", fangzhuYesY-old="..fangzhuYesY);
		if playerAccountInput == "0" then
			fangzhuYesX = math.random(1005,1168);
			fangzhuYesY = math.random(604,646);
			tap(fangzhuYesX,fangzhuYesY);
			sysLog("fangzhuYesX="..fangzhuYesX..", fangzhuYesY="..fangzhuYesY);
			mSleep(200);
		elseif playerAccountInput == "1" then
			local inviteJoinTeamTab = {inviteJoinTeam_col, inviteJoinTeam_pos, 95, 1001, 410, 1173, 567};
			inviteJoinTeamX, inviteJoinTeamY = myFindColor(inviteJoinTeamTab);
			sysLog("inviteJoinTeamX="..inviteJoinTeamX..", inviteJoinTeamY="..inviteJoinTeamY);
			if inviteJoinTeamX ~= -1 and inviteJoinTeamY ~= -1 then
				yuhun();
			else
				fangzhuYesX = math.random(1005,1168);
				fangzhuYesY = math.random(604,646);
				tap(fangzhuYesX,fangzhuYesY);
				sysLog("fangzhuYesX="..fangzhuYesX..", fangzhuYesY="..fangzhuYesY);
				mSleep(200);
			end
		end
		yuhun();
	elseif battleWinX ~= -1 and battleWinY ~= -1 then
    battleWin();
    yuhun();
  elseif battleLoseX ~= -1 and battleLoseY ~= -1 then
    battleLose();
		yuhun();
  elseif battleWinDamoX ~= -1 and battleWinDamoY ~= -1 then
    battleWinDamo();
    yuhun();
  elseif battleWinGiftX ~= -1 and battleWinGiftY ~= -1 then
    battleWinGift();
		yuhun();
  else
    yuhun();
  end
end

