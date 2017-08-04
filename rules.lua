--[[
Name: rules.lua
Purpose: ditching !motd (message of the day), and having an actual rule list.
]]

/*
If you need any help adding rules message me on steam 
http://steamcommunity.com/id/BreadIsHere/
*/

// Frame Creation
 hook.Add( "OnPlayerChat", "OpenGUI", function( ply, text, team )	
if (string.sub(text, 1, 6) == "!rules") then
local pFrame = vgui.Create("DFrame")
pFrame:SetTitle(" Rules ")  										
pFrame:SetSize(1000, 800)
pFrame:Center() 
pFrame:MakePopup() 
pFrame:ShowCloseButton(false) 
pFrame:SetVisible(true) 
pFrame.Paint = function(self, w, h)
draw.RoundedBox(0, 0, 0, w, h, Color(40, 40, 40, 255))
end




 

/*
   Buttons
*/

local CloseButton = vgui.Create("DButton", pFrame) 
CloseButton:SetTextColor(Color(186, 0, 6))
CloseButton:SetText("close")
CloseButton:SetFont("BudgetLabel") 
CloseButton:SetTooltip("Closes the frame and crashes the server making it go into a deep black hole watch out bro")
CloseButton:SetSize(90, 30)
CloseButton:SetPos(pFrame:GetWide() - 90, 0) 
CloseButton.Paint = function(self, w, h) 
    draw.RoundedBox( 0, 0, 0, w, h, Color(70, 70, 70))
end

/*
   Close button function
*/

CloseButton.DoClick = function()
    pFrame:SetVisible(false)
end

/*
   Labels
  - I CANT FUCKING STAND LABELS IF ANYONE HAS AN ALT METHOD PLEASE TELL ME
  - Most header Labels may look out of place i will fix that in the future though sorry :*
*/



local pLabel = vgui.Create( "DLabel", pFrame )
pLabel:SetPos( 10, -400 )
pLabel:SetSize(1000, 1000)
pLabel:SetFont("BudgetLabel") 
pLabel:SetText( [[ Out Of Character (OOC)
 OOC can refer to either information that is learned by you and not your character or words that are spoken in an out of character 
 context (usually by prefixing your chat with /ooc or //). Anything that is out of character should not be known or used by your 
 character, you can be kicked or banned in most communities and servers for doing this. This includes the names over a players head
 or information learned from OOC chat.]] )

local pLabel = vgui.Create( "DLabel", pFrame )
pLabel:SetPos( 10, -300 )
pLabel:SetSize(1000, 1000)
pLabel:SetFont("BudgetLabel") 
pLabel:SetText( [[ In Character (IC)
 IC is information, actions, and words from other characters. This information is learned on a first hand basis by your character,
 such as seeing a man being killed or the name of another character.
]] )

local pLabel = vgui.Create( "DLabel", pFrame )
pLabel:SetPos( 10, -220 )
pLabel:SetSize(1000, 1000)
pLabel:SetFont("BudgetLabel") 
pLabel:SetText( [[ New Life Rule (NLR)
 NLR is the rule that basically means if you died, you forget any information that you learned in your last life (usually just the
 stuff you learned the day you died, though). Your character remains the same, but you shouldn't know who killed you or where you died
 and likewise you shouldn't tell people who killed them in their last life because technically they are a different person..
]] )


local pLabel = vgui.Create( "DLabel", pFrame )
pLabel:SetPos( 10, -150 )
pLabel:SetSize(1000, 1000)
pLabel:SetFont("BudgetLabel") 
pLabel:SetText( [[ Random Deathmatch (RDM)
 RDM is the act of killing someone for absolutely no reason and not roleplaying it out at all.
]] )

local pLabel = vgui.Create( "DLabel", pFrame )
pLabel:SetPos( 10, 50 )
pLabel:SetSize(1000, 1000)
pLabel:SetFont("BudgetLabel") 
pLabel:SetText( [[ Metagaming
 Metagaming is the action of using out of character information in character. Examples range from speaking to another roleplayer 
 and somehow knowing his name (from the overlay you see in most scripts) to killing a person for killing you.

 Punch Whoring

 Punch Whoring is the act of which a player is punching everyone for no purpose at all.

 Prop Minging

 Prop Minging is the act of which players use props to take advantage of roleplay. This includes:
 - Prop Blocking
 - Prop Surfing
 - Prop Killing
 - Prop Climbing
 - Prop Shielding
 - Prop Bridging
 - Prop Boosting
 - Prop Trapping
 - Prop Glitching.
]] )
	end				
end )










