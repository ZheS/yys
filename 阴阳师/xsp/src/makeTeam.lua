require "init"

function leaveTeam()
	local leaveTeam = {leaveTeam_col, leaveTeam_pos, 95, 0, height/2, width/2, height};
	leaveTeamX, leaveTeamY = myFindColor(leaveTeam);
	--离开队伍
	if x ~= -1 and y ~= -1 then
		tap(leaveTeamX, leaveTeamY);
		mSleep(500);
		local trueButton = {trueButton_col, trueButton_pos, 95, 0, 0, width, height};
		trueButtonX, trueButtonY = myFindColor(trueButton);
		--确定按钮
		if trueButtonX ~= -1 and trueButtonY ~= -1 then
			tap(trueButtonX, trueButtonY);
			mSleep(500);
		end
	end
end