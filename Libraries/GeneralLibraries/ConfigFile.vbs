
''****************************************************************************************************************
''Wait values
''****************************************************************************************************************
MinWait = 5
MediumWait = 20
MaxWait = 40   ''60

Set XLObj = CreateObject("Excel.Application")
Set fso = CreateObject("Scripting.FileSystemObject")

''****************************************************************************************************************
''Dictionary Objects
''****************************************************************************************************************
Set KWDicObj = CreateObject("Scripting.Dictionary")
Set CompDicObj = CreateObject("Scripting.Dictionary")
Set CompCntDicObj = CreateObject("Scripting.Dictionary")
Set Global_DictionaryObj = CreateObject("Scripting.Dictionary")
Set GlobalVrDictionaryObj = CreateObject("Scripting.Dictionary")

''****************************************************************************************************************
''Environment Variables
''****************************************************************************************************************
sBaseDir = Environment.Value("vBaseDir")
vBaseDir = Environment.Value("vBaseDir")
sTestSuitePath = sBaseDir & Environment.Value("sTestSuitePath")
sTestCasesPath = sBaseDir & Environment.Value("sTestCasesPath")
sComponentsPath = sBaseDir & Environment.Value("sComponentsPath")
sTestDataPath = sBaseDir & Environment.Value("sTestDataPath")
sTestResultsPath = sBaseDir & Environment.Value("sTestResultsPath")
sORPath = sBaseDir & Environment.Value("sORPath")
sTestSuiteSheet = Environment.Value("sTestSuiteSheet")
sTestCaseSheet = Environment.Value("sTestCaseSheet")
sComponentSheet = Environment.Value("sComponentSheet")
sTestDataSheet = Environment.Value("sTestDataSheet")
sTestParamSheet = Environment.Value("sTestParamSheet")
gAppURL = Environment.Value("URL")
gBrowserIE = Environment.Value("IE")
gBrowserChrome = Environment.Value("Chrome")
gBrowserFF = Environment.Value("FF")

Environment.Value("ResultsHTMLPath") = sTestResultsPath & "HTML\"


cTestSuiteDir = vBaseDir & "\Test Suites\"
cTestCaseDir = vBaseDir & "\Test Cases\"
cComponentDir = vBaseDir & "\Components\"
cTestResultsDir = vBaseDir & "\Test Results\"
ResultsHTMLPath = vBaseDir & "\Test Results\"
gTestDir = sBaseDir
strResultsPath = gTestDir & "Test Results"
gErrorFlag = False
