require "init"

function test()
  
  height,width = getScreenSize()
  
  --sysLog("width="..width..", height="..height);
  --[[
  t1 = mTime();
  mSleep(1000);
  t2 = mTime();
  t=t2-t1;
  sysLog(formatTime(t));
  ]]
  --tap(795,652);
  --mSleep(500);
  input = {challengeBotton_col, challengeBotton_pos, 95, 0, 0, width, height};
  
  x, y = myFindColor(input);
  
  if x ~= -1 and y ~= -1 then     
    sysLog("找到。x="..x..", y="..y);
    --toast("找到。x="..x..", y="..y);
		test();
  else    
		sysLog("未找到");
		test();
  end
  --[[
  color = getColor(295,195); 
  if color == 0xcbc0b4 then   --如果该点的颜色值等于0xffffff
    sysLog("1");
  end
  
  
  
  sysLog("找到。color="..string.format("%#x",color));
  
  ]]
  
  
  
  
  
end