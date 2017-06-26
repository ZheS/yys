init("0", 1); --以当前应用 Home 键在右边初始化

require "util"
require "init"
require "yuhun/confirmInvite"

function yuhun()
	battle();
	
	if isBattle == "true" then
		sysLog("等待战斗结束");
		yuhun();
	end
	
	sysLog("战斗结束，继续yuhunStart");
	
	local inviteTab = {invite_col, invite_pos, 95, 0, 0, width, height};
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
	local tilibugouTab = {tilibugou_col, tilibugou_pos, 95, 0, 0, width, height};
  tilibugouX, tilibugouY = myFindColor(tilibugouTab);
  --体力不够界面
	
  if inviteX ~= -1 and inviteY ~= -1 then
		sysLog("判断是继续御魂，还是阴阳寮突破");
		if mainInput == "0" then
			sysLog("mainInput=0,阴阳寮突破");
			yinyangliaotupo();
		else 
			sysLog("mainInput=2,御魂");
			confirmInvite();
		end
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
				yuhun();
			else
				fangzhuYesX = math.random(1005,1168);
				fangzhuYesY = math.random(604,646);
				sysLog("3人已满，开始战斗");
				tap(fangzhuYesX,fangzhuYesY);
				mSleep(200);
			end
		end
		yuhun();
	elseif tansuoX ~= -1 and tansuoY ~= -1 then
		tansuoX = math.random(tansuoX-25,tansuoX+25);
		tansuoY = math.random(tansuoY-28,tansuoY+35);
		tap(tansuoX,tansuoY);
		sysLog("看到探索灯笼，点击进入");
		mSleep(200);
    yuhun();
	elseif yuhunX ~= -1 and yuhunY ~= -1 then
		yuhunX = math.random(179,243);
		yuhunY = math.random(669,723);
		tap(yuhunX,yuhunY);
		sysLog("看到御魂图标，点击进入");
		mSleep(200);
    yuhun();
	elseif dasheX ~= -1 and dasheY ~= -1 then
		dasheX = math.random(160,638);
		dasheY = math.random(298,503);
		tap(dasheX,dasheY);
		sysLog("看到御魂界面的八岐大蛇图标，点击进入");
		mSleep(200);
    yuhun();
	elseif yuhunzuduiX ~= -1 and yuhunzuduiY ~= -1 then
		yuhunzuduiX = math.random(616,732);
		yuhunzuduiY = math.random(496,539);
		tap(yuhunzuduiX,yuhunzuduiY);
		sysLog("看到御魂组队界面的八岐大蛇图标，点击“组队”进入");
		mSleep(200);
    yuhun();
	elseif yuhunCreateTeamX ~= -1 and yuhunCreateTeamY ~= -1 then
		yuhunCreateTeamX = math.random(1008,1171);
		yuhunCreateTeamY = math.random(633,676);
		tap(yuhunCreateTeamX,yuhunCreateTeamY);
		sysLog("看到组队界面的“创建队伍”按钮，点击进入");
		mSleep(200);
		yuhun();
	elseif yuhunCreateTeamDetailX ~= -1 and yuhunCreateTeamDetailY ~= -1 then
		yuhunCreateTeamDetailX = math.random(856,971);
		yuhunCreateTeamDetailY = math.random(594,637);
		tap(yuhunCreateTeamDetailX,yuhunCreateTeamDetailY);
		sysLog("点击“创建队伍”按钮后，选择副本、难度、等级");
		mSleep(200);
		yuhun();
	elseif tilibugouX ~= -1 and tilibugouY ~= -1 then
		tilibugouX = math.random(957,998);
		tilibugouY = math.random(183,224);
		tap(tilibugouX,tilibugouY);
		sysLog("体力不够");
		mSleep(200);
		if mainInput == "0" then
			mainInput = "1";
			sysLog("只打阴阳寮突破");
			yinyangliaotupo();
		else 
		end
	elseif windowCloseX ~= -1 and windowCloseY ~= -1 then
		windowCloseX = math.random(windowCloseX-23,windowCloseX+23);
		windowCloseY = math.random(windowCloseY-23,windowCloseY+23);
		tap(windowCloseX,windowCloseY);
		sysLog("没什么可做的，关闭窗口");
		mSleep(200);
		yuhun();
  else
    yuhun();
  end
end

