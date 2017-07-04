require "util"
require "init"

local readyTab = {ready_col, ready_pos, 95, 0, 0, width, height};
local battleWinTab = {battleWin_col, battleWin_pos, 95, 0, 0, width, height};
local battleLoseTab = {battleLose_col, battleLose_pos, 95, 0, 0, width, height};
local battleWinDamoTab = {battleWinDamo_col, battleWinDamo_pos, 95, 0, 0, width, height};
local battleWinGiftTab = {battleWinGift_col, battleWinGift_pos, 95, 0, 0, width, height};

isBattle = "false";

function battle()
	if isBattle == "false" then
		readyX, readyY = myFindColor(readyTab);
		if readyX ~= -1 and readyY ~= -1 then
			ready();
		end
	elseif isBattle == "true" and roundCount == 3 then
		battleWinGiftX, battleWinGiftY = myFindColor(battleWinGiftTab);
		if battleWinGiftX ~= -1 and battleWinGiftY ~= -1 then
			sysLog("礼包已打开");
			battleWinGift();
		else
			sysLog("礼包未打开");
			battleWinX = math.random(1123,1236);
			battleWinY = math.random(454,591);
			tap(battleWinX,battleWinY);
			sysLog("点击坐标：battleWinX="..battleWinX..",battleWinY="..battleWinY);
		end
	end
end

function ready()
	isBattle = "true";
	readyX = math.random(1147,1202);
	readyY = math.random(519,636);
	tap(readyX,readyY);
end

function battleWinGift()
	battleWinGiftX = math.random(1123,1236);
	battleWinGiftY = math.random(454,591);
	tap(battleWinGiftX, battleWinGiftY);
	battleWinGiftX, battleWinGiftY = myFindColor(battleWinGiftTab);
  while battleWinGiftX ~= -1 and battleWinGiftY ~= -1 do
		battleWinGiftX = math.random(1123,1236);
		battleWinGiftY = math.random(454,591);
		tap(battleWinGiftX,	battleWinGiftY);
    battleWinGiftX, battleWinGiftY = myFindColor(battleWinGiftTab);
	end
	isBattle = "false";
	sysLog("isBattle="..isBattle);
end