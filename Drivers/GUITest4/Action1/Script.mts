''###################################################################################################
''Function Name : StartApplication
''Description : open browser and launch application
''Author : Gallop
''###################################################################################################
Public Function StartApplication
	CloseAllBrowsers()
	If Ucase(gBrowserIE) = "YES" Then
		systemutil.run "iexplore.exe",gAppURL,,,3
		Browser("Login").Page("Login").sync
		rptWriteReport "PASS", Environment.Value("StepName"),"Open the browser and start Application"
	ElseIf Ucase(gBrowserChrome) = "YES" Then 
		Systemutil.Run "Chrome.exe",gAppURL,,,3
		Browser("Login").Page("Login").sync
		rptWriteReport "PASS", Environment.Value("StepName"),"Open the browser and start Application"
	ElseIf Ucase(gBrowserFF) = "YES" Then	
		Systemutil.Run "firefox.exe",gAppURL,,,3
		Browser("Login").Page("Login").sync
		rptWriteReport "PASS", Environment.Value("StepName"),"Open the browser and start Application"
	End If	
	
End Function
 
''###################################################################################################
''Function Name : Logout
''Description : logout application
''Author : Gallop
''###################################################################################################
Public Function Logout
	Environment.Value("StepName") = "Logout"
		blogoutflag = false
		Set objBrowser = description.Create
		objBrowser("micclass").value = "Browser"
		Set objSettings = description.Create
		objSettings("micclass").value = "WebButton"
		objSettings("class").value = "btn btn-lg dropdown-toggle open"
		Set objlogout = description.Create
		objlogout("micclass").value = "WebElement"
		objlogout("class").value = "ifs-menu-link.*"
		objlogout("innertext").value="Logout"
		Set objPage = description.Create
		objPage("micclass").value = "Page"
		Set BrowserList = desktop.ChildObjects(objBrowser)
		For ib = 0 To BrowserList.count-1 Step 1
			Set PageList = BrowserList(ib).ChildObjects(objPage)	
			For ip = 0 To PageList.count-1 Step 1
				Set settingsiconobj = PageList(ip).childobjects(objSettings)
				If settingsiconobj.count = 1 Then
					settingsiconobj(0).click
					set logoutobject = PageList(ip).childobjects(objlogout)
					If logoutobject.count = 1 Then
						logoutobject(0).click
						blogoutflag = True
					End If
				End If
			Next
		Next
		If blogoutflag = True Then
			rptWriteReport "PASS", Environment.Value("StepName"),"Logout from application"
		Else
			rptWriteReport "FAIL", Environment.Value("StepName"),"Logout from application"		
		End If
End Function


''*************************************************************************************************************************************************************************************
''Function Name :	CloseAllBrowsers()
''Description	:	Closes All open Browsers Except QC
''Author	: 	Gallop
''*************************************************************************************************************************************************************************************
Function CloseAllBrowsers()
	wait(3)
	systemutil.CloseProcessByName "iexplore.exe"
	systemutil.CloseProcessByName "Chrome.exe"
	systemutil.CloseProcessByName "firefox.exe"
	
End Function



''###################################################################################################
''Function Name : VerifyColumnWidthInStrings
''Description 	: Verify that One column questions are one column in width, two column questions are one column in width in Strings
''Author : Gallop
''###################################################################################################
Public Function VerifyColumnWidthInStrings
	Environment.Value("StepName") = "VerifyColumnWidthInStrings"
	Browser("Strings").Page("Strings").WebEdit("TXT_OneColumnRequired").VerifyExists
	iOneColumnWidth = CInt(Browser("Strings").Page("Strings").WebEdit("TXT_OneColumnRequired").GetROProperty("width"))
	iTwoColumnWidth = CInt(Browser("Strings").Page("Strings").WebEdit("TXT_TwoColumnString").GetROProperty("width"))
	If iOneColumnWidth < iTwoColumnWidth Then
		rptWriteReport "PASS", Environment.Value("StepName"), "Verify One column questions are one column in width, two column questions are one column in width in Strings"
	Else
		gErrorFlag = True
		rptWriteReport "FAIL", Environment.Value("StepName"), "Verify One column questions are one column in width, two column questions are one column in width in Strings"
	End If
	If iOneColumnWidth = CInt(Browser("Strings").Page("Strings").WebEdit("TXT_OneColumnNotRequired").GetROProperty("width")) Then
		rptWriteReport "PASS", Environment.Value("StepName"), "Verify " & chr(34) & "One Column Required" & chr(34) & " and  " & chr(34) & "One Column Not Required" & chr(34) & " columns are of same width"
	Else
		gErrorFlag = True
		rptWriteReport "FAIL", Environment.Value("StepName"), "Verify " & chr(34) & "One Column Required" & chr(34) & " and  " & chr(34) & "One Column Not Required" & chr(34) & " columns are of same width"
	End If
	If iTwoColumnWidth = CInt(Browser("Strings").Page("Strings").WebEdit("TXT_TwoColumnRequired").GetROProperty("width")) Then
		rptWriteReport "PASS", Environment.Value("StepName"), "Verify" & chr(34) & " Two Column String" & chr(34) & " and  "& chr(34) & "Two Column String Required "& chr(34) & " columns are of same width"
	Else
		gErrorFlag = True
		rptWriteReport "FAIL", Environment.Value("StepName"), "Verify" & chr(34) & " Two Column String" & chr(34) & " and  "& chr(34) & "Two Column String Required "& chr(34) & " columns are of same width"
	End If
		
End Function


