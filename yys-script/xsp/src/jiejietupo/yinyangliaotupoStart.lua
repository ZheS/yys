init("0", 1); --以当前应用 Home 键在右边初始化

require "util"
require "init"
require "jiejietupo.tupoStart"

function yinyangliaotupoStart()
	mSleep(0);
	
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
	local attackEnableTab = {attackEnable_col, attackEnable_pos, 95, 0, 0, width, height};
  attackEnableX, attackEnableY = myFindColor(attackEnableTab);
  --攻击按钮可用
	local attackDisableTab = {attackDisable_col, attackDisable_pos, 95, 0, 0, width, height};
  attackDisableX, attackDisableY = myFindColor(attackDisableTab);
  --攻击按钮不可用
	local cancelInviteTab = {cancelInvite_col, cancelInvite_pos, 95, 0, 0, width, height};
  cancelInviteX, cancelInviteY = myFindColor(cancelInviteTab);
  --邀请组队界面中的取消图标
	
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
		if count ~= 0 then
			tupoStart();
		else 
		end
		yinyangliaotupoStart();
	elseif attackEnableX ~= -1 and attackEnableY ~= -1 then
		if attackFlag == 1 then
			mSleep(200);
			sysLog("attackEnableX-old = "..attackEnableX..", attackEnableY-old = "..attackEnableY);
			attackEnableX = math.random(attackEnableX-60,attackEnableX+50);
			attackEnableY	= math.random(attackEnableY-15,attackEnableY+20);
			tap(attackEnableX, attackEnableY);
			sysLog("attackEnableX = "..attackEnableX..", attackEnableY = "..attackEnableY);
			attackFlag = 2;
			countTemp = count;
			mSleep(1000);
		elseif attackFlag == 2 then
			tap(math.random(143,370), math.random(103,671)); -- 空白处随便点一下
			sysLog("空白处随便点一下");
			mSleep(1000);
			tap(math.random(1207,1258), math.random(52,92)); -- 关闭结界突破界面
			sysLog("关闭结界突破界面");
			attackFlag = 1;
			countTemp = 0;
		end
  elseif attackDisableX ~= -1 and attackDisableY ~= -1 then
		sysLog("attackDisableX-old = "..attackDisableX..", attackDisableY-old = "..attackDisableY);
    countTemp = count;
		addTime();
		addCount();
    tap(math.random(143,370), math.random(103,671));
	elseif cancelInviteX ~= -1 and cancelInviteY ~= -1 then
    sysLog("cancelInviteX-old="..cancelInviteX..", cancelInviteY-old="..cancelInviteY);
		cancelInviteX = math.random(462,624);
		cancelInviteY = math.random(430,470);
		tap(cancelInviteX,cancelInviteY);
		sysLog("cancelInviteX="..cancelInviteX..", cancelInviteY="..cancelInviteY);
		yinyangliaotupo();
	else
		yinyangliaotupo();
  end
end