''**************************************************************************************************************************************************
''Function Name						:		 EnterText
''Function Description			    :		 Checks for the object existence, if enabled and sets the value in the object
''															 This function is generic for WebEdit, WebArea
''Function Parameters			    :		sValue is the value to be set in the object
''Author							:	    Gallop
''Date								:		3rd Aug 2014
''**************************************************************************************************************************************************
Public Function EnterText(ByRef test_object, ByRef sValue)	
	'Call changeCreationTime (test_object)
	If test_object.exist(MaxWait) Then
		If test_object.GetROProperty("disabled") = False Then
			test_object.Set sValue
			If instr(1,test_object.GetROProperty("name"),"password",1) > 0 Then
				rptWriteReport "PASS", Environment.Value("StepName"), chr(34) & "********" & chr(34) & " : value should be entered in " & chr(34) & test_object.ToString & chr(34) & " field."
			Else
				rptWriteReport "PASS", Environment.Value("StepName"),chr(34) & sValue & chr(34) & " : value should be entered in " & chr(34) & test_object.ToString & chr(34) &" field."
			End If
			EnterText = true
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"),test_object.ToString & " object should be enabled."
			EnterText = false
			gErrorFlag = True
		End If
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
		EnterText = false
		gErrorFlag = True
	End If
	
End Function
RegisterUserFunc "WebEdit", "EnterText", "EnterText"
RegisterUserFunc "WinEdit", "EnterText", "EnterText"

''**************************************************************************************************************************************************
''Function Name						 :	   ClickObject
''Function Description			     :	   Checks for the object existence, if enabled and Clicks the object
''										   This function is generic for Link, Image, WebElement, WebButton
''Function Parameters			     :	   NA
''Author					    	 :	   Gallop
''Date								 :	   4th Aug 2014
''**************************************************************************************************************************************************
Public Function ClickObject(ByRef test_object)	
	'Call changeCreationTime (test_object)
	If test_object.exist(MaxWait) Then
		If Instr(1,test_object.GetROProperty("Class Name"),"Win",1) > 0 Then
			If test_object.GetROProperty("enabled") = True Then
				test_object.Click
				rptWriteReport "PASS", Environment.Value("StepName"), chr(34) & test_object.ToString & chr(34) & " object should be clicked."
				ClickObject = true
			Else
				rptWriteReport "FAIL", Environment.Value("StepName"), chr(34) & test_object.ToString & chr(34) & " object should be enabled."
				ClickObject = false
				gErrorFlag = True
			End If
		Else
			If test_object.GetROProperty("disabled") = false Then
			    ''test_object.HighLight
				test_object.Click
				rptWriteReport "PASS", Environment.Value("StepName"), chr(34) & test_object.ToString & chr(34) & " object Should be clicked."
				ClickObject = true
			Else
				rptWriteReport "FAIL", Environment.Value("StepName"), chr(34) & test_object.ToString & chr(34) & " object should be enabled."
				ClickObject = false
				gErrorFlag = True
			End If
		End If
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
		ClickObject = false
		gErrorFlag = True
	End If
	
End Function
RegisterUserFunc "Link", "ClickObject", "ClickObject"
RegisterUserFunc "Image", "ClickObject", "ClickObject"
RegisterUserFunc "WebButton", "ClickObject", "ClickObject"
RegisterUserFunc "WinButton", "ClickObject", "ClickObject"
RegisterUserFunc "WebElement", "ClickObject", "ClickObject"
RegisterUserFunc "WebEdit", "ClickObject", "ClickObject"
RegisterUserFunc "WebCheckBox", "ClickObject", "ClickObject"
RegisterUserFunc "WebFile", "ClickObject", "ClickObject"
RegisterUserFunc "WinObject", "ClickObject", "ClickObject"

''**************************************************************************************************************************************************
''Function Name						 :	   DblClickObject
''Function Description			     :	   Checks for the object existence, if enabled and Double Clicks the object
''										   This function is generic for Link, Image, WebElement, WebButton
''Function Parameters			     :	   NA
''Author					    	 :	   Sreedhar Metukuru
''Date								 :	   21 Jan 2016
''**************************************************************************************************************************************************
Public Function DblClickObject(ByRef test_object)	
	Call changeCreationTime (test_object)
	If test_object.exist(MaxWait) Then
		If Instr(1,test_object.GetROProperty("Class Name"),"Win",1) > 0 Then
			If test_object.GetROProperty("enabled") = True Then
				test_object.FireEvent "ondblclick"
				rptWriteReport "PASS", Environment.Value("StepName"), chr(34) & test_object.ToString & chr(34) & " object should be ondblclick."
				DblClickObject = true
			Else
				rptWriteReport "FAIL", Environment.Value("StepName"), chr(34) & test_object.ToString & chr(34) & " object should be enabled."
				DblClickObject = false
				gErrorFlag = True
			End If
		Else
			If test_object.GetROProperty("disabled") = false Then
				test_object.FireEvent "ondblclick"
				rptWriteReport "PASS", Environment.Value("StepName"), chr(34) & test_object.ToString & chr(34) & " object Should be ondblclick."
				DblClickObject = true
			Else
				rptWriteReport "FAIL", Environment.Value("StepName"), chr(34) & test_object.ToString & chr(34) & " object should be enabled."
				DblClickObject = false
				gErrorFlag = True
			End If
		End If
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
		DblClickObject = false
		gErrorFlag = True
	End If
	
End Function
RegisterUserFunc "Link", "DblClickObject", "DblClickObject"
RegisterUserFunc "Image", "DblClickObject", "DblClickObject"
RegisterUserFunc "WebButton", "DblClickObject", "DblClickObject"
RegisterUserFunc "WinButton", "DblClickObject", "DblClickObject"
RegisterUserFunc "WebElement", "DblClickObject", "DblClickObject"
RegisterUserFunc "WebEdit", "DblClickObject", "DblClickObject"
RegisterUserFunc "WebCheckBox", "DblClickObject", "DblClickObject"


''**************************************************************************************************************************************************
''Function Name						 :		VerifyExists
''Function Description			     :		Checks for the object existence
''											This function is generic for Browser, Page, WebEdit, WebElement, WebButton, WebList, WebRadioGroup, WebTable, WebCheckBox
''Function Parameters			     :		NA
''Author						   	 :	    Gallop
''Date								 :		4th Aug 2014
''**************************************************************************************************************************************************
Public Function VerifyExists(ByRef test_object)
	'Call changeCreationTime (test_object)
	If test_object.exist(MediumWait) Then
		rptWriteReport "PASSWITHBOLD", Environment.Value("StepName"), chr(34) & test_object.ToString & chr(34) & " should be displayed."
		'wait(1)
		VerifyExists = true
	Else
		rptWriteReport "FAILWITHBOLD", Environment.Value("StepName"), chr(34) & test_object.ToString & chr(34) & " should be displayed."
		VerifyExists = false
		gErrorFlag = True
	End If
	
End Function
RegisterUserFunc "Browser", "VerifyExists", "VerifyExists"
RegisterUserFunc "Page", "VerifyExists", "VerifyExists"
RegisterUserFunc "Link", "VerifyExists", "VerifyExists"
RegisterUserFunc "Image", "VerifyExists", "VerifyExists"
RegisterUserFunc "WebList", "VerifyExists", "VerifyExists"
RegisterUserFunc "WebRadioGroup", "VerifyExists", "VerifyExists"
RegisterUserFunc "WebTable", "VerifyExists", "VerifyExists"
RegisterUserFunc "WebElement", "VerifyExists", "VerifyExists"
RegisterUserFunc "WebEdit", "VerifyExists", "VerifyExists"
RegisterUserFunc "WebButton", "VerifyExists", "VerifyExists"
RegisterUserFunc "WebCheckBox", "VerifyExists", "VerifyExists"
RegisterUserFunc "Static", "VerifyExists", "VerifyExists"


''**************************************************************************************************************************************************
''Function Name					:		WaitForObjectToLoad
''Function Description			:		Checks for the object existence, and then waits for the object to get loaded
''										This function is generic for Link,Image,Browser,Page,WebElement,WebEdit,WebButton,WebList,WebRadioGroup,WebTable
''Function Parameters			:		sTime - waiting time for object load
''Author						:	   	Gallop
''Date							:		5th Aug 2014
''**************************************************************************************************************************************************
Public Function WaitForObjectToLoad(ByRef test_object)
	'Call changeCreationTime (test_object)
	'wait 10
	If test_object.exist(MaxWait) Then
		wait(3)
		rptWriteReport "PASS", Environment.Value("StepName"), test_object.ToString & "  should be loaded"
		WaitForObjectToLoad = true
	Else
		gErrorFlag = True
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
	End If
	
End Function
RegisterUserFunc "Link", "WaitForObjectToLoad", "WaitForObjectToLoad"
RegisterUserFunc "Image", "WaitForObjectToLoad", "WaitForObjectToLoad"
RegisterUserFunc "Browser", "WaitForObjectToLoad", "WaitForObjectToLoad"
RegisterUserFunc "Page", "WaitForObjectToLoad", "WaitForObjectToLoad"
RegisterUserFunc "WebElement", "WaitForObjectToLoad", "WaitForObjectToLoad"
RegisterUserFunc "WebEdit", "WaitForObjectToLoad", "WaitForObjectToLoad"
RegisterUserFunc "WebButton", "WaitForObjectToLoad", "WaitForObjectToLoad"
RegisterUserFunc "WebList", "WaitForObjectToLoad", "WaitForObjectToLoad"
RegisterUserFunc "WebRadioGroup", "WaitForObjectToLoad", "WaitForObjectToLoad"
RegisterUserFunc "WebTable", "WaitForObjectToLoad", "WaitForObjectToLoad"
RegisterUserFunc "WinEdit", "WaitForObjectToLoad", "WaitForObjectToLoad"

''**************************************************************************************************************************************************
''Function Name				:		VerifyRadioButtonIsSelected
''Function Description		:		Checks for the object existence, if enabled and verify radiobutton is selected
''									This function is generic for WebradioGroup
''Function Parameters		:		strValue -  is the value of Radio Button
''Author					:	    Gallop
''Date						:		20th Feb 2015
''**************************************************************************************************************************************************
Public Function VerifyRadioButtonIsSelected(ByRef test_object,Byval strValue)
	
	If test_object.exist(MaxWait) Then
		Set odesc = Description.Create
		odesc("micclass").value ="WebRadioGroup"
		Set RadioGroup = test_object.ChildObjects(odesc)
		If RadioGroup(0).GetROProperty("checked") = 1 Then
			Select Case Ucase(strValue)
				Case "YES"
					If RadioGroup(0).GetROProperty("value") = "True" Then
						rptWriteReport "PASS", Environment.Value("StepName"), strValue & " radio button should be selected."
						VerifyRadioButtonIsSelected = True
					Else
						rptWriteReport "FAIL", Environment.Value("StepName"), strValue & " radio button should be selected."
						VerifyRadioButtonIsSelected = False
						gErrorFlag = True
					End If
				Case "NO"
					If RadioGroup(0).GetROProperty("value") = "False" Then
						rptWriteReport "PASS", Environment.Value("StepName"), strValue & " radio button should be selected."
						VerifyRadioButtonIsSelected = True
					Else
						rptWriteReport "FAIL", Environment.Value("StepName"), strValue & " radio button should be selected."
						VerifyRadioButtonIsSelected = False
						gErrorFlag = True
					End If
			End Select
		Else
			gErrorFlag = True
			rptWriteReport "FAIL", Environment.Value("StepName"), strValue & " radio button should be selected."
		End If			
	Else
		gErrorFlag = True
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.GetROProperty("outertext") & " object should exist."
	End If
	
End Function
RegisterUserFunc "WebElement", "VerifyRadioButtonIsSelected", "VerifyRadioButtonIsSelected"

''**************************************************************************************************************************************************
''Function Name				:		SelectListBox
''Function Description		:		Checks for the object existence, selects value from list box using KeyBoard Actions
''									This function is generic for WebElement
''Function Parameters		:		sValue - is the value to selct from list
''Author					:	    Gallop
''Date						:		18th NOV 2016
''**************************************************************************************************************************************************
Public Function SelectListBox(ByRef test_object, ByRef sValue)
	If test_object.exist(MaxWait) Then
		'test_object.object.focus
		test_object.MakeObjVisible
		Set objDropdownDescription = Description.Create
		objDropdownDescription("micclass").value = "WebElement"
		objDropdownDescription("class").value = "k-input"
		set objDropdown = test_object.ChildObjects(objDropdownDescription)
		Wait(1)
		objDropdown(0).Click
		Set oshell=CreateObject("Wscript.Shell")
		oshell.SendKeys "{UP}"
		Wait(1)
		If Instr(1,objDropdown(0).GetROProperty("innertext"),sValue,1)>0 Then
			rptWriteReport "PASS", Environment.Value("StepName"), sValue & " should be selected from dropdown."		
            Else
			rptWriteReport "FAIL", Environment.Value("StepName"), sValue & " should be selected from dropdown."
			gErrorFlag = True			
		End If
			
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.GetROProperty("outertext") & " object should exist."
		gfSelectListBox = false
		gErrorFlag = True
	End If
End Function

RegisterUserFunc "WebElement", "SelectListBox", "SelectListBox"

''**************************************************************************************************************************************************
''Function Name				:		VerifyMandatoryMessage
''Function Description		:		Checks for the object existence, verifies mandatory message displayed
''									This function is generic for WebElement
''Function Parameters		:		strMsg - is message 
''Author					:	    Gallop
''Date						:		20th Feb 2015
''**************************************************************************************************************************************************

Function VerifyMandatoryMessage(ByRef test_object,Byval strMsg)
	Call changeCreationTime (test_object)
	If test_object.exist(MaxWait) Then
		If Instr(1,test_object.GetROProperty("outertext"),strMsg,1) <> 0 Then
			rptWriteReport "PASS", Environment.Value("StepName"), strMsg &  " message should be displayed at "& test_object.ToString
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"), strMsg &  " message should be displayed at " & test_object.ToString
		End If
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & "should exist"
	End If
End Function

RegisterUserFunc "WebElement", "VerifyMandatoryMessage", "VerifyMandatoryMessage"

''**************************************************************************************************************************************************
''Function Name				:		VerifyMessageNotExists
''Function Description		:		Checks for the object existence, verifies message is not displayed
''									This function is generic for WebElement
''Function Parameters		:		strMsg - is message
''Author					:	    Gallop
''Date						:		20th Feb 2015
''**************************************************************************************************************************************************

Function VerifyMessageNotExists(ByRef test_object,Byval strMsg)
	
	If test_object.exist(MaxWait) Then
		If Instr(1,test_object.GetROProperty("outertext"),strMsg,1) = 0 Then
			rptWriteReport "PASS", Environment.Value("StepName"), strMsg &  " message should disappear  at "& test_object.ToString
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"), strMsg &  " message should disappear at "& test_object.ToString
		End If
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & "should exist"
	End If
End Function

RegisterUserFunc "WebElement", "VerifyMessageNotExists", "VerifyMessageNotExists"
''**************************************************************************************************************************************************
''Function Name				:		VerifyDisplayedText
''Function Description		:		Checks for the object existence, verifies text displayed
''									This function is generic for WebElement
''Function Parameters		:		strValue is the text to be verified
''Author					:	    Gallop
''Date						:		20th Feb 2015
''**************************************************************************************************************************************************
Function VerifyDisplayedText(ByRef test_object,ByVal strValue)
    ''wait 2
	''Call changeCreationTime (test_object)
	''wait 4
	If test_object.exist(MaxWait) Then
		If Instr(1,test_object.GetROProperty("innertext"),strValue,1) <> 0 Then
			rptWriteReport "PASSWITHBOLD", Environment.Value("StepName"), "Text: " & chr(34) & strValue & chr(34) & "  should be displayed at " & test_object.ToString
		Else
			gErrorFlag = True
			rptWriteReport "FAILWITHBOLD", Environment.Value("StepName"), "Text: " & chr(34) & strValue & chr(34) & "  should be displayed at " & test_object.ToString
		End If
	Else
		gErrorFlag = True
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & "should exist"
	End If
End Function
RegisterUserFunc "WebElement", "VerifyDisplayedText", "VerifyDisplayedText"
RegisterUserFunc "link", "VerifyDisplayedText", "VerifyDisplayedText"

''**************************************************************************************************************************************************
''Function Name				:		ClickOnCalenderIcon
''Function Description		:		Checks for the object existence, Click on calender icon
''									This function is generic for WebElement
''Function Parameters		:		NA
''Author					:	    Gallop
''Date						:		5th Mar 2015
''**************************************************************************************************************************************************

Public Function ClickOnCalenderIcon(ByRef test_object)
	
	If test_object.exist(MaxWait) Then
		Set objIcon = description.Create
		objIcon("micclass").value = "WebElement"
		objIcon("html tag").value = "SPAN"
		objIcon("class").value = ".*k-i-calendar"
		Set objCalendarIcon = test_object.childobjects(objIcon)
		If objCalendarIcon.Count = 1 Then
			objCalendarIcon(0).Click
			rptWriteReport "PASS", Environment.Value("StepName"), "cleandar icon should be clicked under " & test_object.ToString		
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"), "cleandar icon should be clicked under " & test_object.ToString
			gErrorFlag = True
		End If	
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
		gErrorFlag = True
	End If
	
End Function
RegisterUserFunc "WebElement", "ClickOnCalenderIcon", "ClickOnCalenderIcon"

''**************************************************************************************************************************************************
''Function Name				:		VerifyCalenderNavigation
''Function Description		:		Checks for the object existence, Check the calender Icons are disable/enable.
''									This function is generic for Link
''Function Parameters		:		NA
''Author					:	    Gallop
''Date						:		5th Mar 2015
''**************************************************************************************************************************************************

Public Function VerifyCalenderNavigation(ByRef test_object,strCondation)
	
	If test_object.exist(MaxWait) Then
		strClass = test_object.GetROProperty("class")
		If ucase(strCondation) = "MOVABLE" Then
			If not Instr(1,strClass,"k-state-disabled",1)<>0 Then
				rptWriteReport "PASS", Environment.Value("StepName"), test_object.ToString & " should be enable"
			Else
				gErrorFlag = True
				rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " should be enable"	
			End If
		Else
			If Instr(1,strClass,"k-state-disabled",1)<>0 Then
				rptWriteReport "PASS", Environment.Value("StepName"), test_object.ToString & " should be disable"
			Else
				gErrorFlag = True
				rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " should be disable"	
			End If
		End If	
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.GetROProperty("outertext") & " object should exist."
		gErrorFlag = True
	End If
	
End Function
RegisterUserFunc "Link", "VerifyCalenderNavigation", "VerifyCalenderNavigation"

''**************************************************************************************************************************************************
''Function Name				:		VerifyPreviousDateNotShownInCalendar
''Function Description		:		Checks for the object existence, Check Calendar pop-up widget should display only dates on or after the current date
''									This function is generic for WebTable
''Function Parameters		:		NA
''Author					:	    Gallop
''Date						:		5th Mar 2015
''**************************************************************************************************************************************************
Public Function VerifyPreviousDateNotShownInCalendar(ByRef test_object)
    wait 2
	On Error Resume Next
	If test_object.exist(MaxWait) Then
		bflag = False
		bstartFlag = False
		bPassFlag = True
		ir = test_object.RowCount
		For i = 2 To ir Step 1
			ic = test_object.ColumnCount(ir)
			For j = 1 To ic Step 1
				strcelldata = test_object.GetCellData(i,j)
				If len(Trim(strcelldata))>0 and bstartFlag = False Then
					strstartday = test_object.ChildItem(i,j,"Link",0).GetROProperty("title")
					strstartday = mid (strstartday,instr(strstartday,",")+1)
					If Day(CDate(Trim(strstartday))) = Day(Date) Then
						bstartFlag = True
					Else
						bPassFlag = False
						bflag = true
					    Exit for 
					End If
				End If
				If bstartFlag = True and len(Trim(strcelldata)) = 0 Then
					bPassFlag = False
					bflag = true
				    Exit for 
				End If				
			Next
			If bflag = true Then
				Exit For
			End If
		Next
		If bPassFlag Then
			rptWriteReport "Pass", Environment.Value("StepName"), "Calendar pop-up widget should display only dates on or after the current date"
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"), "Calendar pop-up widget should display only dates on or after the current date"		
			gErrorFlag = True
		End If
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
		gErrorFlag = True
	End If	
	On Error Goto 0	
End Function
RegisterUserFunc "WebTable", "VerifyPreviousDateNotShownInCalendar", "VerifyPreviousDateNotShownInCalendar"


''**************************************************************************************************************************************************
''Function Name				:		VerifyToolTip
''Function Description		:		Checks for the object existence, verifies text displayed in tool tip
''									This function is generic for WebElement,WebEdit
''Function Parameters		:		strToolTip is the message displayed in tool tip
''Author					:	    Gallop
''Date						:		20th Feb 2015
''**************************************************************************************************************************************************
Function VerifyToolTip(ByRef test_object,strToolTip)
	
	If test_object.exist(MaxWait) Then
		If Instr(1,test_object.GetROProperty("title"),strToolTip,1) <> 0 Then
			rptWriteReport "PASS", Environment.Value("StepName"),chr(34) & strToolTip & chr(34) &  "should be displayed as tool tip for " & chr(34) & test_object.ToString & chr(34)
		Else
			gErrorFlag = True
			rptWriteReport "FAIL", Environment.Value("StepName"),chr(34) & strToolTip & chr(34) &  "should be displayed as tool tip for " & chr(34) & test_object.ToString & chr(34)
		End If
	Else
		gErrorFlag = True
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & "should exist"
	End If
End Function
RegisterUserFunc "WebEdit", "VerifyToolTip", "VerifyToolTip"
RegisterUserFunc "WebElement", "VerifyToolTip", "VerifyToolTip"


''**************************************************************************************************************************************************
''Function Name				:		VerifyMaxLength
''Function Description		:		Checks for the object existence, verifies maximum length allowed in text box
''									This function is generic for WebEdit
''Function Parameters		:		iLength - max lenght ,strType - type of string we need to enter
''Author					:	    Gallop
''Date						:		9th Feb 2015
''**************************************************************************************************************************************************
Function VerifyMaxLength(ByRef test_object,Byval iLength,Byval strType)
	On Error Resume Next
	Dim strValue
	Select Case Ucase(strType)
	Case "ALPHABETIC"
		strValue = GenerateRandomString(iLength+1,"ALPHABETIC")
	Case "NUMERIC"
		strValue = GenerateRandomString(iLength+1,"NUMERIC")
	Case "ALPHANUMERIC"
		strValue = GenerateRandomString(iLength+1,"ALPHANUMERIC")
	End Select
	If test_object.exist(MaxWait) Then
		test_object.Set strValue
		If Err.Number<>0 Then
			Err.Clear
			rptWriteReport "PASS", Environment.Value("StepName"), "Verify maximum length of " & test_object.ToString &",Try to enter "& iLength+1 &" " & strType &" characters. It should allow the " & iLength & " characters only"
		Else
			gErrorFlag = True
			rptWriteReport "FAIL", Environment.Value("StepName"), "Verify maximum length of " & test_object.ToString &",Try to enter "& iLength+1 &" " & strType &" characters. It should allow the " & iLength & " characters only"
		End If
	Else	
		gErrorFlag = True	
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & "should exist"
	End If
	On Error goto 0
End Function
RegisterUserFunc "WebEdit", "VerifyMaxLength", "VerifyMaxLength"



''**************************************************************************************************************************************************
''Function Name				:		ClickSpellCheckIcon
''Function Description		:		Checks for the object existence, clicks on spell check icon
''									This function is generic for WebElement
''Function Parameters		:		NA
''Author					:	    Gallop
''Date						:		10th March 2015
''**************************************************************************************************************************************************
Function ClickSpellCheckIcon(ByRef test_object)
	
	If test_object.exist(MaxWait) Then
		Set objIcon = description.Create
		objIcon("micclass").value = "WebElement"
		objIcon("html tag").value = "SPAN"
		objIcon("class").value = ".*icon-check"
		Set objSpellCheckIcon = test_object.childobjects(objIcon)
		If objSpellCheckIcon.Count = 1 Then
			Wait 5
			objSpellCheckIcon(0).Click
			rptWriteReport "PASS", Environment.Value("StepName"), "Spell check icon should be clicked under " & test_object.ToString
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"), "Spell check icon should be clicked under " & test_object.ToString
			gErrorFlag = True
		End If
	Else
			gErrorFlag = True
			rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & "should exist"
	End If
End Function
RegisterUserFunc "WebElement", "ClickSpellCheckIcon","ClickSpellCheckIcon"

''**************************************************************************************************************************************************
''Function Name				:		VerifySpellCheck
''Function Description		:		Checks for the object existence,verifies and selects correct word.
''									This function is generic for WebElement
''Function Parameters		:		strText
''Author					:	    Gallop
''Date						:		10th March 2015
''**************************************************************************************************************************************************
Function VerifySpellCheck(ByRef test_object,Byval strText)
	
	If test_object.exist(MaxWait) Then
		If Not(Len(Trim(test_object.getroproperty("all items"))) > 0) Then
			Wait 5
		End If	
			If Instr(1,test_object.getroproperty("all items"),strText,1) <> 0 Then
				rptWriteReport "PASS", Environment.Value("StepName"),chr(34) & "strText should be displayed in suggestions list"
			Else
				rptWriteReport "FAIL", Environment.Value("StepName"),chr(34) & "strText should be displayed in suggestions list"
				gErrorFlag = True
			End If
	Else
		gErrorFlag = True
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & "should exist"
	End If
End Function
RegisterUserFunc "WebList", "VerifySpellCheck", "VerifySpellCheck"

''**************************************************************************************************************************************************
''Function Name				:		VerifySpecialCharacterNotAllowed
''Function Description		:		Checks for the object existence, checks that special character is not allowed to enter
''									This function is generic for WebEdit
''Function Parameters		:		strText
''Author					:	    Gallop
''Date						:		9th march 2015
''**************************************************************************************************************************************************
Function VerifySpecialCharacterNotAllowed(ByRef test_object,strText)
   wait 4 
	On Error Resume Next
	If test_object.exist(MaxWait) Then
		test_object.object.focus
		test_object.click
		Wait 2
		Set oshell = createobject("Wscript.shell")
		oshell.sendkeys strText
		oshell.sendkeys "{TAB}"
		wait(1)
		If Trim(test_object.GetROProperty("value")) <> strText And len(test_object.GetROProperty("value"))>0 Then
			rptWriteReport "PASS", Environment.Value("StepName"), "Verify special characters are not allowed in" & test_object.ToString &". Try to enter "& strText&" String.It should not allow special characters "
		Else
			gErrorFlag = True
			rptWriteReport "FAIL", Environment.Value("StepName"), "Verify special characters are not allowed in" & test_object.ToString &". Try to enter "& strText&" String.It should not allow special characters "
		End If
	Else
		gErrorFlag = True
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & "should exist"
	End If
	On Error goto 0
End Function
RegisterUserFunc "WebEdit", "VerifySpecialCharacterNotAllowed", "VerifySpecialCharacterNotAllowed"

''**************************************************************************************************************************************************
''Function Name				:		VerifyAlphaCharacterNotAllowed
''Function Description		:		Checks for the object existence, checks that alpha characters are not allowed to enter
''									This function is generic for WebEdit
''Function Parameters		:		strText
''Author					:	    Gallop
''Date						:		9th march 2015
''**************************************************************************************************************************************************
Function VerifyAlphaCharacterNotAllowed(ByRef test_object,strText)
	On Error Resume Next
	If test_object.exist(MaxWait) Then
		test_object.object.focus
		test_object.click
		Wait 2
		Set oshell = createobject("Wscript.shell")
		oshell.sendkeys strText
		oshell.sendkeys "{TAB}"
		wait(1)
		If Trim(test_object.GetROProperty("value")) <> strText and Len(test_object.GetROProperty("value"))> 0 Then
			rptWriteReport "PASS", Environment.Value("StepName"), "Verify Alpha characters are not allowed in" & test_object.ToString &". Try to enter: "& strText&" .It should not allow alpha characters "
		Else
			gErrorFlag = True
			rptWriteReport "FAIL", Environment.Value("StepName"), "Verify Alpha characters are not allowed in" & test_object.ToString &". Try to enter: "& strText&" .It should not allow alpha characters "
		End If
	Else
		gErrorFlag = True
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & "should exist"
	End If
	On Error goto 0
End Function
RegisterUserFunc "WebEdit", "VerifyAlphaCharacterNotAllowed", "VerifyAlphaCharacterNotAllowed"

''**************************************************************************************************************************************************
''Function Name				:		VerifyFieldIsReadOnly
''Function Description		:		Checks for the object existence, checks whether field is readonly
''									This function is generic for WebElement
''Function Parameters		:		NA
''Author					:	    Gallop
''Date						:		9th March 2015
''**************************************************************************************************************************************************
Function VerifyFieldIsReadOnly(ByRef test_object)
	Wait 2
	If test_object.exist(MaxWait) Then
		Set objStatic = description.Create
		objStatic("micclass").value = "WebElement"
		objStatic("class").value = ".*readonly"
		Set objReadOnly = test_object.childobjects(objStatic)
		If objReadOnly.Count = 1 Then
			rptWriteReport "PASS", Environment.Value("StepName"), "Verify " & chr(34) & test_object.ToString & chr(34) & "is read only"
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"), "Verify " & chr(34) & test_object.ToString & chr(34) & "is read only"
			gErrorFlag = True
		End If
	Else
			gErrorFlag = True
			rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & "should exist"
	End If
End Function
RegisterUserFunc "WebElement", "VerifyFieldIsReadOnly","VerifyFieldIsReadOnly"

''**************************************************************************************************************************************************
''Function Name                      :        VerifyPageName
''Function Description               :        Checks for the page name
''                                            This function is generic for WebElement
''Function Parameters                :        NA
''Author                             :        Gallop
''Date                               :        09th Mar 2015
''**************************************************************************************************************************************************
Public Function VerifyPageName(ByRef test_object)
    ''Call changeCreationTime (test_object)
	''Wait 1
    set objPage = test_object.GetTOProperty("parent")
'	objPage.sync
	Wait 1
    If test_object.exist(MaxWait) Then
        rptWriteReport "PASSWITHBOLD", Environment.Value("StepName"), chr(34) & objPage.GetTOProperty("title") & chr(34) & " page should be displayed."
    Else
        rptWriteReport "FAILWITHBOLD", Environment.Value("StepName"), chr(34) & objPage.GetTOProperty("title") & chr(34) & " page should be displayed."
        gErrorFlag = True
    End If
    
End Function

RegisterUserFunc "WebElement", "VerifyPageName", "VerifyPageName"
RegisterUserFunc "WebButton", "VerifyPageName", "VerifyPageName"
''**************************************************************************************************************************************************
''Function Name				:		SelectRadioButton
''Function Description		:		Checks for the object existence, if enabled and selects the radiobutton
''									This function is generic for WebElement
''Function Parameters		:		strValue - Radio button value
''Author					:	    Gallop
''Date						:		12th March 2015
''**************************************************************************************************************************************************
Public Function SelectRadioButton(ByRef test_object,Byval strValue)
	Call changeCreationTime (test_object)
	wait 3
	If test_object.exist(MaxWait) Then
		Set odesc = Description.Create
		odesc("micclass").value ="WebRadioGroup"
		Set RadioGroup = test_object.ChildObjects(odesc)
		If RadioGroup.count = 0 Then
			gErrorFlag = True
			rptWriteReport "FAIL", Environment.Value("StepName"), test_object.GetROProperty("innertext") & " RadioGroup."
		Else
			Select Case Ucase(strValue)
				Case "YES"
					If (Instr(RadioGroup(0).GetROProperty("all items"),"Yes"))<>0 Then
						RadioGroup(0).Select "Yes"
						rptWriteReport "PASS", Environment.Value("StepName"), "select  " & strValue & " Radio button for " & chr(34) & test_object.ToString & chr(34) 
					Else
						If Instr(RadioGroup(0).GetROProperty("all items"),"True") Then
							RadioGroup(0).Select "True"
							rptWriteReport "PASS", Environment.Value("StepName"), "select  " & strValue & " Radio button for " & chr(34) & test_object.ToString & chr(34) 
						End If							
					End If
					
				Case "NO"
					If (Instr(RadioGroup(0).GetROProperty("all items"),"No")) <>0 Then
						RadioGroup(0).Select "No"
						rptWriteReport "PASS", Environment.Value("StepName"), "select  " & strValue & " Radio button for " & chr(34) & test_object.ToString & chr(34) 
					Else
						If Instr(RadioGroup(0).GetROProperty("all items"),"False") Then
							RadioGroup(0).Select "False"
							rptWriteReport "PASS", Environment.Value("StepName"), "select  " & strValue & " Radio button for " & chr(34) & test_object.ToString & chr(34) 
						End If
					End If	

				Case Else
					If (Instr(RadioGroup(0).GetROProperty("all items"),strValue)) <> 0 Then
						RadioGroup(0).Select strValue
						rptWriteReport "PASS", Environment.Value("StepName"), "select  " & strValue & " Radio button for " & chr(34) & test_object.ToString & chr(34) 
					Else
						gErrorFlag = True
						rptWriteReport "FAIL", Environment.Value("StepName"), chr(34) & test_object.ToString  &  chr(34)  & " object should exist."
					End If					
				End Select			
		End If
	Else
		gErrorFlag = True
		rptWriteReport "FAIL", Environment.Value("StepName"), chr(34) & test_object.ToString  &  chr(34)  & " object should exist."
	End If
	
End Function
RegisterUserFunc "WebElement", "SelectRadioButton", "SelectRadioButton"

''**************************************************************************************************************************************************
''Function Name				:		SelectListBoxByIndex
''Function Description		:		Checks for the object existence, and select the value from drop down by using index number
''									This function is generic for WebElement
''Function Parameters		:		iindex - is item number
''Author					:	    Gallop
''Date						:		12th Mar 2015
''**************************************************************************************************************************************************
Public Function SelectListBoxByIndex(ByRef test_object, Byval iindex)
	
	If test_object.exist(MaxWait) Then
		test_object.Object.Focus
		Set objDropdownDescription = Description.Create
		objDropdownDescription("micclass").value = "WebElement"
		objDropdownDescription("class").value = "k-input"
		set objDropdown = test_object.ChildObjects(objDropdownDescription)
		Wait(3)
		If objDropdown.count = 1 Then
			objDropdown(0).Click
			Wait(3)			
			Set objlist = Description.Create
			objlist("micclass").value = "WebElement"
			objlist("html tag").value = "DIV"
			objlist("visible").value = True
			objlist("html id").value = ".*-list"
			set objPage = test_object.GetTOProperty("parent")
			Set list = objPage.ChildObjects(objlist)
			If list.count =1 Then
				Set ObjDropdownListValueDescription = Description.Create
				ObjDropdownListValueDescription("micclass").value = "WebElement"
				ObjDropdownListValueDescription("html tag").value = "LI"
				ObjDropdownListValueDescription("visible").value = True
				Set options = list(0).childobjects(ObjDropdownListValueDescription)		
				If options.count>0 Then
					If len(Trim(options(i).GetROproperty("innertext"))) > 0 Then
						iindex = iindex-1
					End If		
					If Not iindex > options.count-1 Then
						options(iindex).click
						rptWriteReport "PASS", Environment.Value("StepName"), "select the from " & chr(34) & test_object.ToString & chr(34)  & " dropdown. by using index ::" &iindex
						SelectListBoxByIndex = false
					Else
						rptWriteReport "FAIL", Environment.Value("StepName"), "Index value exceed the dropdown values in " &chr(34) & test_object.ToString & chr(34) & " dropdown."
						SelectListBoxByIndex = false
						gErrorFlag = True					
					End If			
				Else	
					rptWriteReport "FAIL", Environment.Value("StepName"), "Dropdown options should shown under " & chr(34) & test_object.ToString & chr(34)  & " dropdown."
					SelectListBoxByIndex = false
					gErrorFlag = True
				End If				
	
			Else
				rptWriteReport "FAIL", Environment.Value("StepName"), "Dropdown options should shown under " & chr(34) & test_object.ToString & chr(34)  &" dropdown."
				SelectListBoxByIndex = false
				gErrorFlag = True			
			End If
			
			
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"), "Dropdown should shown under " & chr(34) & test_object.ToString & chr(34)  & " object."
			SelectListBoxByIndex = false
			gErrorFlag = True		
		End If
	
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"),  chr(34) & test_object.ToString & chr(34)  & " object should exist."
		SelectListBoxByIndex = false
		gErrorFlag = True
	End If
	
End Function	

RegisterUserFunc "WebElement", "SelectListBoxByIndex", "SelectListBoxByIndex"

''**************************************************************************************************************************************************
''Function Name				:		VerifyValueSelectedInDropDown
''Function Description		:		Checks for the object existence, and verify the selected value in dropdown
''									This function is generic for WebElement
''Function Parameters		:		strValue -  is value of selected dropdown value
''Author					:	    Gallop
''Date						:		12th Mar 2015
''**************************************************************************************************************************************************

Public Function VerifyValueSelectedInDropDown(ByRef test_object,ByVal strValue)
	
	If test_object.exist(MaxWait) Then
		Set objdropdown = description.Create
		objdropdown("micclass").value = "WebElement"
		objdropdown("class").value = "k-input"
		Set objSelectedValue = test_object.childobjects(objdropdown)
		If objSelectedValue.Count = 1 Then
			If Trim(objSelectedValue(0).GetROProperty("innertext")) = strValue Then
				rptWriteReport "PASS", Environment.Value("StepName"),chr(34) & strValue & chr(34) & " should be displayed as selected value in dropdown : " & chr(34) & test_object.ToString & chr(34)		
			Else
				rptWriteReport "FAIL", Environment.Value("StepName"),chr(34) & strValue & chr(34) & " should be displayed as selected value in dropdown : " & chr(34) & test_object.ToString & chr(34)		
				gErrorFlag = True
			End If
		Else
			rptWriteReport "FAIl", Environment.Value("StepName"),"Dropdown should be displayed for " & chr(34) & test_object.ToString & chr(34)
		End If
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
		gErrorFlag = True
	End If
	
End Function
RegisterUserFunc "WebElement", "VerifyValueSelectedInDropDown", "VerifyValueSelectedInDropDown"

''**************************************************************************************************************************************************
''Function Name				:		VerifyYellowAlertNotExist
''Function Description		:		Checks for the object existence, checks whether field is not highlighted in yellow background
''									This function is generic for WebElement
''Function Parameters		:		NA
''Author					:	    Gallop
''Date						:		13th March 2015
''**************************************************************************************************************************************************
Function VerifyYellowAlertNotExist(ByRef test_object)
	
	If test_object.exist(MaxWait) Then
		Set objAlert = description.Create
		objAlert("micclass").value = "WebElement"
		objAlert("class").value = ".*alert-warning"
		Set objYellowAlert = test_object.childobjects(objAlert)
		If objYellowAlert.Count = 0 Then
			rptWriteReport "PASS", Environment.Value("StepName"), "Verify yellow alert icon is not displayed for  " & chr(34) & test_object.ToString & chr(34)
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"), "Verify yellow alert icon is not displayed for  " & chr(34) & test_object.ToString & chr(34)
			gErrorFlag = True
		End If
	Else
			gErrorFlag = True
			rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & "should exist"
	End If
End Function
RegisterUserFunc "WebElement", "VerifyYellowAlertNotExist","VerifyYellowAlertNotExist"


''**************************************************************************************************************************************************
''Function Name				:		VerifyYellowAlert
''Function Description		:		Checks for the object existence, checks whether field is highlighted in yellow background
''									This function is generic for WebElement
''Function Parameters		:		NA
''Author					:	    Gallop
''Date						:		13th March 2015
''**************************************************************************************************************************************************
Function VerifyYellowAlert(ByRef test_object)
	
	If test_object.exist(MaxWait) Then
		Set objAlert = description.Create
		objAlert("micclass").value = "WebElement"
		objAlert("class").value = ".*alert-warning"
		Set objYellowAlert = test_object.childobjects(objAlert)
		If objYellowAlert.Count = 1 Then
			rptWriteReport "PASS", Environment.Value("StepName"), "Verify yellow alert icon is displayed for  " & chr(34) & test_object.ToString & chr(34)
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"), "Verify yellow alert icon is displayed for  " & chr(34) & test_object.ToString & chr(34)
			gErrorFlag = True
		End If
	Else
			gErrorFlag = True
			rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & "should exist"
	End If
End Function
RegisterUserFunc "WebElement", "VerifyYellowAlert","VerifyYellowAlert"



''**************************************************************************************************************************************************
''Function Name				:		ClickOnToggles
''Function Description		:		Checks for the object existence, Click on Toggles
''									This function is generic for WebElement
''Function Parameters		:		sValue - is toggle value
''Author					:	    Gallop
''Date						:		16th Mar 2015
''**************************************************************************************************************************************************

Public Function ClickOnToggles(ByRef test_object,ByRef sValue)
	Call changeCreationTime (test_object)
	If test_object.exist(MaxWait) Then
		Set objToggle = description.Create
		objToggle("micclass").value = "WebElement"
		objToggle("class").value = "btn btn-default.*"
		objToggle("innertext").value = sValue
		Set objToggleValue = test_object.childobjects(objToggle)
		If objToggleValue.Count = 1 Then
			objToggleValue(0).Click
			rptWriteReport "PASS", Environment.Value("StepName"), sValue&" Toggle should be clicked under " & test_object.ToString		
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"), sValue&" Toggle should be Shown under " & test_object.ToString
			gErrorFlag = True
		End If	
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
		gErrorFlag = True
	End If
	
End Function
RegisterUserFunc "WebElement", "ClickOnToggles", "ClickOnToggles"

''**************************************************************************************************************************************************
''Function Name				:		ValidateToggleisSelected
''Function Description		:		Checks for the object existence, Validate Toggle is Selected or Not
''									This function is generic for WebElement
''Function Parameters		:		sValue - is selected toggle value
''Author					:	    Gallop
''Date						:		16th Mar 2015
''**************************************************************************************************************************************************

Public Function ValidateToggleisSelected(ByRef test_object,ByRef sValue)
	Call changeCreationTime (test_object)
	If test_object.exist(MaxWait) Then
		Set objToggle = description.Create
		objToggle("micclass").value = "WebElement"
		objToggle("class").value = "btn btn-default.*"
		objToggle("innertext").value = sValue
		Set objToggleValue = test_object.childobjects(objToggle)
		If objToggleValue.Count = 1 Then
			classval = objToggleValue(0).GetRoProperty("class")
			If InStr(1,classval,"btn-info",1) > 0 Then
				rptWriteReport "PASS", Environment.Value("StepName"), sValue& " Toggle is selected and slightly darker under " & test_object.ToString		
			Else
				rptWriteReport "FAIL", Environment.Value("StepName"), sValue& " Toggle is selected and slightly darker under " & test_object.ToString
				gErrorFlag = True
			End If	
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"), sValue& " Toggle should be shown under " & test_object.ToString
			gErrorFlag = True
		End If	
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
		gErrorFlag = True
	End If
	
End Function
RegisterUserFunc "WebElement", "ValidateToggleisSelected", "ValidateToggleisSelected"


''**************************************************************************************************************************************************
''Function Name						:		 ClearText
''Function Description			    :		 Checks for the object existence, if enabled and claers the data in text box
''											This function is generic for WebEdit
''Function Parameters			    :		NA
''Author							:	    Gallop
''Date								:		11th March
''**************************************************************************************************************************************************
Public Function ClearText(ByRef test_object)
	
	If test_object.exist(MaxWait) Then
		If test_object.GetROProperty("disabled") = False Then
			test_object.Set ""
			rptWriteReport "PASS", Environment.Value("StepName"),"Clear the text in " & test_object.ToString
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"),test_object.ToString & " object should be enabled."
			gErrorFlag = True
		End If
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
		gErrorFlag = True
	End If
	
End Function
RegisterUserFunc "WebEdit", "ClearText", "ClearText"

''**************************************************************************************************************************************************
''Function Name				:		ClickOnHelpIcon
''Function Description		:		Checks for the object existence, clicks on Help icon
''									This function is generic for WebElement
''Function Parameters		:		NA
''Author					:	    Gallop
''Date						:		16th March 2015
''**************************************************************************************************************************************************
Function ClickOnHelpIcon(ByRef test_object)
	
	If test_object.exist(MinWait) Then
		Set objIcon = description.Create
		objIcon("micclass").value = "WebButton"
		objIcon("html tag").value = "BUTTON"
		objIcon("class").value = ".*ifs-question-help ifs-bound"
		Set objHelpIcon = test_object.childobjects(objIcon)
		If objHelpIcon.Count = 1 Then
			Wait 2
			objHelpIcon(0).Highlight
			objHelpIcon(0).Click
			rptWriteReport "PASS", Environment.Value("StepName"), "Help icon should be clicked under " & test_object.ToString
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"), "Help icon should be clicked under " & test_object.ToString
			gErrorFlag = True
		End If
	Else
			gErrorFlag = True
			rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & "should exist"
	End If
End Function
RegisterUserFunc "WebElement", "ClickOnHelpIcon","ClickOnHelpIcon"

''**************************************************************************************************************************************************
''Function Name				:		VerifyHelpHeader
''Function Description		:		Checks for the object existence, verifies header displayed in Help popup
''									This function is generic for WebElement
''Function Parameters		:		sHeader 
''Author					:	    Gallop
''Date						:		19th March 2015
''**************************************************************************************************************************************************
Function VerifyHelpHeader(ByRef test_object,Byval sHeader)
	
	If test_object.exist(MaxWait) Then
		If Instr(1,test_object.GetROProperty("innertext"),sHeader,1) Then
			rptWriteReport "PASS", Environment.Value("StepName"), "Help Header should be displayed as " & chr(34) & sHeader  & chr(34)
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"), "Help Header should be displayed as " & chr(34) & sHeader	 & chr(34)	
		End If
	Else
		gErrorFlag = True
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & "should exist"
	End If
End Function
RegisterUserFunc "WebElement", "VerifyHelpHeader","VerifyHelpHeader"

''**************************************************************************************************************************************************
''Function Name				:		VerifyHelpContent
''Function Description		:		Checks for the object existence, verifies help content displayed in Help popup
''									This function is generic for WebElement
''Function Parameters		:		sHelpContent
''Author					:	    Gallop
''Date						:		19th March 2015
''**************************************************************************************************************************************************
Function VerifyHelpContent(ByRef test_object,Byval sHelpContent)
	
	If test_object.exist(MaxWait) Then
		If Instr(1,test_object.GetROProperty("innertext"),sHelpContent,1) Then
			rptWriteReport "PASS", Environment.Value("StepName"), "Help content should be displayed as " & chr(34) & sHelpContent  & chr(34)
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"), "Help Content should be displayed as " & chr(34) & sHelpContent  & chr(34)	
		End If
	Else
		gErrorFlag = True
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & "should exist"
	End If
End Function
RegisterUserFunc "WebElement", "VerifyHelpContent","VerifyHelpContent"



''**************************************************************************************************************************************************
''Function Name						:		 VerifyValue
''Function Description			    :		 Checks for the object existence, if enabled and sets the value in the object
''															 This function is generic for WebEdit, WebArea
''Function Parameters			    :		sValue - is verify the value in edit box 
''Author							:	    Gallop
''Date								:		3rd Aug 2014
''**************************************************************************************************************************************************
Public Function VerifyValue(ByRef test_object, ByVal sValue)
	wait 2
	If test_object.exist(MaxWait) Then		
		If StrComp(test_object.GetROProperty("value"),sValue,1) = 0 Then
			rptWriteReport "PASS", Environment.Value("StepName"), sValue & " : value should be displayed in " & chr(34) & test_object.ToString & chr(34) & " field."
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"), sValue & " : value should be displayed in " & chr(34) & test_object.ToString & chr(34) & " field."
		End If
		VerifyValue = true		
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
		VerifyValue = false
		gErrorFlag = True
	End If
	
End Function
RegisterUserFunc "WebEdit", "VerifyValue", "VerifyValue"

''**************************************************************************************************************************************************
''Function Name						:		 TypeText
''Function Description			    :		 Checks for the object existence, if enabled and sets the value in the object with event
''															 This function is generic for WebEdit, WebArea
''Function Parameters			    :		sValue is the value to be set in the object
''Author							:	    Gallop
''Date								:		3rd Aug 2014
''**************************************************************************************************************************************************
Public Function TypeText(ByRef test_object, ByRef sValue)
	wait 2
	If test_object.exist(MaxWait) Then
		test_object.object.focus
		If test_object.GetROProperty("disabled") = False Then
'			Setting.WebPackage("ReplayType") = 2
'			test_object.Set sValue
'			Setting.WebPackage("ReplayType") = 1
			Set oshell = createobject("Wscript.shell")
			wait 1
			oshell.sendkeys sValue
			wait 1
			oshell.sendkeys "{RIGHT}"
			Set oshell = Nothing
			rptWriteReport "PASS", Environment.Value("StepName"),chr(34) & sValue & chr(34) & " : value should be entered in " & chr(34) & test_object.ToString & chr(34) &" field."
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"),test_object.ToString & " object should be enabled."
			TypeText = false
			gErrorFlag = True
		End If
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
		TypeText = false
		gErrorFlag = True
	End If
	
End Function
RegisterUserFunc "WebEdit", "TypeText", "TypeText"


''**************************************************************************************************************************************************
''Function Name						:		 VerifyBizDate1ColMin2Max5
''Function Description			    :		 Checks for the object existence, verify the calendar showns date range of only 2-5 days after current date
''															 This function is generic for WebEdit, WebArea
''Function Parameters			    :		NA
''Author							:	    Gallop
''Date								:		20th Mar 2014
''**************************************************************************************************************************************************
Public Function VerifyBizDate1ColMin2Max5(ByRef test_object)
Dim iCurrentIteration
	On Error Resume Next
	If test_object.exist(MaxWait) Then
		bflag = False
		bStartDayFlag = False
		bEndDayFlag = False
		bPassFlag = True
		icount = 0
		ir = test_object.RowCount
		For i = 2 To ir Step 1
			ic = test_object.ColumnCount(ir)
			For j = 1 To ic Step 1
				print "bStartDayFlag" & bStartDayFlag
				print "icount" & icount
				print "idisplaycount" & idisplaycount
				strcelldata = test_object.ChildItem(i,j,"Link",0).GetROProperty("innertext")
				If len(Trim(strcelldata)) > 0 and bStartDayFlag = False Then
					strstartday = test_object.ChildItem(i,j,"Link",0).GetROProperty("title")
					strstartday = mid (strstartday,instr(strstartday,",")+1)
					If Day(CDate(Trim(strstartday))) >= Day( Date + 1 ) Then
						bStartDayFlag = True
						iCurrentIteration = j
						icount = 1
					End If
				End If	
					
				If bStartDayFlag = False and len(Trim(strcelldata)) <> 0 Then
					bPassFlag = False
					bflag = true
			    	Exit for
				End If
				If bStartDayFlag = True And iCurrentIteration<>j Then
					If len(Trim(strcelldata)) <> 0 Then
						icount = icount+1
						If icount = 4 Then
							bEndDayFlag = True
						End If
						iCurrentIteration = j
					End If
				End If
				
				If bStartDayFlag = True And iCurrentIteration<>j and bEndDayFlag = True Then
					If len(Trim(strcelldata)) <> 0 Then
						bPassFlag = False
						bflag = true
				    	Exit for
					End If
				End if
			Next
			If bflag = true Then
				Exit For
			End If
		Next
		
		if icount < 4 then
			bPassFlag = False
		End if 
		
		If bPassFlag Then
			rptWriteReport "Pass", Environment.Value("StepName"), "Calendar pop-up widget should displays only the date range of only 2-5 days after current date."
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"),  "Calendar pop-up widget should displays only the date range of only 2-5 days after current date."		
			gErrorFlag = True
		End If
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
		gErrorFlag = True
	End If	
	On Error goto 0	
End Function
RegisterUserFunc "WebTable", "VerifyBizDate1ColMin2Max5", "VerifyBizDate1ColMin2Max5"


''**************************************************************************************************************************************************
''Function Name						:		 VerifyOneDayLaterCurrentDatesNotShownInCalendar
''Function Description			    :		 Checks for the object existence, verify the calendar not showns date one day later current date
''															 This function is generic for WebEdit, WebArea
''Function Parameters			    :		NA
''Author							:	    Gallop
''Date								:		20th Mar 2014
''**************************************************************************************************************************************************
Public Function VerifyOneDayLaterCurrentDatesNotShownInCalendar(ByRef test_object)
Dim iCurrentIteration
	On Error Resume Next
	If test_object.exist(MaxWait) Then
		bflag = False
		bCurrentDayFlag = False
		bonelatercurrentdayFlag = False
		bPassFlag = True
		ir = test_object.RowCount
		For i = 2 To ir Step 1
			ic = test_object.ColumnCount(ir)
			For j = 1 To ic Step 1
				strcelldata = test_object.ChildItem(i,j,"Link",0).GetROProperty("innertext")
				If len(Trim(strcelldata)) > 0 and bCurrentDayFlag = False Then
					strstartday = test_object.ChildItem(i,j,"Link",0).GetROProperty("title")
					strstartday = mid (strstartday,instr(strstartday,",")+1)
					If Day(CDate(Trim(strstartday))) = Day(Date) and month(CDate(Trim(strstartday))) = month(Date) Then
						bCurrentDayFlag = True
						iCurrentIteration = j
					End If
				End If			
				If bCurrentDayFlag = False and len(Trim(strcelldata)) = 0 Then
					bPassFlag = False
					bflag = true
			    	Exit for
				End If
				If bCurrentDayFlag = True And iCurrentIteration<>j Then
					strday = test_object.ChildItem(i,j,"Link",0).GetROProperty("class")
					If Len(strcelldata)>0  Then
						If Instr(1,strday,"disabled",1) = 0 Then
							bonelatercurrentdayFlag = True
							iCurrentIteration = j
						End If	
					Else	
						bPassFlag = False
						bflag = true
				    	Exit for 
					End If
				End If	
				If bonelatercurrentdayFlag = True And iCurrentIteration<>j Then
					If len(Trim(strcelldata)) > 0 Then
						bPassFlag = False
						bflag = true
				    	Exit for 
					End If
				End if
			Next
			If bflag = true Then
				Exit For
			End If
		Next
		If bPassFlag Then
			rptWriteReport "Pass", Environment.Value("StepName"), "Calendar pop-up widget should displays only dates one day later than current date"
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"),  "Calendar pop-up widget should displays only dates one day later than current date"		
			gErrorFlag = True
		End If
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
		gErrorFlag = True
	End If	
	On Error goto 0	
End Function
RegisterUserFunc "WebTable", "VerifyOneDayLaterCurrentDatesNotShownInCalendar", "VerifyOneDayLaterCurrentDatesNotShownInCalendar"


''**************************************************************************************************************************************************
''Function Name				:		VerifyRecordPresentInTable
''Function Description		:		Checks for the object existence, verifies row with given text is not present in table
''									This function is generic for WebTable
''Function Parameters		:		sValue -  is cell value 
''Author					:	    Gallop
''Date						:		23rd March 2015
''**************************************************************************************************************************************************
Function VerifyRecordPresentInTable(ByRef test_object,Byval sValue)
	   test_object.object.focus
	If test_object.exist(MaxWait) Then
		If test_object.GetRowWithCellText(sValue) >= 1 Then
			rptWriteReport "PASS", Environment.Value("StepName"), "Record with data :" & chr(34) & sValue & chr(34) &"Should  present in Table " & chr(34) & test_object.ToString & chr(34)
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"), "Record with data :" & chr(34) & sValue & chr(34) &"Should  present in Table " & chr(34) & test_object.ToString & chr(34)
		End If
	Else
		gErrorFlag = True
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & "should exist"
	End If
End Function
RegisterUserFunc "WebTable", "VerifyRecordPresentInTable","VerifyRecordPresentInTable"

''**************************************************************************************************************************************************
''Function Name				:		VerifyNumOfRowsInTable
''Function Description		:		Checks for the object existence, verifies total number of rows in webtable
''									This function is generic for WebTable
''Function Parameters		:		iRows - is no of rows
''Author					:	    Gallop
''Date						:		23rd March 2015
''**************************************************************************************************************************************************
Public Function VerifyNumOfRowsInTable(ByRef test_object,Byval iRows)
	   test_object.object.focus
	If test_object.exist(MaxWait) Then

		If Cint(iRows) = test_object.RowCount-1 Then
			rptWriteReport "PASS", Environment.Value("StepName"), "Number of rows in the table: " & chr(34) & test_object.ToString & chr(34) &"should be " &chr(34) & iRows &chr(34)
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"), "Number of rows in the table: " & chr(34) & test_object.ToString & chr(34) &"should be " &chr(34) & iRows &chr(34)
			gErrorFlag = True
		End If
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " table should exist."
		gErrorFlag = True
	End If
	
End Function
RegisterUserFunc "WebTable", "VerifyNumOfRowsInTable", "VerifyNumOfRowsInTable"

''**************************************************************************************************************************************************
''Function Name				:		VerifyDataInLastRowInTable
''Function Description		:		Checks for the object existence, verifies data in last row in  webtable
''									This function is generic for WebTable
''Function Parameters		:		sValues -  is Rows values "colname|value;colname|value"
''Author					:	    Gallop
''Date						:		23rd March 2015
''**************************************************************************************************************************************************
Public Function VerifyDataInLastRowInTable (ByRef test_object,Byval sValues)
	
	If test_object.exist(MaxWait) Then
		iLastRow = test_object.RowCount
		If Instr(1,sValues,"|",1) Then 
			arrValues=Split(sValues,";")
			For i = 0 To Ubound(arrValues)
				arrValue=Split(arrValues(i),"|")
				sColumnName = arrValue(0)
				sColumnValue = arrValue(1)
				arrColunNames = Split(test_object.GetROProperty("column names"),";")
				For j = 0  To Ubound(arrColunNames)
					If arrColunNames(j) =  sColumnName Then
						sColumnNo = j+1
						Exit For
					End If
				Next
				If test_object.GetCelldata(iLastRow,sColumnNo) = sColumnValue Then
					rptWriteReport "PASS", Environment.Value("StepName"), "Value in " & chr(34) & sColumnName & chr(34) & " column in last row of table " & chr(34) & test_object.ToString & chr(34) & "should be  : " & sColumnValue
				Else
					rptWriteReport "FAIL", Environment.Value("StepName"), "Value in " & chr(34) & sColumnName & chr(34) & " column in last row of table " & chr(34) & test_object.ToString & chr(34) & "should be  : " & sColumnValue
				End If
			Next
		End If
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.GetROProperty("name") & " table should exist."
		gErrorFlag = True
	End If
	
End Function
RegisterUserFunc "WebTable", "VerifyDataInLastRowInTable", "VerifyDataInLastRowInTable"

''**************************************************************************************************************************************************
''Function Name				:		VerifyYearRangeInCalendar
''Function Description		:		Checks for the object existence, verifies Year Range in Calendar
''									This function is generic for Calendar
''Function Parameters		:		sValues -  is  values "EX: 2010 - 2019"
''Organization				:	 	Gallop
''Author					:	    Sreedhar Metukuru
''Date						:		21 Jan 2015
''**************************************************************************************************************************************************
Public Function VerifyYearRangeInCalendar (ByRef test_object,Byval strValues)
	
	If test_object.exist(MaxWait) Then		
		If test_object.GetROProperty("name") = strValues Then 
				rptWriteReport "PASS", Environment.Value("StepName"), "Year Range: "  & chr(34) & strValues & chr(34) & "  should be displayed at  " & test_object.ToString
			Else
				rptWriteReport "FAIL", Environment.Value("StepName"), "Year Range: "  & chr(34) & strValues & chr(34) & "  should be displayed at  " & test_object.ToString 
		End If
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.GetROProperty("name") & " table should exist."
		gErrorFlag = True
	End If

End Function
RegisterUserFunc "link", "VerifyYearRangeInCalendar", "VerifyYearRangeInCalendar"


''**************************************************************************************************************************************************
''Function Name				:		

''Function Description		:		Checks for the object existence, and click specified column name in the table.
''									This function is generic for WebTable
''Function Parameters		:		strvalue 
''Author					:	    Gallop
''Date						:		13th DEC 2016
''**************************************************************************************************************************************************
Public Function ClickIconInLastRowInTable (ByRef test_object,Byval strvalue)
	On error resume next
	Dim iFoundRow,bResultFlag
	bResultFlag = False
	iFoundRow = 0
	arrvalues = split(strvalue,"|")
	test_object.object.focus
	If test_object.exist(MaxWait) Then
		ir = test_object.RowCount
		For iRow = 1 To ir Step 1
			ic = test_object.ColumnCount(iRow)
			For jCol = 1 To ic Step 1
				strcelldata = test_object.GetCellData(iRow,jCol)
				If Trim(UCase(arrvalues(0))) = Trim(Ucase(strcelldata)) Then
					iFoundRow = iRow
					bResultFlag = True
					Exit for
				End If
			Next
			If iFoundRow > 0 Then
				Exit For
			End If
		Next
		If iFoundRow > 0 Then
			For icols = test_object.ColumnCount(iFoundRow) To test_object.ColumnCount(iFoundRow) Step 1
				bfound = False	
				itemcount = test_object.childitemcount(iFoundRow,icols,"WebElement")					
				If itemcount > 0 Then
					For i  = 0 To itemcount-1 Step 1
						Set objIcon = test_object.childitem(iFoundRow,icols,"WebElement",i)
						Val = objIcon.GetRoProperty("innertext")
						If Trim(Val) = Trim(arrvalues(1))  Then
						    ''setting.webpackage("ReplayType")=2
							objIcon.click
							''setting.webpackage("ReplayType")=1
							click = True
							Exit For
						End If
					Next	
				End If				
			Next
			If click Then
				rptWriteReport "PASS", Environment.Value("StepName"), strcelldata & " icon should be clicked under " & test_object.ToString		
			Else
			    rptWriteReport "FAIL", Environment.Value("StepName"),strcelldata & "icon should be clicked under " & test_object.ToString
				gErrorFlag = True
			End If
		End If
	End If
	End Function
	

RegisterUserFunc "WebTable", "ClickIconInLastRowInTable", "ClickIconInLastRowInTable"

''**************************************************************************************************************************************************
''Function Name				:		WaitinSec
''Function Description		:	    Static Wait
''									This function is Static wait for WebElement
''Function Parameters		:		TimeSec - is no of secs
''Author					:	    Gallop
''Date						:		20th Feb 2015
''**************************************************************************************************************************************************
Function WaitinSec(ByRef test_object,ByVal TimeSec)
	Wait(TimeSec)
End Function
RegisterUserFunc "WebEdit", "WaitinSec", "WaitinSec"
RegisterUserFunc "WinButton", "WaitinSec", "WaitinSec"


''**************************************************************************************************************************************************
''Function Name						:		 VerifyPropertyValue
''Function Description			    :		 Checks for the object existence, verify the property value 
''															 This function is generic for WebEdit
''Function Parameters			    :		sValue -  is propername and value - "property name|value"
''Author							:	    Gallop
''Date								:		24th March 2015
''**************************************************************************************************************************************************
Public Function VerifyPropertyValue(ByRef test_object, ByVal sValue)
	
		Dim iFoundRow,bResultFlag
	bResultFlag = False
	iFoundRow = 0
	arrvalues = split(strvalue,"|")
	If test_object.exist(MaxWait) Then		
		If StrComp(test_object.GetROProperty(arrvalues(0)),arrvalues(1),1) = 0 Then
			rptWriteReport "PASS", Environment.Value("StepName"), arrvalues(1) & " *: value should be displayed in " & chr(34) & test_object.ToString & chr(34) & " field."
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"), arrvalues(1) & " *: value should be displayed in " & chr(34) & test_object.ToString & chr(34) & " field."
		End If
		VerifyPropertyValue = true		
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
		VerifyPropertyValue = false
		gErrorFlag = True
	End If
	
End Function
RegisterUserFunc "WebElement", "VerifyPropertyValue", "VerifyPropertyValue"



''**************************************************************************************************************************************************
''Function Name						:		 VerifyRequiredIcon
''Function Description			    :		 Checks for the object existence, verify the RequiredIcon  
''															 This function is generic for WebElement
''Function Parameters			    :		spropertyname - is the property name 
''Author							:	    Gallop
''Date								:		24th March 2015
''**************************************************************************************************************************************************
Public Function VerifyRequiredIcon(ByRef test_object, ByVal spropertyname)
	Call changeCreationTime (test_object)
		Dim iFoundRow,bResultFlag
	If test_object.exist(MaxWait) Then		
		If Instr(1,test_object.GetROProperty(spropertyname),"ifs-required",1) <> 0 Then
			rptWriteReport "PASS", Environment.Value("StepName"), " * Icon should be shown for " & chr(34) & test_object.ToString & chr(34) & " field."
			VerifyRequiredIcon= true
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"), " * Icon should be shown for " & chr(34) & test_object.ToString & chr(34) & " field."
			VerifyRequiredIcon= false
		End If
		
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
		VerifyRequiredIcon= false
		gErrorFlag = True
	End If
	
End Function
RegisterUserFunc "WebElement", "VerifyRequiredIcon", "VerifyRequiredIcon"




''**************************************************************************************************************************************************
''Function Name				:		VerifyPreviousDateNotShownInCalendar
''Function Description		:		Checks for the object existence, Check Calendar pop-up widget should display only dates after the current date
''									This function is generic for WebTable
''Function Parameters		:		NA
''Author					:	    Gallop
''Date						:		5th Mar 2015
''**************************************************************************************************************************************************
Public Function VerifyDatesAfterCurrentDateShownInCalendar(ByRef test_object)
	On Error Resume Next
	If test_object.exist(MaxWait) Then
		bflag = False
		bstartFlag = False
		bPassFlag = True
		ir = test_object.RowCount
		For i = 2 To ir Step 1
			ic = test_object.ColumnCount(ir)
			For j = 1 To ic Step 1
				strcelldata = test_object.GetCellData(i,j)
				If len(Trim(strcelldata))>0 and bstartFlag = False Then
					strstartday = test_object.ChildItem(i,j,"Link",0).GetROProperty("title")
					strstartday = mid (strstartday,instr(strstartday,",")+1)
					If Day(CDate(Trim(strstartday))) = Day(Date+1) Then
						bstartFlag = True
					Else
						bPassFlag = False
						bflag = true
					    Exit for 
					End If
				End If
				If bstartFlag = True and len(Trim(strcelldata)) = 0 Then
					bPassFlag = False
					bflag = true
				    Exit for 
				End If				
			Next
			If bflag = true Then
				Exit For
			End If
		Next
		If bPassFlag Then
			rptWriteReport "Pass", Environment.Value("StepName"), "Calendar pop-up widget should display only dates after the current date"
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"), "Calendar pop-up widget should display only dates after the current date"		
			gErrorFlag = True
		End If
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
		gErrorFlag = True
	End If	
	On Error goto 0	
End Function
RegisterUserFunc "WebTable", "VerifyDatesAfterCurrentDateShownInCalendar", "VerifyDatesAfterCurrentDateShownInCalendar"



''**************************************************************************************************************************************************
''Function Name				:		VerifyPreviousDateAndAfterCurrentDatesShownInCalendar
''Function Description		:		Checks for the object existence, Check Calendar pop-up widget should display only dates after the current date
''									This function is generic for WebTable
''Function Parameters		:		NA
''Author					:	    Gallop
''Date						:		5th Mar 2015
''**************************************************************************************************************************************************
Public Function VerifyPreviousDateAndAfterCurrentDatesShownInCalendar(ByRef test_object)
	On Error Resume Next
	If test_object.exist(MaxWait) Then
		bflag = False
		bstartFlag = False
		bPassFlag = True
		ir = test_object.RowCount
		For i = 2 To ir Step 1
			ic = test_object.ColumnCount(ir)
			For j = 1 To ic Step 1
				strcelldata = test_object.GetCellData(i,j)
				If len(Trim(strcelldata))>0 and bstartFlag = False Then
					strstartday = test_object.ChildItem(i,j,"Link",0).GetROProperty("title")
					strstartday = mid (strstartday,instr(strstartday,",")-1)
					If Day(CDate(Trim(strstartday))) = Day(Date-1) Then
						bstartFlag = True
					Else
						bPassFlag = False
						bflag = true
					    Exit for 
					End If
				End If
				If bstartFlag = True and len(Trim(strcelldata)) = 0 Then
					bPassFlag = False
					bflag = true
				    Exit for 
				End If				
			Next
			If bflag = true Then
				Exit For
			End If
		Next
		If bPassFlag Then
			rptWriteReport "Pass", Environment.Value("StepName"), "Calendar pop-up widget should display only dates before one day N after the current date"
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"), "Calendar pop-up widget should display only dates after the current date"		
			gErrorFlag = True
		End If
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
		gErrorFlag = True
	End If	
	On Error goto 0	
End Function
RegisterUserFunc "WebTable", "VerifyPreviousDateAndAfterCurrentDatesShownInCalendar", "VerifyPreviousDateAndAfterCurrentDatesShownInCalendar"




''**************************************************************************************************************************************************
''Function Name				:		VerifyRecordsDisplayedInTable
''Function Description		:		Checks for the object existence, verifies specific cell value is avilable in table or not
''									This function is generic for WebTable
''Function Parameters		:		sValue - cell value
''Author					:	    Gallop
''Date						:		24th March 2015
''**************************************************************************************************************************************************
Function VerifyRecordsDisplayedInTable(ByRef test_object,Byval sValue,Byval sColValue)
    bFlag= False
	If test_object.exist(MaxWait) Then
	   test_object.object.focus
	     wait 1
	     If test_object.GetRowWithCellText(sValue)>0 Then
	     	iRow=test_object.GetRowWithCellText(sValue)
	     	iColCount=test_object.ColumnCount(iRow)
	     	For i = 1 To iColCount Step 1
	     		If Trim(Ucase(test_object.GetCellData(iRow,i)))=Trim(Ucase(sColValue)) Then
	     		  bFlag=True
	     		  Exit For
	     		End IF 
	     	Next
	     	 If bFlag Then
	     	   	   rptWriteReport "PASSWITHBOLD", Environment.Value("StepName"), chr(34)& sColValue & chr(34) & "  value is avilable in table at " & chr(34) & iRow & chr(34) & " row , " & chr(34) & i & chr(34) & " column"
			 Else
					rptWriteReport "FAILWITHBOLD", Environment.Value("StepName"), chr(34)& sColValue & chr(34) & " should be displayed in table"
	     	 End If
	      Else
	         rptWriteReport "FAIL", Environment.Value("StepName"), sValue & " should be displayed in table"
	      End If
	 Else
		gErrorFlag = True
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & "should exist"
	End If
End Function
RegisterUserFunc "WebTable", "VerifyRecordsDisplayedInTable","VerifyRecordsDisplayedInTable"

''**************************************************************************************************************************************************
''Function Name				:		PageSync
''Function Description		:		wait for page load
''									This function is generic for web element,web edit
''Function Parameters		:		NA
''Author					:	    Gallop
''Date						:		25th March 2015
''**************************************************************************************************************************************************
Function PageSync (ByRef test_object)
	Call changeCreationTime (test_object)
	If test_object.exist(MaxWait) Then  
		set objPage = test_object.GetTOProperty("parent")
		strclass = objPage.getTOProperty("micclass")
		If strcomp(strclass,"Page",1)=0 Then
			objPage.sync
			Wait 2
		End If
	End If   				
End Function
RegisterUserFunc "WebElement", "PageSync","PageSync"
RegisterUserFunc "WebEdit", "PageSync","PageSync"




''**************************************************************************************************************************************************
''Function Name				:		SelectCheckBox
''Function Description		:		Checks for the object existence, if enabled and selects the checkbox
''									This function is generic for WebElement
''Function Parameters		:		NA
''Author					:	    Gallop
''Date						:		25th Feb 2015
''**************************************************************************************************************************************************
Public Function SelectCheckBox(ByRef test_object)
	
	If test_object.exist(MaxWait) Then
		Set odesc = Description.Create
		odesc("micclass").value ="WebCheckBox"
		Set CheckBox = test_object.ChildObjects(odesc)
		If CheckBox.count = 0 Then
			gErrorFlag = True
			rptWriteReport "FAIL", Environment.Value("StepName"), test_object.GetROProperty("outertext") & " checkbox."
		Else
			CheckBox(0).Set "ON"
			rptWriteReport "PASS", Environment.Value("StepName"), "selected" & test_object.GetROProperty("outertext") & " checkbox."
		End If
	Else
		gErrorFlag = True
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.GetROProperty("outertext") & " object should exist."
	End If
	
End Function
RegisterUserFunc "WebElement", "SelectCheckBox", "SelectCheckBox"


''**************************************************************************************************************************************************
''Function Name				:		DeSelectCheckBox
''Function Description		:		Checks for the object existence, if enabled and deselects the checkbox
''									This function is generic for WebElement
''Function Parameters		:		NA
''Author					:	    Gallop
''Date						:		25th Feb 2015
''**************************************************************************************************************************************************
Public Function DeselectCheckBox(ByRef test_object)
	
	If test_object.exist(MaxWait) Then
		Set odesc = Description.Create
		odesc("micclass").value ="WebCheckBox"
		Set CheckBox = test_object.ChildObjects(odesc)
		If CheckBox.count = 0 Then
			rptWriteReport "FAIL", Environment.Value("StepName"), test_object.GetROProperty("outertext") & " checkbox."
		Else
			CheckBox(0).Set "OFF"
			rptWriteReport "PASS", Environment.Value("StepName"), "Deselect" & test_object.GetROProperty("outertext") & " checkbox."
		End If
		
	Else
		gErrorFlag = True
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.GetROProperty("outertext") & " object should exist."
	End If
	
End Function
RegisterUserFunc "WebElement", "DeselectCheckBox", "DeselectCheckBox"


''**************************************************************************************************************************************************
''Function Name						:		 VerifyColor
''Function Description			    :		 Checks for the Color and validates the status accordingly
''															 This function is generic for WebEdit, WebArea
''Function Parameters			    :		sValue(Type of color) is the value to be set in the object
''Author							:	    Gallop
''Date								:		25th Mar 2015
''**************************************************************************************************************************************************
Public Function VerifyColor(ByRef test_object, ByVal sValue)
	
	If test_object.exist(MaxWait) Then
		Select Case sValue
			Case "Red" 		
				If test_object.exist(MaxWait) Then		
					If InStr(1,test_object.GetROProperty("innerhtml"),"has-error",1) > 0 Then
						rptWriteReport "PASS", Environment.Value("StepName"), " Error should be displayed in " & chr(34) & test_object.ToString & chr(34) & " field. Its in Red Color"
					Else
						rptWriteReport "FAIL", Environment.Value("StepName"), " Error should be displayed in " & chr(34) & test_object.ToString & chr(34) & " field. Its in Red Color"
					End If
					VerifyColor = true		
				Else
					rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
					VerifyColor = false
					gErrorFlag = True
				End If
			Case "Black"
				If test_object.exist(MaxWait) Then		
					If InStr(1,test_object.GetROProperty("innerhtml"),"has-error",1) > 0 Then
						rptWriteReport "FAIL", Environment.Value("StepName"), " Error is not displayed in " & chr(34) & test_object.ToString & chr(34) & " field. Its in Black Color"
					Else
						rptWriteReport "PASS", Environment.Value("StepName"), " Error is not displayed in " & chr(34) & test_object.ToString & chr(34) & " field. Its in Black Color"
					End If
					VerifyColor = true		
				Else
					rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
					VerifyColor = false
					gErrorFlag = True
				End If
			End Select
	Else
		gErrorFlag = True
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.GetROProperty("outertext") & " object should exist."
	End If
	
End Function
RegisterUserFunc "WebElement", "VerifyColor", "VerifyColor"


''**************************************************************************************************************************************************
''Function Name				:		CheckBoxisCheckedinReadOnly
''Function Description		:		Checks for the object existence,verifies Check Box is Checked and Read Only.
''									This function is generic for WebElement
''Function Parameters		:		strText
''Author					:	    Gallop
''Date						:		25th Mar 2015
''**************************************************************************************************************************************************
Function CheckBoxisCheckedinReadOnly(ByRef test_object)
	
	If test_object.exist(MaxWait) Then
		Set obj = Description.Create
		obj("micclass").value = "WebElement"
		obj("html tag").value = "SPAN"		
		set CheckBoxVal = test_object.ChildObjects(obj)
		If CheckBoxVal.count > 0 Then
			If Instr(1,CheckBoxVal(0).getROProperty("class"),"icon-checked",1) > 0 Then
				rptWriteReport "PASS", Environment.Value("StepName"), "The Object " & test_object.GetROProperty("outertext") & " should be Checked and Read Only."
			Else
				rptWriteReport "FAIL", Environment.Value("StepName"), "The Object " & test_object.GetROProperty("outertext") & " should be Checked and Read Only."
			End If 
		Else
			gErrorFlag = True
			rptWriteReport "FAIL", Environment.Value("StepName"), test_object.GetROProperty("outertext") & " object should exist."	
		End If
	Else
		gErrorFlag = True
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.GetROProperty("outertext") & " object should exist."
	End If
	
End Function 
RegisterUserFunc "WebElement", "CheckBoxisCheckedinReadOnly", "CheckBoxisCheckedinReadOnly"

''**************************************************************************************************************************************************
''Function Name				:		CheckBoxisReadOnly
''Function Description		:		Checks for the object existence,verifies Check Box is Read Only.
''									This function is generic for WebElement
''Function Parameters		:		strText
''Author					:	    Gallop
''Date						:		25th Mar 2015
''**************************************************************************************************************************************************
Function CheckBoxisReadOnly(ByRef test_object)
	If test_object.exist(MaxWait) Then
		Set obj = Description.Create
	    obj("micclass").value = "WebCheckBox"
	    set list = test_object.ChildObjects(obj)
	    If list.count = 0 Then
	    	rptWriteReport "PASS", Environment.Value("StepName"), "The Object " & test_object.GetROProperty("outertext") & " should be Read Only."
	    Else
	    	rptWriteReport "FAIL", Environment.Value("StepName"), "The Object " & test_object.GetROProperty("outertext") & " should be Read Only."
	    End If
	Else
		gErrorFlag = True
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.GetROProperty("outertext") & " object should exist."
	End If
End Function
RegisterUserFunc "WebElement", "CheckBoxisReadOnly", "CheckBoxisReadOnly"


''**************************************************************************************************************************************************
''Function Name						 :		VerifyNotExists
''Function Description			     :		Checks for the object Not existence
''Function Parameters			     :		NA
''Author						   	 :	    Gallop
''Date								 :		25th Mar 2015
''**************************************************************************************************************************************************
Public Function VerifyNotExists(ByRef test_object)
	
	If Not test_object.exist(5) Then
		rptWriteReport "PASS", Environment.Value("StepName"), chr(34) & test_object.ToString & chr(34) & " should not be displayed."
		VerifyNotExists = true
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), chr(34) & test_object.ToString & chr(34) & " should not be displayed"
		VerifyNotExists = false
		gErrorFlag = True
	End If
	
End Function
RegisterUserFunc "WebElement", "VerifyNotExists", "VerifyNotExists"


''**************************************************************************************************************************************************
''Function Name				:		VerifyMouseState
''Function Description		:		Checks for the object existence, Verify mouse icon
''									This function is generic for WebElement
''Function Parameters		:		NA
''Author					:	    Gallop
''Date						:		25th Mar 2015
''**************************************************************************************************************************************************
Public Function VerifyMouseState(ByRef test_object)
	
	If test_object.exist(MaxWait) Then
		Set objIcon = description.Create
		objIcon("micclass").value = "WebElement"
		objIcon("html tag").value = "SPAN"
		Set objIcon = test_object.childobjects(objIcon)
		test_object.object.focus
		If objIcon.count = 1 Then
			Setting.WebPackage("ReplayType") = 2
			objIcon(0).FireEvent "onmouseover"
		    cursorstate = gfGetCursorStateID
			Setting.WebPackage("ReplayType") = 1
		     If Cdbl(cursorstate) = 65559 Then
		     	rptWriteReport "Pass", Environment.Value("StepName"), test_object.ToString & " The red No symbol should be displayed"
		     Else	
		     	rptWriteReport "Fail", Environment.Value("StepName"), test_object.ToString & " The red No symbol should be displayed"
		     End If
		End If	
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
		gErrorFlag = True
	End If
	
End Function
RegisterUserFunc "WebElement", "VerifyMouseState", "VerifyMouseState"

''**************************************************************************************************************************************************
''Function Name				:		VerifyMouseStateforEdit
''Function Description		:		Checks for the object existence, Verify mouse icon
''									This function is generic for WebEdit
''Function Parameters		:		NA
''Author					:	    Gallop
''Date						:		30th June 2015
''**************************************************************************************************************************************************
Public Function VerifyMouseStateforEdit(ByRef test_object)	
	If test_object.exist(MaxWait) Then
		test_object.highlight
		wait 2
		test_object.object.focus
		Setting.WebPackage("ReplayType") = 2
		test_object.FireEvent "onmouseover"
	    cursorstate = gfGetCursorStateID
		Setting.WebPackage("ReplayType") = 1
	     If Cdbl(cursorstate) = 65561 Then
	     	rptWriteReport "Pass", Environment.Value("StepName"), test_object.ToString & " The red No symbol should be displayed"
	     Else	
	     	rptWriteReport "Fail", Environment.Value("StepName"), test_object.ToString & " The red No symbol should be displayed"
	     End If
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
		gErrorFlag = True
	End If
	
End Function

RegisterUserFunc "WebEdit", "VerifyMouseStateforEdit", "VerifyMouseStateforEdit"

''**************************************************************************************************************************************************
''Function Name						:		 VerifyEnabledandVisible
''Function Description			    :		 Checks for the object existence, is enabled and visible
''															 
''Function Parameters			    :		
''Author							:	    Gallop
''Date								:		3rd Aug 2014
''**************************************************************************************************************************************************
Public Function VerifyEnabledandVisible(ByRef test_object)
	
	If test_object.exist(MaxWait) Then
		objVisible = test_object.GetROProperty("visible")	
		objDisabled = test_object.GetROProperty("disabled")
		If objVisible And Not objDisabled Then
			VerifyEnabledandVisible = true		
			rptWriteReport "Pass", Environment.Value("StepName"), test_object.ToString & " should be visible and Enabled"
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " should be visible and Enabled"
		End If
		
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
		VerifyEnabledandVisible = false
		gErrorFlag = True
	End If
	
End Function
RegisterUserFunc "WebElement", "VerifyEnabledandVisible", "VerifyEnabledandVisible"




''**************************************************************************************************************************************************
''Function Name				:		VerifyValueExistsInDropDown
''Function Description		:		Checks for the object existence, verifies value exists in dropdown
''									This function is generic for WebElement
''Function Parameters		:		strValue is value to be verified in dropdown
''Author					:	    Gallop
''Date						:		26th March 2015
''**************************************************************************************************************************************************

Public Function VerifyValueExistsInDropDown(ByRef test_object,ByVal strValue)
	On error resume next
	Dim bpassflag: bpassflag = false
	If test_object.exist(MaxWait) Then
		Set objDropdownDescription = Description.Create
		objDropdownDescription("micclass").value = "WebElement"
		''objDropdownDescription("class").value = "k-input"
		objDropdownDescription("class").value = "k-dropdown-wrap k-state-default form-control"
		set objDropdown = test_object.ChildObjects(objDropdownDescription)
		Wait(1)
		objDropdown(0).Click
		Wait(1)
		Set ObjDropdownListValueDescription = Description.Create
		ObjDropdownListValueDescription("micclass").value = "WebElement"
		ObjDropdownListValueDescription("html tag").value = "LI"
		ObjDropdownListValueDescription("class").value = "k-item"
		'ObjDropdownListValueDescription("visible").value = True
		Set objPage = test_object.GetTOProperty("parent")
		Set objListValue = objPage.ChildObjects(ObjDropdownListValueDescription)
		Print objListValue.count
		For i = 0 To objListValue.count-1 Step 1
			strdropdownval = objListValue(i).GetROproperty("innertext")
			If strcomp(Trim(strdropdownval),trim(strValue),1) = 0 Then
				bpassflag = True
				Exit For 
			End If
		Next
		If bpassflag Then
			rptWriteReport "PASSWITHBOLD", Environment.Value("StepName"),chr(34) & strValue & chr(34) & " should be displayed with in dropdown : " & chr(34) & test_object.ToString & chr(34)		
		Else
			rptWriteReport "FAILWITHBOLD", Environment.Value("StepName"),chr(34) & strValue & chr(34) & " should be displayed with in dropdown : " & chr(34) & test_object.ToString & chr(34)		
			gErrorFlag = True
		End If		
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
		gErrorFlag = True
	End If
	On error Goto 0
End Function
		
RegisterUserFunc "WebElement", "VerifyValueExistsInDropDown","VerifyValueExistsInDropDown"


''**************************************************************************************************************************************************
''Function Name				:		VerifyValueNotExistsInDropDown
''Function Description		:		Checks for the object existence, verifies value not exists in dropdown
''									This function is generic for WebElement
''Function Parameters		:		strValue is value to be verified in dropdown
''Author					:	    Gallop
''Date						:		26th March 2015
''**************************************************************************************************************************************************

Public Function VerifyValueNotExistsInDropDown(ByRef test_object,ByVal strValue)
	On error resume next
	Dim ItemNotFoundCount: ItemNotFoundCount = 0
	If test_object.exist(MaxWait) Then
		Set objDropdownDescription = Description.Create
		objDropdownDescription("micclass").value = "WebElement"
		objDropdownDescription("class").value = "k-input"
		set objDropdown = test_object.ChildObjects(objDropdownDescription)
		Wait(2)
		objDropdown(0).Click
		Wait(2)
		Set ObjDropdownListValueDescription = Description.Create
		ObjDropdownListValueDescription("micclass").value = "WebElement"
		ObjDropdownListValueDescription("html tag").value = "LI"
		ObjDropdownListValueDescription("class").value = "k-item"
		ObjDropdownListValueDescription("visible").value = True
		Set objPage = test_object.GetTOProperty("parent")
		Set objListValue = objPage.ChildObjects(ObjDropdownListValueDescription)
		For i = 0 To objListValue.count-1 Step 1
			strdropdownval = objListValue(i).GetROproperty("innertext")
			If strcomp(Trim(strdropdownval),trim(strValue),1) = 0 Then
				rptWriteReport "FAIL", Environment.Value("StepName"),chr(34) & strValue & chr(34) & " should not be displayed with in dropdown : " & chr(34) & test_object.ToString & chr(34)		
				Exit For
			Else
				ItemNotFoundCount = ItemNotFoundCount+1
			End If
		Next
		If ItemNotFoundCount = objListValue.count Then
			rptWriteReport "PASS", Environment.Value("StepName"),chr(34) & strValue & chr(34) & " should not be displayed with in dropdown : " & chr(34) & test_object.ToString & chr(34)		
		End If	
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
		gErrorFlag = True
	End If
	On error Goto 0
End Function
		
RegisterUserFunc "WebElement", "VerifyValueNotExistsInDropDown","VerifyValueNotExistsInDropDown"



''**************************************************************************************************************************************************
''Function Name						 :	   CheckGroupStatus
''Function Description			     :	   Checks for the object existence and minimize or maximize status of question group
''										   This function is generic for WebElement
''Function Parameters			     :	   NA
''Author					    	 :	   Gallop
''Date								 :	   3rd April
''**************************************************************************************************************************************************
Public Function CheckGroupStatus(ByRef test_object)
	wait 4
	On error resume next
	If test_object.exist(MaxWait) Then
		If Instr(1,test_object.GetROProperty("class"),"collapsed",1) > 0 Then
				
				rptWriteReport "PASS", Environment.Value("StepName"), chr(34) & test_object.ToString & chr(34) & " object is collapsed."
				
				test_object.Click
				If test_object.GetROProperty("class") = "" Then
					rptWriteReport "PASS", Environment.Value("StepName"), chr(34) & test_object.ToString & chr(34) & " after clicking collapsed object it is expanded."
					
				Else
					rptWriteReport "FAIL", Environment.Value("StepName"), chr(34) & test_object.ToString & chr(34) & " after clicking collapsed object it is not expanded."
					
				End If
		ElseIf test_object.GetROProperty("class") = "" Then
				
				rptWriteReport "PASS", Environment.Value("StepName"), chr(34) & test_object.ToString & chr(34) & " object is expanded."
				
				test_object.Click
				If Instr(1,test_object.GetROProperty("class"),"collapsed",1) > 0 Then
					rptWriteReport "PASS", Environment.Value("StepName"), chr(34) & test_object.ToString & chr(34) & " after clicking expanded object it is collapsed."
					
				Else
					rptWriteReport "FAIL", Environment.Value("StepName"), chr(34) & test_object.ToString & chr(34) & " after clicking collapsed object it is not collapsed."
					
				End If
		End If
		
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
		ClickObject = false
		gErrorFlag = True
	End If
	On error Goto 0
End Function

RegisterUserFunc "WebElement", "CheckGroupStatus", "CheckGroupStatus"

''**************************************************************************************************************************************************
''Function Name				:		VerifytheRowsInTable
''Function Description		:		Checks for the object existance, verifiy the no of rows in the table
''									This function is generic for WebTable
''Function Parameters		:		iRows -  is no of rows
''Author					:	    Gallop
''Date						:		14th May 2015
''**************************************************************************************************************************************************
Function VerifytheRowsInTable(ByRef test_object,Byval iRows)
	
	If test_object.exist(MaxWait) Then
		If test_object.RowCount = iRows Then
			rptWriteReport "PASS", Environment.Value("StepName"), chr(34) & test_object.ToString & chr(34) &"should have " & chr(34) & iRows & chr(34) &" Rows"
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"), chr(34) & test_object.ToString & chr(34) &"should have " & chr(34) & iRows & chr(34) &" Rows"
		End If
	Else
		gErrorFlag = True
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & "should exist"
	End If
End Function
RegisterUserFunc "WebTable", "VerifytheRowsInTable","VerifytheRowsInTable"

''**************************************************************************************************************************************************
''Function Name				:		VerifyvalueInSpecificCell
''Function Description		:		Checks for the object existance, verifiy the value in specific cell
''									This function is generic for WebTable
''Function Parameters		:		iRows,icol,svalue
''Author					:	    Gallop
''Date						:		14th May 2015
''**************************************************************************************************************************************************
Function VerifyvalueInSpecificCell(ByRef test_object,Byval iRow,Byval iCol,Byval svalue)
	'wait 5
	Wait 2
	If test_object.exist(MaxWait) Then
		If Trim(ucase(test_object.GetCellData(iRow,iCol))) = Trim(ucase(svalue)) Then
			rptWriteReport "PASSWITHBOLD", Environment.Value("StepName"), chr(34) & Trim(ucase(svalue)) & chr(34) & " Should be in "&iRow&" Row and "&iCol&" Column under "& chr(34) & test_object.ToString & chr(34) 
		Else
			rptWriteReport "FAILWITHBOLD", Environment.Value("StepName"), chr(34) & Trim(ucase(svalue)) & chr(34) & " Should be in "&iRow&" Row and "&iCol&" Column under "& test_object.ToString & chr(34) & " but displayed is "&  Trim(ucase(test_object.GetCellData(iRow,iCol))) 
		End If
	Else
		gErrorFlag = True
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & "should exist"
	End If
End Function

RegisterUserFunc "WebTable", "VerifyvalueInSpecificCell","VerifyvalueInSpecificCell"

''**************************************************************************************************************************************************
''Function Name				:		VerifyandClickButtonInRow
''Function Description		:		Checks for the button existence of button in a table row and clicks on the button
''									
''Function Parameters		:		NA
''Author					:	    Gallop
''Date						:		5th Mar 2015
''**************************************************************************************************************************************************
    Public Function VerifyandClickButtonInRow(ByRef test_object,ByVal strValue)
'    Call changeCreationTime(test_object)
	On error resume next
	Dim iFoundRow,bResultFlag
	bResultFlag = False
	bclickflag = false
	iFoundRow = 0
	arrvalues = split(strvalue,"|")
	If test_object.exist(MaxWait) Then
		ir = test_object.RowCount
		For iRow = 1 To ir Step 1
			ic = test_object.ColumnCount(iRow)
			For jCol = 1 To ic Step 1
				strcelldata = test_object.GetCellData(iRow,jCol)
				If Trim(Ucase(arrvalues(0))) = Trim(Ucase(strcelldata)) Then
					iFoundRow = iRow
					iFoundCol = jCol
					bResultFlag = True
					Exit for
				ElseIf Instr(1,Trim(Ucase(strcelldata)),Trim(Ucase(arrvalues(0))),1) > 0 Then
					iFoundRow = iRow
					iFoundCol = jCol
					bResultFlag = True
					Exit for
				End If
			Next
			If iFoundRow > 0 Then
				Exit For
			End If
		Next
		If iFoundRow > 0 Then
			bclickflag = False
			itemcount = test_object.childitemcount(iFoundRow,iFoundCol,"WebElement")					
			If itemcount > 0 Then
				For i  = 0 To itemcount-1 Step 1
					Wait 3
					Set objIcon = test_object.childitem(iFoundRow,iFoundCol,"WebElement",i)
					strclass = objIcon.getROProperty("class")
					if instr(1,strclass,"contextmenu",1) <> 0 then 						
						Wait 3
						objIcon.Focus
						Setting.WebPackage("ReplayType") = 2
						objIcon.click
						Setting.WebPackage("ReplayType") = 1
						bclickflag = True
						Exit For	
					End If
				Next	
			End If
			If bclickflag = true Then
				rptWriteReport "PASS", Environment.Value("StepName"), Val& " button should be clicked under " & test_object.ToString		
			Else
			    rptWriteReport "FAIL", Environment.Value("StepName"),Val& "button should be clicked under " & test_object.ToString
				gErrorFlag = True
			End If
		End If
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), "Object doesnt Exist: " & test_object.ToString	
	End If
	End Function

	RegisterUserFunc "webtable", "VerifyandClickButtonInRow", "VerifyandClickButtonInRow"
	
	''**************************************************************************************************************************************************
''Function Name						:		 changeCreationTime
''Function Description			    :		  check the browsers and set creation time for browser in obejct repository
''											
''Function Parameters			    :		NA
''Author							:	    Gallop
''Date								:		6th April 2015
''**************************************************************************************************************************************************
Function changeCreationTime(ByRef testobject)
Set objBrowser = description.Create
objBrowser("micclass").value = "Browser"
Set BrowserList = desktop.ChildObjects(objBrowser)
If BrowserList.count > 1 Then
	For blist = 0 to BrowserList.count-1 
		if not len(BrowserList(blist).GetROProperty("name"))>0 then
			wait(3)
		End if	
	Next 
	Dim objBrowser
	Set test_object = testobject
	Set objParent = test_object.GetTOProperty("parent")
	
	Do while true
		strclass = objParent.GetTOProperty("micclass")
		If strclass = "Browser" Then
			Set objBrowser = objParent
			Exit Do
		End If
		If Not len(strclass) >0 Then
			Exit Do
		End If	
		set objParent = objParent.GetTOProperty("parent")
	Loop	

	strBrowserName = objBrowser.GetTOProperty("name")
	emptybrowser = 0
	For ic = 0 To BrowserList.count-1 Step 1
		strname = Browser("creationtime:="&ic).GetROProperty("name")		
		bvisible = Browser("creationtime:="&ic).GetROProperty("visible")
		if not len(strname)>0 then
		emptybrowser = emptybrowser+1
		end if 
		If strname = strBrowserName and bvisible = True Then
			objBrowser.setTOProperty "Creationtime",ic-emptybrowser
			Exit For
		End If
	Next
	Set objParent = Nothing
End If
Set objBrowser = Nothing
End Function

''**************************************************************************************************************************************************
''Function Name						:		 VerifyValueisNull
''Function Description			    :		 Checks for the object existence, verifies ValueisNull
''															 This function is generic for WebEdit
''Function Parameters			    :		
''Author							:	    Gallop
''Date								:		24th March 2015
''**************************************************************************************************************************************************
Public Function VerifyValueisNull(ByRef test_object)
		
	If test_object.exist(MaxWait) Then		
		If StrComp(test_object.GetROProperty("value"),Empty,1) = 0 Then
			rptWriteReport "PASS", Environment.Value("StepName"), " Null value should be displayed in " & chr(34) & test_object.ToString & chr(34) & " field."
			VerifyValueisNull = true
		ElseIf StrComp(test_object.GetROProperty("innertext"),"select",1) = 0 Then
			rptWriteReport "PASS", Environment.Value("StepName"), " Null value should be displayed in " & chr(34) & test_object.ToString & chr(34) & " field."
			VerifyValueisNull = true
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"),  " Null value should be displayed in " & chr(34) & test_object.ToString & chr(34) & " field."
			VerifyValueisNull = false
		End If
				
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
		VerifyValueisNull = false
		gErrorFlag = True
	End If
	
End Function
RegisterUserFunc "WebElement", "VerifyValueisNull", "VerifyValueisNull"
RegisterUserFunc "WebEdit", "VerifyValueisNull", "VerifyValueisNull"



''**************************************************************************************************************************************************
''Function Name						:		 VerifyWebElementValueisNull
''Function Description			    :		 Checks for the object existence, verifies ValueisNull
''															 This function is generic for Webelement
''Function Parameters			    :		Inner text of the webelemnt is the input
''Author							:	    Gallop
''Date								:		24th March 2015
''**************************************************************************************************************************************************
Public Function VerifyWebElementValueisNull(ByRef test_object,ByVal strValue)
		
	If test_object.exist(MaxWait) Then		
		If StrComp(Trim(test_object.GetROProperty("innertext")),Trim(strValue),1) = 0 Then
			rptWriteReport "PASS", Environment.Value("StepName"), " Null value should be displayed in " & chr(34) & test_object.ToString & chr(34) & " field."
			VerifyWebElementValueisNull = true
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"),  " Null value should be displayed in " & chr(34) & test_object.ToString & chr(34) & " field."
			VerifyWebElementValueisNull = false
		End If				
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
		VerifyWebElementValueisNull = false
		gErrorFlag = True
	End If
	
End Function
RegisterUserFunc "WebElement", "VerifyWebElementValueisNull", "VerifyWebElementValueisNull"

Public Function clickBack(ByRef test_object)
Call changeCreationTime (test_object)
On error resume next
wait(10)
bPrceedflag = false
		Set objBrowser = description.Create
		objBrowser("micclass").value = "Browser"
		Set objProceed = description.Create
		objProceed("micclass").value = "WebButton"
		objProceed("value").value = "Back"
		objProceed("type").value = "submit"
		Set objPage = description.Create
		objPage("micclass").value = "Page"
		Set BrowserList = desktop.ChildObjects(objBrowser)
		For ib = 0 To BrowserList.count-1 Step 1
			Set PageList = BrowserList(ib).ChildObjects(objPage)	
			For ip = 0 To PageList.count-1 Step 1
				Set Proceedobj = PageList(ip).childobjects(objProceed)
				If Proceedobj.count = 1 Then
					Proceedobj(0).click
					bPrceedflag = True
				End If
			Next
		Next
		If bPrceedflag = True Then
			rptWriteReport "PASS", Environment.Value("StepName"),"Should click on Back button"
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"),"Should click on Back button"		
		End If
End Function
RegisterUserFunc "WebButton", "clickBack", "clickBack"

	
Public Function clickNext(ByRef test_object)
	Call changeCreationTime (test_object)
	On error resume next
	wait(10)
	bPrceedflag = false
		Set objBrowser = description.Create
		objBrowser("micclass").value = "Browser"
		Set objProceed = description.Create
		objProceed("micclass").value = "WebButton"
		objProceed("value").value = "Next"
		objProceed("type").value = "submit"
		Set objPage = description.Create
		objPage("micclass").value = "Page"
		Set BrowserList = desktop.ChildObjects(objBrowser)
		For ib = 0 To BrowserList.count-1 Step 1
			Set PageList = BrowserList(ib).ChildObjects(objPage)	
			For ip = 0 To PageList.count-1 Step 1
				Set Proceedobj = PageList(ip).childobjects(objProceed)
				If Proceedobj.count = 1 Then
					Proceedobj(0).click
					bPrceedflag = True
				End If
			Next
		Next
		If bPrceedflag = True Then
			rptWriteReport "PASS", Environment.Value("StepName"),"Should click on Next button"
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"),"Should click on Next button"		
		End If
End Function
RegisterUserFunc "WebButton", "clickNext", "clickNext"

''**************************************************************************************************************************************************
''Function Name						:		 ValidateState
''Function Description			    :		 Checks for the  status 
''															 This function is generic for WebElement
''Function Parameters			    :		sValue(Type of color) is the value to be set in the object
''Author							:	    Gallop
''Date								:		25th Mar 2015
''**************************************************************************************************************************************************
Public Function ValidateState(ByRef test_object, ByVal sValue)
	
	If test_object.exist(MaxWait) Then
		 		
				If test_object.exist(MaxWait) Then		
					If InStr(1,test_object.GetROProperty("outerhtml"),sValue,1) > 0 Then				
						rptWriteReport "PASS", Environment.Value("StepName"), " State should be displayed in " & chr(34) & test_object.ToString & chr(34) & " field. And the state is "&sValue
					Else
						rptWriteReport "FAIL", Environment.Value("StepName"), " Error should be displayed in " & chr(34) & test_object.ToString & chr(34) & " field. And the state is not "&sValue
					End If
					VerifyColor = true		
				Else
					rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
					VerifyColor = false
					gErrorFlag = True
				End If
			
	Else
		gErrorFlag = True
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.GetROProperty("outertext") & " object should exist."
	End If
	
End Function
RegisterUserFunc "WebElement", "ValidateState", "ValidateState"

''**************************************************************************************************************************************************
''Function Name				:		VerifyColumnDataInTable
''Function Description		:		It is a common method to verify column value of all rows in table
''									
''Function Parameters		:		ICol is COlumn number , iValue is value of column , strColumn is name of the column
''Author					:	    Gallop
''Date						:		20 Dec 2016
''**************************************************************************************************************************************************
    Public Function VerifyColumnDataInTable(ByRef test_object,ByVal iCol,ByVal iValue,ByVal strColName)
'    Call changeCreationTime(test_object)
	On error resume next
	Dim iFoundRow,bResultFlag
	bResultFlag = False
	iFoundRow = 0
	If test_object.exist(MaxWait) Then
		ir = test_object.RowCount
		For iRow = 2 To ir Step 1
				strcelldata = test_object.GetCellData(iRow,iCol)
				If Trim(iValue) = Trim((strcelldata)) Then
					bResultFlag = True
			    Else	
                    bResultFlag = False			    
					Exit for
				End If
		Next

		    If bResultFlag  Then
				rptWriteReport "PASSWITHBOLD", Environment.Value("StepName"), " All "& chr(34) & strColName & chr(34) & " column displayed record values should be  " & chr(34) & iValue & chr(34) & " in " &test_object.ToString		
			Else
			    rptWriteReport "FAILWITHBOLD", Environment.Value("StepName"), " All "& chr(34) & strColName & chr(34) & " column values should be displayed " & chr(34) & iValue & chr(34) & " in "&test_object.ToString		
				gErrorFlag = True
			End If
	 End If

	End Function

	RegisterUserFunc "webtable", "VerifyColumnDataInTable", "VerifyColumnDataInTable"

''**************************************************************************************************************************************************
''Function Name				:		VerifyDataAndClickInCalendar
''Function Description		:		It is a common method to verify default year | Month | Day 
''									
''Function Parameters		:		NA
''Author					:	    Sreedhar Metukuru
''Date						:		22 Jan 2016
''**************************************************************************************************************************************************
 Public Function VerifyDataAndClickInCalendar(ByRef test_object,ByVal strValue)
'    Call changeCreationTime(test_object)
	On error resume next
	Dim iFoundRow,bResultFlag
	bResultFlag = False
	iFoundRow = 0
	If test_object.exist(MaxWait) Then
		ir = test_object.RowCount
		For iRow = 1 To ir Step 1
			ic = test_object.ColumnCount(iRow)
			For jCol = 1 To ic Step 1
				strcelldata = test_object.GetCellData(iRow,jCol)
				If Trim(strValue) = Trim((strcelldata)) Then
					iFoundRow = iRow
					iFoundCol = jCol
					bResultFlag = True
					Exit for
				End If
			Next
			If iFoundRow > 0 Then			
				Exit For
			End If
		Next
		If iFoundRow > 0 Then
			bclickflag = False						
					Wait 3
					Set objIcon = test_object.childitem(iFoundRow,iFoundCol,"Link",0)
					strName = objIcon.getROProperty("name")
					if instr(1,strName,strValue,1) <> 0 then 						
						Wait 3
						objIcon.Focus
						objIcon.click
						bclickflag = True
					End If	
			End If
			If bclickflag  Then
				rptWriteReport "PASS", Environment.Value("StepName"), strValue& " Link should be clicked under " & test_object.ToString		
			Else
			    rptWriteReport "FAIL", Environment.Value("StepName"), strValue& " Link should be clicked under " & test_object.ToString
				gErrorFlag = True
			End If
	  End If
	End Function

	RegisterUserFunc "webtable", "VerifyDataAndClickInCalendar", "VerifyDataAndClickInCalendar"
	
	
''**************************************************************************************************************************************************
''Function Name				:		VerifyNextMothNotShownInCalendar
''Function Description		:		Checks for the object existence, Check Calendar pop-up widget should display until current month names not next month
''									This function is generic for WebTable
''Function Parameters		:		NA
''Author					:	    Sreedhar Metukuru
''Date						:		22 Jan 2016
''**************************************************************************************************************************************************
Public Function VerifyNextMothNotShownInCalendar(ByRef test_object)
	On Error Resume Next
	If test_object.exist(MaxWait) Then
		bPassFlag = false
		ir = test_object.RowCount
		ic = test_object.ColumnCount(ir)
		For i = 1 To ir Step 1			
			For j = 1 To ic Step 1
				
				strstartMonth = test_object.ChildItem(i,j,"Link",0).GetROProperty("name")
				
				Select Case trim(strstartMonth)
					Case "Jan"
                        strMonthName="January"
                    Case "Feb"
                      	strMonthName="February"
                    Case "Mar"
                       	strMonthName="March"
                    Case "Apr"
                       	strMonthName="April"
                    Case "May"
                      	strMonthName="May"
                    Case "Jun"
                       	strMonthName="June"
                    Case "Jul"
                       	strMonthName="July"
                    Case "Aug"
                      	strMonthName="August"
                    Case "Sep"
                      	strMonthName="September"
                    Case "Oct"
                       	strMonthName="October"
                    Case "Nov"
                       	strMonthName="November"   
                    Case "Dec"
                       	strMonthName="December"                          	
				End Select
				
				If Trim(strMonthName) = "December" Then
						bPassFlag = True						
					    Exit for 
				ElseIf Trim(strMonthName) <> Trim(MonthName(Month(Date)+1)) Then
						bPassFlag = True						
					    Exit for 				
				End If
			Next
		Next
		If bPassFlag Then
			rptWriteReport "Pass", Environment.Value("StepName"), "Calendar pop-up widget should display only current date"
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"), "Calendar pop-up widget should display only current date"		
			gErrorFlag = True
		End If
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
		gErrorFlag = True
	End If	

End Function
RegisterUserFunc "WebTable", "VerifyNextMothNotShownInCalendar", "VerifyNextMothNotShownInCalendar"

''**************************************************************************************************************************************************
''Function Name				:		VerifyOnlyOneMonthShownInCalendar
''Function Description		:		Checks for the object existence, Check Calendar pop-up widget should display Only one month
''									This function is generic for WebTable
''Function Parameters		:		NA
''Author					:	    Sreedhar Metukuru
''Date						:		22 Jan 2016
''**************************************************************************************************************************************************
Public Function VerifyOnlyOneMonthShownInCalendar(ByRef test_object)
	On Error Resume Next
	wait 2
	If test_object.exist(MaxWait) Then
		bPassFlag = false
		bFlag=false

		ir = test_object.RowCount
		ic = test_object.ColumnCount(ir)
		'Set LDesc = Description.Create()
		'LDesc("html tag").Value = "A"
		For i = 1 To ir Step 1			
			For j = 1 To ic Step 1
				
'				Linkscount = test_object.ChildObjects(LDesc).Count()            
'				
'				If Linkscount = 1 Then
'						bPassFlag = True	
'						bFlag=True						
'					    Exit for 
'				End If
				strstartMonth = test_object.ChildItem(i,j,"Link",0).GetROProperty("name")
				
				Select Case trim(strstartMonth)
					Case "Jan"
                        strMonthName="January"
                    Case "Feb"
                      	strMonthName="February"
                    Case "Mar"
                       	strMonthName="March"
                    Case "Apr"
                       	strMonthName="April"
                    Case "May"
                      	strMonthName="May"
                    Case "Jun"
                       	strMonthName="June"
                    Case "Jul"
                       	strMonthName="July"
                    Case "Aug"
                      	strMonthName="August"
                    Case "Sep"
                      	strMonthName="September"
                    Case "Oct"
                       	strMonthName="October"
                    Case "Nov"
                       	strMonthName="November"   
                    Case "Dec"
                       	strMonthName="December"                          	
				End Select
				
				If Trim(strMonthName) = "December" Then
						bPassFlag = True	
						bFlag=True						
					    Exit for 
				End If
			Next
			If bFlag Then
				Exit for
			End If
		Next
		If bPassFlag Then
			rptWriteReport "Pass", Environment.Value("StepName"), "Calendar pop-up widget should display only one month"
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"), "Calendar pop-up widget should display only one month"		
			gErrorFlag = True
		End If
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
		gErrorFlag = True
	End If	

End Function
RegisterUserFunc "WebTable", "VerifyOnlyOneMonthShownInCalendar", "VerifyOnlyOneMonthShownInCalendar"

''**************************************************************************************************************************************************
''Function Name						:		 VerifyDisabledandVisible
''Function Description			    :		 Checks for the object existence, is enabled and visible
''															 
''Function Parameters			    :		
''Author							:	    Sreedhar Metukuru
''Date								:		22 jan 2016
''**************************************************************************************************************************************************
Public Function VerifyDisabledandVisible(ByRef test_object)
	
	If test_object.exist(MaxWait) Then
		objVisible = test_object.GetROProperty("visible")	
		objclass = test_object.GetROProperty("class")
		If objVisible And InStr(1,objclass,"readonly") > 0 Then
			VerifyDisabledandVisible = true		
			rptWriteReport "Pass", Environment.Value("StepName"), test_object.ToString & " should be visible and Disabled"
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " should be visible and Disabled"
			gErrorFlag = True
		End If
		
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
		VerifyDisabledandVisible = false
		gErrorFlag = True
	End If
	
End Function
RegisterUserFunc "WebElement", "VerifyDisabledandVisible", "VerifyDisabledandVisible"

''**************************************************************************************************************************************************
''Function Name				:		VerifyDefaultYearOnCalendarTable
''Function Description		:		Checks for the object existence, Check Calendar pop-up widget should display current year
''									This function is generic for WebTable
''Function Parameters		:		NA
''Author					:	    Sreedhar Metukuru
''Date						:		25 Jan 2016
''**************************************************************************************************************************************************
Public Function VerifyDefaultYearOnCalendarTable(ByRef test_object)
	On Error Resume Next
	If test_object.exist(MaxWait) Then
		bPassFlag = false
		bFlag=false

		ir = test_object.RowCount
		ic = test_object.ColumnCount(ir)
		For i = 1 To ir Step 1			
			For j = 1 To ic Step 1
				
				strYear = test_object.ChildItem(i,j,"Link",0).GetROProperty("name")
							
				If Trim(strYear) = Trim(Year(Date)) Then
						bPassFlag = True	
						bFlag=True						
					    Exit for 
				End If
			Next
			If bFlag Then
				Exit for
			End If
		Next
		If bPassFlag Then
			rptWriteReport "Pass", Environment.Value("StepName"), "Calendar pop-up widget should display current year"
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"), "Calendar pop-up widget should display current year"		
			gErrorFlag = True
		End If
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
		gErrorFlag = True
	End If	

End Function
RegisterUserFunc "WebTable", "VerifyDefaultYearOnCalendarTable", "VerifyDefaultYearOnCalendarTable"


''**************************************************************************************************************************************************
''Function Name						 :	   ClickDebugObject
''Function Description			     :	   Checks for the Dubug object existence, if enabled and Clicks the object
''										   This function is generic for Debug WebElement
''Function Parameters			     :	   NA
''Author					    	 :	   Gallop
''Date								 :	   22 July 2016
''**************************************************************************************************************************************************
Public Function ClickDebugObject(ByRef test_object)
	Call changeCreationTime (test_object)
	On error resume next
	If test_object.exist(MaxWait) Then
		If Instr(1,test_object.GetROProperty("Class Name"),"Win",1) > 0 Then
		
			If test_object.GetROProperty("enabled") = True Then
				Wait 1
				test_object.object.focus
				test_object.Click
				rptWriteReport "PASS", Environment.Value("StepName"), chr(34) & test_object.ToString & chr(34) & " object should be clicked."
				ClickObject = true
			Else
				rptWriteReport "FAIL", Environment.Value("StepName"), chr(34) & test_object.ToString & chr(34) & " object should be enabled."
				ClickObject = false
				gErrorFlag = True
			End If
		ElseIf test_object.GetROProperty("disabled") = false Then
		Wait(3)
		        Setting.WebPackage("ReplayType") = 2
				test_object.Click
				Setting.WebPackage("ReplayType") = 1
				rptWriteReport "PASS", Environment.Value("StepName"), chr(34) & test_object.ToString & chr(34) & " object Should be clicked."
				ClickObject = true
'			Else
'				rptWriteReport "FAIL", Environment.Value("StepName"), chr(34) & test_object.ToString & chr(34) & " object should be enabled."
'				ClickObject = false
'				gErrorFlag = True
'			End If
		ElseIf Instr(1,test_object.GetROProperty("nativeclass"), "drop", 1) > 0 Then
		    Setting.WebPackage("ReplayType") = 2
			test_object.Click
			Setting.WebPackage("ReplayType") = 1
			rptWriteReport "PASS", Environment.Value("StepName"), chr(34) & test_object.ToString & chr(34) & " object should be clicked."
			ClickObject = true			
		End If
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
		ClickObject = false
		gErrorFlag = True
	End If
	On error Goto 0
End Function
RegisterUserFunc "WebElement", "ClickDebugObject", "ClickDebugObject"
RegisterUserFunc "winobject", "ClickDebugObject","ClickDebugObject"


''**************************************************************************************************************************************************
''Function Name				:		VerifyandClickLinkInRow
''Function Description		:		Checks for the object existence, verifies the values in row and clicks on the attachment							
''Function Parameters		:		strValue
''Author					:	    Gallop
''Date						:	   11th Nov 2016
''**************************************************************************************************************************************************
    Public Function VerifyandClickLinkInRow(ByRef test_object,ByVal strValue)
    Click=False
	Call changeCreationTime (test_object)
	On error resume next
	Dim iFoundRow,bResultFlag
	bResultFlag = False
	iFoundRow = 0
	''arrvalues = split(strvalue,"|")
	If test_object.exist(MaxWait) Then
		ir = test_object.RowCount
		For iRow = 1 To ir Step 1
			ic = test_object.ColumnCount(iRow)
			For jCol = 1 To ic Step 1
				strcelldata = test_object.GetCellData(iRow,jCol)
				If Trim(UCase(strValue)) = Trim(Ucase(strcelldata)) Then
					iFoundRow = iRow
					bResultFlag = True
					Exit for
				End If
			Next
			If iFoundRow > 0 Then
				Exit For
			End If
		Next
		If iFoundRow > 0 Then
			For icols = 1 To test_object.ColumnCount(iFoundRow) Step 1
				bfound = False	
				itemcount = test_object.childitemcount(iFoundRow,icols,"WebElement")					
				If itemcount > 0 Then
					For i  = 0 To itemcount-1 Step 1
						Set objIcon = test_object.childitem(iFoundRow,icols,"WebElement",i)
						Val = objIcon.GetRoProperty("innertext")
						If Trim(Val) = Trim(strValue)  Then
						    objIcon.highlight
						    ''setting.webpackage("ReplayType")=2
							objIcon.click
							''setting.webpackage("ReplayType")=1
							click = True
							Exit for
						End If
					Next	
				End If				
			Next
			If click Then
				''rptWriteReport "PASS", Environment.Value("StepName"), Val& " icon should be clicked under " & test_object.ToString	
				  rptWriteReport "PASSWITHBOLD", Environment.Value("StepName"), chr(34) & test_object.ToString & chr(34) & "populates with a row of data containing " & chr(34) & strValue & chr(34) & "and clicked"		
				  Else
			     rptWriteReport "FAILWITHBOLD", Environment.Value("StepName"), chr(34) & Val & chr(34) & " is not displayed in " & test_object.ToString
				gErrorFlag = True
			End If
		End If
	End If
	End Function
	RegisterUserFunc "webtable", "VerifyandClickLinkInRow", "VerifyandClickLinkInRow"
	
	
''**************************************************************************************************************************************************
''Function Name				:		GetReqID
''Function Description		:		Checks for the object existence, checks whether field is readonly and capture ReqID
''									This function is generic for WebElement
''Function Parameters		:		NA
''Author					:	    Gallop
''Date						:		11th Nov 2016
''**************************************************************************************************************************************************
Function GetReqID(ByRef test_object)
	
	If test_object.exist(MaxWait) Then
		Set objStatic = description.Create
		objStatic("micclass").value = "WebElement"
		objStatic("class").value = ".*readonly"
		Set objReadOnly = test_object.childobjects(objStatic)
		If objReadOnly.Count = 1 Then
		    iRequestID=objReadOnly(0).GetRoProperty("innertext")
			rptWriteReport "PASS", Environment.Value("StepName"), " Request ID is " & chr(34) & iRequestID & chr(34) 
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"), " Request ID is not visiable " 
			gErrorFlag = True
		End If
	Else
			gErrorFlag = True
			rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & "should exist"
	End If
End Function
RegisterUserFunc "WebElement", "GetReqID","GetReqID"


''**************************************************************************************************************************************************
''Function Name						:		 EnterReqID
''Function Description			    :		 Checks for the object existence, if enabled and sets the value in the object														 
''Function Parameters			    :		sValue is the value to be set in the object
''Author							:	    Gallop
''Date								:		14th Nov 2016
''**************************************************************************************************************************************************
Public Function EnterReqID(ByRef test_object)	
	If test_object.exist(MaxWait) Then
		If test_object.GetROProperty("disabled") = False Then
			test_object.Set iRequestID
			If instr(1,test_object.GetROProperty("value"),iRequestID,1) > 0 Then
				rptWriteReport "PASS", Environment.Value("StepName"), chr(34) & iRequestID & chr(34) & " : value should be entered in " & chr(34) & test_object.ToString & chr(34) & " field."
			Else
				rptWriteReport "FAIL", Environment.Value("StepName"),chr(34) & iRequestID & chr(34) & " : value should be entered in " & chr(34) & test_object.ToString & chr(34) &" field."
			End If
			''EnterText = true
'		Else
'			rptWriteReport "FAIL", Environment.Value("StepName"),test_object.ToString & " object should be enabled."
'			EnterText = false
'			gErrorFlag = True
		End If
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
		EnterText = false
		gErrorFlag = True
	End If
	
End Function
RegisterUserFunc "WebEdit", "EnterReqID", "EnterReqID"

''**************************************************************************************************************************************************
''Function Name				:		SelectCheckBoxsInTable
''Function Description		:		Checks for the object existence, select the rows by clicking check boxs
''									This function is generic for WebTable
''Function Parameters		:		sValue - No of rows selected
''Author					:	    Gallop
''Date						:		15th Nov 2016
''**************************************************************************************************************************************************
Public Function SelectCheckBoxsInTable(ByRef test_object,Byval sValue,Byval iCol)
	
	If test_object.exist(MaxWait) Then
	    Flag=0
		test_object.object.focus
		wait 1
		iRC=test_object.RowCount
		    For i = 2 To iRC Step 1
		        
		         	Set Obj=test_object.ChildItem(i,iCol,"WebCheckBox",0)
			         	 If obj.GetROProperty("checked")=0 Then
					    	Obj.click
					        Flag=Flag+1
							
						 Else
					        Obj.click     
					     End If
				    
				  If Flag=sValue Then
					Exit For
			      End If  
				     
			 Next
		    
		If Flag=sValue Then
		    rptWriteReport "PASSWITHBOLD", Environment.Value("StepName"), "Number of rows selected in the table: " & chr(34) & test_object.ToString & chr(34) &"should be " &chr(34) & Flag &chr(34)
		 Else
		    rptWriteReport "FAILWITHBOLD", Environment.Value("StepName"), "Number of rows selected in the table: " & chr(34) & test_object.ToString & chr(34) &"should be " &chr(34) & Flag &chr(34)
		 End If
		   
		
		  
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " table should exist."
		gErrorFlag = True
	End If
	
End Function
RegisterUserFunc "WebTable", "SelectCheckBoxsInTable", "SelectCheckBoxsInTable"



''**************************************************************************************************************************************************
''Function Name				:		VerifyTableColumn
''Function Description		:		Checks for the object existence, verifies table contain specified columns
''									This function is generic for WebTable
''Function Parameters		:		sValue - column name
''Author					:	    Gallop
''Date						:		15th Nov 2016
''**************************************************************************************************************************************************
Public Function VerifyTableColumn(ByRef test_object,Byval sValue)
	'test_object.object.focus
	test_object.MakeObjVisible
	If test_object.exist(MaxWait) Then
	  columnExist=false
	   rowCnt=test_object.RowCount
       For i = 1 To 1 Step 1
       	  columnCnt=test_object.ColumnCount(i)
	       	  For j = 1 To columnCnt Step 1
	       	  	 cellValue=test_object.GetCellData(i,j)
		       	  	 If Trim(cellValue)=Trim(sValue)Then
		       	  	 	 columnExist=true
		       	  	 	 Exit for
		       	  	 End If
	       	  Next
        Next
       	  If columnExist Then
       	  	rptWriteReport "PASSWITHBOLD", Environment.Value("StepName"),chr(34) & test_object.ToString & chr(34) & " should be contain column : " & chr(34) & sValue & chr(34)
       	  	Else
       	  	rptWriteReport "FAILWITHBOLD", Environment.Value("StepName"),chr(34) & test_object.ToString & chr(34) & " should be contain column : " & chr(34) & sValue & chr(34) 
       	  End If
      
     
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " table should exist."
		gErrorFlag = True
	End If
	
End Function
RegisterUserFunc "WebTable", "VerifyTableColumn", "VerifyTableColumn"



''**************************************************************************************************************************************************
''Function Name				:		SelectMethodInTable
''Function Description		:		Checks for the object existence, select the specified method value in table.
''									This function is generic for WebTable
''Function Parameters		:		sValue - cell value
''Author					:	    Gallop
''Date						:		15th Nov 2016
''**************************************************************************************************************************************************
Public Function SelectMethodInTable(ByRef test_object,Byval sValue)
	
	If test_object.exist(MaxWait) Then
	  valueExist=false
	   iRow=test_object.GetRowWithCellText(sValue)
	   columnCnt=test_object.ColumnCount(iRow)
       For i = 1 To columnCnt Step 1
             iCBcount=test_object.ChildItemCount(iRow,i,"WebCheckBox")
             iCBcol=i
             	If iCBcount=1 Then
             	  Set objCheckBox=test_object.ChildItem(iRow,iCBcol,"WebCheckBox",0)
             	  objCheckBox.Click
             	  valueExist=True
             	  Exit For
             	End If
'       	  	 set obj=test_object.ChildItem(iRow,i,"WebCheckBox",0)
'       	  	 obj.click
'       	  	 valueExist=true
'       	  	 Exit for
       	  	 
        Next
       	  If valueExist Then
       	    
       	  	rptWriteReport "PASS", Environment.Value("StepName"),chr(34) & sValue & chr(34) & "Type is selected  in " & chr(34) & test_object.ToString & chr(34) 
       	  	Else
       	  	rptWriteReport "Fail", Environment.Value("StepName"),chr(34) & sValue & chr(34) & "type is not selected  in " & chr(34) & test_object.ToString & chr(34) 
       	  End If
      
     
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " table should exist."
		gErrorFlag = True
	End If
	
End Function
RegisterUserFunc "WebTable", "SelectMethodInTable", "SelectMethodInTable"




''**************************************************************************************************************************************************
''Function Name					:		WaitForObjectToLoad
''Function Description			:		Checks for the object existence, and then waits for the table to get loaded
''										This function is generic for WebTable
''Function Parameters			:		sTime - waiting time for object load
''Author						:	   	Gallop
''Date							:		17th Nov 2016
''**************************************************************************************************************************************************
Public Function WaitForTableToLoad(ByRef test_object,ByVal sTime)
	''Call changeCreationTime (test_object)
	'wait 40
	If test_object.exist(MaxWait) Then
		wait(sTime)
		rptWriteReport "PASS", Environment.Value("StepName"), test_object.ToString & "  should be loaded"
		''WaitForObjectToLoad = true
	Else
		gErrorFlag = True
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
	End If
	
End Function
RegisterUserFunc "WebTable", "WaitForTableToLoad", "WaitForTableToLoad"



'**************************************************************************************************************************************************
''Function Name				:		DeselectCheckBoxsInTable
''Function Description		:		Checks for the object existence, uncheck the checkbox rows in table
''									This function is generic for WebTable
''Function Parameters		:		iRows - is no of rows
''Author					:	    Gallop
''Date						:		15th Nov 2016
''**************************************************************************************************************************************************
Public Function DeselectCheckBoxsInTable(ByRef test_object,Byval iRows)
	If test_object.exist(MaxWait) Then
	    Flag=0
		test_object.object.focus
		wait 1
		iRC=test_object.RowCount
		    For i = 2 To iRC Step 1
				    Set Obj=test_object.ChildItem(i,1,"WebCheckBox",0)
				    If obj.GetROProperty("checked")=1 Then
				    	Obj.click
				        Flag=Flag+1
						     If Flag=2 Then
						     	Exit For
						     End If     
				     End If
				     
			 Next
		    
		If Flag=2 Then
		    rptWriteReport "PASS", Environment.Value("StepName"), "2 rows are UNCHECKED in the table: " & chr(34) & test_object.ToString & chr(34) 
		 Else
		    rptWriteReport "FAIL", Environment.Value("StepName"), "2 rows are not UNCHECKED in the table: " & chr(34) & test_object.ToString & chr(34)
		 End If
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " table should exist."
		gErrorFlag = True
	End If
	End Function 
		
RegisterUserFunc "WebTable", "DeselectCheckBoxsInTable", "DeselectCheckBoxsInTable"




''**************************************************************************************************************************************************
''Function Name				:		SelectDropDownValues
''Function Description		:		Checks for the object existence, selects value from list box using KeyBoard Actions
''									This function is generic for WebElement
''Function Parameters		:		sValue - is the value to selct from list
''Author					:	    Gallop
''Date						:		21th NOV 2016
''**************************************************************************************************************************************************
Public Function SelectDropDownValues(ByRef test_object, ByRef sValue)
	
	If test_object.exist(MaxWait) Then
		'test_object.object.focus
		test_object.MakeObjVisible
		test_object.Click
		wait 1
		Set oshell=CreateObject("Wscript.Shell")
		For i = 1 To 10 Step 1
			oshell.SendKeys "{DOWN}"
		    Wait(1)
			    If Instr(1,test_object.GetROProperty("innertext"),sValue,0)>0 Then
				   ValueSelect=True		
	               Exit For
			    End If
		Next
		
		If ValueSelect Then
			rptWriteReport "PASS", Environment.Value("StepName"), sValue & " should be selected from dropdown."		
            Else
			rptWriteReport "FAIL", Environment.Value("StepName"), sValue & " should be selected from dropdown."
			gErrorFlag = True			
		End If

			
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.GetROProperty("outertext") & " object should exist."
		gfSelectListBox = false
		gErrorFlag = True
	End If
	
End Function

RegisterUserFunc "WebElement", "SelectDropDownValues", "SelectDropDownValues"




''**************************************************************************************************************************************************
''Function Name						:		 OpenNewTab
''Function Description			    :		 Checks for the object existence, if enabled open a new tab in same browser and enter url														
''Function Parameters			    :		 NA
''Author							:	     Gallop
''Date								:		 29 Nov 2016
''**************************************************************************************************************************************************
Public Function OpenNewTab(ByRef test_object)
    'wait 2
	If test_object.exist(MaxWait) Then		
	      set objPage=test_object.GetTOProperty("parent")
	      Set objBrowser=objPage.GetTOProperty("parent")
	      objBrowser.highlight
	      objBrowser.OpenNewTab
	      wait 1
	      Browser("CreationTime:=1").Navigate gAppURL
	      wait 5
	      Browser("Login").Page("Login").sync
			rptWriteReport "PASS", Environment.Value("StepName"), " New Browser tab is opened successfully "
	Else
		    rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
	
	End If
	
End Function

RegisterUserFunc "Link", "OpenNewTab", "OpenNewTab"



''**************************************************************************************************************************************************
''Function Name				:		VerifyandClickWebElementInRow
''Function Description		:		Checks for the object existence, verifies the values in row and clicks on the attachment link							
''Function Parameters		:		NA
''Author					:	    Gallop
''Date						:		5th Mar 2015
''**************************************************************************************************************************************************
    Public Function VerifyandClickWebElementInRow(ByRef test_object,ByVal strValue)
	''Call changeCreationTime (test_object)
	On error resume next
	Dim iFoundRow,bResultFlag
	bResultFlag = False
	iFoundRow = 0
	arrvalues = split(strvalue,"|")
	test_object.Object.focus
	If test_object.exist(MaxWait) Then
	   '' test_object.Object.focus
		ir = test_object.RowCount
		For iRow = 1 To ir Step 1
			ic = test_object.ColumnCount(iRow)
			For jCol = 1 To ic Step 1
				strcelldata = test_object.GetCellData(iRow,jCol)
				If Trim(UCase(arrvalues(0))) = Trim(Ucase(strcelldata)) Then
					iFoundRow = iRow
					bResultFlag = True
					Exit for
				End If
			Next
			If iFoundRow > 0 Then
				Exit For
			End If
		Next
		If iFoundRow > 0 Then
			For icols = 1 To test_object.ColumnCount(iFoundRow) Step 1
				bfound = False	
				itemcount = test_object.childitemcount(iFoundRow,icols,"WebElement")					
				If itemcount > 0 Then
					For i  = 0 To itemcount-1 Step 1
						Set objIcon = test_object.childitem(iFoundRow,icols,"WebElement",i)
						If Len(objIcon.GetRoProperty("title"))=0 Then
							Val = objIcon.GetRoProperty("innertext")
						Else
						    Val = objIcon.GetRoProperty("title")
						End If
						
						If Trim(Val) = Trim(arrvalues(1))  Then
						    ''setting.webpackage("ReplayType")=2
						    wait 1
						    objIcon.makeobjvisible
						    wait 1
						    objIcon.highlight
						    wait 2
						    setting.webpackage("ReplayType")=2
							objIcon.click
							setting.webpackage("ReplayType")=1
							click = True
							Exit For
						End If
					Next	
				End If				
			Next
			If click Then
				rptWriteReport "PASS", Environment.Value("StepName"), Val & " icon should be clicked under " & test_object.ToString		
			Else
			    rptWriteReport "FAIL", Environment.Value("StepName"),Val & "icon should be clicked under " & test_object.ToString
				gErrorFlag = True
			End If
		End If
	End If
	End Function
	RegisterUserFunc "webtable", "VerifyandClickWebElementInRow", "VerifyandClickWebElementInRow"
	
	
	''**************************************************************************************************************************************************
''Function Name				:		VerifyReqIDInTable
''Function Description		:		Checks for the object existance, verifiy the value in specific cell
''									This function is generic for verifying Request Id in table
''Function Parameters		:		iRows,icol,svalue
''Author					:	    Gallop
''Date						:		14th May 2015
''**************************************************************************************************************************************************
Function VerifyReqIDInTable(ByRef test_object,Byval iRow,Byval iCol)
	wait 3
	If test_object.exist(MaxWait) Then
		If Trim(cint(test_object.GetCellData(iRow,iCol))) = Trim(cint(iRequestID)) Then
			rptWriteReport "PASSWITHBOLD", Environment.Value("StepName"), chr(34) & Trim(ucase(svalue)) & chr(34) & " Should be in "&iRow&" Row and "&iCol&" Column under "& chr(34) & test_object.ToString & chr(34) 
		Else
			rptWriteReport "FAILWITHBOLD", Environment.Value("StepName"), chr(34) & Trim(ucase(svalue)) & chr(34) & " Should be in "&iRow&" Row and "&iCol&" Column under "& test_object.ToString & chr(34) & " but displayed is "&  Trim(ucase(test_object.GetCellData(iRow,iCol))) 
		End If
	Else
		gErrorFlag = True
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & "should exist"
	End If
End Function

RegisterUserFunc "WebTable", "VerifyReqIDInTable","VerifyReqIDInTable"


''**************************************************************************************************************************************************
''Function Name				:		VerifyAndClickRecordInTable
''Function Description		:		Checks for the object existence, verifies row with given text is  present in table ,if present  click "Select" link of the row of table
''									This function is generic for WebTable
''Function Parameters		:		sValue -  is cell value  
''Author					:	    Gallop
''Date						:		09 Dec 2016
''**************************************************************************************************************************************************
Function VerifyAndClickRecordInTable(ByRef test_object,Byval sValue,Byval iCol)
	flag=false
	test_object.object.focus
	If test_object.exist(MaxWait) Then
		iRowNo=test_object.GetRowWithCellText(sValue)
		iColumnCnt=test_object.ColumnCount(iRowNo)
		  For i = iCol To iColumnCnt Step 1
		       Set obj=test_object.ChildItem(iRowNo,i,"WebElement",0)
				   If obj.GetROProperty("html tag")="A" Then
				   	  obj.click
				   	  flag=true
				   	  Exit for
				   End If
		  Next
		  If flag Then
		  	  rptWriteReport "PASS", Environment.Value("StepName"),  " Icon should be clicked under " & test_object.ToString
		  Else
		      rptWriteReport "Fail", Environment.Value("StepName"), " Icon should be clicked under " & test_object.ToString
		  End If
	Else
		gErrorFlag = True
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & "should exist"
	End If
End Function
RegisterUserFunc "WebTable", "VerifyAndClickRecordInTable","VerifyAndClickRecordInTable"


''**************************************************************************************************************************************************
''Function Name				:		GetSRID
''Function Description		:		Checks for the object existence, checks whether field is readonly and capture SRID
''									This function is generic for WebElement
''Function Parameters		:		NA
''Author					:	    Gallop
''Date						:		10th January 2017
''**************************************************************************************************************************************************
Function GetSRID(ByRef test_object)
	If test_object.exist(MaxWait) Then
	        If Len(iSRID)>0 Then
	        	iSRID=""
	        End If
		    strExportStatus=test_object.GetRoProperty("innertext")
		       For i = 1 To Len(strExportStatus) Step 1
		    	    temp=Mid(strExportStatus,i,1)
		    	      If IsNumeric(temp) Then
		    		      iSRID=iSRID&temp
		    	      End If
		       Next
			rptWriteReport "PASS", Environment.Value("StepName"), " Export Status SRID is " & chr(34) & iSRID & chr(34) 	
	Else
			gErrorFlag = True
			rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & "should exist"
	End If
End Function
RegisterUserFunc "WebElement", "GetSRID","GetSRID"

''**************************************************************************************************************************************************
''Function Name						:	    EnterSRID
''Function Description			    :		Checks for the object existence, if enabled and sets the value in the object														 
''Function Parameters			    :		NA
''Author							:	    Gallop
''Date								:		10th January 2017
''**************************************************************************************************************************************************
Public Function EnterSRID(ByRef test_object)	
	If test_object.exist(MaxWait) Then
		If test_object.GetROProperty("disabled") = False Then
			test_object.Set iSRID
				If instr(1,test_object.GetROProperty("value"),iSRID,1) > 0 Then
					rptWriteReport "PASS", Environment.Value("StepName"), chr(34) & iSRID & chr(34) & " : value should be entered in " & chr(34) & test_object.ToString & chr(34) & " field."
					
				Else
					rptWriteReport "FAIL", Environment.Value("StepName"),chr(34) & iSRID & chr(34) & " : value should be entered in " & chr(34) & test_object.ToString & chr(34) &" field."
				End If
		End If
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
		EnterText = false
		gErrorFlag = True
	End If
	
End Function
RegisterUserFunc "WebEdit", "EnterSRID", "EnterSRID"


	''**************************************************************************************************************************************************
''Function Name						:		 DownloadFile
''Function Description			    :		 Checks for the object existence, if enabled and sets the fileName in the object
''											This function is generic for WebEdit, WebArea
''Function Parameters			    :		NA
''Author							:	    Gallop
''Date								:		6th April 2015
''**************************************************************************************************************************************************

Public Function DownloadFile(ByRef test_object,ByVal strfilename)
	'Call changeCreationTime (test_object)
	On error resume Next
	Filename = sBaseDir  & "Resources\"& strfilename
	Set fso=createobject("Scripting.FileSystemObject")
	If fso.FileExists(Filename) then
 		fso.DeleteFile Filename
	End If
	Set fso=nothing
	If test_object.exist(MaxWait) Then
		If test_object.GetROProperty("disabled") = False Then
			''Setting.WebPackage("ReplayType") = 2
			test_object.Type Filename
			''Setting.WebPackage("ReplayType") = 1				
			rptWriteReport "PASS", Environment.Value("StepName"), chr(34) & Filename & chr(34) & " : value should be entered in " & chr(34) & test_object.ToString & chr(34) & " field."
			strDownlodedFilePath = Filename
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"),test_object.ToString & " object should be enabled."
			strDownlodedFilePath = Filename
			gErrorFlag = True
		End If
	Else
		rptWriteReport "FAIL", Environment.Value("StepName"), test_object.ToString & " object should exist."
		EnterText = false
		gErrorFlag = True
	End If
	On error Goto 0
End Function
RegisterUserFunc "WebEdit", "DownloadFile", "DownloadFile"
RegisterUserFunc "WinEdit", "DownloadFile", "DownloadFile"

'***************************************************************************************************************************************************************
'Function Desc	: CLicks on save as in download
'Function		: DownloadSaveAs
'Parameters		: txtVal - Text string to be passed by sending keyboard input
'***************************************************************************************************************************************************************
Function DownloadSaveAs(ByRef test_object)
  If test_object.Exist Then
  	On error resume next
    wait 2
	Set WshShell = CreateObject("WScript.Shell")
	WshShell.SendKeys "{DOWN}"
	WshShell.SendKeys "{ENTER}"
	Set WshShell = Nothing
''	Wait 2
  End If
   
End Function

RegisterUserFunc "WinButton", "DownloadSaveAs", "DownloadSaveAs"



'***************************************************************************************************
'Function Name	: VerifyDownlodedFileExist
'Description	: verify the downloaded file exist or not.
'Author			: Gallop
'Parameters		: NA
'***************************************************************************************************
Function VerifyDownlodedFileExist(ByRef test_object,Byval strfilename)
	If test_object.Exist Then
		Dim fObj
		strDownlodedFilePath = sBaseDir  & "Resources\"& strfilename
	Set fObj = CreateObject("Scripting.FileSystemObject")
	if fObj.FileExists(strDownlodedFilePath) Then
		rptWriteReport "PASSWITHBOLD", Environment.Value("StepName"), searchFilePath&" File download successfully  in the specified path "
		'fObj.DeleteFile strDownlodedFilePath
	Else
		rptWriteReport "FAILWITHBOLD", Environment.Value("StepName"), searchFilePath&" File does not exist in the specified path "
	End If
	Set fObj = Nothing
	End If
	 	
End Function
RegisterUserFunc "Link", "VerifyDownlodedFileExist", "VerifyDownlodedFileExist"


'***************************************************************************************************************************************************************
'Function Desc	: ReFreshPage
'Function		: DownloadSaveAs
'Parameters		: txtVal - Text string to be passed by sending keyboard input
'***************************************************************************************************************************************************************
Function ReFreshPage(ByRef test_object)
    iCounter =0
	Do
	wait 1
	Set oPage=test_object.GetTOProperty("parent")
	Set oEdit=Description.Create
	oEdit("placeholder").value="Search by ID"
	Set oBtn=Description.Create
	oBtn("class").Value="btn btn-xs ifs-bound"
	''oPage.WebEdit(oEdit).set iRequestID
	oPage.WebEdit(oEdit).set iSRID
	wait 2
	oPage.WebButton(oBtn).click
	wait 10
    iCounter=iCounter+1
	Loop Until(iCounter =5)
   
End Function
   


RegisterUserFunc "WebElement", "ReFreshPage", "ReFreshPage"

RegisterUserFunc "WebEdit", "ReFreshPage", "ReFreshPage"
