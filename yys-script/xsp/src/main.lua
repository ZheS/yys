init("0", 1); --以当前应用 Home 键在右边初始化

require "yaoqifengyin.yaoqifengyin"
require "jiejietupo.yinyangliaotupo"
require "yuhun.yuhun"
require "yuling.yuling"
require "test"
--
start,setting = showUI("main.json")--显示UI并获取设置
if start == 0 then
  sysLog("取消执行")
  lua_exit()--取消则退出
end

sysLog("setting.mainSelect = "..setting.mainSelect);
sysLog("setting.rewardSelect = "..setting.rewardSelect);

mainInput = setting.mainSelect;
rewardInput = setting.rewardSelect;

if mainInput == "0" then
	start,setting = showUI("jiejietupo/yinyangliaotupo.json")--显示UI并获取设置
	if start == 0 then
		sysLog("取消执行")
		lua_exit()--取消则退出
	end
	yinyangliaotupoInput = setting.yinyangliaotupoSelect;
	start,setting = showUI("yuhun/yuhun_main.json")--显示UI并获取设置
	if start == 0 then
		sysLog("取消执行")
		lua_exit()--取消则退出
	end
	playerAccountInput = setting.playerAccountSelect;
	yinyangliaotupo();
elseif mainInput == "1" then
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
elseif mainInput == "2" then
	start,setting = showUI("yuhun/yuhun_main.json")--显示UI并获取设置
	if start == 0 then
		sysLog("取消执行")
		lua_exit()--取消则退出
	end
	playerAccountInput = setting.playerAccountSelect;
	round1Input = setting.round1;
	round2Input = setting.round2;
	round3Input = setting.round3;
	yuhun();
elseif mainInput == "3" then
	yuling();
end


--test();