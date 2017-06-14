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
  sysLog("jiejietupoX="..jiejietupoX..", jiejietupoY="..jiejietupoY);
	local yinyangliaotupoTab = {yinyangliaotupo_col, yinyangliaotupo_pos, 95, 0, 0, width, height};
  yinyangliaotupoX, yinyangliaotupoY = myFindColor(yinyangliaotupoTab);
  --阴阳寮突破按钮
  sysLog("yinyangliaotupoX="..yinyangliaotupoX..", yinyangliaotupoY="..yinyangliaotupoY);
	local yinyangliaotupoPageTab = {yinyangliaotupoPage_col, yinyangliaotupoPage_pos, 95, 0, 0, width, height};
  yinyangliaotupoPageX, yinyangliaotupoPageY = myFindColor(yinyangliaotupoPageTab);
  --阴阳寮突破界面
  sysLog("yinyangliaotupoPageX="..yinyangliaotupoPageX..", yinyangliaotupoPageY="..yinyangliaotupoPageY);
  if tansuoX ~= -1 and tansuoY ~= -1 then
    tap(tansuoX,tansuoY);
		yinyangliaotupoStart();
	elseif jiejietupoX ~= -1 and jiejietupoY ~= -1 then
    tap(jiejietupoX,jiejietupoY);
		yinyangliaotupoStart();
  elseif yinyangliaotupoX ~= -1 and yinyangliaotupoY ~= -1 then
    tap(yinyangliaotupoX,yinyangliaotupoY);
		yinyangliaotupoStart();
	elseif yinyangliaotupoPageX ~= -1 and yinyangliaotupoPageY ~= -1 then
    tap(yinyangliaotupoPageX,yinyangliaotupoPageY);
		tupoStart();
	else
		yinyangliaotupoStart();
  end
end

function tupoStart()
  if count == 1 then
    yinyangliaoX = width*(150/667);
    yinyangliaoY = height*(4/15);
  elseif count == 2 then
    yinyangliaoX = width*(150/667);
    yinyangliaoY = height*(1/2);
  elseif count == 3 then
    yinyangliaoX = width*(150/667);
    yinyangliaoY = height*(11/15);
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
		sysLog("medal0yinyangliaoX = "..medal0yinyangliaoX..", medal0yinyangliaoY = "..medal0yinyangliaoY);
    if medal0yinyangliaoX ~= -1 and medal0yinyangliaoY ~= -1 then
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
			tap(medal1yinyangliaoX, medal1yinyangliaoY);
			--点击战斗对象
			checkAttackEnable();
		elseif medal0yinyangliaoX ~= -1 and medal0yinyangliaoY ~= -1 then
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
			tap(medal2yinyangliaoX, medal2yinyangliaoY);
			--点击战斗对象
			checkAttackEnable();
		elseif medal1yinyangliaoX ~= -1 and medal1yinyangliaoY ~= -1 then
			tap(medal1yinyangliaoX, medal1yinyangliaoY);
			--点击战斗对象
			checkAttackEnable();
		elseif medal0yinyangliaoX ~= -1 and medal0yinyangliaoY ~= -1 then
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
			tap(medal3yinyangliaoX, medal3yinyangliaoY);
			--点击战斗对象
			checkAttackEnable();
		elseif medal2yinyangliaoX ~= -1 and medal2yinyangliaoY ~= -1 then
			tap(medal2yinyangliaoX, medal2yinyangliaoY);
			--点击战斗对象
			checkAttackEnable();
		elseif medal1yinyangliaoX ~= -1 and medal1yinyangliaoY ~= -1 then
			tap(medal1yinyangliaoX, medal1yinyangliaoY);
			--点击战斗对象
			checkAttackEnable();
		elseif medal0yinyangliaoX ~= -1 and medal0yinyangliaoY ~= -1 then
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
			tap(medal4yinyangliaoX, medal4yinyangliaoY);
			--点击战斗对象
			checkAttackEnable();
		elseif medal3yinyangliaoX ~= -1 and medal3yinyangliaoY ~= -1 then
			tap(medal3yinyangliaoX, medal3yinyangliaoY);
			--点击战斗对象
			checkAttackEnable();
		elseif medal2yinyangliaoX ~= -1 and medal2yinyangliaoY ~= -1 then
			tap(medal2yinyangliaoX, medal2yinyangliaoY);
			--点击战斗对象
			checkAttackEnable();
		elseif medal1yinyangliaoX ~= -1 and medal1yinyangliaoY ~= -1 then
			tap(medal1yinyangliaoX, medal1yinyangliaoY);
			--点击战斗对象
			checkAttackEnable();
		elseif medal0yinyangliaoX ~= -1 and medal0yinyangliaoY ~= -1 then
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
			tap(medal5yinyangliaoX, medal5yinyangliaoY);
			--点击战斗对象
			checkAttackEnable();
		elseif medal4yinyangliaoX ~= -1 and medal4yinyangliaoY ~= -1 then
			tap(medal4yinyangliaoX, medal4yinyangliaoY);
			--点击战斗对象
			checkAttackEnable();
		elseif medal3yinyangliaoX ~= -1 and medal3yinyangliaoY ~= -1 then
			tap(medal3yinyangliaoX, medal3yinyangliaoY);
			--点击战斗对象
			checkAttackEnable();
		elseif medal2yinyangliaoX ~= -1 and medal2yinyangliaoY ~= -1 then
			tap(medal2yinyangliaoX, medal2yinyangliaoY);
			--点击战斗对象
			checkAttackEnable();
		elseif medal1yinyangliaoX ~= -1 and medal1yinyangliaoY ~= -1 then
			tap(medal1yinyangliaoX, medal1yinyangliaoY);
			--点击战斗对象
			checkAttackEnable();
		elseif medal0yinyangliaoX ~= -1 and medal0yinyangliaoY ~= -1 then
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
	sysLog("attackEnableX = "..attackEnableX..", attackEnableY = "..attackEnableY);
	local attackDisableTab = {attackDisable_col, attackDisable_pos, 95, 0, 0, width, height};
  attackDisableX, attackDisableY = myFindColor(attackDisableTab);
  --攻击按钮不可用
  sysLog("attackDisableX = "..attackDisableX..", attackDisableY = "..attackDisableY);
  if attackEnableX ~= -1 and attackEnableY ~= -1 then
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
    tap(yinyangliaoX, yinyangliaoY);
  end
end

function checkYinyangliaotupo()
	mSleep(3000);
  local attackEnableTab = {attackEnable_col, attackEnable_pos, 95, 0, 0, width, height};
  attackEnableX, attackEnableY = myFindColor(attackEnableTab);
  --攻击按钮可用
  local readyTab = {ready_col, ready_pos, 95, 0, 0, width, height};
  readyX, readyY = myFindColor(readyTab);
  --待准备界面的鼓
  
  sysLog("attackEnableX="..attackEnableX..", attackEnableY="..attackEnableY);
  sysLog("readyX="..readyX..", readyY="..readyY);
  
  if attackEnableX ~= -1 and attackEnableY ~= -1 then
    --检测到攻击按钮可用
    tap(yinyangliaoX, yinyangliaoY);
		tupoClose();
		yinyangliaotupo();
  elseif readyX ~= -1 and readyY ~= -1 then
    if count == 1 then
      t1 = mTime();
    elseif count == 2 then
      t2 = mTime();
    elseif count == 3 then
      t3 = mTime();
    end
    battle();
    yinyangliaotupo();	
  else
    checkYinyangliaotupo();
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