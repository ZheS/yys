init("0", 1); --以当前应用 Home 键在右边初始化

require "util"
require "init"

function confirmInvite()
	local confirmInviteTab = {confirmInvite_col, confirmInvite_pos, 95, 373, 186, 990, 575};
  confirmInviteX, confirmInviteY = myFindColor(confirmInviteTab);
  --继续邀请
	
  if confirmInviteX ~= -1 and confirmInviteY ~= -1 then
		sysLog("继续邀请成员组队御魂10");
		confirmInviteX = math.random(707,872);
		confirmInviteY = math.random(427,471);
    tap(confirmInviteX,confirmInviteY);
    mSleep(200);
		yuhun();
  else
    confirmInvite();
  end
end

