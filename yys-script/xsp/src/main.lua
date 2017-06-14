init("0", 1); --以当前应用 Home 键在右边初始化

require "yaoqifengyin.yaoqifengyin"
require "jiejietupo.yinyangliaotupo"
require "yuhun.yuhun"
require "test"
--
start,setting = showUI("main.json")--显示UI并获取设置
if start == 0 then
  sysLog("取消执行")
  lua_exit()--取消则退出
end

sysLog("setting.mainSelect = "..setting.mainSelect);
sysLog("setting.rewardSelect = "..setting.rewardSelect);

rewardInput = setting.rewardSelect;

if setting.mainSelect == "0" then
	start,setting = showUI("yaoqifengyin/yaoqifengyin.json")--显示UI并获取设置
	if start == 0 then
		sysLog("取消执行")
		lua_exit()--取消则退出
	end
	tiaotiaogegeInput = setting.tiaotiaogege;
	guishiheiInput = setting.guishihei;
	gunvInput = setting.gunv;
	erkounvInput = setting.erkounv;
	haifangzhuInput = setting.haifangzhu;
	eguiInput = setting.egui;
	jiaotuInput = setting.jiaotu;
	yaoqifengyin();
elseif setting.mainSelect == "1" then
	start,setting = showUI("jiejietupo/jiejietupo_main.json")--显示UI并获取设置
	if start == 0 then
		sysLog("取消执行")
		lua_exit()--取消则退出
	end
		if setting.jiejietupoSelect == "0" then
			start,setting = showUI("jiejietupo/gerentupo.json")--显示UI并获取设置
		elseif setting.jiejietupoSelect == "1" then
			start,setting = showUI("jiejietupo/yinyangliaotupo.json")--显示UI并获取设置
			if start == 0 then
				sysLog("取消执行")
				lua_exit()--取消则退出
			end
			yinyangliaotupoInput = setting.yinyangliaotupoSelect;
			yinyangliaotupo();
		end
elseif setting.mainSelect == "2" then
	start,setting = showUI("yuhun/yuhun_main.json")--显示UI并获取设置
	if start == 0 then
		sysLog("取消执行")
		lua_exit()--取消则退出
	end
	playerAccountInput = setting.playerAccountSelect;
	yuhun();
end


--test();