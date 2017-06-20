init("0", 1); --以当前应用 Home 键在右边初始化

require "util"
require "init"
require "jiejietupo.setTime"
require "jiejietupo.setCount"

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
			--checkAttackEnable();
		else
			setTime();
			setCount();
		end
	elseif yinyangliaotupoInput == '1' then
    if medal1yinyangliaoX ~= -1 and medal1yinyangliaoY ~= -1 then
			sysLog("medal1yinyangliaoX-old = "..medal1yinyangliaoX..", medal1yinyangliaoY-old = "..medal1yinyangliaoY);
			medal1yinyangliaoX = math.random(medal1yinyangliaoX-100,medal1yinyangliaoX+200);
			medal1yinyangliaoY = math.random(medal1yinyangliaoY-60,medal1yinyangliaoY+20);
			sysLog("medal1yinyangliaoX = "..medal1yinyangliaoX..", medal1yinyangliaoY = "..medal1yinyangliaoY);
			tap(medal1yinyangliaoX, medal1yinyangliaoY);
			--点击战斗对象
			--checkAttackEnable();
		elseif medal0yinyangliaoX ~= -1 and medal0yinyangliaoY ~= -1 then
			sysLog("medal0yinyangliaoX-old = "..medal0yinyangliaoX..", medal0yinyangliaoY-old = "..medal0yinyangliaoY);
			medal0yinyangliaoX = math.random(medal0yinyangliaoX-100,medal0yinyangliaoX+200);
			medal0yinyangliaoY = math.random(medal0yinyangliaoY-60,medal0yinyangliaoY+20);
			sysLog("medal0yinyangliaoX = "..medal0yinyangliaoX..", medal0yinyangliaoY = "..medal0yinyangliaoY);
			tap(medal0yinyangliaoX, medal0yinyangliaoY);
			--点击战斗对象
			--checkAttackEnable();
		else
			setTime();
			setCount();
		end
	elseif yinyangliaotupoInput == '2' then
    if medal2yinyangliaoX ~= -1 and medal2yinyangliaoY ~= -1 then
			sysLog("medal2yinyangliaoX-old = "..medal2yinyangliaoX..", medal2yinyangliaoY-old = "..medal2yinyangliaoY);
			medal2yinyangliaoX = math.random(medal2yinyangliaoX-100,medal2yinyangliaoX+200);
			medal2yinyangliaoY = math.random(medal2yinyangliaoY-60,medal2yinyangliaoY+20);
			sysLog("medal2yinyangliaoX = "..medal2yinyangliaoX..", medal2yinyangliaoY = "..medal2yinyangliaoY);
			tap(medal2yinyangliaoX, medal2yinyangliaoY);
			--点击战斗对象
			--checkAttackEnable();
		elseif medal1yinyangliaoX ~= -1 and medal1yinyangliaoY ~= -1 then
			sysLog("medal1yinyangliaoX-old = "..medal1yinyangliaoX..", medal1yinyangliaoY-old = "..medal1yinyangliaoY);
			medal1yinyangliaoX = math.random(medal1yinyangliaoX-100,medal1yinyangliaoX+200);
			medal1yinyangliaoY = math.random(medal1yinyangliaoY-60,medal1yinyangliaoY+20);
			sysLog("medal1yinyangliaoX = "..medal1yinyangliaoX..", medal1yinyangliaoY = "..medal1yinyangliaoY);
			tap(medal1yinyangliaoX, medal1yinyangliaoY);
			--点击战斗对象
			--checkAttackEnable();
		elseif medal0yinyangliaoX ~= -1 and medal0yinyangliaoY ~= -1 then
			sysLog("medal0yinyangliaoX-old = "..medal0yinyangliaoX..", medal0yinyangliaoY-old = "..medal0yinyangliaoY);
			medal0yinyangliaoX = math.random(medal0yinyangliaoX-100,medal0yinyangliaoX+200);
			medal0yinyangliaoY = math.random(medal0yinyangliaoY-60,medal0yinyangliaoY+20);
			sysLog("medal0yinyangliaoX = "..medal0yinyangliaoX..", medal0yinyangliaoY = "..medal0yinyangliaoY);
			tap(medal0yinyangliaoX, medal0yinyangliaoY);
			--点击战斗对象
			--checkAttackEnable();
		else
			setTime();
			setCount();
		end
	elseif yinyangliaotupoInput == '3' then
    if medal3yinyangliaoX ~= -1 and medal3yinyangliaoY ~= -1 then
			sysLog("medal3yinyangliaoX-old = "..medal3yinyangliaoX..", medal3yinyangliaoY-old = "..medal3yinyangliaoY);
			medal3yinyangliaoX = math.random(medal3yinyangliaoX-100,medal3yinyangliaoX+200);
			medal3yinyangliaoY = math.random(medal3yinyangliaoY-60,medal3yinyangliaoY+20);
			sysLog("medal3yinyangliaoX = "..medal3yinyangliaoX..", medal3yinyangliaoY = "..medal3yinyangliaoY);
			tap(medal3yinyangliaoX, medal3yinyangliaoY);
			--点击战斗对象
			--checkAttackEnable();
		elseif medal2yinyangliaoX ~= -1 and medal2yinyangliaoY ~= -1 then
			sysLog("medal2yinyangliaoX-old = "..medal2yinyangliaoX..", medal2yinyangliaoY-old = "..medal2yinyangliaoY);
			medal2yinyangliaoX = math.random(medal2yinyangliaoX-100,medal2yinyangliaoX+200);
			medal2yinyangliaoY = math.random(medal2yinyangliaoY-60,medal2yinyangliaoY+20);
			sysLog("medal2yinyangliaoX = "..medal2yinyangliaoX..", medal2yinyangliaoY = "..medal2yinyangliaoY);
			tap(medal2yinyangliaoX, medal2yinyangliaoY);
			--点击战斗对象
			--checkAttackEnable();
		elseif medal1yinyangliaoX ~= -1 and medal1yinyangliaoY ~= -1 then
			sysLog("medal1yinyangliaoX-old = "..medal1yinyangliaoX..", medal1yinyangliaoY-old = "..medal1yinyangliaoY);
			medal1yinyangliaoX = math.random(medal1yinyangliaoX-100,medal1yinyangliaoX+200);
			medal1yinyangliaoY = math.random(medal1yinyangliaoY-60,medal1yinyangliaoY+20);
			sysLog("medal1yinyangliaoX = "..medal1yinyangliaoX..", medal1yinyangliaoY = "..medal1yinyangliaoY);
			tap(medal1yinyangliaoX, medal1yinyangliaoY);
			--点击战斗对象
			--checkAttackEnable();
		elseif medal0yinyangliaoX ~= -1 and medal0yinyangliaoY ~= -1 then
			sysLog("medal0yinyangliaoX-old = "..medal0yinyangliaoX..", medal0yinyangliaoY-old = "..medal0yinyangliaoY);
			medal0yinyangliaoX = math.random(medal0yinyangliaoX-100,medal0yinyangliaoX+200);
			medal0yinyangliaoY = math.random(medal0yinyangliaoY-60,medal0yinyangliaoY+20);
			sysLog("medal0yinyangliaoX = "..medal0yinyangliaoX..", medal0yinyangliaoY = "..medal0yinyangliaoY);
			tap(medal0yinyangliaoX, medal0yinyangliaoY);
			--点击战斗对象
			--checkAttackEnable();
		else
			setTime();
			setCount();
		end
	elseif yinyangliaotupoInput == '4' then
    if medal4yinyangliaoX ~= -1 and medal4yinyangliaoY ~= -1 then
			sysLog("medal4yinyangliaoX-old = "..medal4yinyangliaoX..", medal4yinyangliaoY-old = "..medal4yinyangliaoY);
			medal4yinyangliaoX = math.random(medal4yinyangliaoX-100,medal4yinyangliaoX+200);
			medal4yinyangliaoY = math.random(medal4yinyangliaoY-60,medal4yinyangliaoY+20);
			sysLog("medal4yinyangliaoX = "..medal4yinyangliaoX..", medal4yinyangliaoY = "..medal4yinyangliaoY);
			tap(medal4yinyangliaoX, medal4yinyangliaoY);
			--点击战斗对象
			--checkAttackEnable();
		elseif medal3yinyangliaoX ~= -1 and medal3yinyangliaoY ~= -1 then
			sysLog("medal3yinyangliaoX-old = "..medal3yinyangliaoX..", medal3yinyangliaoY-old = "..medal3yinyangliaoY);
			medal3yinyangliaoX = math.random(medal3yinyangliaoX-100,medal3yinyangliaoX+200);
			medal3yinyangliaoY = math.random(medal3yinyangliaoY-60,medal3yinyangliaoY+20);
			sysLog("medal3yinyangliaoX = "..medal3yinyangliaoX..", medal3yinyangliaoY = "..medal3yinyangliaoY);
			tap(medal3yinyangliaoX, medal3yinyangliaoY);
			--点击战斗对象
			--checkAttackEnable();
		elseif medal2yinyangliaoX ~= -1 and medal2yinyangliaoY ~= -1 then
			sysLog("medal2yinyangliaoX-old = "..medal2yinyangliaoX..", medal2yinyangliaoY-old = "..medal2yinyangliaoY);
			medal2yinyangliaoX = math.random(medal2yinyangliaoX-100,medal2yinyangliaoX+200);
			medal2yinyangliaoY = math.random(medal2yinyangliaoY-60,medal2yinyangliaoY+20);
			sysLog("medal2yinyangliaoX = "..medal2yinyangliaoX..", medal2yinyangliaoY = "..medal2yinyangliaoY);
			tap(medal2yinyangliaoX, medal2yinyangliaoY);
			--点击战斗对象
			--checkAttackEnable();
		elseif medal1yinyangliaoX ~= -1 and medal1yinyangliaoY ~= -1 then
			sysLog("medal1yinyangliaoX-old = "..medal1yinyangliaoX..", medal1yinyangliaoY-old = "..medal1yinyangliaoY);
			medal1yinyangliaoX = math.random(medal1yinyangliaoX-100,medal1yinyangliaoX+200);
			medal1yinyangliaoY = math.random(medal1yinyangliaoY-60,medal1yinyangliaoY+20);
			sysLog("medal1yinyangliaoX = "..medal1yinyangliaoX..", medal1yinyangliaoY = "..medal1yinyangliaoY);
			tap(medal1yinyangliaoX, medal1yinyangliaoY);
			--点击战斗对象
			--checkAttackEnable();
		elseif medal0yinyangliaoX ~= -1 and medal0yinyangliaoY ~= -1 then
			sysLog("medal0yinyangliaoX-old = "..medal0yinyangliaoX..", medal0yinyangliaoY-old = "..medal0yinyangliaoY);
			medal0yinyangliaoX = math.random(medal0yinyangliaoX-100,medal0yinyangliaoX+200);
			medal0yinyangliaoY = math.random(medal0yinyangliaoY-60,medal0yinyangliaoY+20);
			sysLog("medal0yinyangliaoX = "..medal0yinyangliaoX..", medal0yinyangliaoY = "..medal0yinyangliaoY);
			tap(medal0yinyangliaoX, medal0yinyangliaoY);
			--点击战斗对象
			--checkAttackEnable();
		else
			setTime();
			setCount();
		end
	elseif yinyangliaotupoInput == '5' then
    if medal5yinyangliaoX ~= -1 and medal5yinyangliaoY ~= -1 then
			sysLog("medal5yinyangliaoX-old = "..medal5yinyangliaoX..", medal5yinyangliaoY-old = "..medal5yinyangliaoY);
			medal5yinyangliaoX = math.random(medal5yinyangliaoX-100,medal5yinyangliaoX+200);
			medal5yinyangliaoY = math.random(medal5yinyangliaoY-60,medal5yinyangliaoY+20);
			sysLog("medal5yinyangliaoX = "..medal5yinyangliaoX..", medal5yinyangliaoY = "..medal5yinyangliaoY);
			tap(medal5yinyangliaoX, medal5yinyangliaoY);
			--点击战斗对象
			--checkAttackEnable();
		elseif medal4yinyangliaoX ~= -1 and medal4yinyangliaoY ~= -1 then
			sysLog("medal4yinyangliaoX-old = "..medal4yinyangliaoX..", medal4yinyangliaoY-old = "..medal4yinyangliaoY);
			medal4yinyangliaoX = math.random(medal4yinyangliaoX-100,medal4yinyangliaoX+200);
			medal4yinyangliaoY = math.random(medal4yinyangliaoY-60,medal4yinyangliaoY+20);
			sysLog("medal4yinyangliaoX = "..medal4yinyangliaoX..", medal4yinyangliaoY = "..medal4yinyangliaoY);
			tap(medal4yinyangliaoX, medal4yinyangliaoY);
			--点击战斗对象
			--checkAttackEnable();
		elseif medal3yinyangliaoX ~= -1 and medal3yinyangliaoY ~= -1 then
			sysLog("medal3yinyangliaoX-old = "..medal3yinyangliaoX..", medal3yinyangliaoY-old = "..medal3yinyangliaoY);
			medal3yinyangliaoX = math.random(medal3yinyangliaoX-100,medal3yinyangliaoX+200);
			medal3yinyangliaoY = math.random(medal3yinyangliaoY-60,medal3yinyangliaoY+20);
			sysLog("medal3yinyangliaoX = "..medal3yinyangliaoX..", medal3yinyangliaoY = "..medal3yinyangliaoY);
			tap(medal3yinyangliaoX, medal3yinyangliaoY);
			--点击战斗对象
			--checkAttackEnable();
		elseif medal2yinyangliaoX ~= -1 and medal2yinyangliaoY ~= -1 then
			sysLog("medal2yinyangliaoX-old = "..medal2yinyangliaoX..", medal2yinyangliaoY-old = "..medal2yinyangliaoY);
			medal2yinyangliaoX = math.random(medal2yinyangliaoX-100,medal2yinyangliaoX+200);
			medal2yinyangliaoY = math.random(medal2yinyangliaoY-60,medal2yinyangliaoY+20);
			sysLog("medal2yinyangliaoX = "..medal2yinyangliaoX..", medal2yinyangliaoY = "..medal2yinyangliaoY);
			tap(medal2yinyangliaoX, medal2yinyangliaoY);
			--点击战斗对象
			--checkAttackEnable();
		elseif medal1yinyangliaoX ~= -1 and medal1yinyangliaoY ~= -1 then
			sysLog("medal1yinyangliaoX-old = "..medal1yinyangliaoX..", medal1yinyangliaoY-old = "..medal1yinyangliaoY);
			medal1yinyangliaoX = math.random(medal1yinyangliaoX-100,medal1yinyangliaoX+200);
			medal1yinyangliaoY = math.random(medal1yinyangliaoY-60,medal1yinyangliaoY+20);
			sysLog("medal1yinyangliaoX = "..medal1yinyangliaoX..", medal1yinyangliaoY = "..medal1yinyangliaoY);
			tap(medal1yinyangliaoX, medal1yinyangliaoY);
			--点击战斗对象
			--checkAttackEnable();
		elseif medal0yinyangliaoX ~= -1 and medal0yinyangliaoY ~= -1 then
			sysLog("medal0yinyangliaoX-old = "..medal0yinyangliaoX..", medal0yinyangliaoY-old = "..medal0yinyangliaoY);
			medal0yinyangliaoX = math.random(medal0yinyangliaoX-100,medal0yinyangliaoX+200);
			medal0yinyangliaoY = math.random(medal0yinyangliaoY-60,medal0yinyangliaoY+20);
			sysLog("medal0yinyangliaoX = "..medal0yinyangliaoX..", medal0yinyangliaoY = "..medal0yinyangliaoY);
			tap(medal0yinyangliaoX, medal0yinyangliaoY);
			--点击战斗对象
			--checkAttackEnable();
		else
			setTime();
			setCount();
		end
  end
end
