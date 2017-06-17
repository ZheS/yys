init("0", 1); --以当前应用 Home 键在右边初始化

require "util"
require "battle"
require "makeTeam"
require "init"

count = 0;
t1 = 0;
t2 = 0;
t3 = 0;
yinyangliaoX = -1;
yinyangliaoY = -1;

function yinyangliaotupo()

  mSleep(1000);
  sysLog("count = "..count);
  sysLog("t1 = "..t1);
  sysLog("t2 = "..t2);
  sysLog("t3 = "..t3);
  local tNow = mTime();
  sysLog("tNow - t1 = "..tNow - t1);
  sysLog("tNow - t2 = "..tNow - t2);
  sysLog("tNow - t3 = "..tNow - t3);
  if (tNow - t1) > 600000 then
    count = 1;
    sysLog("count = "..count);
    yinyangliaotupoStart();
  elseif (tNow - t2) > 600000 then
    count = 2;
    sysLog("count = "..count);
    yinyangliaotupoStart();
  elseif (tNow - t3) > 600000 then
    count = 3;
    sysLog("count = "..count);
    yinyangliaotupoStart();
  else
		rewardSelect();
    yinyangliaotupo();
  end
end

function yinyangliaotupoStart()
	mSleep(0);
	
	local tansuoTab = {tansuo_col, tansuo_pos, 95, 0, 0, width, height};
  tansuoX, tansuoY = myFindColor(tansuoTab);
  --探索灯笼按钮图标
	local jiejietupoTab = {jiejietupo_col, jiejietupo_pos, 95, 0, height/2, width/2, height};
  jiejietupoX, jiejietupoY = myFindColor(jiejietupoTab);
  --结界突破按钮图标
	
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
	
	
  
	local yinyangliaotupoTab = {yinyangliaotupo_col, yinyangliaotupo_pos, 95, 0, 0, width, height};
  yinyangliaotupoX, yinyangliaotupoY = myFindColor(yinyangliaotupoTab);
  --阴阳寮突破按钮
	local yinyangliaotupoPageTab = {yinyangliaotupoPage_col, yinyangliaotupoPage_pos, 95, 0, 0, width, height};
  yinyangliaotupoPageX, yinyangliaotupoPageY = myFindColor(yinyangliaotupoPageTab);
  --阴阳寮突破界面
  
  if tansuoX ~= -1 and tansuoY ~= -1 then
		sysLog("tansuoX-old="..tansuoX..", tansuoY-old="..tansuoY);
		tansuoX = math.random(tansuoX-25,tansuoX+25);
		tansuoY = math.random(tansuoY-28,tansuoY+35);
		sysLog("tansuoX="..tansuoX..", tansuoY="..tansuoY);
    tap(tansuoX,tansuoY);
		yinyangliaotupoStart();
	elseif jiejietupoX ~= -1 and jiejietupoY ~= -1 then
		sysLog("jiejietupoX-old="..jiejietupoX..", jiejietupoY-old="..jiejietupoY);
		jiejietupoX = math.random(403,468);
		jiejietupoY = math.random(669,724);
		sysLog("jiejietupoX="..jiejietupoX..", jiejietupoY="..jiejietupoY);
    tap(jiejietupoX,jiejietupoY);
		yinyangliaotupoStart();
  elseif yinyangliaotupoX ~= -1 and yinyangliaotupoY ~= -1 then
		sysLog("yinyangliaotupoX-old="..yinyangliaotupoX..", yinyangliaotupoY-old="..yinyangliaotupoY);
		yinyangliaotupoX = math.random(1258,1308);
		yinyangliaotupoY = math.random(306,404);
		sysLog("yinyangliaotupoX="..yinyangliaotupoX..", yinyangliaotupoY="..yinyangliaotupoY);
    tap(yinyangliaotupoX,yinyangliaotupoY);
		yinyangliaotupoStart();
	elseif yinyangliaotupoPageX ~= -1 and yinyangliaotupoPageY ~= -1 then
		tupoStart();
	else
		yinyangliaotupoStart();
  end
end

function tupoStart()
  if count == 1 then
    yinyangliaoX = math.random(147,462);
    yinyangliaoY = math.random(111,275);
  elseif count == 2 then
    yinyangliaoX = math.random(147,462);
    yinyangliaoY = math.random(303,469);
  elseif count == 3 then
    yinyangliaoX = math.random(147,462);
    yinyangliaoY = math.random(500,662);
  end
  sysLog("yinyangliaoX = "..yinyangliaoX..", yinyangliaoY = "..yinyangliaoY);
  tap(yinyangliaoX,yinyangliaoY);
  mSleep(500);
	local medal5yinyangliaoTab = {medal5yinyangliao_col, medal5yinyangliao_pos, 95, 0, 0, width, height};
  medal5yinyangliaoX, medal5yinyangliaoY = myFindColor(medal5yinyangliaoTab);
	local medal4yinyangliaoTab = {medal4yinyangliao_col, medal4yinyangliao_pos, 95, 0, 0, width, height};
  medal4yinyangliaoX, medal4yinyangliaoY = myFindColor(medal4yinyangliaoTab);
	local medal3yinyangliaoTab = {medal3yinyangliao_col, medal3yinyangliao_pos, 95, 0, 0, width, height};
  medal3yinyangliaoX, medal3yinyangliaoY = myFindColor(medal3yinyangliaoTab);
  local medal2yinyangliaoTab = {medal2yinyangliao_col, medal2yinyangliao_pos, 95, 0, 0, width, height};
  medal2yinyangliaoX, medal2yinyangliaoY = myFindColor(medal2yinyangliaoTab);
	local medal1yinyangliaoTab = {medal1yinyangliao_col, medal1yinyangliao_pos, 95, 0, 0, width, height};
  medal1yinyangliaoX, medal1yinyangliaoY = myFindColor(medal1yinyangliaoTab);
	local medal0yinyangliaoTab = {medal0yinyangliao_col, medal0yinyangliao_pos, 95, 0, 0, width, height};
  medal0yinyangliaoX, medal0yinyangliaoY = myFindColor(medal0yinyangliaoTab);

	if yinyangliaotupoInput == '0' then
    if medal0yinyangliaoX ~= -1 and medal0yinyangliaoY ~= -1 then
			sysLog("medal0yinyangliaoX-old = "..medal0yinyangliaoX..", medal0yinyangliaoY-old = "..medal0yinyangliaoY);
			medal0yinyangliaoX = math.random(medal0yinyangliaoX-100,medal0yinyangliaoX+200);
			medal0yinyangliaoY = math.random(medal0yinyangliaoY-60,medal0yinyangliaoY+20);
			sysLog("medal0yinyangliaoX = "..medal0yinyangliaoX..", medal0yinyangliaoY = "..medal0yinyangliaoY);
			tap(medal0yinyangliaoX, medal0yinyangliaoY);
			--点击战斗对象
			checkAttackEnable();
		else
			if count == 1 then
				t1 = mTime();
			elseif count == 2 then
				t2 = mTime();
			elseif count == 3 then
				t3 = mTime();
			end
		end
	elseif yinyangliaotupoInput == '1' then
    if medal1yinyangliaoX ~= -1 and medal1yinyangliaoY ~= -1 then
			sysLog("medal1yinyangliaoX-old = "..medal1yinyangliaoX..", medal1yinyangliaoY-old = "..medal1yinyangliaoY);
			medal1yinyangliaoX = math.random(medal1yinyangliaoX-100,medal1yinyangliaoX+200);
			medal1yinyangliaoY = math.random(medal1yinyangliaoY-60,medal1yinyangliaoY+20);
			sysLog("medal1yinyangliaoX = "..medal1yinyangliaoX..", medal1yinyangliaoY = "..medal1yinyangliaoY);
			tap(medal1yinyangliaoX, medal1yinyangliaoY);
			--点击战斗对象
			checkAttackEnable();
		elseif medal0yinyangliaoX ~= -1 and medal0yinyangliaoY ~= -1 then
			sysLog("medal0yinyangliaoX-old = "..medal0yinyangliaoX..", medal0yinyangliaoY-old = "..medal0yinyangliaoY);
			medal0yinyangliaoX = math.random(medal0yinyangliaoX-100,medal0yinyangliaoX+200);
			medal0yinyangliaoY = math.random(medal0yinyangliaoY-60,medal0yinyangliaoY+20);
			sysLog("medal0yinyangliaoX = "..medal0yinyangliaoX..", medal0yinyangliaoY = "..medal0yinyangliaoY);
			tap(medal0yinyangliaoX, medal0yinyangliaoY);
			--点击战斗对象
			checkAttackEnable();
		else
			if count == 1 then
				t1 = mTime();
			elseif count == 2 then
				t2 = mTime();
			elseif count == 3 then
				t3 = mTime();
			end
		end
	elseif yinyangliaotupoInput == '2' then
    if medal2yinyangliaoX ~= -1 and medal2yinyangliaoY ~= -1 then
			sysLog("medal2yinyangliaoX-old = "..medal2yinyangliaoX..", medal2yinyangliaoY-old = "..medal2yinyangliaoY);
			medal2yinyangliaoX = math.random(medal2yinyangliaoX-100,medal2yinyangliaoX+200);
			medal2yinyangliaoY = math.random(medal2yinyangliaoY-60,medal2yinyangliaoY+20);
			sysLog("medal2yinyangliaoX = "..medal2yinyangliaoX..", medal2yinyangliaoY = "..medal2yinyangliaoY);
			tap(medal2yinyangliaoX, medal2yinyangliaoY);
			--点击战斗对象
			checkAttackEnable();
		elseif medal1yinyangliaoX ~= -1 and medal1yinyangliaoY ~= -1 then
			sysLog("medal1yinyangliaoX-old = "..medal1yinyangliaoX..", medal1yinyangliaoY-old = "..medal1yinyangliaoY);
			medal1yinyangliaoX = math.random(medal1yinyangliaoX-100,medal1yinyangliaoX+200);
			medal1yinyangliaoY = math.random(medal1yinyangliaoY-60,medal1yinyangliaoY+20);
			sysLog("medal1yinyangliaoX = "..medal1yinyangliaoX..", medal1yinyangliaoY = "..medal1yinyangliaoY);
			tap(medal1yinyangliaoX, medal1yinyangliaoY);
			--点击战斗对象
			checkAttackEnable();
		elseif medal0yinyangliaoX ~= -1 and medal0yinyangliaoY ~= -1 then
			sysLog("medal0yinyangliaoX-old = "..medal0yinyangliaoX..", medal0yinyangliaoY-old = "..medal0yinyangliaoY);
			medal0yinyangliaoX = math.random(medal0yinyangliaoX-100,medal0yinyangliaoX+200);
			medal0yinyangliaoY = math.random(medal0yinyangliaoY-60,medal0yinyangliaoY+20);
			sysLog("medal0yinyangliaoX = "..medal0yinyangliaoX..", medal0yinyangliaoY = "..medal0yinyangliaoY);
			tap(medal0yinyangliaoX, medal0yinyangliaoY);
			--点击战斗对象
			checkAttackEnable();
		else
			if count == 1 then
				t1 = mTime();
			elseif count == 2 then
				t2 = mTime();
			elseif count == 3 then
				t3 = mTime();
			end
		end
	elseif yinyangliaotupoInput == '3' then
    if medal3yinyangliaoX ~= -1 and medal3yinyangliaoY ~= -1 then
			sysLog("medal3yinyangliaoX-old = "..medal3yinyangliaoX..", medal3yinyangliaoY-old = "..medal3yinyangliaoY);
			medal3yinyangliaoX = math.random(medal3yinyangliaoX-100,medal3yinyangliaoX+200);
			medal3yinyangliaoY = math.random(medal3yinyangliaoY-60,medal3yinyangliaoY+20);
			sysLog("medal3yinyangliaoX = "..medal3yinyangliaoX..", medal3yinyangliaoY = "..medal3yinyangliaoY);
			tap(medal3yinyangliaoX, medal3yinyangliaoY);
			--点击战斗对象
			checkAttackEnable();
		elseif medal2yinyangliaoX ~= -1 and medal2yinyangliaoY ~= -1 then
			sysLog("medal2yinyangliaoX-old = "..medal2yinyangliaoX..", medal2yinyangliaoY-old = "..medal2yinyangliaoY);
			medal2yinyangliaoX = math.random(medal2yinyangliaoX-100,medal2yinyangliaoX+200);
			medal2yinyangliaoY = math.random(medal2yinyangliaoY-60,medal2yinyangliaoY+20);
			sysLog("medal2yinyangliaoX = "..medal2yinyangliaoX..", medal2yinyangliaoY = "..medal2yinyangliaoY);
			tap(medal2yinyangliaoX, medal2yinyangliaoY);
			--点击战斗对象
			checkAttackEnable();
		elseif medal1yinyangliaoX ~= -1 and medal1yinyangliaoY ~= -1 then
			sysLog("medal1yinyangliaoX-old = "..medal1yinyangliaoX..", medal1yinyangliaoY-old = "..medal1yinyangliaoY);
			medal1yinyangliaoX = math.random(medal1yinyangliaoX-100,medal1yinyangliaoX+200);
			medal1yinyangliaoY = math.random(medal1yinyangliaoY-60,medal1yinyangliaoY+20);
			sysLog("medal1yinyangliaoX = "..medal1yinyangliaoX..", medal1yinyangliaoY = "..medal1yinyangliaoY);
			tap(medal1yinyangliaoX, medal1yinyangliaoY);
			--点击战斗对象
			checkAttackEnable();
		elseif medal0yinyangliaoX ~= -1 and medal0yinyangliaoY ~= -1 then
			sysLog("medal0yinyangliaoX-old = "..medal0yinyangliaoX..", medal0yinyangliaoY-old = "..medal0yinyangliaoY);
			medal0yinyangliaoX = math.random(medal0yinyangliaoX-100,medal0yinyangliaoX+200);
			medal0yinyangliaoY = math.random(medal0yinyangliaoY-60,medal0yinyangliaoY+20);
			sysLog("medal0yinyangliaoX = "..medal0yinyangliaoX..", medal0yinyangliaoY = "..medal0yinyangliaoY);
			tap(medal0yinyangliaoX, medal0yinyangliaoY);
			--点击战斗对象
			checkAttackEnable();
		else
			if count == 1 then
				t1 = mTime();
			elseif count == 2 then
				t2 = mTime();
			elseif count == 3 then
				t3 = mTime();
			end
		end
	elseif yinyangliaotupoInput == '4' then
    if medal4yinyangliaoX ~= -1 and medal4yinyangliaoY ~= -1 then
			sysLog("medal4yinyangliaoX-old = "..medal4yinyangliaoX..", medal4yinyangliaoY-old = "..medal4yinyangliaoY);
			medal4yinyangliaoX = math.random(medal4yinyangliaoX-100,medal4yinyangliaoX+200);
			medal4yinyangliaoY = math.random(medal4yinyangliaoY-60,medal4yinyangliaoY+20);
			sysLog("medal4yinyangliaoX = "..medal4yinyangliaoX..", medal4yinyangliaoY = "..medal4yinyangliaoY);
			tap(medal4yinyangliaoX, medal4yinyangliaoY);
			--点击战斗对象
			checkAttackEnable();
		elseif medal3yinyangliaoX ~= -1 and medal3yinyangliaoY ~= -1 then
			sysLog("medal3yinyangliaoX-old = "..medal3yinyangliaoX..", medal3yinyangliaoY-old = "..medal3yinyangliaoY);
			medal3yinyangliaoX = math.random(medal3yinyangliaoX-100,medal3yinyangliaoX+200);
			medal3yinyangliaoY = math.random(medal3yinyangliaoY-60,medal3yinyangliaoY+20);
			sysLog("medal3yinyangliaoX = "..medal3yinyangliaoX..", medal3yinyangliaoY = "..medal3yinyangliaoY);
			tap(medal3yinyangliaoX, medal3yinyangliaoY);
			--点击战斗对象
			checkAttackEnable();
		elseif medal2yinyangliaoX ~= -1 and medal2yinyangliaoY ~= -1 then
			sysLog("medal2yinyangliaoX-old = "..medal2yinyangliaoX..", medal2yinyangliaoY-old = "..medal2yinyangliaoY);
			medal2yinyangliaoX = math.random(medal2yinyangliaoX-100,medal2yinyangliaoX+200);
			medal2yinyangliaoY = math.random(medal2yinyangliaoY-60,medal2yinyangliaoY+20);
			sysLog("medal2yinyangliaoX = "..medal2yinyangliaoX..", medal2yinyangliaoY = "..medal2yinyangliaoY);
			tap(medal2yinyangliaoX, medal2yinyangliaoY);
			--点击战斗对象
			checkAttackEnable();
		elseif medal1yinyangliaoX ~= -1 and medal1yinyangliaoY ~= -1 then
			sysLog("medal1yinyangliaoX-old = "..medal1yinyangliaoX..", medal1yinyangliaoY-old = "..medal1yinyangliaoY);
			medal1yinyangliaoX = math.random(medal1yinyangliaoX-100,medal1yinyangliaoX+200);
			medal1yinyangliaoY = math.random(medal1yinyangliaoY-60,medal1yinyangliaoY+20);
			sysLog("medal1yinyangliaoX = "..medal1yinyangliaoX..", medal1yinyangliaoY = "..medal1yinyangliaoY);
			tap(medal1yinyangliaoX, medal1yinyangliaoY);
			--点击战斗对象
			checkAttackEnable();
		elseif medal0yinyangliaoX ~= -1 and medal0yinyangliaoY ~= -1 then
			sysLog("medal0yinyangliaoX-old = "..medal0yinyangliaoX..", medal0yinyangliaoY-old = "..medal0yinyangliaoY);
			medal0yinyangliaoX = math.random(medal0yinyangliaoX-100,medal0yinyangliaoX+200);
			medal0yinyangliaoY = math.random(medal0yinyangliaoY-60,medal0yinyangliaoY+20);
			sysLog("medal0yinyangliaoX = "..medal0yinyangliaoX..", medal0yinyangliaoY = "..medal0yinyangliaoY);
			tap(medal0yinyangliaoX, medal0yinyangliaoY);
			--点击战斗对象
			checkAttackEnable();
		else
			if count == 1 then
				t1 = mTime();
			elseif count == 2 then
				t2 = mTime();
			elseif count == 3 then
				t3 = mTime();
			end
		end
	elseif yinyangliaotupoInput == '5' then
    if medal5yinyangliaoX ~= -1 and medal5yinyangliaoY ~= -1 then
			sysLog("medal5yinyangliaoX-old = "..medal5yinyangliaoX..", medal5yinyangliaoY-old = "..medal5yinyangliaoY);
			medal5yinyangliaoX = math.random(medal5yinyangliaoX-100,medal5yinyangliaoX+200);
			medal5yinyangliaoY = math.random(medal5yinyangliaoY-60,medal5yinyangliaoY+20);
			sysLog("medal5yinyangliaoX = "..medal5yinyangliaoX..", medal5yinyangliaoY = "..medal5yinyangliaoY);
			tap(medal5yinyangliaoX, medal5yinyangliaoY);
			--点击战斗对象
			checkAttackEnable();
		elseif medal4yinyangliaoX ~= -1 and medal4yinyangliaoY ~= -1 then
			sysLog("medal4yinyangliaoX-old = "..medal4yinyangliaoX..", medal4yinyangliaoY-old = "..medal4yinyangliaoY);
			medal4yinyangliaoX = math.random(medal4yinyangliaoX-100,medal4yinyangliaoX+200);
			medal4yinyangliaoY = math.random(medal4yinyangliaoY-60,medal4yinyangliaoY+20);
			sysLog("medal4yinyangliaoX = "..medal4yinyangliaoX..", medal4yinyangliaoY = "..medal4yinyangliaoY);
			tap(medal4yinyangliaoX, medal4yinyangliaoY);
			--点击战斗对象
			checkAttackEnable();
		elseif medal3yinyangliaoX ~= -1 and medal3yinyangliaoY ~= -1 then
			sysLog("medal3yinyangliaoX-old = "..medal3yinyangliaoX..", medal3yinyangliaoY-old = "..medal3yinyangliaoY);
			medal3yinyangliaoX = math.random(medal3yinyangliaoX-100,medal3yinyangliaoX+200);
			medal3yinyangliaoY = math.random(medal3yinyangliaoY-60,medal3yinyangliaoY+20);
			sysLog("medal3yinyangliaoX = "..medal3yinyangliaoX..", medal3yinyangliaoY = "..medal3yinyangliaoY);
			tap(medal3yinyangliaoX, medal3yinyangliaoY);
			--点击战斗对象
			checkAttackEnable();
		elseif medal2yinyangliaoX ~= -1 and medal2yinyangliaoY ~= -1 then
			sysLog("medal2yinyangliaoX-old = "..medal2yinyangliaoX..", medal2yinyangliaoY-old = "..medal2yinyangliaoY);
			medal2yinyangliaoX = math.random(medal2yinyangliaoX-100,medal2yinyangliaoX+200);
			medal2yinyangliaoY = math.random(medal2yinyangliaoY-60,medal2yinyangliaoY+20);
			sysLog("medal2yinyangliaoX = "..medal2yinyangliaoX..", medal2yinyangliaoY = "..medal2yinyangliaoY);
			tap(medal2yinyangliaoX, medal2yinyangliaoY);
			--点击战斗对象
			checkAttackEnable();
		elseif medal1yinyangliaoX ~= -1 and medal1yinyangliaoY ~= -1 then
			sysLog("medal1yinyangliaoX-old = "..medal1yinyangliaoX..", medal1yinyangliaoY-old = "..medal1yinyangliaoY);
			medal1yinyangliaoX = math.random(medal1yinyangliaoX-100,medal1yinyangliaoX+200);
			medal1yinyangliaoY = math.random(medal1yinyangliaoY-60,medal1yinyangliaoY+20);
			sysLog("medal1yinyangliaoX = "..medal1yinyangliaoX..", medal1yinyangliaoY = "..medal1yinyangliaoY);
			tap(medal1yinyangliaoX, medal1yinyangliaoY);
			--点击战斗对象
			checkAttackEnable();
		elseif medal0yinyangliaoX ~= -1 and medal0yinyangliaoY ~= -1 then
			sysLog("medal0yinyangliaoX-old = "..medal0yinyangliaoX..", medal0yinyangliaoY-old = "..medal0yinyangliaoY);
			medal0yinyangliaoX = math.random(medal0yinyangliaoX-100,medal0yinyangliaoX+200);
			medal0yinyangliaoY = math.random(medal0yinyangliaoY-60,medal0yinyangliaoY+20);
			sysLog("medal0yinyangliaoX = "..medal0yinyangliaoX..", medal0yinyangliaoY = "..medal0yinyangliaoY);
			tap(medal0yinyangliaoX, medal0yinyangliaoY);
			--点击战斗对象
			checkAttackEnable();
		else
			if count == 1 then
				t1 = mTime();
			elseif count == 2 then
				t2 = mTime();
			elseif count == 3 then
				t3 = mTime();
			end
		end
  end
  yinyangliaotupo();
end

function checkAttackEnable()
	mSleep(1000);
  local attackEnableTab = {attackEnable_col, attackEnable_pos, 95, 0, 0, width, height};
  attackEnableX, attackEnableY = myFindColor(attackEnableTab);
  --攻击按钮可用
	
	local attackDisableTab = {attackDisable_col, attackDisable_pos, 95, 0, 0, width, height};
  attackDisableX, attackDisableY = myFindColor(attackDisableTab);
  --攻击按钮不可用
  sysLog("attackDisableX = "..attackDisableX..", attackDisableY = "..attackDisableY);
  if attackEnableX ~= -1 and attackEnableY ~= -1 then
		sysLog("attackEnableX-old = "..attackEnableX..", attackEnableY-old = "..attackEnableY);
		attackEnableX = math.random(attackEnableX-60,attackEnableX+50);
		attackEnableY	= math.random(attackEnableY-15,attackEnableY+20);
		sysLog("attackEnableX = "..attackEnableX..", attackEnableY = "..attackEnableY);
    tap(attackEnableX, attackEnableY);
		checkYinyangliaotupo();
  elseif attackDisableX ~= -1 and attackDisableY ~= -1 then
    if count == 1 then
      t1 = mTime();
    elseif count == 2 then
      t2 = mTime();
    elseif count == 3 then
      t3 = mTime();
    end
    tap(math.random(143,370), math.random(103,671));
  end
end

function checkYinyangliaotupo()
	mSleep(3000);
  local attackEnableTab = {attackEnable_col, attackEnable_pos, 95, 0, 0, width, height};
  attackEnableX, attackEnableY = myFindColor(attackEnableTab);
  --攻击按钮可用
  
  if attackEnableX ~= -1 and attackEnableY ~= -1 then
    --检测到攻击按钮可用
    tap(math.random(143,370), math.random(103,671));
		tap(math.random(1207,1258), math.random(52,92));
		yinyangliaotupo();
  else
    if count == 1 then
      t1 = mTime();
    elseif count == 2 then
      t2 = mTime();
    elseif count == 3 then
      t3 = mTime();
    end
    battle();
    yinyangliaotupo();	
  end
end

function tupoClose()
	mSleep(1000);
  local tupoCloseTab = {tupoClose_col, tupoClose_pos, 95, 0, 0, width, height};
  tupoCloseX, tupoCloseY = myFindColor(tupoCloseTab);
  --结界突破关闭按钮
  sysLog("tupoCloseX="..tupoCloseX..", tupoCloseY="..tupoCloseY);
	if tupoCloseX ~= -1 and tupoCloseY ~= -1 then
		tap(tupoCloseX, tupoCloseY)
	else
		checkYinyangliaotupo();
	end
end