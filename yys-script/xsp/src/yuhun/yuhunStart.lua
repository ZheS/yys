init("0", 1); --以当前应用 Home 键在右边初始化

require "util"
require "init"

function yuhunStart()
	
	local inviteTab = {invite_col, invite_pos, 95, 373, 186, 990, 575};
  inviteX, inviteY = myFindColor(inviteTab);
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
	elseif tansuoX ~= -1 and tansuoY ~= -1 then
		sysLog("tansuoX-old="..tansuoX..", tansuoY-old="..tansuoY);
		tansuoX = math.random(tansuoX-25,tansuoX+25);
		tansuoY = math.random(tansuoY-28,tansuoY+35);
		tap(tansuoX,tansuoY);
		sysLog("tansuoX="..tansuoX..", tansuoY="..tansuoY);
    yuhun();
	elseif yuhunX ~= -1 and yuhunY ~= -1 then
		sysLog("yuhunX-old="..yuhunX..", yuhunY-old="..yuhunY);
		yuhunX = math.random(179,243);
		yuhunY = math.random(669,723);
		tap(yuhunX,yuhunY);
		sysLog("yuhunX="..tansuoX..", yuhunY="..yuhunY);
    yuhun();
	elseif dasheX ~= -1 and dasheY ~= -1 then
		sysLog("dasheX-old="..dasheX..", dasheY-old="..dasheY);
		dasheX = math.random(160,638);
		dasheY = math.random(298,503);
		tap(dasheX,dasheY);
		sysLog("dasheX="..dasheX..", dasheY="..dasheY);
    yuhun();
	elseif yuhunzuduiX ~= -1 and yuhunzuduiY ~= -1 then
		sysLog("yuhunzuduiX-old="..yuhunzuduiX..", yuhunzuduiY-old="..yuhunzuduiY);
		yuhunzuduiX = math.random(616,732);
		yuhunzuduiY = math.random(496,539);
		tap(yuhunzuduiX,yuhunzuduiY);
		sysLog("yuhunzuduiX="..yuhunzuduiX..", yuhunzuduiY="..yuhunzuduiY);
    yuhun();
	elseif yuhunCreateTeamX ~= -1 and yuhunCreateTeamY ~= -1 then
		sysLog("yuhunCreateTeamX-old="..yuhunCreateTeamX..", yuhunCreateTeamY-old="..yuhunCreateTeamY);
		yuhunCreateTeamX = math.random(1008,1171);
		yuhunCreateTeamY = math.random(633,676);
		tap(yuhunCreateTeamX,yuhunCreateTeamY);
		sysLog("yuhunCreateTeamX="..yuhunCreateTeamX..", yuhunCreateTeamY="..yuhunCreateTeamY);
    yuhun();
	elseif yuhunCreateTeamDetailX ~= -1 and yuhunCreateTeamDetailY ~= -1 then
		sysLog("yuhunCreateTeamDetailX-old="..yuhunCreateTeamDetailX..", yuhunCreateTeamDetailY-old="..yuhunCreateTeamDetailY);
		yuhunCreateTeamDetailX = math.random(856,971);
		yuhunCreateTeamDetailY = math.random(594,637);
		tap(yuhunCreateTeamDetailX,yuhunCreateTeamDetailY);
		sysLog("yuhunCreateTeamDetailX="..yuhunCreateTeamDetailX..", yuhunCreateTeamDetailY="..yuhunCreateTeamDetailY);
		yuhun();
	elseif windowCloseX ~= -1 and windowCloseY ~= -1 then
		sysLog("windowCloseX-old="..windowCloseX..", windowCloseY-old="..windowCloseY);
		windowCloseX = math.random(windowCloseX-23,windowCloseX+23);
		windowCloseY = math.random(windowCloseY-23,windowCloseY+23);
		tap(windowCloseX,windowCloseY);
		sysLog("windowCloseX="..windowCloseX..", windowCloseY="..windowCloseY);
		yuhun();
  else
    yuhun();
  end
end

