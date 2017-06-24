init("0", 1); --以当前应用 Home 键在右边初始化

require "util"
require "init"

function moveYinyangliao()
	x1 = math.random(862,1187);
	y1 = math.random(599,665);
	x2 = math.random(862,1187);
	y2 = math.random(173,238);
	move(x1,y1,x2,y2);
end

function chooseMedal0()
	local medal0yinyangliaoTab = {medal0yinyangliao_col, medal0yinyangliao_pos, 95, 0, 0, width, height};
  medal0yinyangliaoX, medal0yinyangliaoY = myFindColor(medal0yinyangliaoTab);
	if medal0yinyangliaoX ~= -1 and medal0yinyangliaoY ~= -1 then
		medal0yinyangliao();
	else
		moveYinyangliao();
		mSleep(2000);
		chooseMedal0();
	end
end

function chooseMedal1()
	local medal1yinyangliaoTab = {medal1yinyangliao_col, medal1yinyangliao_pos, 95, 0, 0, width, height};
  medal1yinyangliaoX, medal1yinyangliaoY = myFindColor(medal1yinyangliaoTab);
	local medal0yinyangliaoTab = {medal0yinyangliao_col, medal0yinyangliao_pos, 95, 0, 0, width, height};
  medal0yinyangliaoX, medal0yinyangliaoY = myFindColor(medal0yinyangliaoTab);
	if medal1yinyangliaoX ~= -1 and medal1yinyangliaoY ~= -1 then
		medal1yinyangliao();
	elseif medal0yinyangliaoX ~= -1 and medal0yinyangliaoY ~= -1 then
		medal0yinyangliao();
	else
		moveYinyangliao();
		mSleep(2000);
		chooseMedal1();
	end
end

function chooseMedal2()
	local medal2yinyangliaoTab = {medal2yinyangliao_col, medal2yinyangliao_pos, 95, 0, 0, width, height};
  medal2yinyangliaoX, medal2yinyangliaoY = myFindColor(medal2yinyangliaoTab);
	local medal1yinyangliaoTab = {medal1yinyangliao_col, medal1yinyangliao_pos, 95, 0, 0, width, height};
  medal1yinyangliaoX, medal1yinyangliaoY = myFindColor(medal1yinyangliaoTab);
	local medal0yinyangliaoTab = {medal0yinyangliao_col, medal0yinyangliao_pos, 95, 0, 0, width, height};
  medal0yinyangliaoX, medal0yinyangliaoY = myFindColor(medal0yinyangliaoTab);
	if medal2yinyangliaoX ~= -1 and medal2yinyangliaoY ~= -1 then
		medal2yinyangliao();
	elseif medal1yinyangliaoX ~= -1 and medal1yinyangliaoY ~= -1 then
		medal1yinyangliao();
	elseif medal0yinyangliaoX ~= -1 and medal0yinyangliaoY ~= -1 then
		medal0yinyangliao();
	else
		moveYinyangliao();
		mSleep(2000);
		chooseMedal2();
	end
end

function chooseMedal3()
	local medal3yinyangliaoTab = {medal3yinyangliao_col, medal3yinyangliao_pos, 95, 0, 0, width, height};
  medal3yinyangliaoX, medal3yinyangliaoY = myFindColor(medal3yinyangliaoTab);
	local medal2yinyangliaoTab = {medal2yinyangliao_col, medal2yinyangliao_pos, 95, 0, 0, width, height};
  medal2yinyangliaoX, medal2yinyangliaoY = myFindColor(medal2yinyangliaoTab);
	local medal1yinyangliaoTab = {medal1yinyangliao_col, medal1yinyangliao_pos, 95, 0, 0, width, height};
  medal1yinyangliaoX, medal1yinyangliaoY = myFindColor(medal1yinyangliaoTab);
	local medal0yinyangliaoTab = {medal0yinyangliao_col, medal0yinyangliao_pos, 95, 0, 0, width, height};
  medal0yinyangliaoX, medal0yinyangliaoY = myFindColor(medal0yinyangliaoTab);
  if medal3yinyangliaoX ~= -1 and medal3yinyangliaoY ~= -1 then
		medal3yinyangliao();
	elseif medal2yinyangliaoX ~= -1 and medal2yinyangliaoY ~= -1 then
		medal2yinyangliao();
	elseif medal1yinyangliaoX ~= -1 and medal1yinyangliaoY ~= -1 then
		medal1yinyangliao();
	elseif medal0yinyangliaoX ~= -1 and medal0yinyangliaoY ~= -1 then
		medal0yinyangliao();
	else
		moveYinyangliao();
		mSleep(2000);
		chooseMedal3();
	end
end

function chooseMedal4()
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
	if medal4yinyangliaoX ~= -1 and medal4yinyangliaoY ~= -1 then
		medal4yinyangliao();
	elseif medal3yinyangliaoX ~= -1 and medal3yinyangliaoY ~= -1 then
		medal3yinyangliao();
	elseif medal2yinyangliaoX ~= -1 and medal2yinyangliaoY ~= -1 then
		medal2yinyangliao();
	elseif medal1yinyangliaoX ~= -1 and medal1yinyangliaoY ~= -1 then
		medal1yinyangliao();
	elseif medal0yinyangliaoX ~= -1 and medal0yinyangliaoY ~= -1 then
		medal0yinyangliao();
	else
		moveYinyangliao();
		mSleep(2000);
		chooseMedal4();
	end
end

function chooseMedal5()
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
	if medal5yinyangliaoX ~= -1 and medal5yinyangliaoY ~= -1 then
		medal5yinyangliao();
	elseif medal4yinyangliaoX ~= -1 and medal4yinyangliaoY ~= -1 then
		medal4yinyangliao();
	elseif medal3yinyangliaoX ~= -1 and medal3yinyangliaoY ~= -1 then
		medal3yinyangliao();
	elseif medal2yinyangliaoX ~= -1 and medal2yinyangliaoY ~= -1 then
		medal2yinyangliao();
	elseif medal1yinyangliaoX ~= -1 and medal1yinyangliaoY ~= -1 then
		medal1yinyangliao();
	elseif medal0yinyangliaoX ~= -1 and medal0yinyangliaoY ~= -1 then
		medal0yinyangliao();
	else
		moveYinyangliao();
		mSleep(2000);
		chooseMedal5();
	end
end

function medal0yinyangliao()
	medal0yinyangliaoX = math.random(medal0yinyangliaoX-100,medal0yinyangliaoX+200);
	medal0yinyangliaoY = math.random(medal0yinyangliaoY-60,medal0yinyangliaoY+20);
	tap(medal0yinyangliaoX, medal0yinyangliaoY);
	yinyangliaotupoStart();
end

function medal1yinyangliao()
	sysLog("medal1yinyangliaoX-old = "..medal1yinyangliaoX..", medal1yinyangliaoY-old = "..medal1yinyangliaoY);
	medal1yinyangliaoX = math.random(medal1yinyangliaoX-100,medal1yinyangliaoX+200);
	medal1yinyangliaoY = math.random(medal1yinyangliaoY-60,medal1yinyangliaoY+20);
	tap(medal1yinyangliaoX, medal1yinyangliaoY);
	yinyangliaotupoStart();
end

function medal2yinyangliao()
	sysLog("medal2yinyangliaoX-old = "..medal2yinyangliaoX..", medal2yinyangliaoY-old = "..medal2yinyangliaoY);
	medal2yinyangliaoX = math.random(medal2yinyangliaoX-100,medal2yinyangliaoX+200);
	medal2yinyangliaoY = math.random(medal2yinyangliaoY-60,medal2yinyangliaoY+20);
	tap(medal2yinyangliaoX, medal2yinyangliaoY);
	yinyangliaotupoStart();
end

function medal3yinyangliao()
	sysLog("medal3yinyangliaoX-old = "..medal3yinyangliaoX..", medal3yinyangliaoY-old = "..medal3yinyangliaoY);
	medal3yinyangliaoX = math.random(medal3yinyangliaoX-100,medal3yinyangliaoX+200);
	medal3yinyangliaoY = math.random(medal3yinyangliaoY-60,medal3yinyangliaoY+20);
	tap(medal3yinyangliaoX, medal3yinyangliaoY);
	yinyangliaotupoStart();
end

function medal4yinyangliao()
	sysLog("medal4yinyangliaoX-old = "..medal4yinyangliaoX..", medal4yinyangliaoY-old = "..medal4yinyangliaoY);
	medal4yinyangliaoX = math.random(medal4yinyangliaoX-100,medal4yinyangliaoX+200);
	medal4yinyangliaoY = math.random(medal4yinyangliaoY-60,medal4yinyangliaoY+20);
	tap(medal4yinyangliaoX, medal4yinyangliaoY);
	yinyangliaotupoStart();
end

function medal5yinyangliao()
	sysLog("medal5yinyangliaoX-old = "..medal5yinyangliaoX..", medal5yinyangliaoY-old = "..medal5yinyangliaoY);
	medal5yinyangliaoX = math.random(medal5yinyangliaoX-100,medal5yinyangliaoX+200);
	medal5yinyangliaoY = math.random(medal5yinyangliaoY-60,medal5yinyangliaoY+20);
	tap(medal5yinyangliaoX, medal5yinyangliaoY);
	yinyangliaotupoStart();
end