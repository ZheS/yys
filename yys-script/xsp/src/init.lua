--初始化游戏所需全局参数
height,width = getScreenSize();
zudui_col = ""						--组队图标主颜色
zudui_pos = ""						--组队图标周边颜色
yaoqifengyin_col = ""			--妖气封印图标主颜色
yaoqifengyin_pos = ""			--妖气封印图标周边颜色
shuaxin_col = ""			--刷新图标主颜色
shuaxin_pos = ""			--刷新图标周边颜色
tiaotiaogege_col = ""			--跳跳哥哥图标主颜色
tiaotiaogege_pos = ""			--跳跳哥哥图标周边颜色
guishihei_col = ""			--鬼使黑图标主颜色
guishihei_pos = ""			--鬼使黑图标周边颜色
gunv_col = ""			--骨女图标主颜色
gunv_pos = ""			--骨女图标周边颜色
erkounv_col = ""			--二口女图标主颜色
erkounv_pos = ""			--二口女图标周边颜色
haifangzhu_col = ""			--海坊主图标主颜色
haifangzhu_pos = ""			--海坊主图标周边颜色
egui_col = ""			--饿鬼图标主颜色
egui_pos = ""			--饿鬼图标周边颜色
jiaotu_col = ""			--椒图图标主颜色
jiaotu_pos = ""			--椒图图标周边颜色
yaoqifengyinAfter_col = ""				--组队界面主颜色
yaoqifengyinAfter_pos = ""				--组队界面周边颜色
yaoqifengyinLoading_col = ""				--加载中妖气封印界面主颜色
yaoqifengyinLoading_pos = ""				--加载中妖气封印界面周边颜色
tilibugou_col = ""				--体力不够界面主颜色
tilibugou_pos = ""				--体力不够界面周边颜色
fangzhuNo_col = ""				--作为房主，不可开始战斗界面主颜色
fangzhuNo_pos = ""				--作为房主，不可开始战斗界面周边颜色
fangzhuYes_col = ""				--作为房主，可开始战斗界面主颜色
fangzhuYes_pos = ""				--作为房主，可开始战斗界面周边颜色
ready_col = ""				--待准备界面的鼓图标主颜色
ready_pos = ""				--待准备界面的鼓图标周边颜色
leaveTeam_col = ""				--队伍中界面的离开队伍按钮主颜色
leaveTeam_pos = ""				--队伍中界面的离开队伍按钮周边颜色
trueButton_col = ""				--离开队伍后的确定按钮主颜色
trueButton_pos = ""				--离开队伍后的确定按钮周边颜色
manualButton_col = ""				--战斗界面左下角手动按钮主颜色
manualButton_pos = ""				--战斗界面左下角手动按钮周边颜色
autoButton_col = ""				--战斗界面左下角自动按钮主颜色
autoButton_pos = ""				--战斗界面左下角自动按钮周边颜色
battleWin_col = ""				--战斗胜利界面主颜色
battleWin_pos = ""				--战斗胜利界面周边颜色
battleLose_col = ""				--战斗失败界面主颜色
battleLose_pos = ""				--战斗失败界面周边颜色
battleWinDamo_col = ""				--战斗胜利达摩主颜色
battleWinDamo_pos = ""				--战斗胜利达摩主颜色
battleWinGift_col = ""				--战斗胜利奖励主颜色
battleWinGift_pos = ""				--战斗胜利奖励周边颜色
acceptReward_col = ""				--接受悬赏封印主颜色
acceptReward_pos = ""				--接受悬赏封印周边颜色
acceptReward_col = ""				--接受悬赏封印主颜色
acceptReward_pos = ""				--接受悬赏封印周边颜色
rejectReward_col = ""				--拒绝悬赏封印主颜色
rejectReward_pos = ""				--拒绝悬赏封印周边颜色
jiejietupo_col = ""				--结界突破按钮主颜色
jiejietupo_pos = ""				--结界突破按钮周边颜色
yinyangliaotupo_col = ""				--阴阳寮突破按钮主颜色
yinyangliaotupo_pos = ""				--阴阳寮突破按钮周边颜色
yinyangliaotupoPage_col = ""				--阴阳寮突破界面主颜色
yinyangliaotupoPage_pos = ""				--阴阳寮突破界面周边颜色
windowClose_col = ""				--深褐色关闭按钮主颜色
windowClose_col = ""				--深褐色关闭按钮周边颜色
medal5yinyangliao_col = ""				--阴阳寮突破5勋章主颜色
medal5yinyangliao_pos = ""				--阴阳寮突破5勋章周边颜色
medal4yinyangliao_col = ""				--阴阳寮突破4勋章主颜色
medal4yinyangliao_pos = ""				--阴阳寮突破4勋章周边颜色
medal3yinyangliao_col = ""				--阴阳寮突破3勋章主颜色
medal3yinyangliao_pos = ""				--阴阳寮突破3勋章周边颜色
medal2yinyangliao_col = ""				--阴阳寮突破2勋章主颜色
medal2yinyangliao_pos = ""				--阴阳寮突破2勋章周边颜色
medal1yinyangliao_col = ""				--阴阳寮突破1勋章主颜色
medal1yinyangliao_pos = ""				--阴阳寮突破1勋章周边颜色
medal0yinyangliao_col = ""				--阴阳寮突破0勋章主颜色
medal0yinyangliao_pos = ""				--阴阳寮突破0勋章周边颜色
attackEnable_col = ""				--攻击按钮可用主颜色
attackEnable_pos = ""				--攻击按钮可用周边颜色
attackDisable_col = ""				--攻击按钮不可用主颜色
attackDisable_pos = ""				--攻击按钮不可用周边颜色	
tansuo_col = ""				--探索灯笼按钮主颜色
tansuo_pos = ""				--探索灯笼按钮周边颜色
invite_col = ""			--战斗结束后的继续邀请界面主颜色
invite_pos = ""			--战斗结束后的继续邀请界面周边颜色
confirmInvite_col = ""			--战斗结束后的继续邀请确定按钮主颜色
confirmInvite_pos = ""			--战斗结束后的继续邀请确定按钮周边颜色
cancelInvite_col = ""  ----战斗结束后的继续邀请取消按钮主颜色
cancelInvite_pos = ""  --战斗结束后的继续邀请取消按钮周边颜色
inviteJoinTeam_col = ""  --邀请组队界面中的确定图标主颜色
inviteJoinTeam_pos = ""  --邀请组队界面中的确定图标周边颜色
challengeBotton_col = ""  --挑战按钮主颜色
challengeBotton_pos = ""  --挑战按钮周边颜色
yuhun_col = "" --御魂按钮主颜色
yuhun_pos = "" --御魂按钮周边颜色
dashe_col = "" --八歧大蛇图标主颜色
dashe_pos = "" --八歧大蛇图标周边颜色
yuhunzudui_col = "" --御魂组队界面主颜色
yuhunzudui_pos = "" --御魂组队界面周边颜色
yuhunCreateTeam_col = "" --御魂创建队伍界面主颜色
yuhunCreateTeam_pos = "" --御魂创建队伍界面周边颜色
yuhunCreateTeamDetail_col = "" --御魂创建队伍明细界面主颜色
yuhunCreateTeamDetail_pos = "" --御魂创建队伍明细界面周边颜色
po_col = "" --结界攻破图标主颜色
po_pos = "" --结界攻破图标周边颜色


if width==1334 and height==750 then
  zudui_col = "0xe3e0de"	
  zudui_pos = "18|14|0xb07bc9,-47|22|0x6b3b9f,54|34|0x613e3b,10|-38|0xdb5839,-57|31|0x613e3d,7|62|0x563937,28|48|0x66585b,-45|6|0x151b3f"	
  yaoqifengyin_col = "0xe8d6c1"
  yaoqifengyin_pos = "-53|8|0x272420,-20|-7|0x38332e,27|6|0x39352f,53|5|0x696157,44|3|0xe8d6c1,24|9|0xe8d6c1,-14|5|0xe8d6c1,-48|7|0xe8d6c1"	
  shuaxin_col = "0xf3b25e"			--刷新图标主颜色
  shuaxin_pos = "-24|-12|0x7f623b,28|6|0xbf8e4e,30|-8|0x372f25,-4|-6|0x342d24,28|-15|0x2b2721,-8|4|0xf3b25e,23|1|0xf3b25e,25|-10|0xf3b25e"			--刷新图标周边颜色
  tiaotiaogege_col = "0x704626"			--跳跳哥哥图标主颜色
  tiaotiaogege_pos = "-548|-14|0x3d3a35,-449|-11|0x4c4942,-503|-16|0xf3ecd7,-36|-14|0xf0db8d,14|-2|0xf4e6a2,-507|-24|0xd0ccbc,-481|-14|0xf8f3e0"			--跳跳哥哥图标周边颜色
  guishihei_col = "0x704626"			--鬼使黑图标主颜色
  guishihei_pos = "-532|-13|0xf7f2e0,-476|-29|0x2c2924,-544|-10|0xdfc08d,-34|-15|0xf0de91,10|-3|0xf6eaa8,-508|-30|0x69665d,-479|-14|0xf8f3e0"			--鬼使黑图标周边颜色
  gunv_col = "0x704626"			--骨女图标主颜色
  gunv_pos = "-529|-24|0x2b2823,-510|-12|0xf8f3e0,-519|-16|0xdebd88,-33|-15|0xf0de91,11|-3|0xf6eaa8,-505|-29|0xdfcdb3,-511|-30|0x282521"			--骨女图标周边颜色
  erkounv_col = "0x704626"			--二口女图标主颜色
  erkounv_pos = "-549|-15|0x292622,-473|-10|0xf3ebd7,-510|-11|0xdfcdb3,-504|-25|0x292622,-35|-14|0xf0db8d,23|9|0xe2bc54,-541|-22|0xdfcdb3"			--二口女图标周边颜色
  haifangzhu_col = "0x704626"			--海坊主图标主颜色
  haifangzhu_pos = "-540|-28|0x46433d,-507|-17|0xf8f3e0,-482|-20|0x2f2b27,-36|-14|0xf0db8d,14|-2|0xf4e6a2,-546|-13|0xf8f3e0,-479|-17|0xf7f1de"			--海坊主图标周边颜色
  egui_col = "0x704626"			--饿鬼图标主颜色
  egui_pos = "-545|-26|0x2d2a25,-498|-11|0x282521,-542|-12|0xf8f3e0,-503|-13|0xf8f3e0,-532|-10|0xddbc86,-545|-33|0xf1ecda"			--饿鬼图标周边颜色
  jiaotu_col = "0x704626"			--椒图图标主颜色
  jiaotu_pos = "-500|-7|0xf6f1de,-545|-30|0x34312c,-501|-12|0x2e2b27,-503|-14|0xf8f3e0,-545|-34|0xf3ebd7,-532|-9|0xdebd87"			--椒图图标周边颜色
  yaoqifengyinAfter_col = "0xfdd881"				--妖气封印界面主颜色
  yaoqifengyinAfter_pos = "-52|9|0x272420,-8|3|0x2e2a23,28|-1|0x282520,62|6|0x272420,49|11|0xfdd881,23|-4|0xffcc7c,-12|6|0xfed680,-41|13|0xffcb7b"				--妖气封印界面周边颜色
  yaoqifengyinLoading_col = "0xf5d688"				--加载中妖气封印界面主颜色
  yaoqifengyinLoading_pos = "-55|1|0x45372e,-16|-8|0x604817,27|10|0x462a14,53|8|0x70591f,-48|5|0xffcb7d,57|1|0xffc974,545|-225|0xfffffc,544|-210|0xffffe4"				--加载中妖气封印界面周边颜色
	tilibugou_col = "0xe8d4cf"				--体力不够界面主颜色
  tilibugou_pos = "3|-12|0xd386a5,-15|2|0xdd788f,19|5|0xcc6ca7,3|23|0xd16d96,-359|179|0xfe872f,-251|294|0xf3b25e"				--体力不够界面周边颜色
  fangzhuNo_col = "0xb0a9a1"				--作为房主，不可开始战斗界面主颜色
  fangzhuNo_pos = "-44|0|0x35322d,52|4|0x292622,-86|-22|0x685f5d,-151|-2|0xff642c"				--作为房主，不可开始战斗界面周边颜色
  fangzhuYes_col = "0xf3b25e"				--作为房主，可开始战斗界面主颜色
  fangzhuYes_pos = "-48|-1|0x2a2621,50|2|0x453929,-87|-25|0x963b2e,-152|-3|0xff642c"				--作为房主，可开始战斗界面周边颜色
  ready_col = "0xfff1cd"				--待准备界面的鼓图标主颜色
  ready_pos = "-50|11|0xc66d26,-2|-8|0xc66d26"				--待准备界面的鼓图标周边颜色
  leaveTeam_col = "0xdf6851"				--队伍中界面的离开队伍按钮主颜色
  leaveTeam_pos = "60|-4|0x2a2521,-83|-30|0x862749,90|25|0xc53c20"				--队伍中界面的离开队伍按钮周边颜色	
  trueButton_col = "0xf3b25e"				--离开队伍后的确定按钮主颜色
  trueButton_pos = "22|-11|0x282520,-84|-27|0x93372b,83|27|0xd58130"				--离开队伍后的确定按钮周边颜色
  manualButton_col = "0xb9b2a2"				--战斗界面左下角手动按钮主颜色
	manualButton_pos = "26|-1|0x9a9283,9|16|0x40362c,-16|-13|0x81796c,-33|3|0x8d8678,-19|16|0x90887a"				--战斗界面左下角手动按钮周边颜色
	autoButton_col = "0xb9b2a2"				--战斗界面左下角自动按钮主颜色
	autoButton_pos = "26|-1|0x999284,9|16|0x40362c,-20|-12|0xb0a999,-27|-4|0x999283,-11|14|0x6a6054"				--战斗界面左下角自动按钮周边颜色
	battleWin_col = "0xd0c2ad"				--战斗胜利界面主颜色
  battleWin_pos = "2|-31|0x831a11,7|39|0xd7c9b3,-83|35|0x4e2e1c,64|81|0x370d0e"				--战斗胜利界面周边颜色
  battleLose_col = "0xb7a48c"				--战斗失败界面主颜色
  battleLose_pos = "1|-32|0x585062,-24|8|0x5c5266,36|8|0x5e5468,-25|32|0x250c09,17|73|0x58422f,4|102|0x211e23,-63|75|0x17161b,-84|55|0x3a383c,-3|-69|0x5d4834"				--战斗失败界面周边颜色
  battleWinDamo_col = "0xbe532c"				--战斗胜利达摩主颜色
  battleWinDamo_pos = "23|-53|0xe7e0cd,31|15|0x121110,-85|-19|0x9b1111,124|5|0xd59427"				--战斗胜利达摩主颜色
  battleWinGift_col = "0x360403"				--战斗胜利奖励主颜色
  battleWinGift_pos = "-125|-24|0x3981cb,-154|2|0x79a1dc,-91|-7|0x712a18,109|-16|0x712d08,81|4|0x370204"				--战斗胜利奖励周边颜色
  acceptReward_col = "0x55b15f"				--接受悬赏封印主颜色
  acceptReward_pos = "-3|-24|0x3a2927,18|17|0x382826,76|-9|0xebebeb,118|-8|0xfdfdfd,87|3|0xf6f6f6,110|2|0xf9f9f9"				--接受悬赏封印周边颜色
  rejectReward_col = "0xde7461"				--拒绝悬赏封印主颜色
  rejectReward_pos = "0|-23|0x392827,27|3|0x2f2120,75|-2|0xe0e0e0,119|11|0xffffff,81|10|0xebebea,99|5|0xfcfcfc"				--拒绝悬赏封印周边颜色
  jiejietupo_col = "0x4d96e6"				--结界突破按钮主颜色
  jiejietupo_pos = "-5|-13|0xf8f3e0,-28|-15|0x231816,23|-15|0xf7f2df,12|-8|0x221910,-7|31|0xf5f0de,-14|6|0x22180f,23|29|0xf8f3e0,26|11|0x261d14"				--结界突破按钮周边颜色
  yinyangliaotupo_col = "0x5a3a25"				--阴阳寮突破按钮主颜色
  yinyangliaotupo_pos = "8|-26|0xa29585,-8|-8|0xaba091,9|17|0xaca293,-10|21|0xa69a8a,9|46|0xaa9f90,-2|54|0xa49888,0|24|0x5c3c25,-27|-40|0x271910,25|63|0x24170e"				--阴阳寮突破按钮周边颜色
  yinyangliaotupoPage_col = "0xb9661a"				--阴阳寮突破界面主颜色
  yinyangliaotupoPage_pos = "9|-27|0xe7deca,-2|55|0xe7dcc7,-30|-41|0xf8f3e0,26|63|0xf8f3e0,-20|-31|0x6e4423,19|48|0x6e4321,32|-44|0x794e2d,-34|65|0x875a36"				--阴阳寮突破界面周边颜色
  windowClose_col = "0xe5aeb3"				--深褐色关闭按钮主颜色
  windowClose_pos = "7|-10|0xe8d4cf,-14|-3|0x733236,7|24|0x66463d,20|-2|0x682d3f,-1|-31|0x592d2d,0|29|0x432223,-32|-3|0x522924,30|0|0x62293f"				--深褐色关闭按钮周边颜色
  medal5yinyangliao_col = "0x7f7a74"				--阴阳寮突破5勋章主颜色
  medal5yinyangliao_pos = "164|-1|0x7f7973,-16|0|0xa2a19a,179|-1|0xaea8a1,-6|-14|0xcac6c0,175|8|0xb9b4ae,-10|4|0xa9a49e,163|14|0xb1ada7,155|-11|0xc9c5bf,215|-80|0xc6b29b"				--阴阳寮突破5勋章周边颜色
  medal4yinyangliao_col = "0x7f7a74"				--阴阳寮突破4勋章主颜色
  medal4yinyangliao_pos = "123|0|0x7f7a74,163|0|0xb3a28d,-16|0|0xa09b92,138|0|0xaea8a1,154|-13|0x958572,175|13|0x8d7b68,-7|-8|0xaca7a1,128|14|0xaca8a2,215|-80|0xc6b29b"				--阴阳寮突破4勋章周边颜色
  medal3yinyangliao_col = "0x807b74"				--阴阳寮突破3勋章主颜色
  medal3yinyangliao_pos = "82|0|0x807b74,124|0|0xb3a28d,166|0|0xb3a28d,-16|0|0xa09a92,97|0|0xaca59d,114|-14|0x938470,175|13|0x8c7866,0|14|0xada8a2,215|-80|0xc6b29b"				--阴阳寮突破3勋章周边颜色
  medal2yinyangliao_col = "0x807b75"				--阴阳寮突破2勋章主颜色
  medal2yinyangliao_pos = "41|0|0x807b75,83|0|0xb3a28d,165|0|0xb3a28d,-14|1|0xbebab4,55|-1|0xcdc8c2,78|-18|0x8b6a57,167|17|0x886e5b,19|-4|0xb1825e,215|-80|0xc6b29b"				--阴阳寮突破2勋章周边颜色
  medal1yinyangliao_col = "0x807b75"				--阴阳寮突破1勋章主颜色
  medal1yinyangliao_pos = "42|0|0xb3a28d,164|0|0xb3a28d,-16|0|0x9f9a92,15|1|0xa8a096,31|-13|0x988975,172|15|0x8a7664,-1|14|0xaba7a1,1|-14|0xbcb7b1,215|-80|0xc6b29b"				--阴阳寮突破1勋章周边颜色
  medal0yinyangliao_col = "0xb3a28d"				--阴阳寮突破0勋章主颜色
  medal0yinyangliao_pos = "163|-1|0xb3a28d,-1|-15|0xa0917d,164|15|0x9d8e79,-15|12|0xb0825f,176|15|0xad7f5e,-16|0|0x9a8b77,177|11|0x8b7865,-18|2|0x815f4f,215|-80|0xc6b29b"				--阴阳寮突破0勋章周边颜色
  attackEnable_col = "0xebb263"				--攻击按钮可用主颜色
  attackEnable_pos = "-13|-7|0x452913,24|4|0x302113,-25|-4|0xf3b35e,-58|-21|0x993e2d,29|13|0xf1b754"				--攻击按钮可用周边颜色
	attackDisable_col = "0xb0a9a1"				--攻击按钮不可用主颜色
  attackDisable_pos = "-48|0|0xb0a9a1,46|-6|0xb0a9a1,-69|-10|0x353029,70|17|0x423c36,-61|-14|0x675e5c,63|38|0x675e5c,66|-16|0x8b827a,-64|42|0x8c837b,9|47|0x47413f"				--攻击按钮不可用周边颜色
  tansuo_col = "0x21170d"				--探索灯笼按钮主颜色
	tansuo_pos = "-9|7|0x21170c,-7|9|0xffe890,6|5|0xfff8a0,4|11|0x271c0d,-7|18|0x22190d,7|18|0x241a0d,-1|20|0x251a0e,-1|19|0xfecb92"				--探索灯笼按钮周边颜色
	invite_col = "0xf3b25e"			--战斗结束后的继续邀请按钮主颜色
	invite_pos = "-56|-8|0xf3b25e,-87|-23|0x973c2d,-125|-5|0xcbb59c,-204|-6|0xdf6851,-333|28|0x852749,-94|-212|0x513427,83|35|0x6d3228,105|68|0x664435"			--战斗结束后的继续邀请按钮周边颜色
	confirmInvite_col = "0xf3b25e"			--战斗结束后的继续邀请按钮主颜色
	confirmInvite_pos = "-56|-8|0xf3b25e,-87|-23|0x973c2d,-125|-5|0xcbb59c,-204|-6|0xdf6851,-333|28|0x852749,-94|-212|0x513427,83|35|0x6d3228,105|68|0x664435"			--战斗结束后的继续邀请按钮周边颜色
	cancelInvite_col = "0xdf6851"
	cancelInvite_pos = "-85|-12|0x862748,83|42|0xc33d21,50|23|0xdf6851,-56|24|0xdf6851,-27|10|0x2a2521,25|17|0x3b2b25,-14|7|0xdf6851"
	inviteJoinTeam_col = "0x31261b"
	inviteJoinTeam_pos = "7|-40|0xf3e7ab,42|-38|0xddc26d,60|-35|0xa19b93,-20|-33|0xeddfa1,43|15|0xd2b054,30|-24|0x3a291c"
	challengeBotton_col = "0xf3b25e"  --挑战按钮主颜色
	challengeBotton_pos = "-23|1|0x352e24,29|17|0x272420,19|-5|0x352e24,-6|17|0x272420,-7|12|0xf3b25e,17|7|0xf3b25e,-60|-19|0x993f2e,67|-14|0xd68230"  --挑战按钮周边颜色
	yuhun_col = "0xf8f3e0" --御魂按钮主颜色
	yuhun_pos = "32|0|0x2a2016,28|-24|0x2e31ac,26|24|0x2627cb,22|5|0x281f16,9|-2|0xf5f0de,35|22|0x1f26ba" --御魂按钮周边颜色
	dashe_col = "0x4e5947" --八歧大蛇图标主颜色
	dashe_pos = "-202|63|0x666b5c,-35|190|0x5e5365,-233|186|0x85704c,-315|-6|0x500b0b,-230|254|0x6c4c93,31|238|0x6d6863" --八歧大蛇图标周边颜色
	yuhunzudui_col = "0xc3a6b7" --御魂组队界面主颜色
	yuhunzudui_pos = "57|-174|0xd1c7ca,-115|-165|0x6a6e60,144|24|0x6f7365,-123|85|0x867172,-210|-159|0x4a0b0c,196|161|0xf3b25e" --御魂组队界面周边颜色
	yuhunCreateTeam_col = "0xfdd580" --御魂创建队伍界面主颜色
	yuhunCreateTeam_pos = "-25|10|0x483f2f,25|29|0xffcb7b,24|32|0x2e2a23,46|15|0xffca7b,-7|17|0xf7d27e,10|19|0xfed07d" --御魂创建队伍界面周边颜色
	yuhunCreateTeamDetail_col = "0x4759da" --御魂创建队伍明细界面主颜色
	yuhunCreateTeamDetail_pos = "26|26|0xcbb59c,100|70|0xdf6851,1|14|0xfcfcfd,598|67|0xf3b25e,155|115|0xc23c21,647|56|0xd98530" --御魂创建队伍明细界面周边颜色
	po_col = "0xcebeab" --结界攻破图标主颜色
	po_pos = "36|-25|0xb24242,16|19|0x691827,-16|1|0xcfbfac,-7|-4|0x380b0e,20|21|0x6b1928,-10|9|0x53131c,27|16|0xd3c3b3" --结界攻破图标周边颜色
end

