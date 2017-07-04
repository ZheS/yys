init("0", 1); --以当前应用 Home 键在右边初始化

require "yuhun.yuhun"

start,setting = showUI("yuhun/yuhun_main.json")--显示UI并获取设置
if start == 0 then
	sysLog("取消执行")
	lua_exit()--取消则退出
end
playerAccountInput = setting.playerAccountSelect;
yuhun();
