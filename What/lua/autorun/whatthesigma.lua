
hook.Add("InitPostEntity","Bruh", function()
    local PANEL = {}

function PANEL:Init()
    self:SetSize(ScrW(), ScrH())
    self:SetDraggable(false)
    self:ShowCloseButton(false)
    self:SetSizable(false)
    self:Center()
    self:MakePopup()
    self:MoveToFront()
    self:SetTitle("") 
    self.Paint = function(self,w,h) end
end

function PANEL:PerformLayout()
   self:DockPadding(0, 0, 0, 0)
end

vgui.Register("IdiotsDFrame", PANEL, "DFrame")

local frame = vgui.Create("IdiotsDFrame")

hook.Add("Think","WhatTheSigma", function()
    frame:MoveToFront()
end)

local html = vgui.Create("DHTML", frame)
html:Dock(FILL)
html:OpenURL("https://www.youtube.com/embed/hiRacdl02w4?autoplay=1&fs=1&loop=1&playlist=hiRacdl02w4")

local notouch = vgui.Create("DPanel", frame)
notouch:Dock(FILL)
notouch:SetMouseInputEnabled(true)
notouch:SetKeyboardInputEnabled(true)
notouch:RequestFocus()
notouch:SetPaintBackground(false)

end)
