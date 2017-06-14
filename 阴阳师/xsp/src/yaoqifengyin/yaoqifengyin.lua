init("0", 1); --以当前应用 Home 键在右边初始化

require "util"
require "battle"
require "makeTeam"
require "init"

function guishihei()
  local guishiheiTab = {guishihei_col, guishihei_pos, 95, 0, 0, width, height};
  guishiheiX, guishiheiY = myFindColor(guishiheiTab);
	sysLog("guishiheiX="..guishiheiX..", guishiheiY="..guishiheiY);
  if guishiheiX ~= -1 and guishiheiY ~= -1 then       
    tap(guishiheiX, guishiheiY);
    mSleep(500);
    check();
  end
end

function gunv()
  local gunvTab = {gunv_col, gunv_pos, 95, 0, 0, width, height};
  gunvX, gunvY = myFindColor(gunvTab);
	sysLog("gunvX="..gunvX..", gunvY="..gunvY);
  if gunvX ~= -1 and gunvY ~= -1 then       
    tap(gunvX, gunvY);
    mSleep(500);
    check();
  end
end

function tiaotiaogege()
  local tiaotiaogegeTab = {tiaotiaogege_col, tiaotiaogege_pos, 95, 0, 0, width, height};
  tiaotiaogegeX, tiaotiaogegeY = myFindColor(tiaotiaogegeTab);
	sysLog("tiaotiaogegeX="..tiaotiaogegeX..", tiaotiaogegeY="..tiaotiaogegeY);
  if tiaotiaogegeX ~= -1 and tiaotiaogegeY ~= -1 then       
    tap(tiaotiaogegeX, tiaotiaogegeY);
    mSleep(500);
    check();
  end
end

function haifangzhu()
  local haifangzhuTab = {haifangzhu_col, haifangzhu_pos, 95, 0, 0, width, height};
  haifangzhuX, haifangzhuY = myFindColor(haifangzhuTab);
	sysLog("haifangzhuX="..haifangzhuX..", haifangzhuY="..haifangzhuY);
  if haifangzhuX ~= -1 and haifangzhuY ~= -1 then       
    tap(haifangzhuX, haifangzhuY);
    mSleep(500);
    check();
  end
end

function erkounv()
  local erkounvTab = {erkounv_col, erkounv_pos, 95, 0, 0, width, height};
  erkounvX, erkounvY = myFindColor(erkounvTab);
	sysLog("erkounvX="..erkounvX..", erkounvY="..erkounvY);
  if erkounvX ~= -1 and erkounvY ~= -1 then       
    tap(erkounvX, erkounvY);
    mSleep(500);
    check();
  end
end

function egui()
  local eguiTab = {egui_col, egui_pos, 95, 0, 0, width, height};
  eguiX, eguiY = myFindColor(eguiTab);
	sysLog("eguiX="..eguiX..", eguiY="..eguiY);
  if eguiX ~= -1 and eguiY ~= -1 then       
    tap(eguiX, eguiY);
    mSleep(500);
    check();
  end
end

function jiaotu()
  local jiaotuTab = {jiaotu_col, jiaotu_pos, 95, 0, 0, width, height};
  jiaotuX, jiaotuY = myFindColor(jiaotuTab);
	sysLog("jiaotuX="..jiaotuX..", jiaotuY="..jiaotuY);
  if jiaotuX ~= -1 and jiaotuY ~= -1 then       
    tap(jiaotuX, jiaotuY);
    mSleep(500);
    check();
  end
end

function check()
	sysLog("进入check")
  local yaoqifengyinLoadingTab = {yaoqifengyinLoading_col, yaoqifengyinLoading_pos, 95, 0, 0, width, height};
  yaoqifengyinLoadingX, yaoqifengyinLoadingY = myFindColor(yaoqifengyinLoadingTab);
  --妖气封印界面
	local yaoqifengyinAfterTab = {yaoqifengyinAfter_col, yaoqifengyinAfter_pos, 95, 0, 0, width, height};
  yaoqifengyinAfterX, yaoqifengyinAfterY = myFindColor(yaoqifengyinAfterTab);
  --妖气封印界面
  local tilibugouTab = {tilibugou_col, tilibugou_pos, 95, 0, 0, width, height};
  tilibugouX, tilibugouY = myFindColor(tilibugouTab);
  --体力不够界面
  local fangzhuNoTab = {fangzhuNo_col, fangzhuNo_pos, 95, 0, 0, width, height};
  fangzhuNoX, fangzhuNoY = myFindColor(fangzhuNoTab);
  --作为房主，不可开始战斗
  local fangzhuYesTab = {fangzhuYes_col, fangzhuYes_pos, 95, 0, 0, width, height};
  fangzhuYesX, fangzhuYesY = myFindColor(fangzhuYesTab);
  --作为房主，可开始战斗
  local readyTab = {ready_col, ready_pos, 95, 0, 0, width, height};
  readyX, readyY = myFindColor(readyTab);
  --待准备界面的鼓
  
  sysLog("yaoqifengyinAfterX="..yaoqifengyinAfterX..", yaoqifengyinAfterY="..yaoqifengyinAfterY);
  sysLog("yaoqifengyinLoadingX="..yaoqifengyinLoadingX..", yaoqifengyinLoadingY="..yaoqifengyinLoadingY);
	sysLog("tilibugouX="..tilibugouX..", tilibugouY="..tilibugouY);
  sysLog("fangzhuNoX="..fangzhuNoX..", fangzhuNoY="..fangzhuNoY);
  sysLog("fangzhuYesX="..fangzhuYesX..", fangzhuYesY="..fangzhuYesY);
  sysLog("readyX="..readyX..", readyY="..readyY);
  
  if yaoqifengyinLoadingX ~= -1 and yaoqifengyinLoadingY ~= -1 then
    --检测到正常组队界面
    check();
	elseif yaoqifengyinAfterX ~= -1 and yaoqifengyinAfterY ~= -1 then
    --检测到正常组队界面
    choose();
  elseif tilibugouX ~= -1 and tilibugouY ~= -1 then
    --检测到体力不足
    tap(tilibugouX,tilibugouY);
    mSleep(300000);
    choose();
  elseif (fangzhuNoX ~= -1 and fangzhuNoY ~= -1) or (fangzhuYesX ~= -1 and fangzhuYesY ~= -1) then
    --检测到自己变为房主
    leaveTeam();
    choose()
  elseif readyX ~= -1 and readyY ~= -1 then
    battle();
    yaoqifengyin();	
  else
    check();
  end
end

function choose()
	sysLog("进入choose");
	mSleep(0);
  if guishiheiInput == '0' then
    guishihei();
  end
	if gunvInput == '0' then
    gunv();
	end
	if tiaotiaogegeInput == '0' then
    tiaotiaogege();
  end
	if haifangzhuInput == '0' then
    haifangzhu();
  end
	if erkounvInput == '0' then
    erkounv();
  end
	if eguiInput == '0' then
    egui();
  end
	if jiaotuInput == '0' then
    jiaotu();
  end
	local shuaxinTab = {shuaxin_col, shuaxin_pos, 95, 0, 0, width, height};
  shuaxinX, shuaxinY = myFindColor(shuaxinTab);
	sysLog("shuaxinX="..shuaxinX..", shuaxinY="..shuaxinY);
	if shuaxinX ~= -1 and shuaxinY ~= -1 then
		tap(shuaxinX,shuaxinY);
	else
		yaoqifengyin();
	end
	sysLog("shuaxinX="..shuaxinX..", shuaxinY="..shuaxinY);
  choose();
end

function yaoqifengyin()
  local zuduiTab = {zudui_col, zudui_pos, 95, 0, height/2, width/2, height};
  zuduiX, zuduiY = myFindColor(zuduiTab);
  --组队图标
  sysLog("zuduiX="..zuduiX..", zuduiY="..zuduiY);
	
	local yaoqifengyinTab = {yaoqifengyin_col, yaoqifengyin_pos, 95, 0, height/2, width/2, height};
  yaoqifengyinX, yaoqifengyinY = myFindColor(yaoqifengyinTab);
  --妖气封印
  sysLog("yaoqifengyinX="..yaoqifengyinX..", yaoqifengyinY="..yaoqifengyinY);
	
	local yaoqifengyinAfterTab = {yaoqifengyinAfter_col, yaoqifengyinAfter_pos, 95, 0, 0, width, height};
  yaoqifengyinAfterX, yaoqifengyinAfterY = myFindColor(yaoqifengyinAfterTab);
  --妖气封印界面
	sysLog("yaoqifengyinAfterX="..yaoqifengyinAfterX..", yaoqifengyinAfterY="..yaoqifengyinAfterY);
	
  if zuduiX ~= -1 and zuduiY ~= -1 then
    mSleep(200);
    tap(zuduiX,zuduiY);
		yaoqifengyin();
	elseif yaoqifengyinX ~= -1 and yaoqifengyinY ~= -1 then
		mSleep(200);
    tap(yaoqifengyinX,yaoqifengyinY);
		yaoqifengyin();
	elseif yaoqifengyinAfterX ~= -1 and yaoqifengyinAfterY ~= -1 then
    choose();
  else
    mSleep(500);
    yaoqifengyin();
  end
end