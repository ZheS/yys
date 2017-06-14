
function tap(x, y)
	rewardSelect();
  touchDown(1, x, y);
  mSleep(200);
  touchUp(1, x, y);
end

function myFindColor(input)
	rewardSelect();
  keepScreen(true);
  local input1, input2 = findMultiColorInRegionFuzzy(input[1], input[2], input[3], input[4], input[5], input[6], input[7]);
  keepScreen(false);
  return input1, input2;
end

function rewardSelect()
  --sysLog("acceptRewardX="..acceptRewardX..", acceptRewardY="..acceptRewardY);
  --sysLog("rejectRewardX="..rejectRewardX..", rejectRewardY="..rejectRewardY);
  if rewardInput == "0" then
		--sysLog("rewardInput = "..rewardInput);
	  acceptRewardX, acceptRewardY = findMultiColorInRegionFuzzy(acceptReward_col, acceptReward_pos, 95, 0, 0, width, height);
		--接受悬赏封印
    if acceptRewardX ~= -1 and acceptRewardY ~= -1 then
      touchDown(1, acceptRewardX, acceptRewardY);
			mSleep(200);
			touchUp(1, acceptRewardX, acceptRewardY);
      mSleep(500);
    end
  elseif rewardInput == "1" then
		--sysLog("rewardInput = "..rewardInput);
	  rejectRewardX, rejectRewardY = findMultiColorInRegionFuzzy(rejectReward_col, rejectReward_pos, 95, 0, 0, width, height);
		--拒绝悬赏封印
    if rejectRewardX ~= -1 and rejectRewardY ~= -1 then
      touchDown(1, rejectRewardX, rejectRewardY);
			mSleep(200);
			touchUp(1, rejectRewardX, rejectRewardY);
      mSleep(500);
    end
	else
		--sysLog("rewardInput = "..rewardInput);
  end
end

function formatTime(time)  
    local hour = math.floor(time/3600000);  
    local minute = math.fmod(math.floor(time/60000), 60)  
    local second = math.fmod(time/1000, 60)  
    local rtTime = string.format("%s:%s:%s", hour, minute, second)  
    return rtTime  
end  