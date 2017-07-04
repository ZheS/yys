init("0", 1); --以当前应用 Home 键在右边初始化

require "util"
require "init"

roundCount = 0;

function checkRound()
	local round1Tab = {round1_col, round1_pos, 95, 0, 0, width, height};
  round1X, round1Y = myFindColor(round1Tab);
	--sysLog("round1X = "..round1X.."; round1Y = "..round1Y);
  --第一回合
	local round2Tab = {round2_col, round2_pos, 95, 0, 0, width, height};
  round2X, round2Y = myFindColor(round2Tab);
	--sysLog("round2X = "..round2X.."; round2Y = "..round2Y);
  --第二回合
	local round3Tab = {round3_col, round3_pos, 95, 0, 0, width, height};
  round3X, round3Y = myFindColor(round3Tab);
	--sysLog("round3X = "..round3X.."; round3Y = "..round3Y);
  --第三回合
	
	if round1X ~= -1 and round1Y ~= -1 then
		sysLog("进入第一回合");
		mSleep(300);
		for i = 0,math.random(1,2),1 do 
			right1();
		end
		roundCount = 1;
	elseif round2X ~= -1 and round2Y ~= -1 then
		sysLog("进入第二回合");
		mSleep(300);
		for i = 0,math.random(1,2),1 do 
			right2();
		end
		roundCount = 2;
	elseif round3X ~= -1 and round3Y ~= -1 then
		sysLog("进入第三回合");
		mSleep(300);
		for i = 0,math.random(1,2),1 do 
			right3();
		end
		roundCount = 3;
	else
		yuhun();
	end
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