init("0", 1); --以当前应用 Home 键在右边初始化

require "util"
require "init"
require "battle/battle"

function yuhun()
	
	battle();
	
	local inviteTab = {invite_col, invite_pos, 95, 373, 186, 990, 575};
  inviteX, inviteY = myFindColor(inviteTab);
  --继续邀请
	local fangzhuYesTab = {fangzhuYes_col, fangzhuYes_pos, 95, 0, 0, width, height};
  fangzhuYesX, fangzhuYesY = myFindColor(fangzhuYesTab);
  --组队界面
	
  if inviteX ~= -1 and inviteY ~= -1 then
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
  else
    yuhun();
  end
end

