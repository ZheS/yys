init("0", 1); --以当前应用 Home 键在右边初始化

require "util"
require "init"
require "yuhun.checkRound"
require "battle.battle"

function yuhun()
	battle();
	
	if isBattle == "true" then
		--sysLog("战斗中，检查是否需要标记");
		checkRound();
	end
	
	local confirmInviteTab = {confirmInvite_col, confirmInvite_pos, 95, 373, 186, 990, 575};
  confirmInviteX, confirmInviteY = myFindColor(confirmInviteTab);
  --继续邀请
	local fangzhuYesTab = {fangzhuYes_col, fangzhuYes_pos, 95, 0, 0, width, height};
  fangzhuYesX, fangzhuYesY = myFindColor(fangzhuYesTab);
  --组队界面
	local tilibugouTab = {tilibugou_col, tilibugou_pos, 95, 0, 0, width, height};
  tilibugouX, tilibugouY = myFindColor(tilibugouTab);
  --体力不够界面
	
  if confirmInviteX ~= -1 and confirmInviteY ~= -1 then
		sysLog("继续邀请成员组队御魂10");
		confirmInviteX = math.random(707,872);
		confirmInviteY = math.random(427,471);
    tap(confirmInviteX,confirmInviteY);
    mSleep(200);
		yuhun();
	elseif fangzhuYesX ~= -1 and fangzhuYesY ~= -1 then
		sysLog("有成员进入组队");
		--[[两人
		fangzhuYesX = math.random(1005,1168);
		fangzhuYesY = math.random(604,646);
		sysLog("2人已满，开始战斗");
		tap(fangzhuYesX,fangzhuYesY);
		]]--
		local inviteJoinTeamTab = {inviteJoinTeam_col, inviteJoinTeam_pos, 95, 1001, 410, 1173, 567};
		inviteJoinTeamX, inviteJoinTeamY = myFindColor(inviteJoinTeamTab);
		if inviteJoinTeamX ~= -1 and inviteJoinTeamY ~= -1 then
			sysLog("3人未满，继续等待（yuhunStart）");
			yuhun();
		else
			fangzhuYesX = math.random(1005,1168);
			fangzhuYesY = math.random(604,646);
			sysLog("3人已满，开始战斗");
			tap(fangzhuYesX,fangzhuYesY);
			mSleep(200);
		end
		yuhun();
	elseif tilibugouX ~= -1 and tilibugouY ~= -1 then
		lua_exit();
  else
    yuhun();
  end
end

