net.Receive("ToClient", function()
	local frame = vgui.Create("DFrame")

	frame:SetSize(125,228)
	frame:SetPos(ScrW()-1150, ScrH()-500)
	frame:SetVisible(true)
	frame:MakePopup()
	frame:ShowCloseButton(false)
	frame:SetTitle(" ")
	frame:SetDraggable(false)
	frame.Paint = function(s , w , h)

		draw.RoundedBox(5,0,0,w,h,Color(0,0,0,140))
		draw.RoundedBox(5,2,2, w-4, h-4, Color(50,50,50,140))

	end

	function buttonKill()
		LocalPlayer():ConCommand("kill")
	end

	function close()
		frame:Remove()
	end

local closeButton = vgui.Create("DButton",frame)
	closeButton:SetSize(13,13)
	closeButton:SetPos(100,5)
	closeButton.DoClick = close
	closeButton:SetText("")
	closeButton.Paint = function(s , w , h)
	
		
		draw.RoundedBox(5,2,2, w-4, h-4, Color(50,50,50,140))
		draw.RoundedBox(2,0,0,w,h,Color(80,30,30,250))

	end

local button1 = vgui.Create("DButton", frame)
		button1:SetPos(10,77)
		button1:SetSize(105,45)
		button1:SetText("Button1")
		button1.DoClick = buttonKill
		button1.Paint = function(s , w , h)
	
		draw.RoundedBox(0,0,0,w,h,Color(30,30,30,250))

		end

	local button2 = vgui.Create("DButton", frame)
		button2:SetPos(10,124)
		button2:SetSize(105,45)
		button2:SetText("Button2")
		button2.DoClick = buttonKill
		button2.Paint = function(s , w , h)
	
		draw.RoundedBox(0,0,0,w,h,Color(30,30,30,250))

		end

	local button3 = vgui.Create("DButton", frame)
	button3:SetPos(10,171)
	button3:SetSize(105,45)
	button3:SetText("Kill")
	button3.DoClick = buttonKill
	button3.Paint = function(s , w , h)
	
		draw.RoundedBox(0,0,0,w,h,Color(30,30,30,250))

	end

	function openAct()
		
		function close2()
			actPanel:Remove()
			closeButton1:Remove()
		end

		actPanel = vgui.Create("DPanel")
		actPanel:SetPos(ScrW()-1025, ScrH()-500)
		actPanel:SetSize(80,200)
		actPanel.Paint = function(s,w,h)

		draw.RoundedBox(0,0,0,w,h,Color(30,30,30,240))

	end	

	closeButton1 = vgui.Create("DButton",actPanel)
		closeButton1:SetSize(13,13)
		closeButton1:SetPos(56,5)
		closeButton1.DoClick = close2
		closeButton1:SetText("")
		closeButton1.Paint = function(s , w , h)
	
		
		draw.RoundedBox(5,2,2, w-4, h-4, Color(50,50,50,140))
		draw.RoundedBox(2,0,0,w,h,Color(80,30,30,250))
	end

	act_cheer = vgui.Create("DButton", actPanel)
		act_cheer:SetSize(60,15)
		act_cheer:SetPos(10,25)
		act_cheer.

	act_laugh = vgui.Create("DButton", actPanel)
		act_laugh:SetSize(60,15)
		act_laugh:SetPos(10,40)

	act_muscle = vgui.Create("DButton", actPanel)
		act_muscle:SetSize(60,15)
		act_muscle:SetPos(10,55)

	act_zombie = vgui.Create("DButton", actPanel)
		act_zombie:SetSize(60,15)
		act_zombie:SetPos(10,70)

	act_zombie = vgui.Create("DButton", actPanel)
		act_zombie:SetSize(60,15)
		act_zombie:SetPos(10,85)

	act_robot = vgui.Create("DButton", actPanel)
		act_robot:SetSize(60,15)
		act_robot:SetPos(10,100)





end


	local button4 = vgui.Create("DButton", frame)
	button4:SetPos(10,30)
	button4:SetSize(105,45)
	button4:SetText("Acts")
	button4.DoClick = openAct
	button4.Paint = function(s,w,h)

		draw.RoundedBox(0,0,0,w,h,Color(30,30,30,250))

	end
end)