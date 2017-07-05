init("0", 1); --以当前应用 Home 键在右边初始化

require "util"
require "init"

local round1Tab = {round1_col, round1_pos, 95, 0, 0, width, height};
local round2Tab = {round2_col, round2_pos, 95, 0, 0, width, height};
local round3Tab = {round3_col, round3_pos, 95, 0, 0, width, height};
local signedTab = {signed_col, signed_pos, 95, 0, 0, width, height};

function checkRound()
  round1X, round1Y = myFindColor(round1Tab);
	--sysLog("round1X = "..round1X.."; round1Y = "..round1Y);
  --第一回合
  round2X, round2Y = myFindColor(round2Tab);
	--sysLog("round2X = "..round2X.."; round2Y = "..round2Y);
  --第二回合
  round3X, round3Y = myFindColor(round3Tab);
	--sysLog("round3X = "..round3X.."; round3Y = "..round3Y);
  --第三回合
	
	if round1X ~= -1 and round1Y ~= -1 then
		sysLog("进入第一回合");
		mSleep(200);
		if round1Input == "0" then
			sysLog("标记右边");
			right();
		elseif round1Input == "1" then
			sysLog("标记中间");
			for i = 0,math.random(1,2),1 do 
				middle1();
			end
		elseif round1Input == "2" then
			sysLog("标记左边");
			for i = 0,math.random(1,2),1 do 
				left1();
			end
		else
			sysLog("不标记");
		end
	elseif round2X ~= -1 and round2Y ~= -1 then
		sysLog("进入第二回合");
		mSleep(200);
		if round2Input == "0" then
			sysLog("标记右边");
			right();
		elseif round2Input == "1" then
			sysLog("标记中间");
			for i = 0,math.random(1,2),1 do 
				middle2();
			end
			tap(biaojiX,biaojiY);
		elseif round2Input == "2" then
			sysLog("标记左边");
			for i = 0,math.random(1,2),1 do 
				left2();
			end
		else
			sysLog("不标记");
		end
	elseif round3X ~= -1 and round3Y ~= -1 then
		sysLog("进入第三回合");
		mSleep(200);
		if round3Input == "0" then
			sysLog("标记右边");
			right();
		elseif round3Input == "1" then
			sysLog("标记中间");
			for i = 0,math.random(2,3),1 do 
				middle3();
			end
		elseif round3Input == "2" then
			sysLog("标记左边");
			for i = 0,math.random(2,3),1 do 
				left3();
			end
		else
			sysLog("不标记");
		end
	else
		yuhun();
	end
end

function right()
	signedX = math.random(943,1002);
	signedY = math.random(159,248);
	tap(signedX,signedY);
	sysLog("点击坐标位置：x="..signedX..",y="..signedY)
	signedX, signedY = myFindColor(signedTab);
	while signedX == -1 and signedY == -1 do
		sysLog("未标记成功")
		signedX = math.random(943,1002);
		signedY = math.random(159,248);
		tap(signedX,signedY);
		sysLog("点击坐标位置：x="..signedX..",y="..signedY)
		signedX, signedY = myFindColor(signedTab);
	end
	sysLog("已标记成功")
end

function right1()
	local biaojiX = math.random(943,1002);
	local biaojiY = math.random(159,255);
	tap(biaojiX,biaojiY);
	mSleep(math.random(200,400));
	sysLog("点击坐标位置：x="..biaojiX..",y="..biaojiY)
end

function middle1()
	local biaojiX = math.random(609,705);
	local biaojiY = math.random(95,256);
	tap(biaojiX,biaojiY);
	mSleep(math.random(200,400));
	sysLog("点击坐标位置：x="..biaojiX..",y="..biaojiY)
end

function left1()
	local biaojiX = math.random(267,370);
	local biaojiY = math.random(144,254);
	tap(biaojiX,biaojiY);
	mSleep(math.random(200,400));
	sysLog("点击坐标位置：x="..biaojiX..",y="..biaojiY)
end

function right2()
	local biaojiX = math.random(927,1036);
	local biaojiY = math.random(116,248);
	tap(biaojiX,biaojiY);
	mSleep(math.random(200,400));
	sysLog("点击坐标位置：x="..biaojiX..",y="..biaojiY)
end

function middle2()
	local biaojiX = math.random(569,697);
	local biaojiY = math.random(18,152);
	tap(biaojiX,biaojiY);
	mSleep(math.random(200,400));
	sysLog("点击坐标位置：x="..biaojiX..",y="..biaojiY)
end

function left2()
	local biaojiX = math.random(305,389);
	local biaojiY = math.random(171,275);
	tap(biaojiX,biaojiY);
	mSleep(math.random(200,400));
	sysLog("点击坐标位置：x="..biaojiX..",y="..biaojiY)
end

function right3()
	local biaojiX = math.random(935,1016);
	local biaojiY = math.random(144,270);
	tap(biaojiX,biaojiY);
	mSleep(math.random(200,400));
	sysLog("点击坐标位置：x="..biaojiX..",y="..biaojiY)
end

function middle3()
	local biaojiX = math.random(547,773);
	local biaojiY = math.random(120,237);
	tap(biaojiX,biaojiY);
	mSleep(math.random(200,400));
	sysLog("点击坐标位置：x="..biaojiX..",y="..biaojiY)
end

function left3()
	local biaojiX = math.random(308,377);
	local biaojiY = math.random(133,267);
	tap(biaojiX,biaojiY);
	mSleep(math.random(200,400));
	sysLog("点击坐标位置：x="..biaojiX..",y="..biaojiY)
end