''**********Initializing the folder paths to respective variables**********
filename = "TestSuite.xlsm"
vLogDir = vBaseDir & "\Test Suites\"
vDriverScriptDir = vBaseDir & "\Drivers\"                		'Location of all the Driver scripts
vLibLocation = vBaseDir & "\Libraries\"          	'Location of all the General Library files
vSpefLibLocation = vBaseDir & "\Libraries\SpecificLibraries\"      'Location of all the Specific Libraried related to the Driver scripts
DSfilePath = vBaseDir & "\"																					'Location of the script file. OR and TestData path will be retrieved.
TestExecResultsPath = vBaseDir & "\Test Results\"                 		'Location of Output Results
vScriptLogDir = vLogDir & "ScriptLogs\"                          								'Location of ScriptLog Report files
vScrExecDir = TestExecResultsPath & "Result Logfiles\"
vScrBkpExecDir = vBaseDir & "\BackUp\"
vExecRecordLoc = TestExecResultsPath & "Recorded Execution Results\"
vRecoveryScn1 = vBaseDir & "\Recovery Scenarios\"
vErrorScreenShots = TestExecResultsPath & "ScreenShots\"
ImageFolderPath = vBaseDir & "\Images\"
ImageFilePath = vBaseDir & "\ControlFiles\Images.xls"
ProcessScriptLogPath = vBaseDir & "\ControlFiles\ScriptLogs\ProcessScriptLogs\"
'Set Global_DictionaryObj = CreateObject("Scripting.Dictionary")
'ResultsHTMLPath = vBaseDir & "\Test Results\"
'Set XLObj = CreateObject("Excel.Application")