'***************************************************************************************************
'Function Name	: WriteTextFile(sText,fPath,createNew)
'Description	: Writes the sText value to the file at fPath
'Author			: Gallop
'Parameters		: sText - Text value
				  'fPath - Path of the file
				  'createNew - Creates a new file if True
'***************************************************************************************************
Function WriteTextFile(sText,fPath,append)
	
	CONST ForReading = 1, ForWriting = 2, ForAppending = 8 
	Dim fso, myFile, fileData
	Set fso = CreateObject("Scripting.FileSystemObject")
	If append Then
		Set myFile = fso.OpenTextFile(fPath,ForAppending,True)
	Else
		Set myFile = fso.CreateTextFile(fPath)
	End If
	myFile.WriteLine(sText)
	myFile.close
	Set myFile = Nothing
	Set fso = Nothing
End Function

'***************************************************************************************************************************************************************
'Function Desc	: Sends keys one by one via keyboard input to the active screen
'Function		: SendKeys(txtVal)
'Parameters		: txtVal - Text string to be passed by sending keyboard input
'***************************************************************************************************************************************************************
Function SendKeys(txtVal)
   
	Set WshShell = CreateObject("WScript.Shell")
	WshShell.SendKeys(txtVal)
	Set WshShell = Nothing
''	Wait 2
End Function

'***************************************************************************************************
'Function Name : SendMail(sFrom,sTo,sSubject,sBody,NoOfAttachments,sAllAttachmentsPaths)
'Description	: Sends email to the mail id with subject, body, NoOfAttachments, sAllAttachmentsPaths (If more that 1 attachment, mention all the attachments path "," separated in sAllAttachmentsPaths)
'Examples		: Call SendMail ("test.Gallop@xyz.com","Test Mail from QA Automation","hi", 3, "D:\\About BC.txt,D:\\ExceptionLog.xml, D:\\Script_Execution_Log.xls")
'				: Call SendMail ("test.Gallop@xyz.com","Test Mail from QA Automation","hi", 1, "D:\\ExceptionLog.xml")
'Author			: Gallop
'References	: None
'***************************************************************************************************
sub SendMail(sFrom,sTo,sSubject,sBody,NoOfAttachments,sAllAttachmentsPaths)
	
	Const cdoSendUsingMethod = "http://schemas.microsoft.com/cdo/configuration/sendusing"
	Const cdoSendUsingPort = 2
	Const cdoSMTPServer = "http://schemas.microsoft.com/cdo/configuration/smtpserver"
	Const cdoSMTPServerPort = "http://schemas.microsoft.com/cdo/configuration/smtpserverport"
	Const cdoSMTPConnectionTimeout = "http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout"
	Const cdoSMTPAuthenticate = "http://schemas.microsoft.com/cdo/configuration/smtpauthenticate"
	Const cdoBasic = 1
	Const cdoSendUserName = "http://schemas.microsoft.com/cdo/configuration/sendusername"
	Const cdoSendPassword = "http://schemas.microsoft.com/cdo/configuration/sendpassword"

	Set objConfig = CreateObject("CDO.Configuration")									
	Set Fields = objConfig.Fields
									
	With Fields
		.Item(cdoSendUsingMethod)       = cdoSendUsingPort
		.Item(cdoSMTPServer)            = sSMTPServer				''Example: "smtp.gmail.com" or Declare in Config file
		.Item(cdoSMTPServerPort)        = 25
		.Item(cdoSMTPConnectionTimeout) = 10
		.Item(cdoSMTPAuthenticate)      = cdoBasic
		.Item(cdoSendUserName)          = sFrom						''pass a s aurgument or Declare in Config file
		.Item(cdoSendPassword)          = sPwd						''Declare in Config file
		.Update()
	End With 
	Set cdoMessage = CreateObject("CDO.Message")
	Set cdoMessage.Configuration = objConfig     
	cdoMessage.From = sFrom 
	cdoMessage.To = sTo 
	cdoMessage.Subject = sSubject 
	cdoMessage.TextBody = sBody 
	If NoOfAttachments > 1 Then						''Can also avoid using this and split the Attachments and use Ubound, instead.
		sAttachment = Split(sAllAttachmentsPaths,"|")
		For att = 0 To NoOfAttachments-1
			cdoMessage.AddAttachment sAttachment(att) 
		Next
	Else
		cdoMessage.AddAttachment sAllAttachmentsPaths
	End If
	cdoMessage.Send()  
    Set cdoMessage = Nothing 
    Set cdoConfig = Nothing 
End sub

'***************************************************************************************************
'Function Name	: ifFileExist(searchFilePath)
'Description	: verify the file exist or not. return true if file exist,else return false
'Author			: Gallop
'Parameters		: searchFilePath - Path of the file
'***************************************************************************************************
Function ifFileExist(searchFilePath)
	ifFileExist = false
	Dim fObj
	Set fObj = CreateObject("Scripting.FileSystemObject")
	if fObj.FileExists(searchFilePath) Then
		ifFileExist = true
	Else
		ifFileExist = false
	End If
	Set fObj = Nothing 	
End Function

'***************************************************************************************************
'Function Name	: CreateFileIfNotExist(sFilePath)
'Description	: verify the file exist or not. return true if file not exist,else return false
'Author			: Gallop
'Parameters		: sFilePath - Path of the file
'***************************************************************************************************
Function CreateFileIfNotExist(sFilePath)
	CreateFileIfNotExist = False
	dim filesys
	Set filesys = CreateObject("Scripting.FileSystemObject")
	If Not filesys.FileExists(sFilePath) Then
		filesys.CreateTextFile sFilePath
		CreateFileIfNotExist = True
	End If 
	Set filesys = Nothing 
End Function

'***************************************************************************************************
'Function Name	: DeleteFileIfExist(searchFilePath)
'Description	: verify the file exist. delete the file if file exist
'Author			: Gallop
'Parameters		: searchFilePath - Path of the file
'***************************************************************************************************
Function DeleteFileIfExist(searchFilePath)
	DeleteFileIfExist = False
	dim filesys
	Set filesys = CreateObject("Scripting.FileSystemObject")
	If filesys.FileExists(searchFilePath) Then
		filesys.DeleteFile searchFilePath
		DeleteFileIfExist = True
	Else
		DeleteFileIfExist = false
	End If 
	Set filesys = Nothing 
End Function

'***************************************************************************************************
'Function Name	: ifFolderExist(searchFolderPath)
'Description	: verify the Folder exist or not. return true if file not exist,else return false
'Author			: Gallop
'Parameters		: searchFolderPath - Path of the Folder
'***************************************************************************************************
Function ifFolderExist(searchFolderPath)
	ifFolderExist = false
	Dim fObj	
	Set fObj = CreateObject("Scripting.FileSystemObject")
	if fObj.FolderExists(searchFolderPath) Then
		ifFolderExist = true
	Else
		ifFolderExist = false
	End if
	Set fObj = nothing
End Function

'***************************************************************************************************
'Function Name	: CreateNewFolderIfNotExist(sFolderPath)
'Description	: verify the Folder exist. create new Folder if folder doesn't exit
'Author			: Gallop
'Parameters		: sFolderPath - Path of the Folder
'***************************************************************************************************
Function CreateNewFolderIfNotExist(sFolderPath)
	ifNotFolderExistCreateNew = false
	Dim fObj	
	Set fObj = CreateObject("Scripting.FileSystemObject")
	if fObj.FolderExists(sFolderPath) Then
		ifNotFolderExistCreateNew = true
	Else
		fObj.CreateFolder(sFolderPath)
		ifNotFolderExistCreateNew = ifFolderExist(sFolderPath)
	End if
	Set fObj = nothing
End Function

''*************************************************************************************************************************************************************************************
''Function Name :	GenerateRandomStringWithSpecialCharacters
''Description	:	Generates Random string of specific length with special characters
''Author		: 	Gallop
''*************************************************************************************************************************************************************************************
Public Function GenerateRandomStringWithSpecialCharacters(StrLen,strType)
Dim strRandom
Dim strSpecialChar
strSpecialChar = "$&*"
Select Case UCase(strType)
	  Case "NUMERIC"	
	  	Const MainStr= "12345678987654321234568900976776656554433456"
		For i = 1 to StrLen-3
			Randomize
  			strRandom = strRandom & Mid(MainStr,RandomNumber(1, Len(MainStr)),1)
		Next
	  Case "ALPHANUMERIC"	
		Const AStr= "abcdefghijklmsrgggrstuvwxyzabcdefghnmbjopqrstuz"
		Const NStr= "0123456789"

		For i = 1 to StrLen-3
    		If i< (StrLen-3)/2 Then
       			strRandom = strRandom & Mid(NStr,RandomNumber(1, Len(NStr)),1)
    		Else
        		strRandom=strRandom & Mid(AStr,RandomNumber(1, Len(AStr)),1)
    		End If
		Next
	  Case "ALPHABETIC"	
		Const ALStr= "abcdefghijklmsrgggrstuvwxyzabcdefghnmbjopqrsyz"
		For i = 1 to StrLen-3
			Randomize
 		 	strRandom = strRandom & Mid(ALStr,RandomNumber(1, Len(ALStr)),1)
		Next
	End Select
	
	strRandom = strSpecialChar&strRandom
GenerateRandomStringWithSpecialCharacters = strRandom
End Function

''*************************************************************************************************************************************************************************************
''Function Name :	GenerateRandomStringWithSpecialCharacters
''Description	:	Generates Random string of specific length
''Author		: 	Gallop
''*************************************************************************************************************************************************************************************

Public Function GenerateRandomString(StrLen,strType)
Dim strRandom
Select Case UCase(strType)
	  Case "NUMERIC"	
	  	Const MainStr= "12345678987654321234568900976776656554433456"
		For i = 1 to StrLen
			Randomize
  			strRandom = strRandom & Mid(MainStr,RandomNumber(1, Len(MainStr)),1)
		Next
	  Case "ALPHANUMERIC"	
		Const AStr= "abcdefghijklmsrgggrstuvwxyzabcdefghnmbjopqrstuz"
		Const NStr= "0123456789"

		For i = 1 to StrLen
    		If i< (StrLen-3)/2 Then
       			strRandom = strRandom & Mid(NStr,RandomNumber(1, Len(NStr)),1)
    		Else
        		strRandom=strRandom & Mid(AStr,RandomNumber(1, Len(AStr)),1)
    		End If
		Next
	  Case "ALPHABETIC"	
		Const ALStr= "abcdefghijklmsrgggrstuvwxyzabcdefghnmbjopqrsyz"
		For i = 1 to StrLen
			Randomize
 		 	strRandom = strRandom & Mid(ALStr,RandomNumber(1, Len(ALStr)),1)
		Next
	End Select
	GenerateRandomString = strRandom
End Function


'''#####################################################################################################################
'@Function Name <gfErrorLog>
'@CreationDate <19/03/2015>
'@Dependency  
'@Author 
'@ModifiedDate
'@ModifiedBy 
'@Description  this function verify the error and log into results 
'@Documentation No input parameter
'''#####################################################################################################################
	public Function gfErrorLog()
		If Err.Number <> 0 then
			'rptWriteReport "Fail", Environment.Value("StepName"), "Error occur while execution:: " & Err.description
''			gErrorFlag = True
			''Err.Clear
		End If	
	End Function
	
'''#####################################################################################################################
'@Function Name <gfGetMonthYear>
'@CreationDate <23/12/2015>
'@Dependency  
'@Author : Sreedhar Metukuru
'@ModifiedDate
'@ModifiedBy 
'@Description  this function return the Current month & Year
'@Documentation No input parameter
'''#####################################################################################################################
Public Function gfGetMonthYear()
	currentDate = Date
    BusinessDayVal =  WeekDayName(WeekDay(currentDate))
    If UCase(Trim(BusinessDayVal)) = "SATURDAY" Then
    	currentDate = currentDate+2
    ElseIf UCase(Trim(BusinessDayVal)) = "SUNDAY" Then
    	currentDate = currentDate+1
    End If	
    
    dDate = Day(currentDate)
    dMonth = Month(currentDate)
    dYear = Year(currentDate)
    
    If Len(dDate) = 1 Then
        dDate = 0&dDate
    End If
    If Len(dMonth) = 1 Then
        dMonth = 0&dMonth
    End If
    strCurDate = dMonth&"/"&dYear
    gfGetMonthYear = strCurDate
    End Function
	
'''#####################################################################################################################
'@Function Name <gfGetYear>
'@CreationDate <21/01/2016>
'@Dependency  
'@Author : Sreedhar Metukuru
'@ModifiedDate
'@ModifiedBy 
'@Description  this function return the Current Year
'@Documentation No input parameter
'''#####################################################################################################################
Public Function gfGetYear()
	currentDate = Date

    dYear = Year(currentDate)
 
    gfGetYear = dYear
    End Function
	

'''#####################################################################################################################
'@Function Name <gfGetNextYear>
'@CreationDate <28/01/2016>
'@Dependency  
'@Author : Sreedhar Metukuru
'@ModifiedDate
'@ModifiedBy 
'@Description  this function return the next Year 
'@Documentation No input parameter
'''#####################################################################################################################
Public Function gfGetNextYear()
	currentDate = Date

    dYear = (Year(currentDate))+1
 
    gfGetNextYear = dYear
    End Function


'''#####################################################################################################################
'@Function Name <gfGetPrevYear>
'@CreationDate <28/01/2016>
'@Dependency  
'@Author : Sreedhar Metukuru
'@ModifiedDate
'@ModifiedBy 
'@Description  this function return the previous Year 
'@Documentation No input parameter
'''#####################################################################################################################
Public Function gfGetPrevYear()
	currentDate = Date

    dYear = (Year(currentDate))-1
 
    gfGetPrevYear = dYear
    End Function

'''#####################################################################################################################
'@Function Name <gfGetDay>
'@CreationDate <28/01/2016>
'@Dependency  
'@Author : Sreedhar Metukuru
'@ModifiedDate
'@ModifiedBy 
'@Description  this function return the current Day 
'@Documentation No input parameter
'''#####################################################################################################################
Public Function gfGetDay()
	currentDate = Date

    dDay = (Day(currentDate))
 
    gfGetDay = dDay
    End Function


'''#####################################################################################################################
'@Function Name <gfGetNextDay>
'@CreationDate <28/01/2016>
'@Dependency  
'@Author : Sreedhar Metukuru
'@ModifiedDate
'@ModifiedBy 
'@Description  this function return the next day 
'@Documentation No input parameter
'''#####################################################################################################################
Public Function gfGetNextDay()
	currentDate = Date

    dDay = (Day(currentDate))+1
 
    gfGetNextDay = dDay
    End Function
    
'''#####################################################################################################################
'@Function Name <gfGetPrevDay>
'@CreationDate <28/01/2016>
'@Dependency  
'@Author : Sreedhar Metukuru
'@ModifiedDate
'@ModifiedBy 
'@Description  this function return the prev day 
'@Documentation No input parameter
'''#####################################################################################################################
Public Function gfGetPrevDay()
	currentDate = Date

    dDay = (Day(currentDate))-1
 
    gfGetPrevDay = dDay
    End Function    

'''#####################################################################################################################
'@Function Name <gfGetCurrentCalendarMonthName>
'@CreationDate <28/01/2016>
'@Dependency  
'@Author : Sreedhar Metukuru
'@ModifiedDate
'@ModifiedBy 
'@Description  this function return the next Year 
'@Documentation No input parameter
'''#####################################################################################################################
Public Function gfGetCurrentCalendarMonthName()
	strMonthName=MonthName(Month(Date))
	
    dMonth= left(strMonthName,3)
 
    gfGetCurrentCalendarMonthName = dMonth
    End Function
	
'''#####################################################################################################################
'@Function Name <gfGetCurrentDate>
'@CreationDate <05/03/2015>
'@Dependency  
'@Author 
'@ModifiedDate
'@ModifiedBy 
'@Description  this function return the Current date
'@Documentation No input parameter
'''#####################################################################################################################
Public Function gfGetCurrentDate()
	currentDate = Date
    BusinessDayVal =  WeekDayName(WeekDay(currentDate))
    If UCase(Trim(BusinessDayVal)) = "SATURDAY" Then
    	currentDate = currentDate+2
    ElseIf UCase(Trim(BusinessDayVal)) = "SUNDAY" Then
    	currentDate = currentDate+1
    End If	
    
    dDate = Day(currentDate)
    dMonth = Month(currentDate)
    dYear = Year(currentDate)
    
    If Len(dDate) = 1 Then
        dDate = 0&dDate
    End If
    If Len(dMonth) = 1 Then
        dMonth = 0&dMonth
    End If
    strCurDate = dMonth&"/"&dDate&"/"&dYear
    gfGetCurrentDate = strCurDate
    End Function

'''#####################################################################################################################
'@Function Name <gfGetDateMonth>
'@CreationDate <05/03/2015>
'@Dependency  
'@Author 
'@ModifiedDate
'@ModifiedBy 
'@Description  this function return the Current date and Month
'@Documentation No input parameter
'''#####################################################################################################################
Public Function gfGetDateMonth()
	currentDate = Date
    BusinessDayVal =  WeekDayName(WeekDay(currentDate))
    If UCase(Trim(BusinessDayVal)) = "SATURDAY" Then
    	currentDate = currentDate+2
    ElseIf UCase(Trim(BusinessDayVal)) = "SUNDAY" Then
    	currentDate = currentDate+1
    End If	
    
    dDate = Day(currentDate)
    dMonth = Month(currentDate)
    dYear = Year(currentDate)
    If Len(dDate) = 1 Then
        dDate = 0&dDate
    End If
    If Len(dMonth) = 1 Then
        dMonth = 0&dMonth
    End If
    strDate = dMonth&"/"&dDate
    gfGetDateMonth= strDate
    End Function
    
'''#####################################################################################################################
'@Function Name <gfGetBiz5Date>
'@CreationDate <05/03/2015>
'@Dependency  
'@Author 
'@ModifiedDate
'@ModifiedBy 
'@Description  this function return the date after 5 Days
'@Documentation No input parameter
'''#####################################################################################################################
Public Function gfGetBiz5Date()
	BizDate = Date+5
    BusinessDayVal =  WeekDayName(WeekDay(BizDate))
    If UCase(Trim(BusinessDayVal)) = "SATURDAY" Then
    	BizDate = BizDate+2
    ElseIf UCase(Trim(BusinessDayVal)) = "SUNDAY" Then
    	BizDate = BizDate+1
    End If
    dDate = Day(BizDate)
    dMonth = Month(BizDate)
    dYear = Year(BizDate)    
    If Len(dDate) = 1 Then
        dDate = 0&dDate
    End If
    If Len(dMonth) = 1 Then
        dMonth = 0&dMonth
    End If
    strDate = dMonth&"/"&dDate&"/"&dYear
    gfGetBiz5Date = strDate
    End Function
    
 '''#####################################################################################################################
'@Function Name <gfGetPastDate>
'@CreationDate <05/03/2015>
'@Dependency  
'@Author 
'@ModifiedDate
'@ModifiedBy 
'@Description  this function return the past date 
'@Documentation No input parameter
'''#####################################################################################################################
Public Function gfGetPastDate()
	PastDate = Date-1
    BusinessDayVal =  WeekDayName(WeekDay(PastDate))
    If UCase(Trim(BusinessDayVal)) = "SATURDAY" Then
    	PastDate = PastDate-1
    ElseIf UCase(Trim(BusinessDayVal)) = "SUNDAY" Then
    	PastDate = PastDate-2
    End If	
    
    dDate = Day(PastDate)
    dMonth = Month(PastDate)
    dYear = Year(PastDate)
    
    If Len(dDate) = 1 Then
        dDate = 0&dDate
    End If
    If Len(dMonth) = 1 Then
        dMonth = 0&dMonth
    End If
    strDate = dMonth&"/"&dDate&"/"&dYear
    gfGetPastDate = strDate
    End Function

 '''#####################################################################################################################
'@Function Name <gfGetNextDate>
'@CreationDate <09/03/2015>
'@Dependency  
'@Author 
'@ModifiedDate
'@ModifiedBy 
'@Description  this function return the Next date 
'@Documentation No input parameter
'''#####################################################################################################################
Public Function gfGetNextDate()
	NextDate = Date+1
    BusinessDayVal =  WeekDayName(WeekDay(NextDate))
    If UCase(Trim(BusinessDayVal)) = "SATURDAY" Then
    	NextDate = NextDate+2
    ElseIf UCase(Trim(BusinessDayVal)) = "SUNDAY" Then
    	NextDate = NextDate+1
    End If	
    
    dDate = Day(NextDate)
    dMonth = Month(NextDate)
    dYear = Year(NextDate)
    If Len(dDate) = 1 Then
        dDate = 0&dDate
    End If
    If Len(dMonth) = 1 Then
        dMonth = 0&dMonth
    End If
    strDate = dMonth&"/"&dDate
    gfGetNextDate = strDate
    End Function



'''#####################################################################################################################
'@Function Name <GenerateRandomNumber>
'@CreationDate <20/03/2015>
'@Dependency  
'@Author 
'@ModifiedDate
'@ModifiedBy 
'@Description  this function is used to create a unique number
'@Documentation No input parameter
'''#####################################################################################################################
Public Function GenerateRandomNumber
    GenerateRandomNumber= Year(Now)&Month(Now)&Day(Now)&Hour(Now)&Minute(Now)&Second(Now)
    GlobalVrDictionaryObj.Add "gUniqueNumber",GenerateRandomNumber
End Function



'''#####################################################################################################################
'@Function Name <gfGetCursorStateID>
'@CreationDate <25-Mar-2015>
'@Dependency  
'@Author <Gallop>
'@ModifiedDate
'@ModifiedBy 
'@Description  This method is used get cursor state id number
'@Documentation <> is input parameters
'''#####################################################################################################################
Public Function gfGetCursorStateID()
    Dim strWindow, iProcessID, iThreadID
    extern.Declare micLong,"GetForegroundWindow","user32.dll","GetForegroundWindow"
    extern.Declare micLong,"AttachThreadInput","user32.dll","AttachThreadInput", micLong, micLong,micLong
    extern.Declare micLong,"GetWindowThreadProcessId","user32.dll","GetWindowThreadProcessId", micLong, micLong
    extern.Declare micLong,"GetCurrentThreadId","kernel32.dll","GetCurrentThreadId"
    extern.Declare micLong,"GetCursor","user32.dll","GetCursor"   
    'Gets foreground window
    strWindow = extern.GetForegroundWindow()
    'Gets the window process ID
    iProcessID = extern.GetWindowThreadProcessId(strWindow, NULL)
    'Gets the process Thread ID
    iThreadID = extern.GetCurrentThreadId()
    'Áttaches the input thread
    extern.AttachThreadInput iProcessID,iThreadID,True
    'Gets the cursor thread ID and Returns the value
    gfGetCursorStateID = extern.GetCursor()
    'Releases the attached thread 
    extern.AttachThreadInput iProcessID,iThreadID,False
End Function



'***************************************************************************************************************************************************************
'Script			: KillReqdProcess
'Script Desc	: Kills all the processes listed
'Parameters		: N/A
'***************************************************************************************************************************************************************
Function KillReqdProcess(ProcessNames)
	'Get Current User Logged In
	Set objNetwork = Wscript.CreateObject("Wscript.Network")
	currUser = objNetwork.UserName
	strComputer = "."
	Set objWMIService = GetObject("winmgmts:" _
	& "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")
	KillProcess = Split(ProcessNames,"|")
	For x = 0 to  Ubound(KillProcess)
		Set colProcessList = objWMIService.ExecQuery("SELECT * FROM Win32_Process WHERE Name ='"& KillProcess(x) &"'")
		For Each objProcess in colProcessList
			objProcess.Terminate()			
		Next
	Next	
End Function 
