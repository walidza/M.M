
function dxCreateMemo(x,y,width,height,text,baba,backcolor,textcolor,bordercolor)
local backcolor=backcolor  or tocolor(40,115,178,255)
local textcolor=textcolor  or tocolor(255,255,255,255)
local bordercolor=bordercolor  or tocolor(40,115,178,255)
local element=createElement('dxMemo')
local baba=baba or false	
	if element then
	if baba then
		setElementParent(element,baba)
		x=Elements[baba].x+x
		y=Elements[baba].y+y+(Elements[baba].height*5/100)

	end
		local memo=guiCreateMemo(x,y,width,height,text,false)
			guiSetVisible(memo,false)
			guiSetAlpha(memo,0)
		Elements[element]={
		type='Memo',
		x=x,
		y=y,
		width=width,
		height=height,
		text=text,
		baba=baba,
		backcolor=backcolor,
		textcolor=textcolor,
		position='left',
		memo=memo,
		bordercolor=bordercolor,
		visible=false,
		isenabled=false,
		disabled=false,
		lastclick=0,
		}
		table.insert(createdElements,element)
		return element
	end
	return false
end
