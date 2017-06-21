init("0", 1); --以当前应用 Home 键在右边初始化

require "util"
require "init"
require "jiejietupo.chooseMedal"
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
	
	if yinyangliaotupoInput == '0' then
    chooseMedal0();
	elseif yinyangliaotupoInput == '1' then
    chooseMedal1();
	elseif yinyangliaotupoInput == '2' then
    chooseMedal2();
	elseif yinyangliaotupoInput == '3' then
    chooseMedal3();
	elseif yinyangliaotupoInput == '4' then
    chooseMedal4();
	elseif yinyangliaotupoInput == '5' then
		chooseMedal5();
	end
end