init("0", 1); --以当前应用 Home 键在右边初始化

require "util"
require "init"

function yuhunStart()
	battle();
	
	if isBattle == "true" then
		sysLog("等待战斗结束");
		battle();
		yuhunStart();
	end
	
	sysLog("战斗结束，继续yuhunStart");
	
	local confirmInviteTab = {confirmInvite_col, confirmInvite_pos, 95, 373, 186, 990, 575};
  confirmInviteX, confirmInviteY = myFindColor(confirmInviteTab);
  --继续邀请
	local fangzhuYesTab = {fangzhuYes_col, fangzhuYes_pos, 95, 0, 0, width, height};
  fangzhuYesX, fangzhuYesY = myFindColor(fangzhuYesTab);
  --组队界面
	local tansuoTab = {tansuo_col, tansuo_pos, 95, 0, 0, width, height};
  tansuoX, tansuoY = myFindColor(tansuoTab);
  --探索灯笼按钮图标
	local yuhunTab = {yuhun_col, yuhun_pos, 95, 0, 0, width, height};
  yuhunX, yuhunY = myFindColor(yuhunTab);
  --御魂按钮图标
	local dasheTab = {dashe_col, dashe_pos, 95, 0, 0, width, height};
  dasheX, dasheY = myFindColor(dasheTab);
  --八歧大蛇图标
	local yuhunzuduiTab = {yuhunzudui_col, yuhunzudui_pos, 95, 0, 0, width, height};
  yuhunzuduiX, yuhunzuduiY = myFindColor(yuhunzuduiTab);
  --御魂组队界面
	local yuhunCreateTeamTab = {yuhunCreateTeam_col, yuhunCreateTeam_pos, 95, 0, 0, width, height};
  yuhunCreateTeamX, yuhunCreateTeamY = myFindColor(yuhunCreateTeamTab);
  --御魂创建队伍界面
	local yuhunCreateTeamDetailTab = {yuhunCreateTeamDetail_col, yuhunCreateTeamDetail_pos, 95, 0, 0, width, height};
  yuhunCreateTeamDetailX, yuhunCreateTeamDetailY = myFindColor(yuhunCreateTeamDetailTab);
  --御魂创建队伍明细界面
	local windowCloseTab = {windowClose_col, windowClose_pos, 95, 0, 0, width, height};
  windowCloseX, windowCloseY = myFindColor(windowCloseTab);
  --深褐色关闭按钮
	
  if confirmInviteX ~= -1 and confirmInviteY ~= -1 then
		sysLog("继续邀请成员组队御魂10");
		confirmInviteX = math.random(707,872);
		confirmInviteY = math.random(427,471);
    tap(confirmInviteX,confirmInviteY);
    mSleep(200);
		yuhunStart();
	elseif fangzhuYesX ~= -1 and fangzhuYesY ~= -1 then
		sysLog("有成员进入组队");
		if playerAccountInput == "0" then
			fangzhuYesX = math.random(1005,1168);
			fangzhuYesY = math.random(604,646);
			sysLog("2人已满，开始战斗");
			tap(fangzhuYesX,fangzhuYesY);
		elseif playerAccountInput == "1" then
			local inviteJoinTeamTab = {inviteJoinTeam_col, inviteJoinTeam_pos, 95, 1001, 410, 1173, 567};
			inviteJoinTeamX, inviteJoinTeamY = myFindColor(inviteJoinTeamTab);
			if inviteJoinTeamX ~= -1 and inviteJoinTeamY ~= -1 then
				sysLog("3人未满，继续等待（yuhunStart）");
				yuhunStart();
			else
				fangzhuYesX = math.random(1005,1168);
				fangzhuYesY = math.random(604,646);
				sysLog("3人已满，开始战斗");
				tap(fangzhuYesX,fangzhuYesY);
				mSleep(200);
			end
		end
		sysLog("从yuhunStart进入yuhun");
		yuhun();
	elseif tansuoX ~= -1 and tansuoY ~= -1 then
		tansuoX = math.random(tansuoX-25,tansuoX+25);
		tansuoY = math.random(tansuoY-28,tansuoY+35);
		tap(tansuoX,tansuoY);
		sysLog("看到探索灯笼，点击进入");
		mSleep(200);
    yuhunStart();
	elseif yuhunX ~= -1 and yuhunY ~= -1 then
		yuhunX = math.random(179,243);
		yuhunY = math.random(669,723);
		tap(yuhunX,yuhunY);
		sysLog("看到御魂图标，点击进入");
		mSleep(200);
    yuhunStart();
	elseif dasheX ~= -1 and dasheY ~= -1 then
		dasheX = math.random(160,638);
		dasheY = math.random(298,503);
		tap(dasheX,dasheY);
		sysLog("看到御魂界面的八岐大蛇图标，点击进入");
		mSleep(200);
    yuhunStart();
	elseif yuhunzuduiX ~= -1 and yuhunzuduiY ~= -1 then
		yuhunzuduiX = math.random(616,732);
		yuhunzuduiY = math.random(496,539);
		tap(yuhunzuduiX,yuhunzuduiY);
		sysLog("看到御魂组队界面的八岐大蛇图标，点击“组队”进入");
		mSleep(200);
    yuhunStart();
	elseif yuhunCreateTeamX ~= -1 and yuhunCreateTeamY ~= -1 then
		yuhunCreateTeamX = math.random(1008,1171);
		yuhunCreateTeamY = math.random(633,676);
		tap(yuhunCreateTeamX,yuhunCreateTeamY);
		sysLog("看到组队界面的“创建队伍”按钮，点击进入");
		mSleep(200);
		yuhunStart();
	elseif yuhunCreateTeamDetailX ~= -1 and yuhunCreateTeamDetailY ~= -1 then
		yuhunCreateTeamDetailX = math.random(856,971);
		yuhunCreateTeamDetailY = math.random(594,637);
		tap(yuhunCreateTeamDetailX,yuhunCreateTeamDetailY);
		sysLog("点击“创建队伍”按钮后，选择副本、难度、等级");
		mSleep(200);
		yuhunStart();
	elseif windowCloseX ~= -1 and windowCloseY ~= -1 then
		windowCloseX = math.random(windowCloseX-23,windowCloseX+23);
		windowCloseY = math.random(windowCloseY-23,windowCloseY+23);
		tap(windowCloseX,windowCloseY);
		sysLog("没什么可做的，关闭窗口");
		mSleep(200);
		yuhunStart();
  else
    yuhunStart();
  end
end

