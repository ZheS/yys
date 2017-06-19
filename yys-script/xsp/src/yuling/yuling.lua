init("0", 1); --以当前应用 Home 键在右边初始化

require "util"
require "battle"
require "makeTeam"
require "init"

function yuling()
	battle();
  
	local challengeBottonTab = {challengeBotton_col, challengeBotton_pos, 95, 0, 0, width, height};
  challengeBottonX, challengeBottonY = myFindColor(challengeBottonTab);
  --挑战按钮
	
  if challengeBottonX ~= -1 and challengeBottonY ~= -1 then
		sysLog("challengeBottonX-old="..challengeBottonX..", challengeBottonY-old="..challengeBottonY);
		challengeBottonX = math.random(935,1052);
		challengeBottonY = math.random(496,539);
    tap(challengeBottonX,challengeBottonY);
		sysLog("challengeBottonX="..challengeBottonX..", challengeBottonY="..challengeBottonY);
    mSleep(200);
		yuling();
  else
    yuling();
  end
end

