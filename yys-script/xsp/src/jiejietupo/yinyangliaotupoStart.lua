init("0", 1); --以当前应用 Home 键在右边初始化

require "util"
require "init"
require "jiejietupo.tupoStart"

function yinyangliaotupoStart()
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
	
	if readyX ~= -1 and readyY ~= -1 then
		addTime();
		ready();
	elseif battleWinX ~= -1 and battleWinY ~= -1 then
    battleWin();
		attackFlag = 1;
		resetCount();
  elseif battleLoseX ~= -1 and battleLoseY ~= -1 then
    battleLose();
		attackFlag = 1;
		resetTime();
		resetCount();
  elseif battleWinDamoX ~= -1 and battleWinDamoY ~= -1 then
    battleWinDamo();
  elseif battleWinGiftX ~= -1 and battleWinGiftY ~= -1 then
    battleWinGift();
	else
	end
	
	if isBattle == "true" then
		sysLog("等待战斗结束");
		yinyangliaotupoStart();
	end
	
	local tansuoTab = {tansuo_col, tansuo_pos, 95, 0, 0, width, height};
  tansuoX, tansuoY = myFindColor(tansuoTab);
  --探索灯笼按钮图标
	local jiejietupoTab = {jiejietupo_col, jiejietupo_pos, 95, 0, height/2, width/2, height};
  jiejietupoX, jiejietupoY = myFindColor(jiejietupoTab);
  --结界突破按钮图标
	local yinyangliaotupoTab = {yinyangliaotupo_col, yinyangliaotupo_pos, 95, 0, 0, width, height};
  yinyangliaotupoX, yinyangliaotupoY = myFindColor(yinyangliaotupoTab);
  --阴阳寮突破按钮
	local yinyangliaotupoPageTab = {yinyangliaotupoPage_col, yinyangliaotupoPage_pos, 95, 0, 0, width, height};
  yinyangliaotupoPageX, yinyangliaotupoPageY = myFindColor(yinyangliaotupoPageTab);
  --阴阳寮突破界面
	local attackEnableTab = {attackEnable_col, attackEnable_pos, 92, 0, 0, width, height};
  attackEnableX, attackEnableY = myFindColor(attackEnableTab);
  --攻击按钮可用
	local attackDisableTab = {attackDisable_col, attackDisable_pos, 95, 0, 0, width, height};
  attackDisableX, attackDisableY = myFindColor(attackDisableTab);
  --攻击按钮不可用
	local cancelInviteTab = {cancelInvite_col, cancelInvite_pos, 95, 0, 0, width, height};
  cancelInviteX, cancelInviteY = myFindColor(cancelInviteTab);
  --邀请组队界面中的取消图标
	local yuhunCreateTeamDetailTab = {yuhunCreateTeamDetail_col, yuhunCreateTeamDetail_pos, 95, 0, 0, width, height};
  yuhunCreateTeamDetailX, yuhunCreateTeamDetailY = myFindColor(yuhunCreateTeamDetailTab);
  --御魂创建队伍明细界面
	local windowCloseTab = {windowClose_col, windowClose_pos, 95, 0, 0, width, height};
  windowCloseX, windowCloseY = myFindColor(windowCloseTab);
  --深褐色关闭按钮
	
  if tansuoX ~= -1 and tansuoY ~= -1 then
		tansuoX = math.random(tansuoX-25,tansuoX+25);
		tansuoY = math.random(tansuoY-28,tansuoY+35);
		sysLog("看到探索灯笼，点击进入");
    tap(tansuoX,tansuoY);
		mSleep(200);
		yinyangliaotupoStart();
	elseif jiejietupoX ~= -1 and jiejietupoY ~= -1 then
		jiejietupoX = math.random(403,468);
		jiejietupoY = math.random(669,724);
		sysLog("看到结界突破图标，点击进入");
    tap(jiejietupoX,jiejietupoY);
		mSleep(200);
		yinyangliaotupoStart();
  elseif yinyangliaotupoX ~= -1 and yinyangliaotupoY ~= -1 then
		yinyangliaotupoX = math.random(1258,1308);
		yinyangliaotupoY = math.random(306,404);
		sysLog("点击“阴阳寮突破”按钮进入");
		tap(yinyangliaotupoX,yinyangliaotupoY);
		mSleep(200);
		yinyangliaotupoStart();
	elseif attackEnableX ~= -1 and attackEnableY ~= -1 then
		if attackFlag == 1 then
			mSleep(200);
			attackEnableX = math.random(attackEnableX-60,attackEnableX+50);
			attackEnableY	= math.random(attackEnableY-15,attackEnableY+20);
			tap(attackEnableX, attackEnableY);
			sysLog("点击攻击按钮，attackFlag = 1");
			sysLog("设置attackFlag = 2");
			attackFlag = 2;
			sysLog("设置countTemp="..count);
			countTemp = count;
			mSleep(1000);
		elseif attackFlag == 2 then
			sysLog("检测到攻击按钮无效");
			tap(math.random(143,370), math.random(103,671)); -- 空白处随便点一下
			sysLog("空白处随便点一下");
			mSleep(1000);
			tap(math.random(1207,1258), math.random(52,92)); -- 关闭结界突破界面
			sysLog("关闭结界突破界面");
			sysLog("attackFlag=1");
			attackFlag = 1;
			sysLog("countTemp=0");
			countTemp = 0;
		end
  elseif attackDisableX ~= -1 and attackDisableY ~= -1 then
		sysLog("检测到在CD中，设置countTemp="..count);
    countTemp = count;
		sysLog("设置addTime");
		addTime();
		sysLog("设置resetCount");
		resetCount();
    tap(math.random(143,370), math.random(103,671));
	elseif yinyangliaotupoPageX ~= -1 and yinyangliaotupoPageY ~= -1 then
		if count ~= 0 then
			sysLog("count ="..count..",进入tupoStart");
			tupoStart();
		else 
		end
		sysLog("检测到在阴阳寮突破界面，无事可做，进入yinyangliaotupo");
		yinyangliaotupo();
	elseif cancelInviteX ~= -1 and cancelInviteY ~= -1 then
    cancelInviteX = math.random(462,624);
		cancelInviteY = math.random(430,470);
		tap(cancelInviteX,cancelInviteY);
		sysLog("取消邀请，进入yinyangliaotupo");
		yinyangliaotupo();
	elseif yuhunCreateTeamDetailX ~= -1 and yuhunCreateTeamDetailY ~= -1 then
		yuhunCreateTeamDetailX = math.random(1065,1206);
		yuhunCreateTeamDetailY = math.random(170,605);
		tap(yuhunCreateTeamDetailX,yuhunCreateTeamDetailY);
		sysLog("检测到“创建队伍”明细界面，外置位随意点击一下，关闭此界面");
		mSleep(200);
		yinyangliaotupoStart();
	elseif windowCloseX ~= -1 and windowCloseY ~= -1 then
		windowCloseX = math.random(windowCloseX-23,windowCloseX+23);
		windowCloseY = math.random(windowCloseY-23,windowCloseY+23);
		tap(windowCloseX,windowCloseY);
		sysLog("没什么可做的，关闭窗口");
		mSleep(200);
		yinyangliaotupoStart();
	else
		yinyangliaotupoStart();
  end
end