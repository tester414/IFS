''###################################################################################################
''Function Name : RequiredErrors
''Description : Validate Required Errors
''Author : Gallop
''###################################################################################################
Public Function RequiredErrors
Environment.Value("StepName") = "RequiredErrors"
	Browser("Check Boxes").Page("Check Boxes").WebButton("BTN_CHKBX_Next").ClickObject 
	Browser("Check Boxes").Page("Check Boxes").WebElement("LBL_CheckBoxesExpanded").VerifyExists 
	Browser("Check Boxes").Page("Check Boxes").WebElement("LBL_CheckBoxesExpanded").CheckGroupStatus 
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxOneColumnReqd").VerifyMandatoryMessage "Selection required"
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxTwoColumnReqd").VerifyMandatoryMessage "Selection required"
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxGroupOneColumnReqd").VerifyMandatoryMessage "Selection required"
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxTwoColumnReqd").VerifyMandatoryMessage "Selection required"
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxOneColumnReqd").VerifyRequiredIcon "innerhtml"
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxTwoColumnReqd").VerifyRequiredIcon "innerhtml"
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxGroupOneColumnReqd").VerifyRequiredIcon "innerhtml"

End Function
''###################################################################################################
''Function Name : CurrencyMinMaxValidation
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function CurrencyMinMaxValidation
Environment.Value("StepName") = "CurrencyMinMaxValidation"
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyOneColumn").EnterText dtScenario.value("CurrencyOneColumn")
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyOneColumn2").EnterText dtScenario.value("CurrencyOneColumn2")
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyWholeOneColumn").EnterText dtScenario.value("CurrencyWholeOneColumn")
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyWholeTwoColumn").EnterText dtScenario.value("CurrencyWholeTwoColumn")
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyFormattedOneColumn").EnterText dtScenario.value("CurrencyFormattedOneColumn")
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyFormattedTwoColumn").EnterText dtScenario.value("CurrencyFormattedTwoColumn")
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyTruncateOneColumn").EnterText dtScenario.value("CurrencyTruncateOneColumn")
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyTruncateTwoColumn").EnterText dtScenario.value("CurrencyTruncateTwoColumn")
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyTruncateMinMax").EnterText dtScenario.value("CurrencyTruncateMinMax")
	Browser("Currency").Page("Currency").WebButton("BTN_Next").ClickObject 
	Browser("Currency").Page("Currency").WebElement("TWL_CurrencyFormattedOneColumn").VerifyMandatoryMessage "Entry must be 5 or greater"
	Browser("Currency").Page("Currency").WebElement("TWL_Currency Truncate One").VerifyMandatoryMessage "Entry cannot exceed 60"
	Browser("Currency").Page("Currency").WebElement("TWL_TwoColumnCurrencyTruncate").VerifyMandatoryMessage "Entry cannot exceed 123"
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyFormattedOneColumn").EnterText dtScenario.value("CurrencyFormattedOneColumnCorrectValue")
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyTruncateOneColumn").EnterText dtScenario.value("CurrencyTruncateOneColumnCorrectValue")
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyTruncateTwoColumn").EnterText dtScenario.value("CurrencyTruncateTwoColumnCorrectValue")
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyFormattedTwoColumn").ClickObject 
	Browser("Currency").Page("Currency").WebElement("TWL_CurrencyFormattedOneColumn").VerifyMessageNotExists "Entry must be 5 or greater"
	Browser("Currency").Page("Currency").WebElement("TWL_Currency Truncate One").VerifyMessageNotExists "Entry cannot exceed 60"
	Browser("Currency").Page("Currency").WebElement("TWL_TwoColumnCurrencyTruncate").VerifyMessageNotExists "Entry cannot exceed 123"
End Function
''###################################################################################################
''Function Name : CurrencyRequiredErrors
''Description : Currency - required fields throw an error
''Author : Gallop
''###################################################################################################
Public Function CurrencyRequiredErrors
Environment.Value("StepName") = "CurrencyRequiredErrors"
	Browser("Currency").Page("Currency").WebElement("LBL_Currency").VerifyPageName 
	Browser("Currency").Page("Currency").WebButton("BTN_Next").ClickObject 
	Browser("Currency").Page("Currency").WebElement("TWL_CurrencyOneColumn").VerifyMandatoryMessage "Entry must be 5 or greater"
	Browser("Currency").Page("Currency").VerifyMandatoryMessage "This is a required field"
	Browser("Currency").Page("Currency").WebElement("TWL_CurrencyWholeTwoColumn").VerifyMandatoryMessage "This is a required field"
	Browser("Currency").Page("Currency").WebElement("TWL_CurrencyFormattedOneColumn").VerifyMandatoryMessage "This is a required field"
	Browser("Currency").Page("Currency").WebElement("TWL_CurrencyTruncateOneColumn").VerifyMandatoryMessage "Entry must be 6 or greater"
	Browser("Currency").Page("Currency").WebElement("TWL_TwoColumnCurrencyTruncate").VerifyMandatoryMessage "Entry must be 5 or greater"
	Browser("Currency").Page("Currency").WebElement("TWL_CurrencyTruncateTestMinMax").VerifyMandatoryMessage "Entry must be 1 or greater"

End Function
''###################################################################################################
''Function Name : CurrencyTruncateValidation
''Description : Verify Currency Truncate Test Min/Max field
''Author : Gallop
''###################################################################################################
Public Function CurrencyTruncateValidation
Environment.Value("StepName") = "CurrencyTruncateValidation"
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyOneColumn").EnterText dtScenario.value("CurrencyOneColumn")
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyOneColumn2").EnterText dtScenario.value("CurrencyOneColumn2")
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyWholeOneColumn").EnterText dtScenario.value("CurrencyWholeOneColumn")
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyWholeTwoColumn").EnterText dtScenario.value("CurrencyWholeTwoColumn")
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyFormattedOneColumn").EnterText dtScenario.value("CurrencyFormattedOneColumn")
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyFormattedTwoColumn").EnterText dtScenario.value("CurrencyFormattedTwoColumn")
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyTruncateOneColumn").EnterText dtScenario.value("CurrencyTruncateOneColumn")
	Browser("Currency").Page("Currency").WebEdit("TXT_TwoColumnCurrencyTruncate").EnterText dtScenario.value("CurrencyTruncateTwoColumn")
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyTruncateMinMax").EnterText dtScenario.value("CurrencyTruncateMinMax")
	Browser("Currency").Page("Currency").WebButton("BTN_Next").ClickObject 
	Browser("Currency").Page("Currency").WebElement("TWL_CurrencyTruncateTestMinMax").VerifyMandatoryMessage "Entry cannot exceed 5"
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyTruncateMinMax").ClearText 
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyTruncateMinMax").TypeText dtScenario.value("TruncateUpdateValue")
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyTruncateTwoColumn").ClickObject 
	Browser("Currency").Page("Currency").WebElement("TWL_CurrencyTruncateTestMinMax").VerifyMessageNotExists "Entry cannot exceed 5"
End Function
''###################################################################################################
''Function Name : FillDataInCurrency
''Description : Fill in data in Currency
''Author : Chris Jarrell
''###################################################################################################
Public Function FillDataInCurrency
Environment.Value("StepName") = "FillDataInCurrency"
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyOneColumn2").EnterText dtScenario.value("CurrencyOneColumn2")
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyWholeOneColumn").EnterText dtScenario.value("CurrencyWholeOneColumn")
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyWholeTwoColumn").EnterText dtScenario.value("CurrencyWholeTwoColumn")
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyFormattedOneColumn").EnterText dtScenario.value("CurrencyFormattedOneColumn")
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyFormattedTwoColumn").EnterText dtScenario.value("CurrencyFormattedTwoColumn")
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyTruncateOneColumn").EnterText dtScenario.value("CurrencyTruncateOneColumn")
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyTruncateTwoColumn").EnterText dtScenario.value("CurrencyTruncateTwoColumn")
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyTruncateMinMax").EnterText dtScenario.value("CurrencyTruncateMinMax")
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyOneColumn").EnterText dtScenario.value("CurrencyOneColumn")
End Function
''###################################################################################################
''Function Name : VerifyHelpPopUpAndContentInCurrency
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyHelpPopUpAndContentInCurrency
Environment.Value("StepName") = "VerifyHelpPopUpAndContentInCurrency"
	Browser("Currency").Page("Currency").WebElement("HLP_OneColumn").ClickObject 
	Browser("Help").Page("Help").WebElement("LBL_HelpHeader").VerifyPageName 
	Browser("Help").Page("Help").WebElement("LBL_HelpHeader").VerifyHelpHeader "Currency"
	Browser("Help").Page("Help").VerifyHelpContent "QA Testing for help text."
	Browser("Help").Page("Help").WebButton("BTN_Close").VerifyExists 
	Browser("Help").Page("Help").WebButton("BTN_Close").ClickObject 
	Browser("Currency").Page("Currency").WebElement("HLP_Whole").ClickObject 
	Browser("Help").Page("Help").WebElement("LBL_HelpHeader").VerifyPageName 
	Browser("Help").Page("Help").WebElement("LBL_HelpHeader").VerifyHelpHeader "Currency"
	Browser("Help").Page("Help").WebButton("BTN_Close").VerifyExists 
	Browser("Help").Page("Help").WebButton("BTN_Close").ClickObject 
	Browser("Currency").Page("Currency").WebElement("HLP_Formatted").ClickObject 
	Browser("Help").Page("Help").WebElement("LBL_HelpHeader").VerifyPageName 
	Browser("Help").Page("Help").WebElement("LBL_HelpHeader").VerifyHelpHeader "Currency"
	Browser("Help").Page("Help").WebButton("BTN_Close").VerifyExists 
	Browser("Help").Page("Help").WebButton("BTN_Close").ClickObject 
	Browser("Currency").Page("Currency").WebElement("HLP_Truncate").ClickObject 
	Browser("Help").Page("Help").WebElement("LBL_HelpHeader").VerifyPageName 
	Browser("Help").Page("Help").WebElement("LBL_HelpHeader").VerifyHelpHeader "Currency"
	Browser("Help").Page("Help").WebButton("BTN_Close").VerifyExists 
	Browser("Help").Page("Help").WebButton("BTN_Close").ClickObject 

End Function
''###################################################################################################
''Function Name : VerifyMessagesInCurrency
''Description : 
''Author : Tirupathi
''###################################################################################################
Public Function VerifyMessagesInCurrency
Environment.Value("StepName") = "VerifyMessagesInCurrency"
	Browser("Currency").Page("Currency").WebButton("BTN_Next").ClickObject 
	Browser("Currency").Page("Currency").WebElement("TWL_Currency One Column").VerifyMandatoryMessage "Entry must be 5 or greater"
	Browser("Currency").Page("Currency").WebElement("TWL_Currency Whole Number").VerifyMandatoryMessage "This is a required field"
	Browser("Currency").Page("Currency").VerifyMandatoryMessage "This is a required field"
	Browser("Currency").Page("Currency").WebElement("TWL_Currency Formatted One").VerifyMandatoryMessage "This is a required field"
	Browser("Currency").Page("Currency").WebElement("TWL_Currency Truncate One").VerifyMandatoryMessage "Entry must be 6 or greater"
	Browser("Currency").Page("Currency").WebElement("TWL_Two Column Currency Truncate").VerifyMandatoryMessage "Entry must be 5 or greater"
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyTruncateOneColumn2").ClickObject 
	Browser("Currency").Page("Currency").WebElement("TWL_CurrencyTruncateTestMinMax").VerifyMandatoryMessage "Entry must be 1 or greater"

End Function
''###################################################################################################
''Function Name : VerifyReadOnlyFields
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyReadOnlyFields
Environment.Value("StepName") = "VerifyReadOnlyFields"
	Browser("Currency").Page("Currency").WebElement("RWL_ReadOnly1").VerifyDisplayedText "$5,467.23"
	Browser("Currency").Page("Currency").WebElement("RWL_ReadOnly2").VerifyDisplayedText "$332,333.44"
End Function
''###################################################################################################
''Function Name : VerifyReadOnlyValuesInCurrency
''Description : test desc
''Author : Chris Jarrell
''###################################################################################################
Public Function VerifyReadOnlyValuesInCurrency
Environment.Value("StepName") = "VerifyReadOnlyValuesInCurrency"
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyOneColumn").ClickObject 
	Browser("Currency").Page("Currency").WebElement("TWL_Currency One Column").VerifyMessageNotExists "This is a required field"
	Browser("Currency").Page("Currency").WebElement("TWL_Currency One Column 2").VerifyMessageNotExists "This is a required field"
	Browser("Currency").Page("Currency").WebElement("TWL_Currency Whole Number").VerifyMessageNotExists "This is a required field"
	Browser("Currency").Page("Currency").VerifyMessageNotExists "This is a required field"
	Browser("Currency").Page("Currency").WebElement("TWL_Currency Formatted One").VerifyMessageNotExists "This is a required field"
	Browser("Currency").Page("Currency").WebElement("TWL_Currency Truncate One").VerifyMessageNotExists "This is a required field"
	Browser("Currency").Page("Currency").WebElement("TWL_Two Column Currency Truncate").VerifyMessageNotExists "This is a required field"
	Browser("Currency").Page("Currency").VerifyMessageNotExists "This is a required field"
	Browser("Currency").Page("Currency").WebButton("BTN_Next").ClickObject 
	Browser("Currency Read Only").Page("Currency Read Only").WebElement("RWL_Currency One Column").VerifyExists 
	Browser("Currency Read Only").Page("Currency Read Only").WebElement("RWL_Currency One Column").VerifyDisplayedText dtScenario.value("CurrencyOneColumn")
	Browser("Currency Read Only").Page("Currency Read Only").WebElement("RWL_Currency One Column 2").VerifyDisplayedText dtScenario.value("CurrencyOneColumn2")
	Browser("Currency Read Only").Page("Currency Read Only").VerifyDisplayedText dtScenario.value("CurrencyWholeOneColumn")
	Browser("Currency Read Only").Page("Currency Read Only").VerifyDisplayedText dtScenario.value("CurrencyWholeTwoColumn")
	Browser("Currency Read Only").Page("Currency Read Only").WebElement("RWL_Currency Formatted One").VerifyDisplayedText dtScenario.value("CurrencyFormattedOneColumn")
	Browser("Currency Read Only").Page("Currency Read Only").WebElement("RWL_Currency Formatted Two").VerifyDisplayedText dtScenario.value("CurrencyFormattedTwoColumn")
	Browser("Currency Read Only").Page("Currency Read Only").WebElement("RWL_Currency Truncate One").VerifyDisplayedText dtScenario.value("CurrencyTruncateOneColumn")
	Browser("Currency Read Only").Page("Currency Read Only").VerifyDisplayedText dtScenario.value("CurrencyTruncateTwoColumn")
	Browser("Currency Read Only").Page("Currency Read Only").WebElement("RWL_CurrencyTruncateTestMinMax").VerifyDisplayedText dtScenario.value("CurrencyTruncateMinMax")

End Function
''###################################################################################################
''Function Name : VerifyToolTipInOneColumnCurrency
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyToolTipInOneColumnCurrency
Environment.Value("StepName") = "VerifyToolTipInOneColumnCurrency"
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyOneColumn").VerifyExists 
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyOneColumn").VerifyToolTip "ToolTip for Currency"
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyWholeOneColumn").VerifyExists 
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyWholeOneColumn").VerifyToolTip "Tooltip for a whole number."
End Function
''###################################################################################################
''Function Name : ValidateBizDateMin2Max5
''Description : Validating Biz Date Min 2 Max 5 Coloumn
''Author : Gallop
''###################################################################################################
Public Function ValidateBizDateMin2Max5
Environment.Value("StepName") = "ValidateBizDateMin2Max5"
	Browser("Dates").Page("Dates").WebElement("DTL_BizDate1ColMin2Max5").ClickOnCalenderIcon 
	Browser("Dates").Page("Dates").Link("LNK_CalendarRightArrowIcon").VerifyCalenderNavigation "Not Movable"
	Browser("Dates").Page("Dates").Link("LNK_CalendarLeftArrowIcon").VerifyCalenderNavigation "Not Movable"
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarDates").VerifyBizDate1ColMin2Max5 
	Browser("Dates").Page("Dates").WebEdit("TXT_DateOneColoumnRequired").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateOneColoumnRequired2").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateTwoColumnRequired").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_BusinessDateOneColumnRequired2").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_TwoColumnBusinessDate").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_BusinessDateMinTest").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_BusinessDateMaxTest1").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonthDayOneColumn").EnterText gfGetDateMonth
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonthDayOneColumn2").EnterText gfGetDateMonth
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonthDayTwoColumn").EnterText gfGetDateMonth
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonth/YearOneColumn").TypeText gfGetMonthYear
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonth/YearMinSizeZero").TypeText gfGetMonthYear
	Browser("Dates").Page("Dates").WebEdit("TXT_Month/YearMin/MaxTest-MaxSize1").TypeText gfGetMonthYear
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonth/DayMinTest1").TypeText gfGetMonthYear
	Browser("Dates").Page("Dates").WebEdit("TXT_BirthdayOneColumnRequired").TypeText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_BirthDayOneColumnRequired2").TypeText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMin/MaxTestMaxSize1").TypeText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_BizDate1ColMin2Max5").TypeText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMinMaxTestMaxSize1").TypeText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMinMaxTestMaxSize0").TypeText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebButton("BTN_Next").ClickObject 
	Browser("Dates").Page("Dates").WebElement("DTL_BizDate1ColMin2Max5").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").WebElement("DTL_BizDate1ColMin2Max5").VerifyMandatoryMessage "Date must be on or after"
	Browser("Dates").Page("Dates").WebEdit("TXT_BizDate1ColMin2Max5").ClickObject 
	Browser("Dates").Page("Dates").WebEdit("TXT_BizDate1ColMin2Max5").ClearText 
	Browser("Dates").Page("Dates").WebEdit("TXT_BizDate1ColMin2Max5").TypeText gfGetBiz5Date
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMinMaxTestMaxSize1").ClearText 
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMinMaxTestMaxSize1").TypeText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMinMaxTestMaxSize0").ClearText 
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMinMaxTestMaxSize0").TypeText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebButton("BTN_Next").ClickObject 

End Function
''###################################################################################################
''Function Name : ValidateBusinessDateMaxTest1
''Description :  verify the calendar can be moved to previous months(s) but cannot be advanced any further than current month inBusiness Date Max Test 1 Field
''Author : Gallop
''###################################################################################################
Public Function ValidateBusinessDateMaxTest1
Environment.Value("StepName") = "ValidateBusinessDateMaxTest1"
	Browser("Dates").Page("Dates").WebElement("DTL_BusinessDateMaxTest1").ClickOnCalenderIcon 
	Browser("Dates").Page("Dates").Link("LNK_CalendarLeftArrowIcon").VerifyCalenderNavigation "Movable"
	Browser("Dates").Page("Dates").Link("LNK_CalendarRightArrowIcon").VerifyCalenderNavigation "Not Movable"
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarDates").VerifyOneDayLaterCurrentDatesNotShownInCalendar 
	Browser("Dates").Page("Dates").WebEdit("TXT_DateOneColoumnRequired").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateOneColoumnRequired2").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateTwoColumnRequired").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_BusinessDateOneColumnRequired2").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_TwoColumnBusinessDate").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_BizDate1ColMin2Max5").EnterText gfGetBiz5Date
	Browser("Dates").Page("Dates").WebEdit("TXT_BusinessDateMinTest").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMinMaxTestMaxSize0").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMinMaxTestMaxSize1").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonthDayOneColumn").EnterText gfGetDateMonth
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonthDayOneColumn2").EnterText gfGetDateMonth
	Browser("Dates").Page("Dates").WebEdit("TXT_BusinessDateMaxTest1").TypeText gfGetBiz5Date
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonthDayTwoColumn").EnterText gfGetDateMonth
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonth/YearOneColumn").TypeText gfGetMonthYear
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonth/YearMinSizeZero").TypeText gfGetMonthYear
	Browser("Dates").Page("Dates").WebEdit("TXT_Month/YearMin/MaxTest-MaxSize1").TypeText gfGetMonthYear
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonth/DayMinTest1").TypeText gfGetMonthYear
	Browser("Dates").Page("Dates").WebEdit("TXT_BirthdayOneColumnRequired").TypeText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_BirthDayOneColumnRequired2").TypeText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMin/MaxTestMaxSize1").TypeText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebButton("BTN_Next").ClickObject 
	Browser("Dates").Page("Dates").WebElement("DTL_BusinessDateMaxTest1").VerifyMandatoryMessage "Date must be on or before"
	Browser("Dates").Page("Dates").WebEdit("TXT_BusinessDateMaxTest1").ClearText 
	Browser("Dates").Page("Dates").WebEdit("TXT_BusinessDateMaxTest1").TypeText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebButton("BTN_Next").ClickObject 

End Function
''###################################################################################################
''Function Name : ValidateDateMonthDayOneColumn
''Description : Validate Date Month/Day One Column in the "Date (Month/Day Only) Question Group".
''Author : Gallop
''###################################################################################################
Public Function ValidateDateMonthDayOneColumn
Environment.Value("StepName") = "ValidateDateMonthDayOneColumn"
	Browser("Dates").Page("Dates").WebEdit("TXT_DateOneColoumnRequired").TypeText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateOneColoumnRequired2").TypeText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateTwoColumnRequired").TypeText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMinMaxTestMaxSize0").TypeText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMinMaxTestMaxSize1").TypeText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebElement("DTL_DateMonth/DayOneColumn").ClickOnCalenderIcon 
	Browser("Dates").Page("Dates").Link("LNK_CalendarRightArrowIcon").VerifyCalenderNavigation "Movable"
	Browser("Dates").Page("Dates").Link("LNK_CalendarLeftArrowIcon").VerifyCalenderNavigation "Movable"
	Browser("Dates").Page("Dates").WebEdit("TXT_BizDate1ColMin2Max5").EnterText gfGetBiz5Date
	Browser("Dates").Page("Dates").WebEdit("TXT_BusinessDateOneColumnRequired2").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_TwoColumnBusinessDate").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_BusinessDateMinTest").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_BusinessDateMaxTest1").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonthDayOneColumn").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonthDayOneColumn2").EnterText gfGetDateMonth
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonthDayTwoColumn").EnterText gfGetDateMonth
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonth/YearOneColumn").TypeText gfGetMonthYear
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonth/YearMinSizeZero").TypeText gfGetMonthYear
	Browser("Dates").Page("Dates").WebEdit("TXT_Month/YearMin/MaxTest-MaxSize1").TypeText gfGetMonthYear
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonth/DayMinTest1").TypeText gfGetMonthYear
	Browser("Dates").Page("Dates").WebEdit("TXT_BirthdayOneColumnRequired").TypeText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_BirthDayOneColumnRequired2").TypeText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMin/MaxTestMaxSize1").TypeText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebButton("BTN_Next").ClickObject 
	Browser("Dates Read Only").Page("Dates Read Only").WebElement("RWL_DateMonth/DayOneColumn").VerifyDisplayedText gfGetDateMonth

End Function
''###################################################################################################
''Function Name : ValidateDateReqdFieldErrors
''Description : Validating Mandatory Fields
''Author : Gallop
''###################################################################################################
Public Function ValidateDateReqdFieldErrors
Environment.Value("StepName") = "ValidateDateReqdFieldErrors"
	Browser("Dates").Page("Dates").WebButton("BTN_Next").ClickObject 
	Browser("Dates").Page("Dates").WebElement("DTL_DateOneColumnRequired").VerifyMandatoryMessage "This is a required field"
	Browser("Dates").Page("Dates").WebElement("DTL_DateOneColumnRequired2").VerifyMandatoryMessage "This is a required field"
	Browser("Dates").Page("Dates").WebElement("DTL_DateTwoColumnRequired").VerifyMandatoryMessage "This is a required field"
	Browser("Dates").Page("Dates").WebElement("DTL_BizDate1ColMin2Max5").VerifyMandatoryMessage "This is a required field"
	Browser("Dates").Page("Dates").WebElement("DTL_BusinessDateOneColumnRequired2").VerifyMandatoryMessage "This is a required field"
	Browser("Dates").Page("Dates").WebElement("DTL_TwoColumnBusinessDate").VerifyMandatoryMessage "This is a required field"
	Browser("Dates").Page("Dates").WebElement("DTL_BusinessDateMinTest").VerifyMandatoryMessage "This is a required field"
	Browser("Dates").Page("Dates").WebElement("DTL_BusinessDateMaxTest1").VerifyMandatoryMessage "This is a required field"
	Browser("Dates").Page("Dates").WebElement("DTL_DateMonth/DayOneColumn").VerifyMandatoryMessage "This is a required field"
	Browser("Dates").Page("Dates").WebElement("DTL_DateMonth/DayOneColumn2").VerifyMandatoryMessage "This is a required field"
	Browser("Dates").Page("Dates").WebElement("DTL_DateMonth/DayTwoColumn").VerifyMandatoryMessage "This is a required field"
End Function
''###################################################################################################
''Function Name : ValidateDatesinReadonlyPage
''Description : It Verifies whether the dates are displayed in read only page
''Author : Gallop
''###################################################################################################
Public Function ValidateDatesinReadonlyPage
Environment.Value("StepName") = "ValidateDatesinReadonlyPage"
	Browser("Dates Read Only").Page("Dates Read Only").WebElement("RWL_DateOneColumnRequired").VerifyDisplayedText gfGetCurrentDate
	Browser("Dates Read Only").Page("Dates Read Only").WebElement("RWL_DateOneColumnRequired2").VerifyDisplayedText gfGetCurrentDate
	Browser("Dates Read Only").Page("Dates Read Only").WebElement("RWL_DateTwoColumnRequired").VerifyDisplayedText gfGetCurrentDate
	Browser("Dates Read Only").Page("Dates Read Only").WebElement("RWL_DateMin/MaxTest-MaxSize1").VerifyDisplayedText gfGetCurrentDate
	Browser("Dates Read Only").Page("Dates Read Only").WebElement("RWL_DateMin/MaxTest-MinSize0").VerifyDisplayedText gfGetCurrentDate
	Browser("Dates Read Only").Page("Dates Read Only").WebElement("RWL_BizDate1ColMin2Max5").VerifyDisplayedText gfGetBiz5Date
	Browser("Dates Read Only").Page("Dates Read Only").WebElement("RWL_BusinessDateOneColumnRequired2").VerifyDisplayedText gfGetCurrentDate
	Browser("Dates Read Only").Page("Dates Read Only").WebElement("RWL_TwoColumnBusinessDate").VerifyDisplayedText gfGetCurrentDate
	Browser("Dates Read Only").Page("Dates Read Only").WebElement("RWL_BusinessDateMinTest").VerifyDisplayedText gfGetCurrentDate
	Browser("Dates Read Only").Page("Dates Read Only").WebElement("RWL_BusinessDateMaxTest").VerifyDisplayedText gfGetCurrentDate
	Browser("Dates Read Only").Page("Dates Read Only").WebElement("RWL_DateMonth/DayOneColumn").VerifyDisplayedText gfGetDateMonth
	Browser("Dates Read Only").Page("Dates Read Only").WebElement("RWL_DateMonth/DayOneColumn2").VerifyDisplayedText gfGetDateMonth
	Browser("Dates Read Only").Page("Dates Read Only").WebElement("RWL_DateMonth/DayTwoColumn").VerifyDisplayedText gfGetDateMonth
End Function
''###################################################################################################
''Function Name : ValidateMinMaxTestMaxSize1
''Description :  verify the calendar can be moved to previous months(s) but cannot be advanced any further than current month in MInMax Test Max Size 1 Field
''Author : Gallop
''###################################################################################################
Public Function ValidateMinMaxTestMaxSize1
Environment.Value("StepName") = "ValidateMinMaxTestMaxSize1"
	Browser("Dates").Page("Dates").WebElement("DTL_DateMin/MaxTest-MaxSize1").ClickOnCalenderIcon 
	Browser("Dates").Page("Dates").Link("LNK_CalendarLeftArrowIcon").VerifyCalenderNavigation "Movable"
	Browser("Dates").Page("Dates").Link("LNK_CalendarRightArrowIcon").VerifyCalenderNavigation "Not Movable"
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarDates").VerifyOneDayLaterCurrentDatesNotShownInCalendar 
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMinMaxTestMaxSize1").EnterText gfGetBiz5Date
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMinMaxTestMaxSize0").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_BizDate1ColMin2Max5").EnterText gfGetBiz5Date
	Browser("Dates").Page("Dates").WebEdit("TXT_DateOneColoumnRequired").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateOneColoumnRequired2").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateTwoColumnRequired").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_BusinessDateOneColumnRequired2").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_TwoColumnBusinessDate").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_BusinessDateMinTest").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_BusinessDateMaxTest1").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonthDayOneColumn").TypeText gfGetDateMonth
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonthDayOneColumn2").TypeText gfGetDateMonth
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonthDayTwoColumn").TypeText gfGetDateMonth
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonth/YearOneColumn").TypeText gfGetMonthYear
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonth/YearMinSizeZero").EnterText gfGetMonthYear
	Browser("Dates").Page("Dates").WebEdit("TXT_Month/YearMin/MaxTest-MaxSize1").EnterText gfGetMonthYear
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonth/DayMinTest1").EnterText gfGetMonthYear
	Browser("Dates").Page("Dates").WebEdit("TXT_BirthdayOneColumnRequired").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_BirthDayOneColumnRequired2").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMin/MaxTestMaxSize1").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebButton("BTN_Next").ClickObject 
	Browser("Dates").Page("Dates").WebElement("DTL_DateMin/MaxTest-MaxSize1").VerifyMandatoryMessage "Entry must be on or before "
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMinMaxTestMaxSize1").ClearText 
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMinMaxTestMaxSize1").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebButton("BTN_Next").ClickObject 

End Function
''###################################################################################################
''Function Name : ValidateMinMaxTestMinSize0
''Description : Verifying calender,previous and next month arrows,previous date validation in Min Max Test Min Size 0 field
''Author : Gallop
''###################################################################################################
Public Function ValidateMinMaxTestMinSize0
Environment.Value("StepName") = "ValidateMinMaxTestMinSize0"
	Browser("Dates").Page("Dates").WebElement("DTL_DateMin/MaxTest-MaxSize0").ClickOnCalenderIcon 
	Browser("Dates").Page("Dates").Link("LNK_CalendarLeftArrowIcon").VerifyCalenderNavigation "Not Movable"
	Browser("Dates").Page("Dates").Link("LNK_CalendarRightArrowIcon").VerifyCalenderNavigation "Movable"
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarDates").VerifyPreviousDateNotShownInCalendar 
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMinMaxTestMaxSize0").EnterText gfGetPastDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMinMaxTestMaxSize1").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_BizDate1ColMin2Max5").EnterText gfGetBiz5Date
	Browser("Dates").Page("Dates").WebEdit("TXT_DateOneColoumnRequired").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateOneColoumnRequired2").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateTwoColumnRequired").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_BusinessDateOneColumnRequired2").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_TwoColumnBusinessDate").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_BusinessDateMinTest").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_BusinessDateMaxTest1").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonthDayOneColumn").EnterText gfGetDateMonth
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonthDayOneColumn2").EnterText gfGetDateMonth
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonthDayTwoColumn").EnterText gfGetDateMonth
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonth/YearOneColumn").TypeText gfGetMonthYear
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonth/YearMinSizeZero").TypeText gfGetMonthYear
	Browser("Dates").Page("Dates").WebEdit("TXT_Month/YearMin/MaxTest-MaxSize1").TypeText gfGetMonthYear
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonth/DayMinTest1").TypeText gfGetMonthYear
	Browser("Dates").Page("Dates").WebEdit("TXT_BirthdayOneColumnRequired").TypeText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_BirthDayOneColumnRequired2").TypeText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMin/MaxTestMaxSize1").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebButton("BTN_Next").ClickObject 
	Browser("Dates").Page("Dates").WebElement("DTL_DateMin/MaxTest-MaxSize0").VerifyMandatoryMessage "Date entry must be on or after "
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMinMaxTestMaxSize0").ClearText 
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMinMaxTestMaxSize0").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebButton("BTN_Next").ClickObject 

End Function
''###################################################################################################
''Function Name : VerifyDateMonthDayMinTest1
''Description : Verifying the Date Month Day Min Test 1
''Author : Gallop
''###################################################################################################
Public Function VerifyDateMonthDayMinTest1
Environment.Value("StepName") = "VerifyDateMonthDayMinTest1"
	Browser("Dates").Page("Dates").WebEdit("TXT_DateOneColoumnRequired").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateOneColoumnRequired2").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateTwoColumnRequired").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMinMaxTestMaxSize1").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMinMaxTestMaxSize0").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_BizDate1ColMin2Max5").EnterText gfGetBiz5Date
	Browser("Dates").Page("Dates").WebEdit("TXT_BusinessDateOneColumnRequired2").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_TwoColumnBusinessDate").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_BusinessDateMinTest").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_BusinessDateMaxTest1").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonthDayOneColumn").EnterText gfGetDateMonth
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonthDayOneColumn2").EnterText gfGetDateMonth
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonthDayTwoColumn").EnterText gfGetDateMonth
	Browser("Dates").Page("Dates").TypeText gfGetDateMonth
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonth/YearOneColumn").ClickObject 
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonth/YearOneColumn").EnterText gfGetMonthYear
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonth/YearMinSizeZero").ClickObject 
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonth/YearMinSizeZero").TypeText gfGetMonthYear
	Browser("Dates").Page("Dates").WebEdit("TXT_Month/YearMin/MaxTest-MaxSize1").ClickObject 
	Browser("Dates").Page("Dates").WebEdit("TXT_Month/YearMin/MaxTest-MaxSize1").EnterText gfGetMonthYear
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonth/DayMinTest1").ClickObject 
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonth/DayMinTest1").EnterText gfGetMonthYear
	Browser("Dates").Page("Dates").WebEdit("TXT_BirthdayOneColumnRequired").ClickObject 
	Browser("Dates").Page("Dates").WebEdit("TXT_BirthdayOneColumnRequired").TypeText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_BirthDayOneColumnRequired2").ClickObject 
	Browser("Dates").Page("Dates").WebEdit("TXT_BirthDayOneColumnRequired2").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMin/MaxTestMaxSize1").ClickObject 
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMin/MaxTestMaxSize1").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_BirthdayMin/MaxTest_MinSize0").ClickObject 
	Browser("Dates").Page("Dates").WebEdit("TXT_BirthdayMin/MaxTest_MinSize0").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebElement("DTL_DateMonth/DayMinTest-1").ClickOnCalenderIcon 
	Browser("Dates").Page("Dates").Link("LNK_CalendarRightArrowIcon").VerifyCalenderNavigation "Movable"
	Browser("Dates").Page("Dates").Link("LNK_CalendarLeftArrowIcon").VerifyCalenderNavigation "Not Movable"
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarDates").VerifyPreviousDateAndAfterCurrentDatesShownInCalendar 
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonth/DayMinTestONE").TypeText gfGetDateMonth
	Browser("Dates").Page("Dates").WebButton("BTN_Next").ClickObject 
	Browser("Dates Read Only").Page("Dates Read Only").WebElement("RWL_DateMonth/DayMinTest-1").VerifyDisplayedText gfGetDateMonth

End Function
''###################################################################################################
''Function Name : VerifyDateOneColumnReqd
''Description : Verifying invalid date in  "Date One Column Required" 
''Author : Gallop
''###################################################################################################
Public Function VerifyDateOneColumnReqd
Environment.Value("StepName") = "VerifyDateOneColumnReqd"
	Browser("Dates").Page("Dates").WebEdit("TXT_DateOneColoumnRequired").EnterText "20/25/14"
	Browser("Dates").Page("Dates").WebEdit("TXT_DateOneColoumnRequired2").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebElement("DTL_DateOneColumnRequired").VerifyMandatoryMessage "Invalid date"
	Browser("Dates").Page("Dates").WebEdit("TXT_DateOneColoumnRequired").ClearText 
	Browser("Dates").Page("Dates").WebEdit("TXT_DateOneColoumnRequired").TypeText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateTwoColumnRequired").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMinMaxTestMaxSize1").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMinMaxTestMaxSize0").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_BizDate1ColMin2Max5").EnterText gfGetBiz5Date
	Browser("Dates").Page("Dates").WebEdit("TXT_BusinessDateOneColumnRequired2").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_TwoColumnBusinessDate").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_BusinessDateMinTest").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_BusinessDateMaxTest1").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonthDayOneColumn").EnterText gfGetDateMonth
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonthDayOneColumn2").TypeText gfGetDateMonth
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonthDayTwoColumn").TypeText gfGetDateMonth
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonth/YearOneColumn").EnterText gfGetMonthYear
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonth/YearMinSizeZero").EnterText gfGetMonthYear
	Browser("Dates").Page("Dates").WebEdit("TXT_Month/YearMin/MaxTest-MaxSize1").EnterText gfGetMonthYear
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonth/DayMinTest1").EnterText gfGetMonthYear
	Browser("Dates").Page("Dates").WebEdit("TXT_BirthdayOneColumnRequired").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_BirthDayOneColumnRequired2").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMin/MaxTestMaxSize1").EnterText gfGetCurrentDate
	Browser("Dates").Page("Dates").WebButton("BTN_Next").ClickObject 

End Function
''###################################################################################################
''Function Name : VerifyFirstValueInDropDownLongString
''Description : Select first value inDrop Down Long String and verify its value
''Author : Gallop
''###################################################################################################
Public Function VerifyFirstValueInDropDownLongString
Environment.Value("StepName") = "VerifyFirstValueInDropDownLongString"
	Browser("Drop Downs").Page("Drop Downs").WebElement("DWL_DropDownLongString").SelectListBoxByIndex 1
	Browser("Drop Downs").Page("Drop Downs").WebElement("DWL_DropDownLongString").VerifyValueSelectedInDropDown "This is a test for a two column lookup"
End Function
''###################################################################################################
''Function Name : VerifyMandatoryMessagesInDropDown
''Description : Verify mandatory messages displayed when clicking Next without selecting any value
''Author : Gallop
''###################################################################################################
Public Function VerifyMandatoryMessagesInDropDown
Environment.Value("StepName") = "VerifyMandatoryMessagesInDropDown"
	Browser("Drop Downs").Page("Drop Downs").WebElement("LBL_Drop Downs").VerifyPageName 
	Browser("Drop Downs").Page("Drop Downs").WebButton("BTN_Next").ClickObject 
	Browser("Drop Downs").Page("Drop Downs").WebElement("DWL_DropDownLongString").VerifyMandatoryMessage "Selection required"
	Browser("Drop Downs").Page("Drop Downs").WebElement("DWL_DropDown2Columnselect").VerifyMandatoryMessage "Selection required"
End Function
''###################################################################################################
''Function Name : VerifyReadOnlyDropDown
''Description : Verify readOnly drop down and its tect
''Author : Gallop
''###################################################################################################
Public Function VerifyReadOnlyDropDown
Environment.Value("StepName") = "VerifyReadOnlyDropDown"
	Browser("Drop Downs").Page("Drop Downs").WebElement("LBL_Drop Downs").VerifyPageName 
	Browser("Drop Downs").Page("Drop Downs").WebElement("RWL_ReadOnlyDropDown").VerifyFieldIsReadOnly 
	Browser("Drop Downs").Page("Drop Downs").WebElement("RWL_ReadOnlyDropDown").VerifyDisplayedText "This is a long default value to determine if the value looks good once it is wrapped. This is the maximum default value length of two hundred and fifty characters. This is the maximum default value length of two hundred and fifty characters. Thanks."

End Function
''###################################################################################################
''Function Name : Login
''Description : Login to application
''Author : Gallop
''###################################################################################################
Public Function Login
Environment.Value("StepName") = "Login"
	Call StartApplication()
	Browser("Login").Dialog("Windows Security").WebEdit("txt_UserName").EnterText dtScenario.value("AuthUserName")
	Browser("Login").Dialog("Windows Security").WinEdit("txt__PassWord").EnterText dtScenario.value("AuthPassword")
	Browser("Login").Dialog("Windows Security").WinButton("btn_OK").ClickObject 
	Browser("Login").Page("Login").WebEdit("txt_UserName").EnterText dtScenario.value("UserName")
	Browser("Login").Page("Login").WebEdit("txt_Password").EnterText dtScenario.value("PassWord")
	Browser("Login").Page("Login").WebButton("btn_Login").ClickObject 
	Browser("Login").Page("Work Queue").WebElement("lnk_Certificates").PageSync 
	Browser("Login").Page("Work Queue").WebElement("lnk_Certificates").VerifyExists 

End Function
''###################################################################################################
''Function Name : LogoutApplication
''Description : Logout from application and close browsers
''Author : Gallop
''###################################################################################################
Public Function LogoutApplication
Environment.Value("StepName") = "LogoutApplication"
	Call Logout()
	Call CloseAllBrowsers()

End Function
''###################################################################################################
''Function Name : NavigateToCheckBoxes
''Description : Navigate to Interview Questions
''Author : Gallop
''###################################################################################################
Public Function NavigateToCheckBoxes
Environment.Value("StepName") = "NavigateToCheckBoxes"
	Browser("Work Queue").Page("Work Queue").WebElement("TAB_Tests").ClickObject 
	Browser("Work Queue").Page("Work Queue").WebElement("LNK_Test Question Types").ClickObject 
	Browser("Navigation Page").Page("Navigation Page").WebElement("DWL_Navigate through Service").SelectListBox "Check Boxes"
	Browser("Navigation Page").Page("Navigation Page").WebButton("BTN_Next").ClickObject 
	Browser("Check Boxes").Page("Check Boxes").WebElement("LBL_Check Boxes").PageSync 
	Browser("Check Boxes").Page("Check Boxes").WebElement("LBL_Check Boxes").VerifyPageName 
End Function
''###################################################################################################
''Function Name : NavigateToCurrency
''Description : Navigate to Currency page
''Author : Gallop
''###################################################################################################
Public Function NavigateToCurrency
Environment.Value("StepName") = "NavigateToCurrency"
	Browser("Work Queue").Page("Work Queue").WebElement("TAB_Tests").ClickObject 
	Browser("Work Queue").Page("Work Queue").WebElement("LNK_Test Question Types").ClickObject 
	Browser("Navigation Page").Page("Navigation Page").WebElement("DWL_Navigate through Service").SelectListBox "Currency"
	Browser("Navigation Page").Page("Navigation Page").WebButton("BTN_Next").ClickObject 
	Browser("Currency").Page("Currency").WebElement("LBL_Currency").PageSync 
	Browser("Currency").Page("Currency").WebElement("LBL_Currency").VerifyPageName 

End Function
''###################################################################################################
''Function Name : NavigateToDate
''Description : Navigate to Date page
''Author : Gallop
''###################################################################################################
Public Function NavigateToDate
Environment.Value("StepName") = "NavigateToDate"
	Browser("Work Queue").Page("Work Queue").WebElement("TAB_Tests").ClickObject 
	Browser("Work Queue").Page("Work Queue").WebElement("LNK_Test Question Types").ClickObject 
	Browser("Navigation Page").Page("Navigation Page").WebElement("DWL_Navigate through Service").SelectListBox "Date"
	Browser("Navigation Page").Page("Navigation Page").WebButton("BTN_Next").ClickObject 
	Browser("Dates").Page("Dates").WebElement("LBL_Date").PageSync 
	Browser("Dates").Page("Dates").WebElement("LBL_Date").VerifyPageName 
End Function
''###################################################################################################
''Function Name : NavigateToDropDown
''Description : Navigate to dropdown page
''Author : Gallop
''###################################################################################################
Public Function NavigateToDropDown
Environment.Value("StepName") = "NavigateToDropDown"
	Browser("Work Queue").Page("Work Queue").WebElement("TAB_Tests").ClickObject 
	Browser("Work Queue").Page("Work Queue").WebElement("LNK_Test Question Types").ClickObject 
	Browser("Navigation Page").Page("Navigation Page").WebElement("DWL_Navigate through Service").SelectListBox "Drop down lookup"
	Browser("Navigation Page").Page("Navigation Page").WebButton("BTN_Next").ClickObject 
	Browser("Drop Downs").Page("Drop Downs").WebElement("LBL_Drop Downs").PageSync 
End Function
''###################################################################################################
''Function Name : NavigateToInterviewQuestions
''Description : Navigate to Interview Questions
''Author : Gallop
''###################################################################################################
Public Function NavigateToInterviewQuestions
Environment.Value("StepName") = "NavigateToInterviewQuestions"
	Browser("Work Queue").Page("Work Queue").WebElement("TAB_Tests").ClickObject 
	Browser("Work Queue").Page("Work Queue").WebElement("LNK_Test Question Types").ClickObject 
	Browser("Navigation Page").Page("Navigation Page").WebElement("DWL_Navigate through Service").SelectListBox "Interview Questions"
	Browser("Navigation Page").Page("Navigation Page").WebButton("BTN_Next").ClickObject 
	Browser("Interview Question").Page("Interview Question").WebElement("LBL_InterviewQuestions").PageSync 
	Browser("Interview Question").Page("Interview Question").WebElement("LBL_InterviewQuestions").VerifyPageName 
End Function
''###################################################################################################
''Function Name : NavigateToNumeric
''Description : Navigate to Numeric page
''Author : Gallop
''###################################################################################################
Public Function NavigateToNumeric
Environment.Value("StepName") = "NavigateToNumeric"
	Browser("Work Queue").Page("Work Queue").WebElement("TAB_Tests").ClickObject 
	Browser("Work Queue").Page("Work Queue").WebElement("LNK_Test Question Types").ClickObject 
	Browser("Navigation Page").Page("Navigation Page").WebElement("DWL_Navigate through Service").SelectListBox "Numeric"
	Browser("Navigation Page").Page("Navigation Page").WebButton("BTN_Next").ClickObject 
	Browser("Numeric").Page("Numeric").WebElement("LBL_Numeric").PageSync 
	Browser("Numeric").Page("Numeric").WebElement("LBL_Numeric").VerifyPageName 
End Function
''###################################################################################################
''Function Name : NavigateToStrings
''Description : avigate to Strings page
''Author : Gallop
''###################################################################################################
Public Function NavigateToStrings
Environment.Value("StepName") = "NavigateToStrings"
	Browser("Work Queue").Page("Work Queue").WebElement("TAB _Home").VerifyExists 
	Browser("Work Queue").Page("Work Queue").WebElement("TAB_Tests").ClickObject 
	Browser("Work Queue").Page("Work Queue").WebElement("LNK_Test Question Types").ClickObject 
	Browser("Navigation Page").Page("Navigation Page").WebElement("DWL_Navigate through Service").SelectListBox "Strings"
	Browser("Navigation Page").Page("Navigation Page").WebButton("BTN_Next").ClickObject 
	Browser("Strings").Page("Strings").WebElement("LBL_Strings").PageSync 
	Browser("Strings").Page("Strings").WebElement("LBL_Strings").VerifyPageName 

End Function
''###################################################################################################
''Function Name : NavigateToTables
''Description : Navigate to Tables
''Author : Gallop
''###################################################################################################
Public Function NavigateToTables
Environment.Value("StepName") = "NavigateToTables"
	Browser("Work Queue").Page("Work Queue").WebElement("TAB_Tests").ClickObject 
	Browser("Work Queue").Page("Work Queue").WebElement("LNK_Test Question Types").ClickObject 
	Browser("Navigation Page").Page("Navigation Page").WebElement("DWL_Navigate through Service").SelectListBox "Tables Kendo"
	Browser("Navigation Page").Page("Navigation Page").WebButton("BTN_Next").ClickObject 
	Browser("Grid Simple Condition").Page("Grid Simple Condition").PageSync 
	Browser("Grid Simple Condition").Page("Grid Simple Condition").VerifyPageName 

End Function
''###################################################################################################
''Function Name : NavigateToYesNO
''Description : Navigate to Yes No page
''Author : Gallop
''###################################################################################################
Public Function NavigateToYesNO
Environment.Value("StepName") = "NavigateToYesNO"
	Browser("Work Queue").Page("Work Queue").WebElement("TAB_Tests").ClickObject 
	Browser("Work Queue").Page("Work Queue").WebElement("LNK_Test Question Types").ClickObject 
	Browser("Navigation Page").Page("Navigation Page").WebElement("DWL_Navigate through Service").SelectListBox "Single Select - Slider"
	Browser("Navigation Page").Page("Navigation Page").WebButton("BTN_Next").ClickObject 
	Browser("Yes/No").Page("Yes/No").WebElement("LBL_Yes/No").PageSync 
	Browser("Yes/No").Page("Yes/No").WebElement("LBL_Yes/No").VerifyPageName 

End Function
''###################################################################################################
''Function Name : NavigateToYesNoToggle
''Description : Navigate to Yes No Toggle page
''Author : Gallop
''###################################################################################################
Public Function NavigateToYesNoToggle
Environment.Value("StepName") = "NavigateToYesNoToggle"
	Browser("Work Queue").Page("Work Queue").WebElement("TAB_Tests").ClickObject 
	Browser("Work Queue").Page("Work Queue").WebElement("LNK_Test Question Types").ClickObject 
	Browser("Navigation Page").Page("Navigation Page").WebElement("DWL_Navigate through Service").SelectListBox "Yes No Toggle"
	Browser("Navigation Page").Page("Navigation Page").WebButton("BTN_Next").ClickObject 
	Browser("Yes No Toggle").Page("Yes No Toggle").WebElement("LBL_QAToggleTesting").PageSync 
	Browser("Yes No Toggle").Page("Yes No Toggle").WebElement("LBL_QAToggleTesting").VerifyPageName 
End Function
''###################################################################################################
''Function Name : RequiredFields
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function RequiredFields
Environment.Value("StepName") = "RequiredFields"
	Browser("Interview Question").Page("Interview Question").WebElement("RDL_InterviewQuestionOneColumnLongLabel").VerifyRequiredIcon "innerhtml"
	Browser("Interview Question").Page("Interview Question").WebElement("RDL_InterviewQuestionOneColumnYN").VerifyRequiredIcon "innerhtml"
	Browser("Interview Question").Page("Interview Question").WebElement("RDL_InterviewQuestionTwoColumn").VerifyRequiredIcon "innerhtml"
	Browser("Interview Question").Page("Interview Question").WebElement("RDL_InterviewQuestionWBubble").VerifyRequiredIcon "innerhtml"
	Browser("Interview Question").Page("Interview Question").WebElement("RDL_InterviewQuestionBubble2").VerifyRequiredIcon "innerhtml"
	Browser("Interview Question").Page("Interview Question").WebButton("Intrvw_BTN_Next").clickNext 
	Browser("Interview Question").Page("Interview Question").WebElement("RDL_InterviewQuestionOneColumnLongLabel").VerifyMandatoryMessage "Selection required"
	Browser("Interview Question").Page("Interview Question").WebElement("RDL_InterviewQuestionOneColumnYN").VerifyMandatoryMessage "Selection required"
	Browser("Interview Question").Page("Interview Question").WebElement("RDL_InterviewQuestionTwoColumn").VerifyMandatoryMessage "Selection required"
	Browser("Interview Question").Page("Interview Question").WebElement("RDL_InterviewQuestionWBubble").VerifyMandatoryMessage "Selection required"
	Browser("Interview Question").Page("Interview Question").WebElement("RDL_InterviewQuestionBubble2").VerifyMandatoryMessage "Selection required"

End Function
''###################################################################################################
''Function Name : SelectValuesandValidate
''Description : Interview Questions - Javascript on the page recognizes when a required field has been filled
''Author : Gallop
''###################################################################################################
Public Function SelectValuesandValidate
Environment.Value("StepName") = "SelectValuesandValidate"
	Browser("Interview Question").Page("Interview Question").WebElement("RDL_InterviewQuestionOneColumnLongLabel").SelectRadioButton "3"
	Browser("Interview Question").Page("Interview Question").WebElement("RDL_InterviewQuestionOneColumnYN").SelectRadioButton "Yes"
	Browser("Interview Question").Page("Interview Question").WebElement("RDL_InterviewQuestionTwoColumn").SelectRadioButton "1"
	Browser("Interview Question").Page("Interview Question").WebElement("RDL_InterviewQuestionWBubble").SelectRadioButton "No"
	Browser("Interview Question").Page("Interview Question").WebElement("RDL_InterviewQuestionBubble2").SelectRadioButton "Yes"
	Browser("Interview Question").Page("Interview Question").WebButton("Intrvw_BTN_Next").clickNext 
	Browser("Interview Question Read").Page("Interview Question Read").WebElement("RWL_InterviewQuestions").VerifyPageName 
	Browser("Interview Question Read").Page("Interview Question Read").WebElement("RWL_InterviewQuestionBubble2").VerifyDisplayedText dtScenario.value("Bubble2")
	Browser("Interview Question Read").Page("Interview Question Read").WebElement("RWL_RWL_InterviewQuestionOneColumnLongLabel_Short Answer 2").VerifyDisplayedText dtScenario.value("LongLabel")

End Function
''###################################################################################################
''Function Name : FillMandatoryFieldsInNumeric
''Description : Fill mandatory fields,clear not required fields  and click on next in Numeric
''Author : Gallop
''###################################################################################################
Public Function FillMandatoryFieldsInNumeric
Environment.Value("StepName") = "FillMandatoryFieldsInNumeric"
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericOneColumn").EnterText dtScenario.value("NumericOneColumn")
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericOneColumn2").EnterText dtScenario.value("NumericOneColumn2")
	Browser("Numeric").Page("Numeric").WebEdit("TXT_TwoColumnNumeric").EnterText dtScenario.value("TwoColumnNumeric")
	Browser("Numeric").Page("Numeric").WebEdit("TXT_Numeric2DecimalPlaces2").EnterText dtScenario.value("Numeric2DecimalPlaces2")
	Browser("Numeric").Page("Numeric").WebEdit("TXT_TwoColumnNumericDecimal").EnterText dtScenario.value("TwoColumnNumericDecimal")
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericCommaOneColumn").EnterText dtScenario.value("NumericCommaOneColumn")
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericCommaTwoColumn").EnterText dtScenario.value("NumericCommaTwoColumn")
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericNonDecimal").EnterText "4"
	Browser("Numeric").Page("Numeric").WebButton("BTN_Next").ClickObject 

End Function
''###################################################################################################
''Function Name : VerifyDecimalNotAllowedInNumericNonDecimalField
''Description : Verify decimal is not allowed in Numeric Non decimal field in Numeric page
''Author : Gallop
''###################################################################################################
Public Function VerifyDecimalNotAllowedInNumericNonDecimalField
Environment.Value("StepName") = "VerifyDecimalNotAllowedInNumericNonDecimalField"
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericNonDecimal").TypeText dtScenario.value("NumericNonDecimal")
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericNonDecimal").VerifyValue dtScenario.value("NumericNonDecimalExpected")
End Function
''###################################################################################################
''Function Name : VerifyHelpPopUpAndContentInNumeric
''Description : Verify help pop up and its content
''Author : Gallop
''###################################################################################################
Public Function VerifyHelpPopUpAndContentInNumeric
Environment.Value("StepName") = "VerifyHelpPopUpAndContentInNumeric"
	Browser("Numeric").Page("Numeric").WebElement("TWL_NumericOneColumn").ClickOnHelpIcon 
	Browser("Help").Page("Help").WebElement("LBL_HelpHeader").VerifyPageName 
	Browser("Help").Page("Help").WebElement("LBL_HelpHeader").VerifyHelpHeader "Numeric"
	Browser("Help").Page("Help").WebElement("LBL_HelpContent").VerifyHelpContent "QA Testing for Help Pop-up - 123456789"
	Browser("Help").Page("Help").WebButton("BTN_Close").VerifyExists 
	Browser("Help").Page("Help").WebButton("BTN_Close").ClickObject 
	Browser("Numeric").Page("Numeric").WebElement("TWL_NumericOneColumn2").ClickOnHelpIcon 
	Browser("Help").Page("Help").WebElement("LBL_HelpHeader").VerifyPageName 
	Browser("Help").Page("Help").WebElement("LBL_HelpHeader").VerifyHelpHeader "Numeric"
	Browser("Help").Page("Help").WebButton("BTN_Close").VerifyExists 
	Browser("Help").Page("Help").WebButton("BTN_Close").ClickObject 
	Browser("Numeric").Page("Numeric").WebElement("TWL_TwoColumnNumeric").ClickOnHelpIcon 
	Browser("Help").Page("Help").WebElement("LBL_HelpHeader").VerifyPageName 
	Browser("Help").Page("Help").WebElement("LBL_HelpHeader").VerifyHelpHeader "Numeric"
	Browser("Help").Page("Help").WebButton("BTN_Close").VerifyExists 
	Browser("Help").Page("Help").WebButton("BTN_Close").ClickObject 
	Browser("Numeric").Page("Numeric").WebElement("TWL_Numeric2DecimalOneColumn").ClickOnHelpIcon 
	Browser("Help").Page("Help").WebElement("LBL_HelpHeader").VerifyPageName 
	Browser("Help").Page("Help").WebElement("LBL_HelpHeader").VerifyHelpHeader "Numeric 2 Decimal"
	Browser("Help").Page("Help").WebButton("BTN_Close").VerifyExists 
	Browser("Help").Page("Help").WebButton("BTN_Close").ClickObject 
	Browser("Numeric").Page("Numeric").WebElement("TWL_Numeric2DecimalPlaces2").ClickOnHelpIcon 
	Browser("Help").Page("Help").WebElement("LBL_HelpHeader").VerifyPageName 
	Browser("Help").Page("Help").WebElement("LBL_HelpHeader").VerifyHelpHeader "Numeric 2 Decimal"
	Browser("Help").Page("Help").WebButton("BTN_Close").VerifyExists 
	Browser("Help").Page("Help").WebButton("BTN_Close").ClickObject 
	Browser("Numeric").Page("Numeric").WebElement("TWL_TwoColumnNumericdecimal").ClickOnHelpIcon 
	Browser("Help").Page("Help").WebElement("LBL_HelpHeader").VerifyPageName 
	Browser("Help").Page("Help").WebElement("LBL_HelpHeader").VerifyHelpHeader "Numeric 2 Decimal"
	Browser("Help").Page("Help").WebButton("BTN_Close").VerifyExists 
	Browser("Help").Page("Help").WebButton("BTN_Close").ClickObject 
	Browser("Numeric").Page("Numeric").WebElement("TWL_NumericDecimalProtected").ClickOnHelpIcon 
	Browser("Help").Page("Help").WebElement("LBL_HelpHeader").VerifyPageName 
	Browser("Help").Page("Help").WebElement("LBL_HelpHeader").VerifyHelpHeader "Numeric 2 Decimal"
	Browser("Help").Page("Help").WebButton("BTN_Close").VerifyExists 
	Browser("Help").Page("Help").WebButton("BTN_Close").ClickObject 
	Browser("Numeric").Page("Numeric").WebElement("TWL_NumericCommaOneColumn").ClickOnHelpIcon 
	Browser("Help").Page("Help").WebElement("LBL_HelpHeader").VerifyPageName 
	Browser("Help").Page("Help").WebElement("LBL_HelpHeader").VerifyHelpHeader "Numeric Comma "
	Browser("Help").Page("Help").WebButton("BTN_Close").VerifyExists 
	Browser("Help").Page("Help").WebButton("BTN_Close").ClickObject 
	Browser("Numeric").Page("Numeric").WebElement("TWL_NumericCommaOneColumn2").ClickOnHelpIcon 
	Browser("Help").Page("Help").WebElement("LBL_HelpHeader").VerifyPageName 
	Browser("Help").Page("Help").WebElement("LBL_HelpHeader").VerifyHelpHeader "Numeric Comma "
	Browser("Help").Page("Help").WebButton("BTN_Close").VerifyExists 
	Browser("Help").Page("Help").WebButton("BTN_Close").ClickObject 
	Browser("Numeric").Page("Numeric").WebElement("TWL_NumericCommaTwoColumn").ClickOnHelpIcon 
	Browser("Help").Page("Help").WebElement("LBL_HelpHeader").VerifyPageName 
	Browser("Help").Page("Help").WebElement("LBL_HelpHeader").VerifyHelpHeader "Numeric Comma "
	Browser("Help").Page("Help").WebButton("BTN_Close").VerifyExists 
	Browser("Help").Page("Help").WebButton("BTN_Close").ClickObject 
	Browser("Numeric").Page("Numeric").WebElement("TWL_NumericCommaProtected").ClickOnHelpIcon 
	Browser("Help").Page("Help").WebElement("LBL_HelpHeader").VerifyPageName 
	Browser("Help").Page("Help").WebElement("LBL_HelpHeader").VerifyHelpHeader "Numeric Comma "
	Browser("Help").Page("Help").WebButton("BTN_Close").VerifyExists 
	Browser("Help").Page("Help").WebButton("BTN_Close").ClickObject 

End Function
''###################################################################################################
''Function Name : VerifyMandatoryMessagesDisappearsInNumeric
''Description : Click on Next with out enterung data and clearing prefilled data and verify mandatory messages displayed in Numeric 
''Author : Gallop
''###################################################################################################
Public Function VerifyMandatoryMessagesDisappearsInNumeric
Environment.Value("StepName") = "VerifyMandatoryMessagesDisappearsInNumeric"
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericOneColumn").EnterText dtScenario.value("NumericOneColumn")
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericOneColumn2").ClickObject 
	Browser("Numeric").Page("Numeric").WebElement("TWL_NumericOneColumn").VerifyMessageNotExists "This is a required field"
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericOneColumn2").EnterText dtScenario.value("NumericOneColumn2")
	Browser("Numeric").Page("Numeric").WebEdit("TXT_TwoColumnNumeric").ClickObject 
	Browser("Numeric").Page("Numeric").WebElement("TWL_NumericOneColumn2").VerifyMessageNotExists "This is a required field"
	Browser("Numeric").Page("Numeric").WebEdit("TXT_TwoColumnNumeric").EnterText dtScenario.value("TwoColumnNumeric")
	Browser("Numeric").Page("Numeric").WebEdit("TXT_Numeric2DecimalPlaces2").ClickObject 
	Browser("Numeric").Page("Numeric").WebEdit("TXT_Numeric2DecimalPlaces2").EnterText dtScenario.value("Numeric2DecimalPlaces2")
	Browser("Numeric").Page("Numeric").WebEdit("TXT_TwoColumnNumericDecimal").ClickObject 
	Browser("Numeric").Page("Numeric").WebElement("TWL_Numeric2DecimalPlaces2").VerifyMessageNotExists "This is a required field"
	Browser("Numeric").Page("Numeric").WebEdit("TXT_TwoColumnNumericDecimal").EnterText dtScenario.value("TwoColumnNumericDecimal")
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericCommaOneColumn").ClickObject 
	Browser("Numeric").Page("Numeric").WebElement("TWL_TwoColumnNumericdecimal").VerifyMessageNotExists "This is a required field"
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericCommaOneColumn").EnterText dtScenario.value("NumericCommaOneColumn")
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericCommaTwoColumn").ClickObject 
	Browser("Numeric").Page("Numeric").WebElement("TWL_NumericCommaOneColumn").VerifyMessageNotExists "This is a required field"
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericCommaTwoColumn").EnterText dtScenario.value("NumericCommaTwoColumn")
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericCommaOneColumn").ClickObject 
	Browser("Numeric").Page("Numeric").WebElement("TWL_NumericCommaTwoColumn").VerifyMessageNotExists "This is a required field"

End Function
''###################################################################################################
''Function Name : VerifyMandatoryMessagesInNumeric
''Description : Click on Next with out enterung data and clearing prefilled data and verify mandatory messages displayed in Numeric 
''Author : Gallop
''###################################################################################################
Public Function VerifyMandatoryMessagesInNumeric
Environment.Value("StepName") = "VerifyMandatoryMessagesInNumeric"
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericDecimalNotRequired").ClearText 
	Browser("Numeric").Page("Numeric").WebButton("BTN_Next").ClickObject 
	Browser("Numeric").Page("Numeric").WebElement("TWL_NumericOneColumn").VerifyMandatoryMessage "This is a required field"
	Browser("Numeric").Page("Numeric").WebElement("TWL_NumericOneColumn2").VerifyMandatoryMessage "This is a required field"
	Browser("Numeric").Page("Numeric").WebElement("TWL_TwoColumnNumeric").VerifyMandatoryMessage "This is a required field"
	Browser("Numeric").Page("Numeric").WebElement("TWL_Numeric2DecimalPlaces2").VerifyMandatoryMessage "This is a required field"
	Browser("Numeric").Page("Numeric").WebElement("TWL_TwoColumnNumericdecimal").VerifyMandatoryMessage "This is a required field"
	Browser("Numeric").Page("Numeric").WebElement("TWL_NumericCommaOneColumn").VerifyMandatoryMessage "This is a required field"
	Browser("Numeric").Page("Numeric").WebElement("TWL_NumericCommaTwoColumn").VerifyMandatoryMessage "This is a required field"

End Function
''###################################################################################################
''Function Name : VerifyMinMaxValuesAllowedInNumeric
''Description : Verify minimum and maximum values allowed in Numeric page
''Author : Gallop
''###################################################################################################
Public Function VerifyMinMaxValuesAllowedInNumeric
Environment.Value("StepName") = "VerifyMinMaxValuesAllowedInNumeric"
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericOneColumn").EnterText dtScenario.value("NumericOneColumnMin")
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericNonDecimal").ClickObject 
	Browser("Numeric").Page("Numeric").WebElement("TWL_NumericOneColumn").VerifyMandatoryMessage "Entry must be 2 or greater"
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericOneColumn").EnterText dtScenario.value("NumericOneColumnMax")
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericNonDecimal").ClickObject 
	Browser("Numeric").Page("Numeric").WebElement("TWL_NumericOneColumn").VerifyMandatoryMessage "Entry cannot exceed 10"
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericOneColumn2").EnterText dtScenario.value("NumericOneColumn2Min")
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericNonDecimal").ClickObject 
	Browser("Numeric").Page("Numeric").WebElement("TWL_NumericOneColumn2").VerifyMandatoryMessage "Entry must be 22 or greater"
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericCommaOneColumn").EnterText dtScenario.value("NumericCommaOneColumnMin")
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericNonDecimal").ClickObject 
	Browser("Numeric").Page("Numeric").WebElement("TWL_NumericCommaOneColumn").VerifyMandatoryMessage "Entry must be 42 or greater"
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericCommaOneColumn").EnterText dtScenario.value("NumericCommaOneColumnMax")
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericNonDecimal").ClickObject 
	Browser("Numeric").Page("Numeric").WebElement("TWL_NumericCommaOneColumn").VerifyMandatoryMessage "Entry cannot exceed 195.23"
	Browser("Numeric").Page("Numeric").WebEdit("TXT_Numeric2DecimalPlaces2").EnterText dtScenario.value("Numeric2DecimalPlaces2Min")
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericNonDecimal").ClickObject 
	Browser("Numeric").Page("Numeric").WebElement("TWL_Numeric2DecimalPlaces2").VerifyMandatoryMessage "Entry must be 2.5 or greater"
	Browser("Numeric").Page("Numeric").WebEdit("TXT_Numeric2DecimalPlaces2").EnterText dtScenario.value("Numeric2DecimalPlaces2Max")
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericNonDecimal").ClickObject 
	Browser("Numeric").Page("Numeric").WebElement("TWL_Numeric2DecimalPlaces2").VerifyMandatoryMessage "Entry cannot exceed 5.87"
	Browser("Numeric").Page("Numeric").WebEdit("TXT_TwoColumnNumericDecimal").EnterText dtScenario.value("TwoColumnNumericDecimalMin")
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericNonDecimal").ClickObject 
	Browser("Numeric").Page("Numeric").WebElement("TWL_TwoColumnNumericdecimal").VerifyMandatoryMessage "Entry must be 2 or greater"
	Browser("Numeric").Page("Numeric").WebEdit("TXT_TwoColumnNumericDecimal").EnterText dtScenario.value("TwoColumnNumericDecimalMax")
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericNonDecimal").ClickObject 
	Browser("Numeric").Page("Numeric").WebElement("TWL_TwoColumnNumericdecimal").VerifyMandatoryMessage "Entry cannot exceed 12"
End Function
''###################################################################################################
''Function Name : VerifyNotAValidNumberErrorAfterClickingNextInNumeric
''Description : Click next ad verify Not a valid number error messageInNumeric
''Author : Gallop
''###################################################################################################
Public Function VerifyNotAValidNumberErrorAfterClickingNextInNumeric
Environment.Value("StepName") = "VerifyNotAValidNumberErrorAfterClickingNextInNumeric"
	Browser("Numeric").Page("Numeric").WebButton("BTN_Next").ClickObject 
	Browser("Numeric").Page("Numeric").WebElement("LBL_Numeric").VerifyPageName 
	Browser("Numeric").Page("Numeric").WebElement("TWL_NumericOneColumn").VerifyMandatoryMessage "Not a valid number"
	Browser("Numeric").Page("Numeric").WebElement("TWL_NumericOneColumn2").VerifyMandatoryMessage "Not a valid number"
	Browser("Numeric").Page("Numeric").VerifyMandatoryMessage "Not a valid number"
	Browser("Numeric").Page("Numeric").WebElement("TWL_Numeric2DecimalOneColumn").VerifyMandatoryMessage "Not a valid number"
	Browser("Numeric").Page("Numeric").WebElement("TWL_Numeric2DecimalPlaces2").VerifyMandatoryMessage "Not a valid number"
	Browser("Numeric").Page("Numeric").WebElement("TWL_TwoColumnNumericdecimal").VerifyMandatoryMessage "Not a valid number"
	Browser("Numeric").Page("Numeric").WebElement("TWL_NumericDecimalProtected").VerifyMandatoryMessage "Not a valid number"
	Browser("Numeric").Page("Numeric").WebElement("TWL_NumericDecimalNotRequired").VerifyMandatoryMessage "Not a valid number"

End Function
''###################################################################################################
''Function Name : VerifyNotAValidNumberErrorInNumeric
''Description : Enter #%abc into each question within the Numeric and Numeric Two Decimal Places question groups and verify  message "Not a valid number"
''Author : Gallop
''###################################################################################################
Public Function VerifyNotAValidNumberErrorInNumeric
Environment.Value("StepName") = "VerifyNotAValidNumberErrorInNumeric"
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericOneColumn").EnterText dtScenario.value("NumericOneColumn")
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericOneColumn2").ClickObject 
	Browser("Numeric").Page("Numeric").WebElement("TWL_NumericOneColumn").VerifyMandatoryMessage "Not a valid number"
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericOneColumn2").EnterText dtScenario.value("NumericOneColumn2")
	Browser("Numeric").Page("Numeric").WebEdit("TXT_TwoColumnNumeric").ClickObject 
	Browser("Numeric").Page("Numeric").WebElement("TWL_NumericOneColumn2").VerifyMandatoryMessage "Not a valid number"
	Browser("Numeric").Page("Numeric").WebEdit("TXT_TwoColumnNumeric").EnterText dtScenario.value("TwoColumnNumeric")
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NotRequiredNumeric").ClickObject 
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NotRequiredNumeric").EnterText dtScenario.value("NotRequiredNumeric")
	Browser("Numeric").Page("Numeric").WebEdit("TXT_Numeric2DecimalOneColumn").ClickObject 
	Browser("Numeric").Page("Numeric").VerifyMandatoryMessage "Not a valid number"
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericNonDecimal").VerifySpecialCharacterNotAllowed dtScenario.value("NumericNonDecimalSpecial")
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericNonDecimal").VerifyAlphaCharacterNotAllowed dtScenario.value("NumericNonDecimalAlpha")
	Browser("Numeric").Page("Numeric").WebEdit("TXT_Numeric2DecimalOneColumn").EnterText dtScenario.value("Numeric2DecimalOneColumn")
	Browser("Numeric").Page("Numeric").WebEdit("TXT_Numeric2DecimalPlaces2").ClickObject 
	Browser("Numeric").Page("Numeric").WebElement("TWL_Numeric2DecimalOneColumn").VerifyMandatoryMessage "Not a valid number"
	Browser("Numeric").Page("Numeric").WebEdit("TXT_Numeric2DecimalPlaces2").EnterText dtScenario.value("Numeric2DecimalPlaces2")
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericOneColumn").ClickObject 
	Browser("Numeric").Page("Numeric").WebElement("TWL_Numeric2DecimalPlaces2").VerifyMandatoryMessage "Not a valid number"
	Browser("Numeric").Page("Numeric").WebEdit("TXT_TwoColumnNumericDecimal").EnterText dtScenario.value("TwoColumnNumericDecimal")
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericDecimalProtected").ClickObject 
	Browser("Numeric").Page("Numeric").WebElement("TWL_TwoColumnNumericdecimal").VerifyMandatoryMessage "Not a valid number"
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericDecimalProtected").EnterText dtScenario.value("NumericDecimalProtected")
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericDecimalNotRequired").ClickObject 
	Browser("Numeric").Page("Numeric").WebElement("TWL_NumericDecimalProtected").VerifyMandatoryMessage "Not a valid number"
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericDecimalNotRequired").EnterText dtScenario.value("NumericDecimalNotRequired")
	Browser("Numeric").Page("Numeric").WebEdit("TXT_NumericDecimalProtected").ClickObject 
	Browser("Numeric").Page("Numeric").WebElement("TWL_NumericDecimalNotRequired").VerifyMandatoryMessage "Not a valid number"

End Function
''###################################################################################################
''Function Name : VerifyNumeric2DecimalOneColumnValueIsRounded
''Description : Verify The thousandth value is dropped and the value is rounded to the nearest hundredth in Numeric2DecimalOneColumn field
''Author : Gallop
''###################################################################################################
Public Function VerifyNumeric2DecimalOneColumnValueIsRounded
Environment.Value("StepName") = "VerifyNumeric2DecimalOneColumnValueIsRounded"
	Browser("Numeric").Page("Numeric").WebEdit("TXT_Numeric2DecimalOneColumn").TypeText dtScenario.value("Numeric2DecimalOneColumn")
	Browser("Numeric").Page("Numeric").WebEdit("TXT_Numeric2DecimalPlaces2").ClickObject 
	Browser("Numeric").Page("Numeric").WebEdit("TXT_Numeric2DecimalOneColumn").VerifyValue dtScenario.value("Numeric2DecimalOneColumnRounded")

End Function
''###################################################################################################
''Function Name : VerifyReadOnlyFieldsAndValuesInNumeric
''Description : Verify read only fields and their values in Numeric Read Obly page
''Author : Gallop
''###################################################################################################
Public Function VerifyReadOnlyFieldsAndValuesInNumeric
Environment.Value("StepName") = "VerifyReadOnlyFieldsAndValuesInNumeric"
	Browser("Numeric Read Only").Page("Numeric Read Only").WebElement("LBL_Numeric").VerifyPageName 
	Browser("Numeric Read Only").Page("Numeric Read Only").WebElement("RWL_NumericOneColumn").VerifyFieldIsReadOnly 
	Browser("Numeric Read Only").Page("Numeric Read Only").WebElement("RWL_NumericOneColumn").VerifyDisplayedText dtScenario.value("NumericOneColumn")
	Browser("Numeric Read Only").Page("Numeric Read Only").WebElement("RWL_NumericOneColumn2").VerifyFieldIsReadOnly 
	Browser("Numeric Read Only").Page("Numeric Read Only").WebElement("RWL_NumericOneColumn2").VerifyDisplayedText dtScenario.value("NumericOneColumn2")
	Browser("Numeric Read Only").Page("Numeric Read Only").VerifyFieldIsReadOnly 
	Browser("Numeric Read Only").Page("Numeric Read Only").VerifyDisplayedText dtScenario.value("TwoColumnNumeric")
	Browser("Numeric Read Only").Page("Numeric Read Only").WebElement("RWL_Numeric2DecimalPlaces2").VerifyFieldIsReadOnly 
	Browser("Numeric Read Only").Page("Numeric Read Only").WebElement("RWL_Numeric2DecimalPlaces2").VerifyDisplayedText dtScenario.value("Numeric2DecimalPlaces2")
	Browser("Numeric Read Only").Page("Numeric Read Only").WebElement("RWL_TwoColumnNumericDecimal").VerifyFieldIsReadOnly 
	Browser("Numeric Read Only").Page("Numeric Read Only").WebElement("RWL_TwoColumnNumericDecimal").VerifyDisplayedText dtScenario.value("TwoColumnNumericDecimal")
	Browser("Numeric Read Only").Page("Numeric Read Only").WebElement("RWL_NumericCommaOneColumn").VerifyFieldIsReadOnly 
	Browser("Numeric Read Only").Page("Numeric Read Only").WebElement("RWL_NumericCommaOneColumn").VerifyDisplayedText dtScenario.value("NumericCommaOneColumn")
	Browser("Numeric Read Only").Page("Numeric Read Only").WebElement("RWL_NumericCommaTwoColumn").VerifyFieldIsReadOnly 
	Browser("Numeric Read Only").Page("Numeric Read Only").WebElement("RWL_NumericCommaTwoColumn").VerifyDisplayedText dtScenario.value("NumericCommaTwoColumn")

End Function
''###################################################################################################
''Function Name : VerifyReadOnlyQuestionsInNumeric
''Description : Verify read only questions and values displayed in Numeric page
''Author : Gallop
''###################################################################################################
Public Function VerifyReadOnlyQuestionsInNumeric
Environment.Value("StepName") = "VerifyReadOnlyQuestionsInNumeric"
	Browser("Numeric").Page("Numeric").WebElement("RWL_ProtectedNumericQuestion").VerifyFieldIsReadOnly 
	Browser("Numeric").Page("Numeric").WebElement("RWL_ProtectedNumericQuestion").VerifyDisplayedText dtScenario.value("ProtectedNumericQuestion")
	Browser("Numeric").Page("Numeric").WebElement("RWL_ThisIsAReadOnlyNumeric").VerifyFieldIsReadOnly 
	Browser("Numeric").Page("Numeric").WebElement("RWL_ThisIsAReadOnlyNumeric").VerifyDisplayedText dtScenario.value("ThisIsAReadOnlyNumeri")
	Browser("Numeric").Page("Numeric").WebElement("RWL_ThisIsAReadOnlyNumericDefaulted").VerifyFieldIsReadOnly 
	Browser("Numeric").Page("Numeric").WebElement("RWL_ThisIsAReadOnlyNumericDefaulted").VerifyDisplayedText dtScenario.value("ThisIsAReadOnlyNumericDefaulted")
End Function
''###################################################################################################
''Function Name : FillDataInStrings
''Description : Fill data in Strings
''Author : Gallop
''###################################################################################################
Public Function FillDataInStrings
Environment.Value("StepName") = "FillDataInStrings"
	Browser("Strings").Page("Strings").WebEdit("TXT_OneColumnRequired").EnterText dtScenario.value("OneColumnRequired")
	Browser("Strings").Page("Strings").WebEdit("TXT_OneColumnNotRequired").EnterText dtScenario.value("OneColumnRequired")
	Browser("Strings").Page("Strings").WebEdit("TXT_TwoColumnRequired").EnterText dtScenario.value("TwoColumnRequired")
	Browser("Strings").Page("Strings").WebEdit("TXT_OneColumnToolTip").EnterText dtScenario.value("OneColumnToolTip")
	Browser("Strings").Page("Strings").WebEdit("TXT_AlphaOneColumnRequired").EnterText dtScenario.value("AlphaOneColumnRequired")
	Browser("Strings").Page("Strings").WebEdit("TXT_AlphaTwoColumnRequired").EnterText dtScenario.value("AlphaTwoColumnRequired")
	Browser("Strings").Page("Strings").WebEdit("TXT_NumericOneColumnRequired").EnterText dtScenario.value("NumericOneColumnRequired")
	Browser("Strings").Page("Strings").WebEdit("TXT_NumericTwoColumnRequired").EnterText dtScenario.value("NumericTwoColumnRequired")

End Function
''###################################################################################################
''Function Name : OneColumnStringRequiredValidation
''Description : Verify message when less than 2 characters is entered in one colum string required field in strings
''Author : Gallop
''###################################################################################################
Public Function OneColumnStringRequiredValidation
Environment.Value("StepName") = "OneColumnStringRequiredValidation"
	Browser("Strings").Page("Strings").WebEdit("TXT_OneColumnRequired").EnterText dtScenario.value("OneColumnRequired")
	Browser("Strings").Page("Strings").WebEdit("TXT_TwoColumnRequired").ClickObject 
	Browser("Strings").Page("Strings").WebElement("LBL_Strings").PageSync 
	Browser("Strings").Page("Strings").WebElement("TWL_One column string Required").VerifyMandatoryMessage "Entry must be at least 2 character(s) long"

End Function
''###################################################################################################
''Function Name : VerifyAlphaCharactersNotAllowedInStringsNumeric
''Description : Verify alpha characters are not allowed in all fields in String alpha only 
''Author : Gallop
''###################################################################################################
Public Function VerifyAlphaCharactersNotAllowedInStringsNumeric
Environment.Value("StepName") = "VerifyAlphaCharactersNotAllowedInStringsNumeric"
	Browser("Strings").Page("Strings").WebEdit("TXT_NumericTwoColumnRequired").VerifyExists 
	Browser("Strings").Page("Strings").WebEdit("TXT_NumericOneColumnRequired").VerifyAlphaCharacterNotAllowed dtScenario.value("AlphaCharchters")
	Browser("Strings").Page("Strings").WebEdit("TXT_NumericOneColumTooltip").VerifyAlphaCharacterNotAllowed dtScenario.value("AlphaCharchters")
	Browser("Strings").Page("Strings").WebEdit("TXT_NumericTwoColumnRequired").VerifyAlphaCharacterNotAllowed dtScenario.value("AlphaCharchters")
	Browser("Strings").Page("Strings").WebEdit("TXT_NumericTwoColumTooltip").VerifyAlphaCharacterNotAllowed dtScenario.value("AlphaCharchters")
End Function
''###################################################################################################
''Function Name : VerifyMaxLengthInOneColumMinMaxString
''Description : Verify max length allowed is 10  in One Column Min/Max String
''Author : Gallop
''###################################################################################################
Public Function VerifyMaxLengthInOneColumMinMaxString
Environment.Value("StepName") = "VerifyMaxLengthInOneColumMinMaxString"
	Browser("Strings").Page("Strings").WebElement("TWL_One column string Required").VerifyExists 
	Browser("Strings").Page("Strings").WebEdit("TXT_OneColumnMinMax").VerifyMaxLength 10,"ALPHANUMERIC"
End Function
''###################################################################################################
''Function Name : VerifyMessagesInStrings
''Description : Verify all mandatory messages in strings
''Author : Gallop
''###################################################################################################
Public Function VerifyMessagesInStrings
Environment.Value("StepName") = "VerifyMessagesInStrings"
	Browser("Strings").Page("Strings").WebButton("BTN_Next").WaitForObjectToLoad 
	Browser("Strings").Page("Strings").WebButton("BTN_Next").ClickObject 
	Browser("Strings").Page("Strings").WebElement("LBL_Strings").PageSync 
	Browser("Strings").Page("Strings").WebElement("TWL_One column string Required").VerifyMandatoryMessage "This is a required field"
	Browser("Strings").Page("Strings").WebElement("TWL_One Column String Tooltip").VerifyMandatoryMessage "This is a required field"
	Browser("Strings").Page("Strings").WebElement("TWL_Two Column String Required").VerifyMandatoryMessage "This is a required field"
	Browser("Strings").Page("Strings").WebElement("TWL_Alpha String- One Column").VerifyMandatoryMessage "This is a required field"
	Browser("Strings").Page("Strings").WebElement("TWL_Two Column Required Alpha").VerifyMandatoryMessage "This is a required field"
	Browser("Strings").Page("Strings").WebElement("TWL_Numeric String- One Column").VerifyMandatoryMessage "This is a required field"
	Browser("Strings").Page("Strings").WebElement("TWL_Numeric String- Two Column").VerifyMandatoryMessage "This is a required field"

End Function
''###################################################################################################
''Function Name : VerifyReadOnlyFieldsInStrings
''Description : Verify read only fields in String : TwoColumnReadOnlyString.one column String RO
''Author : Gallop
''###################################################################################################
Public Function VerifyReadOnlyFieldsInStrings
Environment.Value("StepName") = "VerifyReadOnlyFieldsInStrings"
	Browser("Strings").Page("Strings").WebElement("TWL_OneColStringRO").VerifyFieldIsReadOnly 
	Browser("Strings").Page("Strings").WebElement("TWL_TwoColumnReadOnlyString").VerifyFieldIsReadOnly 
End Function
''###################################################################################################
''Function Name : VerifyReadOnlyValuesInStrings
''Description : Verify read only values in strings
''Author : Gallop
''###################################################################################################
Public Function VerifyReadOnlyValuesInStrings
Environment.Value("StepName") = "VerifyReadOnlyValuesInStrings"
	Browser("Strings").Page("Strings").WebEdit("TXT_OneColumnRequired").ClickObject 
	Browser("Strings").Page("Strings").WebElement("TWL_One column string Required").VerifyMessageNotExists "This is a required field"
	Browser("Strings").Page("Strings").WebElement("TWL_One Column String Tooltip").VerifyMessageNotExists "This is a required field"
	Browser("Strings").Page("Strings").WebElement("TWL_Two Column String Required").VerifyMessageNotExists "This is a required field"
	Browser("Strings").Page("Strings").WebElement("TWL_Alpha String- One Column").VerifyMessageNotExists "This is a required field"
	Browser("Strings").Page("Strings").WebElement("TWL_Two Column Required Alpha").VerifyMessageNotExists "This is a required field"
	Browser("Strings").Page("Strings").WebElement("TWL_Numeric String- One Column").VerifyMessageNotExists "This is a required field"
	Browser("Strings").Page("Strings").WebElement("TWL_Numeric String- Two Column").VerifyMessageNotExists "This is a required field"
	Browser("Strings").Page("Strings").WebButton("BTN_Next").ClickObject 
	Browser("Strings Read Only").Page("Strings Read Only").WebElement("RWL_One column string Required").VerifyExists 
	Browser("Strings Read Only").Page("Strings Read Only").WebElement("RWL_One column string Required").VerifyDisplayedText dtScenario.value("OneColumnRequired")
	Browser("Strings Read Only").Page("Strings Read Only").WebElement("RWL_Two Column String Required").VerifyDisplayedText dtScenario.value("TwoColumnRequired")
	Browser("Strings Read Only").Page("Strings Read Only").WebElement("RWL_One Column String Tooltip").VerifyDisplayedText dtScenario.value("OneColumnToolTip")
	Browser("Strings Read Only").Page("Strings Read Only").WebElement("RWL_Alpha String- One Column Required").VerifyDisplayedText dtScenario.value("AlphaOneColumnRequired")
	Browser("Strings Read Only").Page("Strings Read Only").WebElement("RWL_Two Column Required Alpha").VerifyDisplayedText dtScenario.value("AlphaTwoColumnRequired")
	Browser("Strings Read Only").Page("Strings Read Only").WebElement("RWL_Numeric String- One Column").VerifyDisplayedText dtScenario.value("NumericOneColumnRequired")
	Browser("Strings Read Only").Page("Strings Read Only").WebElement("RWL_Numeric String- Two Column").VerifyDisplayedText dtScenario.value("NumericTwoColumnRequired")
End Function
''###################################################################################################
''Function Name : VerifySpellCheckInOneColumnStringSpellCheck
''Description : Verify spell check in One Column String Spell Check field
''Author : Gallop
''###################################################################################################
Public Function VerifySpellCheckInOneColumnStringSpellCheck
Environment.Value("StepName") = "VerifySpellCheckInOneColumnStringSpellCheck"
	Browser("Strings").Page("Strings").WebEdit("TXT_OneColumnSpellCheck").VerifyExists 
	Browser("Strings").Page("Strings").WebEdit("TXT_OneColumnSpellCheck").EnterText dtScenario.value("WrongWord")
	Browser("Strings").Page("Strings").WebElement("TWL_OneColumnStringSpell").VerifyExists 
	Browser("Strings").Page("Strings").WebElement("TWL_OneColumnStringSpell").ClickSpellCheckIcon 
	Browser("Strings").Frame("Window").WebList("DRP_dialogControl$Suggestions").VerifyExists 
	Browser("Strings").Frame("Window").WebList("DRP_dialogControl$Suggestions").VerifySpellCheck dtScenario.value("CorrectSpelling")
	Browser("Strings").Frame("Window").WebButton("BTN_Change").ClickObject 
	Browser("Strings").Dialog("SpellcheckPopUp").Static("MSG_TheSpellCheckiscomplete!").VerifyExists 
	Browser("Strings").Dialog("SpellcheckPopUp").WinButton("BTN_OK").ClickObject 
End Function
''###################################################################################################
''Function Name : VerifySplCharactersNotAllowedInStringsAlpha
''Description : Verify special characters are not allowed in all fields in String alpha only 
''Author : Gallop
''###################################################################################################
Public Function VerifySplCharactersNotAllowedInStringsAlpha
Environment.Value("StepName") = "VerifySplCharactersNotAllowedInStringsAlpha"
	Browser("Strings").Page("Strings").WebEdit("TXT_AlphaTwoColumTooltip").VerifyExists 
	Browser("Strings").Page("Strings").WebEdit("TXT_AlphaOneColumnRequired").VerifySpecialCharacterNotAllowed dtScenario.value("SpecialCharcters")
	Browser("Strings").Page("Strings").WebEdit("TXT_AlphaOneColumnNotRequired").VerifySpecialCharacterNotAllowed dtScenario.value("SpecialCharcters")
	Browser("Strings").Page("Strings").WebEdit("TXT_AlphaOneColumnSpellCheck").VerifySpecialCharacterNotAllowed dtScenario.value("SpecialCharcters")
	Browser("Strings").Page("Strings").WebEdit("TXT_AlphaOneColumnTooltip").VerifySpecialCharacterNotAllowed dtScenario.value("SpecialCharcters")
	Browser("Strings").Page("Strings").WebEdit("TXT_AlphaTwoColumTooltip").VerifySpecialCharacterNotAllowed dtScenario.value("SpecialCharcters")
	Browser("Strings").Page("Strings").WebEdit("TXT_AlphaTwoColumnRequired").VerifySpecialCharacterNotAllowed dtScenario.value("SpecialCharcters")
	Browser("Strings").Page("Strings").WebEdit("TXT_AlphaTwoColumnSpellCheck").VerifySpecialCharacterNotAllowed dtScenario.value("SpecialCharcters")
	Browser("Strings").Page("Strings").WebEdit("TXT_AlphaTwoColumnMinMax").VerifySpecialCharacterNotAllowed dtScenario.value("SpecialCharcters")
End Function
''###################################################################################################
''Function Name : VerifyTootlTipOnOneColumnStringTooltip
''Description : Verify tool tip on One Column String Tooltip Spellcheck
''Author : Gallop
''###################################################################################################
Public Function VerifyTootlTipOnOneColumnStringTooltip
Environment.Value("StepName") = "VerifyTootlTipOnOneColumnStringTooltip"
	Browser("Strings").Page("Strings").WebEdit("TXT_OneColumnToolTip").VerifyExists 
	Browser("Strings").Page("Strings").WebEdit("TXT_OneColumnToolTip").VerifyToolTip "This is a tooltip for a one column string"
End Function
''###################################################################################################
''Function Name : VerifyWidthInStrings
''Description : Verify that One column questions are one column in width, two column questions are one column in width.
''Author : Gallop
''###################################################################################################
Public Function VerifyWidthInStrings
Environment.Value("StepName") = "VerifyWidthInStrings"
	Call VerifyColumnWidthInStrings()
End Function
''###################################################################################################
''Function Name : CreateNewRecordInTables
''Description : Create new record in Tables
''Author : Gallop
''###################################################################################################
Public Function CreateNewRecordInTables
Environment.Value("StepName") = "CreateNewRecordInTables"
	Browser("Entry").Page("Entry").WebButton("BTN_NewItem").ClickObject 
	Browser("Test Repeating Module").Page("Test Repeating Module").WebElement("LBL_RepeatingModuleQuestions").VerifyPageName 
	Browser("Test Repeating Module").Page("Test Repeating Module").WebEdit("TXT_FirstName").EnterText dtScenario.value("FirstName")
	Browser("Test Repeating Module").Page("Test Repeating Module").WebEdit("TXT_LastName").EnterText dtScenario.value("LastName")
	Browser("Test Repeating Module").Page("Test Repeating Module").WebEdit("TXT_ClientID").EnterText dtScenario.value("ClientID")
	Browser("Test Repeating Module").Page("Test Repeating Module").WebButton("BTN_Next").ClickObject 
End Function
''###################################################################################################
''Function Name : DeleteRecordAndVerify
''Description : Delete record and verify record is not present in table
''Author : Gallop
''###################################################################################################
Public Function DeleteRecordAndVerify
Environment.Value("StepName") = "DeleteRecordAndVerify"
	Browser("Entry").Page("Entry").WebButton("BTN_NewItem").ClickObject 
	Browser("Test Repeating Module").Page("Test Repeating Module").WebElement("LBL_RepeatingModuleQuestions").VerifyPageName 
	Browser("Test Repeating Module").Page("Test Repeating Module").WebEdit("TXT_FirstName").EnterText dtScenario.value("FirstName")
	Browser("Test Repeating Module").Page("Test Repeating Module").WebEdit("TXT_LastName").EnterText dtScenario.value("LastName")
	Browser("Test Repeating Module").Page("Test Repeating Module").WebEdit("TXT_ClientID").EnterText GenerateRandomNumber
	Browser("Test Repeating Module").Page("Test Repeating Module").WebButton("BTN_Next").ClickObject 
	Browser("Entry").Page("Entry").WebElement("LBL_RepeatingModuleDataTable").VerifyPageName 
	Browser("Entry").Page("Entry").Link("LNK_GoToTheLastPage").ClickObject 
	Browser("Entry").Page("Entry").WebTable("TBL_RepeatingModuleDataTable").ClickIconInLastRowInTable "DELETE"
	Browser("Entry").Dialog("DeleteWarningMessage").Static("MSG_AreYouSureYouWantToDeleteThisRecord").VerifyExists 
	Browser("Entry").Dialog("DeleteWarningMessage").WinButton("BTN_OK").ClickObject 
	Browser("Entry").Page("Entry").Link("LNK_GoToTheLastPage").ClickObject 
	Browser("Entry").Page("Entry").WebTable("TBL_RepeatingModuleDataTable").VerifyRecordNotPresentInTable GlobalVrDictionaryObj.item( "gUniqueNumber")
End Function
''###################################################################################################
''Function Name : EditAndVerifyRecordInTables
''Description : Edit and verify first and last name of record created
''Author : Gallop
''###################################################################################################
Public Function EditAndVerifyRecordInTables
Environment.Value("StepName") = "EditAndVerifyRecordInTables"
	Browser("Entry").Page("Entry").Link("LNK_GoToTheLastPage").ClickObject 
	Browser("Entry").Page("Entry").WebTable("TBL_RepeatingModuleDataTable").ClickIconInLastRowInTable "EDIT"
	Browser("Test Repeating Module").Page("Test Repeating Module").WebElement("LBL_RepeatingModuleQuestions").VerifyPageName 
	Browser("Test Repeating Module").Page("Test Repeating Module").WebEdit("TXT_FirstName").EnterText dtScenario.value("FirstNameUpdated")
	Browser("Test Repeating Module").Page("Test Repeating Module").WebEdit("TXT_LastName").EnterText dtScenario.value("LastNameUpdated")
	Browser("Test Repeating Module").Page("Test Repeating Module").WebButton("BTN_Next").ClickObject 
	Browser("Entry").Page("Entry").WebElement("LBL_RepeatingModuleDataTable").VerifyPageName 
	Browser("Entry").Page("Entry").Link("LNK_GoToTheLastPage").ClickObject 
	Browser("Entry").Page("Entry").WebTable("TBL_RepeatingModuleDataTable").VerifyDataInLastRowInTable dtScenario.value("UpdatedData")
End Function
''###################################################################################################
''Function Name : VerifyCreatedRecordIntable
''Description : Verify new record is present in last row of the table
''Author : Gallop
''###################################################################################################
Public Function VerifyCreatedRecordIntable
Environment.Value("StepName") = "VerifyCreatedRecordIntable"
	Browser("Entry").Page("Entry").WebElement("LBL_RepeatingModuleDataTable").VerifyPageName 
	Browser("Entry").Page("Entry").Link("LNK_GoToTheLastPage").ClickObject 
	Browser("Entry").Page("Entry").WebTable("TBL_RepeatingModuleDataTable").VerifyDataInLastRowInTable dtScenario.value("NewRecordData")
End Function
''###################################################################################################
''Function Name : VerifyItemsPerPageInTables
''Description : Select Items per page from dropdown and verify number of record
''Author : Gallop
''###################################################################################################
Public Function VerifyItemsPerPageInTables
Environment.Value("StepName") = "VerifyItemsPerPageInTables"
	Browser("Grid Simple Condition").Page("Grid Simple Condition").WebElement("DWL_SelectItemsPerPage").WaitForObjectToLoad 
	Browser("Grid Simple Condition").Page("Grid Simple Condition").WebElement("DWL_SelectItemsPerPage").ClickObject 
	Browser("Grid Simple Condition").Page("Grid Simple Condition").WebElement("DWL_SelectItemsPerPage").SelectListBox "5"
	Browser("Grid Simple Condition").Page("Grid Simple Condition").WebTable("TBL_GridWConditionBlocks").WaitForObjectToLoad 
	Browser("Grid Simple Condition").Page("Grid Simple Condition").WebTable("TBL_GridWConditionBlocks").VerifyNumOfRowsInTable "5"
	Browser("Grid Simple Condition").Page("Grid Simple Condition").WebElement("DWL_SelectItemsPerPage").ClickObject 
	Browser("Grid Simple Condition").Page("Grid Simple Condition").WebElement("DWL_SelectItemsPerPage").SelectListBox "10"
	Browser("Grid Simple Condition").Page("Grid Simple Condition").WebTable("TBL_GridWConditionBlocks").WaitForObjectToLoad 
	Browser("Grid Simple Condition").Page("Grid Simple Condition").WebTable("TBL_GridWConditionBlocks").VerifyNumOfRowsInTable "10"
	Browser("Grid Simple Condition").Page("Grid Simple Condition").WebElement("DWL_SelectItemsPerPage").ClickObject 
	Browser("Grid Simple Condition").Page("Grid Simple Condition").WebElement("DWL_SelectItemsPerPage").SelectListBox "20"
	Browser("Grid Simple Condition").Page("Grid Simple Condition").WebTable("TBL_GridWConditionBlocks").WaitForObjectToLoad 
	Browser("Grid Simple Condition").Page("Grid Simple Condition").WebTable("TBL_GridWConditionBlocks").VerifyNumOfRowsInTable "20"

End Function
''###################################################################################################
''Function Name : VerifyPagingAndRecordsDisplayedInTables
''Description : verify paging in tables
''Author : Gallop
''###################################################################################################
Public Function VerifyPagingAndRecordsDisplayedInTables
Environment.Value("StepName") = "VerifyPagingAndRecordsDisplayedInTables"
	Browser("Entry").Page("Entry").Link("LNK_2").ClickObject 
	Browser("Entry").Page("Entry").WebTable("TBL_RepeatingModuleDataTable").VerifyRecordsDisplayedInTable "PAGE2"
	Browser("Entry").Page("Entry").Link("LNK_1").ClickObject 
	Browser("Entry").Page("Entry").WebTable("TBL_RepeatingModuleDataTable").VerifyRecordsDisplayedInTable "PAGE1"
	Browser("Entry").Page("Entry").Link("LNK_GoToTheNextPage").ClickObject 
	Browser("Entry").Page("Entry").WebTable("TBL_RepeatingModuleDataTable").VerifyRecordsDisplayedInTable "NEXTPAGE"
	Browser("Entry").Page("Entry").Link("LNK_GoToThePreviousPage").ClickObject 
	Browser("Entry").Page("Entry").WebTable("TBL_RepeatingModuleDataTable").VerifyRecordsDisplayedInTable "PREVIOUSPAGE"
	Browser("Entry").Page("Entry").Link("LNK_GoToTheLastPage").ClickObject 
	Browser("Entry").Page("Entry").WebTable("TBL_RepeatingModuleDataTable").VerifyRecordsDisplayedInTable "LASTPAGE"
	Browser("Entry").Page("Entry").Link("LNK_GoToTheFirstPage").ClickObject 
	Browser("Entry").Page("Entry").WebTable("TBL_RepeatingModuleDataTable").VerifyRecordsDisplayedInTable "FIRSTPAGE"
End Function
''###################################################################################################
''Function Name : FillRequiredDetailsInYesNo
''Description : Fill all mandatory fields and selct No for all fields in Yes No Alert and click Next
''Author : Gallop
''###################################################################################################
Public Function FillRequiredDetailsInYesNo
Environment.Value("StepName") = "FillRequiredDetailsInYesNo"
	Browser("Yes/No").Page("Yes/No").WebElement("RDL_Yes/NoOneColumn").SelectRadioButton "YES"
	Browser("Yes/No").Page("Yes/No").WebElement("RDL_Yes/NoOneColumn2").SelectRadioButton "YES"
	Browser("Yes/No").Page("Yes/No").WebElement("RDL_Yes/NoTwoColumnUsually").SelectRadioButton "YES"
	Browser("Yes/No").Page("Yes/No").WebElement("RDL_ALERTTwoColumn").SelectRadioButton "NO"
	Browser("Yes/No").Page("Yes/No").WebElement("RDL_ALERTOneColumn").SelectRadioButton "NO"
	Browser("Yes/No").Page("Yes/No").WebElement("RDL_ALERTOneColumn2").SelectRadioButton "NO"
	Browser("Yes/No").Page("Yes/No").WebElement("RDL_ALERTDefaulted").SelectRadioButton "NO"
	Browser("Yes/No").Page("Yes/No").WebElement("RDL_ALERTDefaultedTwoColumn").SelectRadioButton "NO"
	Browser("Yes/No").Page("Yes/No").WebButton("BTN_Next").ClickObject 
	Browser("Yes/No Read Only").Page("Yes/No Read Only").WebElement("LBL_Yes/No").VerifyPageName 
End Function
''###################################################################################################
''Function Name : VerifyDeafultValuesInYesNo
''Description : Verify default radio buttons selected in Yes No Page
''Author : Gallop
''###################################################################################################
Public Function VerifyDeafultValuesInYesNo
Environment.Value("StepName") = "VerifyDeafultValuesInYesNo"
	Browser("Yes/No").Page("Yes/No").WebButton("BTN_Next").WaitForObjectToLoad dtScenario.value("TimeInSecs")
	Browser("Yes/No").Page("Yes/No").WebElement("RDL_Yes/NoDefaulted").VerifyRadioButtonIsSelected "YES"
	Browser("Yes/No").Page("Yes/No").WebElement("RDL_Yes/NoDefaultedTwoColumn").VerifyRadioButtonIsSelected "NO"
End Function
''###################################################################################################
''Function Name : VerifyMandatoryMessagesInYesNo
''Description : Verimanadatory messages displayed in Yes No page
''Author : Gallop
''###################################################################################################
Public Function VerifyMandatoryMessagesInYesNo
Environment.Value("StepName") = "VerifyMandatoryMessagesInYesNo"
	Browser("Yes/No").Page("Yes/No").WebButton("BTN_Next").ClickObject 
	Browser("Yes/No").Page("Yes/No").WebElement("RDL_Yes/NoOneColumn").VerifyMandatoryMessage "Selection required"
	Browser("Yes/No").Page("Yes/No").WebElement("RDL_Yes/NoOneColumn2").VerifyMandatoryMessage "Selection required"
	Browser("Yes/No").Page("Yes/No").WebElement("RDL_Yes/NoTwoColumnUsually").VerifyMandatoryMessage "Selection required"
	Browser("Yes/No").Page("Yes/No").WebElement("RDL_ALERTOneColumn").VerifyMandatoryMessage "Selection required"
	Browser("Yes/No").Page("Yes/No").WebElement("RDL_ALERTOneColumn2").VerifyMandatoryMessage "Selection required"
	Browser("Yes/No").Page("Yes/No").WebElement("RDL_ALERTTwoColumn").VerifyMandatoryMessage "Selection required"
End Function
''###################################################################################################
''Function Name : VerifyYellowBackground
''Description : For every Yes answer in the "Yes/No ALERT" field, Verify that there should be a yellow alert icon next to the value in the read-only page
''Author : Gallop
''###################################################################################################
Public Function VerifyYellowBackground
Environment.Value("StepName") = "VerifyYellowBackground"
	Browser("Yes/No").Page("Yes/No").WebElement("RDL_Yes/NoOneColumn").SelectRadioButton "NO"
	Browser("Yes/No").Page("Yes/No").WebElement("RDL_Yes/NoOneColumn2").SelectRadioButton "YES"
	Browser("Yes/No").Page("Yes/No").WebElement("RDL_Yes/NoTwoColumnUsually").SelectRadioButton "NO"
	Browser("Yes/No").Page("Yes/No").WebElement("RDL_ALERTOneColumn").SelectRadioButton "YES"
	Browser("Yes/No").Page("Yes/No").WebElement("RDL_ALERTTwoColumn").SelectRadioButton "YES"
	Browser("Yes/No").Page("Yes/No").WebElement("RDL_ALERTOneColumn2").SelectRadioButton "YES"
	Browser("Yes/No").Page("Yes/No").WebElement("RDL_ALERTDefaulted").SelectRadioButton "NO"
	Browser("Yes/No").Page("Yes/No").WebElement("RDL_ALERTDefaultedTwoColumn").SelectRadioButton "YES"
	Browser("Yes/No").Page("Yes/No").WebButton("BTN_Next").ClickObject 
	Browser("Yes/No Read Only").Page("Yes/No Read Only").WebElement("LBL_Yes/No").VerifyPageName 
	Browser("Yes/No Read Only").Page("Yes/No Read Only").WebElement("RWL_ALERTOneColumn").VerifyYellowAlert 
	Browser("Yes/No Read Only").Page("Yes/No Read Only").WebElement("RWL_ALERTOneColumn2").VerifyYellowAlert 
	Browser("Yes/No Read Only").Page("Yes/No Read Only").WebElement("RWL_ALERTTwoColumn").VerifyYellowAlert 
	Browser("Yes/No Read Only").Page("Yes/No Read Only").WebElement("RWL_ALERTDefaulted").VerifyYellowAlertNotExist 
	Browser("Yes/No Read Only").Page("Yes/No Read Only").WebElement("RWL_ALERTDefaultedTwoColumn").VerifyYellowAlert 
End Function
''###################################################################################################
''Function Name : ValidateYesNoMultipleToggles
''Description : Validate Yes & No Toggle and Multiple Toggles can be selected
''Author : Gallop
''###################################################################################################
Public Function ValidateYesNoMultipleToggles
Environment.Value("StepName") = "ValidateYesNoMultipleToggles"
	Browser("Yes No Toggle").Page("Yes No Toggle").WebElement("TGL_Togglew/data").ClickOnToggles "Yes"
	Browser("Yes No Toggle").Page("Yes No Toggle").WebElement("TGL_Togglewo/Data").ClickOnToggles "No"
	Browser("Yes No Toggle").Page("Yes No Toggle").WebElement("TGL_Multi-Selectw/data").ClickOnToggles "Attachment"
	Browser("Yes No Toggle").Page("Yes No Toggle").WebElement("TGL_Multi-Selectw/data").ClickOnToggles "Email"
	Browser("Yes No Toggle").Page("Yes No Toggle").WebElement("TGL_Multi-Selectw/data").ClickOnToggles "Word Document"
	Browser("Yes No Toggle").Page("Yes No Toggle").WebElement("TGL_Togglew/data").ValidateToggleisSelected "Yes"
	Browser("Yes No Toggle").Page("Yes No Toggle").WebElement("TGL_Togglewo/Data").ValidateToggleisSelected "No"
	Browser("Yes No Toggle").Page("Yes No Toggle").WebElement("TGL_Multi-Selectw/data").ValidateToggleisSelected "Attachment"
	Browser("Yes No Toggle").Page("Yes No Toggle").WebElement("TGL_Multi-Selectw/data").ValidateToggleisSelected "Email"
	Browser("Yes No Toggle").Page("Yes No Toggle").WebElement("TGL_Multi-Selectw/data").ValidateToggleisSelected "Word Document"
	Browser("Yes No Toggle").Page("Yes No Toggle").WebButton("BTNYesNoToggle_Next").clickNext 
	Browser("Yes No Toggle Read Only").Page("Yes No Toggle Read Only").WebElement("RWL_Togglew/data").VerifyDisplayedText "Yes"
	Browser("Yes No Toggle Read Only").Page("Yes No Toggle Read Only").WebElement("RWL_Togglewo/Data").VerifyDisplayedText "No"
	Browser("Yes No Toggle Read Only").Page("Yes No Toggle Read Only").WebElement("RWL_Multi-Selectw/data").VerifyDisplayedText "Attachment"
	Browser("Yes No Toggle Read Only").Page("Yes No Toggle Read Only").WebElement("RWL_Multi-Selectw/data").VerifyDisplayedText "Email"
	Browser("Yes No Toggle Read Only").Page("Yes No Toggle Read Only").WebElement("RWL_Multi-Selectw/data").VerifyDisplayedText "Word Document"

End Function
''###################################################################################################
''Function Name : ValidateYesNoReqdField
''Description : Validate Yes & No Toggle can be selected
''Author : Gallop
''###################################################################################################
Public Function ValidateYesNoReqdField
Environment.Value("StepName") = "ValidateYesNoReqdField"
	Browser("Yes No Toggle").Page("Yes No Toggle").ClickObject 
	Browser("Yes No Toggle").Page("Yes No Toggle").WebElement("TGL_Togglew/data").ClickOnToggles "Yes"
	Browser("Yes No Toggle").Page("Yes No Toggle").WebElement("TGL_Togglewo/Data").ClickOnToggles "No"
	Browser("Yes No Toggle").Page("Yes No Toggle").WebElement("TGL_Multi-Selectw/data").ClickOnToggles "Email"
	Browser("Yes No Toggle").Page("Yes No Toggle").WebElement("TGL_Togglew/data").ValidateToggleisSelected "Yes"
	Browser("Yes No Toggle").Page("Yes No Toggle").WebElement("TGL_Togglewo/Data").ValidateToggleisSelected "No"
	Browser("Yes No Toggle").Page("Yes No Toggle").WebElement("TGL_Multi-Selectw/data").ValidateToggleisSelected "Email"
	Browser("Yes No Toggle").Page("Yes No Toggle").WebButton("BTNYesNoToggle_Next").clickNext 
	Browser("Yes No Toggle Read Only").Page("Yes No Toggle Read Only").WebElement("RWL_Togglew/data").VerifyDisplayedText "Yes"
	Browser("Yes No Toggle Read Only").Page("Yes No Toggle Read Only").WebElement("RWL_Togglewo/Data").VerifyDisplayedText "No"
	Browser("Yes No Toggle Read Only").Page("Yes No Toggle Read Only").WebElement("RWL_Multi-Selectw/data").VerifyDisplayedText "Email"

End Function
''###################################################################################################
''Function Name : ValidateYesNoToggle
''Description : Validate Yes & No Toggle can be selected
''Author : Gallop
''###################################################################################################
Public Function ValidateYesNoToggle
Environment.Value("StepName") = "ValidateYesNoToggle"
	Browser("Yes No Toggle").Page("Yes No Toggle").WebElement("TGL_Togglew/data").ClickOnToggles "Yes"
	Browser("Yes No Toggle").Page("Yes No Toggle").WebElement("TGL_Togglewo/Data").ClickOnToggles "No"
	Browser("Yes No Toggle").Page("Yes No Toggle").WebElement("TGL_Multi-Selectw/data").ClickOnToggles "Attachment"
	Browser("Yes No Toggle").Page("Yes No Toggle").WebElement("TGL_Togglew/data").ValidateToggleisSelected "Yes"
	Browser("Yes No Toggle").Page("Yes No Toggle").WebElement("TGL_Togglewo/Data").ValidateToggleisSelected "No"
	Browser("Yes No Toggle").Page("Yes No Toggle").WebElement("TGL_Multi-Selectw/data").ValidateToggleisSelected "Attachment"
	Browser("Yes No Toggle").Page("Yes No Toggle").WebButton("BTNYesNoToggle_Next").clickNext 
	Browser("Yes No Toggle Read Only").Page("Yes No Toggle Read Only").WebElement("RWL_Togglew/data").VerifyDisplayedText "Yes"
	Browser("Yes No Toggle Read Only").Page("Yes No Toggle Read Only").WebElement("RWL_Togglewo/Data").VerifyDisplayedText "No"
	Browser("Yes No Toggle Read Only").Page("Yes No Toggle Read Only").WebElement("RWL_Multi-Selectw/data").VerifyDisplayedText "Attachment"

End Function
''###################################################################################################
''Function Name : ColorValidation
''Description : Validate Red text changes color to black 
''Author : Gallop
''###################################################################################################
Public Function ColorValidation
Environment.Value("StepName") = "ColorValidation"
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxOneColumnReqd").VerifyColor "Red"
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxTwoColumnReqd").VerifyColor "Red"
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxGroupOneColumnReqd").VerifyColor "Red"
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxGroupTwoColumnSelect2-4").VerifyColor "Red"
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxOneColumnReqd").SelectCheckBox 
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxTwoColumnReqd").SelectCheckBox 
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxOne2SmallValue").SelectCheckBox 
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxGroupTwoSomething").SelectCheckBox 
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxGroupTwoBeGood").SelectCheckBox 
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_SmallCheckBoxValuesTim").SelectCheckBox 
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CBGroupWColSmall").SelectCheckBox 
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxOneColumnReqd").VerifyColor "Black"
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxTwoColumnReqd").VerifyColor "Black"
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxOneColumnReqd").VerifyColor "Black"
	Browser("Check Boxes").Page("Check Boxes").VerifyColor "Black"
	Browser("Check Boxes").Page("Check Boxes").WebButton("BTN_CHKBX_Next").ClickObject 
	Browser("Check Boxes Read Only").Page("Check Boxes Read Only").CheckBoxisCheckedinReadOnly 
	Browser("Check Boxes Read Only").Page("Check Boxes Read Only").WebElement("RWL_CheckBoxTwoColumn").CheckBoxisCheckedinReadOnly 
	Browser("Check Boxes Read Only").Page("Check Boxes Read Only").WebElement("RWL_CheckBoxGroupOneColumn2").VerifyDisplayedText "Small Value"
	Browser("Check Boxes Read Only").Page("Check Boxes Read Only").WebElement("RWL_CheckBoxGroupTwoColumn").VerifyDisplayedText "Be Good"
	Browser("Check Boxes Read Only").Page("Check Boxes Read Only").WebElement("RWL_CheckBoxGroupTwoColumn").VerifyDisplayedText "Something quite a bit longer in this selection"

End Function
''###################################################################################################
''Function Name : ValidateCheckBoxGroupTwoColumn
''Description : Error Validation of Check Box Group Two Column
''Author : Gallop
''###################################################################################################
Public Function ValidateCheckBoxGroupTwoColumn
Environment.Value("StepName") = "ValidateCheckBoxGroupTwoColumn"
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxOneColumn").SelectCheckBox 
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxTwoColumn").SelectCheckBox 
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxGroupTwoMediumSize").SelectCheckBox 
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxGroupTwoAnotherSmallValue").SelectCheckBox 
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxGroupTwoBeGood").SelectCheckBox 
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxGroupTwoSmall").SelectCheckBox 
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxGroupTwoSmallValue").SelectCheckBox 
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxGroupTwoSomething").SelectCheckBox 
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxGroupTwoThisisalsosomething").SelectCheckBox 
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxGroupTwoColumnReqd").VerifyMandatoryMessage "Entry cannot exceed 4"
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxGroupTwoSmallValue").DeselectCheckBox 
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxGroupTwoSomething").DeselectCheckBox 
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxGroupTwoThisisalsosomething").DeselectCheckBox 
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxGroupTwoColumnReqd").VerifyMessageNotExists "Entry cannot exceed 4"
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxGroupTwoColumnReqd").VerifyColor "Black"
End Function
''###################################################################################################
''Function Name : ValidateCheckBoxGroupTwoHidden
''Description : Check Box Group Two Column (must select 2-4 values) should be hidden on page
''Author : Gallop
''###################################################################################################
Public Function ValidateCheckBoxGroupTwoHidden
Environment.Value("StepName") = "ValidateCheckBoxGroupTwoHidden"
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxGroupOneMediumSize").SelectCheckBox 
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxGroupOneBeGood").SelectCheckBox 
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxGroupTwoColumnReqd").VerifyNotExists 
End Function
''###################################################################################################
''Function Name : ValidateCheckBoxOneColumn2
''Description : "Check Box One Column 2" has been selected and is not editable.
''Author : Gallop
''###################################################################################################
Public Function ValidateCheckBoxOneColumn2
Environment.Value("StepName") = "ValidateCheckBoxOneColumn2"
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxOneColumn2").CheckBoxisCheckedinReadOnly 
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_CheckBoxOneColumn2").CheckBoxisReadOnly 

End Function
''###################################################################################################
''Function Name : ValidateSmallCheckBoxValuesHidden
''Description : CheckboxHidden should be displayed
''Author : Gallop
''###################################################################################################
Public Function ValidateSmallCheckBoxValuesHidden
Environment.Value("StepName") = "ValidateSmallCheckBoxValuesHidden"
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_SmallCheckBoxValuesTim").SelectCheckBox 
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_SmallCheckBoxValuesMark").SelectCheckBox 
	Browser("Check Boxes").Page("Check Boxes").WebElement("CWL_HiddenCheckbox").VerifyExists 
End Function
''###################################################################################################
''Function Name : VerifyMessagesInBLAccountNumber
''Description : Eenter less than 8 valid numeric characters and verify message
''Author : Gallop
''###################################################################################################
Public Function VerifyMessagesInBLAccountNumber
Environment.Value("StepName") = "VerifyMessagesInBLAccountNumber"
	Browser("BL Account Number").Page("BL Account Number").WebEdit("TXT_BL#1").TypeText dtScenario.value("InvalidNumber")
	Browser("BL Account Number").Page("BL Account Number").WebEdit("TXT_BL#2").ClickObject 
	Browser("BL Account Number").Page("BL Account Number").WebEdit("TXT_BL#2").ClearText 
	Browser("BL Account Number").Page("BL Account Number").WebEdit("TXT_BL#2").TypeText dtScenario.value("InvalidNumber")
	Browser("BL Account Number").Page("BL Account Number").WebEdit("TXT_BL#3").TypeText dtScenario.value("InvalidNumber")
	Browser("BL Account Number").Page("BL Account Number").WebEdit("TXT_BL#1").ClickObject 
	Browser("BL Account Number").Page("BL Account Number").VerifyMandatoryMessage dtScenario.value("ErrorMessage")
	Browser("BL Account Number").Page("BL Account Number").WebElement("TWL_BL#2").VerifyMandatoryMessage dtScenario.value("ErrorMessage")
	Browser("BL Account Number").Page("BL Account Number").WebElement("TWL_BL#3").VerifyMandatoryMessage dtScenario.value("ErrorMessage")

End Function
''###################################################################################################
''Function Name : VerifyAlphaAndSplCharactersNotAllowedInPhone
''Description : Verofy alpha and special characters are not allowed in all fields in phone page
''Author : Gallop
''###################################################################################################
Public Function VerifyAlphaAndSplCharactersNotAllowedInPhone
Environment.Value("StepName") = "VerifyAlphaAndSplCharactersNotAllowedInPhone"
	Browser("Phone Number").Page("Phone Number").WebEdit("TXT_PhoneNumberOneColumn").VerifySpecialCharacterNotAllowed dtScenario.value("SpecialCharacters")
	Browser("Phone Number").Page("Phone Number").WebEdit("TXT_PhoneNumberOneColumn").VerifyAlphaCharacterNotAllowed dtScenario.value("AlphaCharacters")
	Browser("Phone Number").Page("Phone Number").WebEdit("TXT_PhoneNumberOneColumn2").VerifySpecialCharacterNotAllowed dtScenario.value("SpecialCharacters")
	Browser("Phone Number").Page("Phone Number").WebEdit("TXT_PhoneNumberOneColumn2").VerifyAlphaCharacterNotAllowed dtScenario.value("AlphaCharacters")
	Browser("Phone Number").Page("Phone Number").WebEdit("TXT_PhoneNumberTwoColumn").VerifySpecialCharacterNotAllowed dtScenario.value("SpecialCharacters")
	Browser("Phone Number").Page("Phone Number").WebEdit("TXT_PhoneNumberTwoColumn").VerifyAlphaCharacterNotAllowed dtScenario.value("AlphaCharacters")
	Browser("Phone Number").Page("Phone Number").WebEdit("TXT_PhoneNumberProtected").VerifySpecialCharacterNotAllowed dtScenario.value("SpecialCharacters")
	Browser("Phone Number").Page("Phone Number").WebEdit("TXT_PhoneNumberProtected").VerifyAlphaCharacterNotAllowed dtScenario.value("AlphaCharacters")
	Browser("Phone Number").Page("Phone Number").WebEdit("TXT_PhoneNumberNotRequired").VerifySpecialCharacterNotAllowed dtScenario.value("SpecialCharacters")
	Browser("Phone Number").Page("Phone Number").WebEdit("TXT_PhoneNumberNotRequired").VerifyAlphaCharacterNotAllowed dtScenario.value("AlphaCharacters")
End Function
''###################################################################################################
''Function Name : VerifyErrorMessageInSocial
''Description : Enter invalid values and verify messages in Social
''Author : Gallop
''###################################################################################################
Public Function VerifyErrorMessageInSocial
Environment.Value("StepName") = "VerifyErrorMessageInSocial"
	Browser("Social Security Number").Page("Social Security Number").WebEdit("TXT_SocialOneColumnRequired").TypeText dtScenario.value("SocialInvalidNumber")
	Browser("Social Security Number").Page("Social Security Number").WebEdit("TXT_SocialOneColumn2Required").TypeText dtScenario.value("SocialInvalidNumber")
	Browser("Social Security Number").Page("Social Security Number").WebEdit("TXT_SocialTwoColumn").TypeText dtScenario.value("SocialInvalidNumber")
	Browser("Social Security Number").Page("Social Security Number").WebEdit("TXT_SocialProtected").TypeText dtScenario.value("SocialInvalidNumber")
	Browser("Social Security Number").Page("Social Security Number").WebEdit("TXT_SocialNotRequired").TypeText dtScenario.value("SocialInvalidNumber")
	Browser("Social Security Number").Page("Social Security Number").WebEdit("TXT_SocialOneColumnRequired").ClickObject 
	Browser("Social Security Number").Page("Social Security Number").WebElement("TWL_SocialOneColumnRequired").VerifyMandatoryMessage dtScenario.value("ErrorMessage")
	Browser("Social Security Number").Page("Social Security Number").WebElement("TWL_SocialOneColumn2Required").VerifyMandatoryMessage dtScenario.value("ErrorMessage")
	Browser("Social Security Number").Page("Social Security Number").WebElement("TWL_SocialTwoColumn").VerifyMandatoryMessage dtScenario.value("ErrorMessage")
	Browser("Social Security Number").Page("Social Security Number").WebElement("TWL_SocialProtected").VerifyMandatoryMessage dtScenario.value("ErrorMessage")
	Browser("Social Security Number").Page("Social Security Number").WebElement("TWL_SocialNotRequired").VerifyMandatoryMessage dtScenario.value("ErrorMessage")
End Function
''###################################################################################################
''Function Name : NavigateToPhone
''Description : Navigate to Phone
''Author : Gallop
''###################################################################################################
Public Function NavigateToPhone
Environment.Value("StepName") = "NavigateToPhone"
	Browser("Work Queue").Page("Work Queue").WebElement("TAB_Tests").ClickObject 
	Browser("Work Queue").Page("Work Queue").WebElement("LNK_Test Question Types").ClickObject 
	Browser("Navigation Page").Page("Navigation Page").WebElement("DWL_Navigate through Service").SelectListBox "Phone"
	Browser("Navigation Page").Page("Navigation Page").WebButton("BTN_Next").ClickObject 
	Browser("Phone Number").Page("Phone Number").WebElement("LBL_PhoneNumbers").VerifyPageName 
	Browser("Phone Number").Page("Phone Number").WebElement("LBL_PhoneNumbers").PageSync 
End Function
''###################################################################################################
''Function Name : NavigateToSocial
''Description : Navigate to Social
''Author : Gallop
''###################################################################################################
Public Function NavigateToSocial
Environment.Value("StepName") = "NavigateToSocial"
	Browser("Work Queue").Page("Work Queue").WebElement("TAB_Tests").ClickObject 
	Browser("Work Queue").Page("Work Queue").WebElement("LNK_Test Question Types").ClickObject 
	Browser("Navigation Page").Page("Navigation Page").WebElement("DWL_Navigate through Service").SelectListBox "Social"
	Browser("Navigation Page").Page("Navigation Page").WebButton("BTN_Next").ClickObject 
	Browser("Social Security Number").Page("Social Security Number").WebElement("LBL_SocialSecurityNumber").VerifyPageName 
	Browser("Social Security Number").Page("Social Security Number").WebElement("LBL_SocialSecurityNumber").PageSync 
End Function
''###################################################################################################
''Function Name : NavigateToTaxID
''Description : Navigate to Tax ID
''Author : Gallop
''###################################################################################################
Public Function NavigateToTaxID
Environment.Value("StepName") = "NavigateToTaxID"
	Browser("Work Queue").Page("Work Queue").WebElement("TAB_Tests").ClickObject 
	Browser("Work Queue").Page("Work Queue").WebElement("LNK_Test Question Types").ClickObject 
	Browser("Navigation Page").Page("Navigation Page").WebElement("DWL_Navigate through Service").SelectListBox "Tax ID"
	Browser("Navigation Page").Page("Navigation Page").WebButton("BTN_Next").ClickObject 
	Browser("Tax ID").Page("Tax ID").WebElement("LBL_TaxID").PageSync 
	Browser("Tax ID").Page("Tax ID").WebElement("LBL_TaxID").VerifyPageName 
End Function
''###################################################################################################
''Function Name : VerifyValuesFormattedWithDashInTaxID
''Description : Verify all four questions are automatically formatted with a dash in Tax Id
''Author : Gallop
''###################################################################################################
Public Function VerifyValuesFormattedWithDashInTaxID
Environment.Value("StepName") = "VerifyValuesFormattedWithDashInTaxID"
	Browser("Tax ID").Page("Tax ID").WebEdit("TXT_TaxIDw.DashesOneColumn").TypeText dtScenario.value("TaxID")
	Browser("Tax ID").Page("Tax ID").WebEdit("TXT_TaxIDw.DashesOneColumn2").TypeText dtScenario.value("TaxID")
	Browser("Tax ID").Page("Tax ID").WebEdit("TXT_TwoColumnTaxIDw.Dashes").TypeText dtScenario.value("TaxID")
	Browser("Tax ID").Page("Tax ID").WebEdit("TXT_TaxIDw.DashesProtected").TypeText dtScenario.value("TaxID")
	Browser("Tax ID").Page("Tax ID").WebEdit("TXT_TaxIDw.DashesOneColumn").VerifyValue dtScenario.value("TaxIDFormatted")
	Browser("Tax ID").Page("Tax ID").WebEdit("TXT_TaxIDw.DashesOneColumn2").VerifyValue dtScenario.value("TaxIDFormatted")
	Browser("Tax ID").Page("Tax ID").WebEdit("TXT_TwoColumnTaxIDw.Dashes").VerifyValue dtScenario.value("TaxIDFormatted")
	Browser("Tax ID").Page("Tax ID").WebEdit("TXT_TaxIDw.DashesProtected").VerifyValue dtScenario.value("TaxIDFormatted")
End Function
''###################################################################################################
''Function Name : NavigateToBLAccountNumber
''Description : Navigate to BL Account Number
''Author : Gallop
''###################################################################################################
Public Function NavigateToBLAccountNumber
Environment.Value("StepName") = "NavigateToBLAccountNumber"
	Browser("Work Queue").Page("Work Queue").WebElement("TAB_Tests").ClickObject 
	Browser("Work Queue").Page("Work Queue").WebElement("LNK_Test Question Types").ClickObject 
	Browser("Navigation Page").Page("Navigation Page").WebElement("DWL_Navigate through Service").SelectListBox "BL Account Number"
	Browser("Navigation Page").Page("Navigation Page").WebButton("BTN_Next").ClickObject 
	Browser("BL Account Number").Page("BL Account Number").WebElement("LBL_BLAccountNumber").PageSync 
	Browser("BL Account Number").Page("BL Account Number").WebElement("LBL_BLAccountNumber").VerifyPageName 
End Function
''###################################################################################################
''Function Name : NavigateToZipCode
''Description : Navigate to ZipCode
''Author : Gallop
''###################################################################################################
Public Function NavigateToZipCode
Environment.Value("StepName") = "NavigateToZipCode"
	Browser("Work Queue").Page("Work Queue").WebElement("TAB_Tests").ClickObject 
	Browser("Work Queue").Page("Work Queue").WebElement("LNK_Test Question Types").ClickObject 
	Browser("Navigation Page").Page("Navigation Page").WebElement("DWL_Navigate through Service").SelectListBox "Zip Code"
	Browser("Navigation Page").Page("Navigation Page").WebButton("BTN_Next").ClickObject 
	Browser("Zip Code").Page("Zip Code").WebElement("LBL_Zip Code").PageSync 
	Browser("Zip Code").Page("Zip Code").WebElement("LBL_Zip Code").VerifyPageName 
End Function
''###################################################################################################
''Function Name : FilldataAndVerifyReadyOnlyValuesInZipCode
''Description : Enter valid data and verify values in read only page in Zip Code
''Author : Gallop
''###################################################################################################
Public Function FilldataAndVerifyReadyOnlyValuesInZipCode
Environment.Value("StepName") = "FilldataAndVerifyReadyOnlyValuesInZipCode"
	Browser("Zip Code").Page("Zip Code").WebEdit("TXT_ZipCodeOneColumn").EnterText dtScenario.value("ZipCodeOneColumn")
	Browser("Zip Code").Page("Zip Code").WebEdit("TXT_ZipCodeOneColumn2").EnterText dtScenario.value("ZipCodeOneColumn2")
	Browser("Zip Code").Page("Zip Code").WebEdit("TXT_ZipCodeTwoColumn").EnterText dtScenario.value("ZipCodeTwoColumn")
	Browser("Zip Code").Page("Zip Code").WebEdit("TXT_ZipCodeMinMaxTest").EnterText dtScenario.value("ZipCodeMinMaxTest")
	Browser("Zip Code").Page("Zip Code").WebEdit("TXT_ZipCodeProtected").EnterText dtScenario.value("ZipCodeProtectec")
	Browser("Zip Code").Page("Zip Code").WebButton("BTN_Next").ClickObject 
	Browser("Zip Code Read Only").Page("Zip Code Read Only").WebElement("LBL_ZipCode").VerifyPageName 
	Browser("Zip Code Read Only").Page("Zip Code Read Only").WebElement("RWL_ZipCodeOneColumn").VerifyFieldIsReadOnly 
	Browser("Zip Code Read Only").Page("Zip Code Read Only").WebElement("RWL_ZipCodeOneColumn").VerifyDisplayedText dtScenario.value("ZipCodeOneColumn")
	Browser("Zip Code Read Only").Page("Zip Code Read Only").WebElement("RWL_ZipCodeOneColumn2").VerifyFieldIsReadOnly 
	Browser("Zip Code Read Only").Page("Zip Code Read Only").WebElement("RWL_ZipCodeOneColumn2").VerifyDisplayedText dtScenario.value("ZipCodeOneColumn2")
	Browser("Zip Code Read Only").Page("Zip Code Read Only").WebElement("RWL_ZipCodeTwoColumn").VerifyFieldIsReadOnly 
	Browser("Zip Code Read Only").Page("Zip Code Read Only").WebElement("RWL_ZipCodeTwoColumn").VerifyDisplayedText dtScenario.value("ZipCodeTwoColumn")
	Browser("Zip Code Read Only").Page("Zip Code Read Only").WebElement("RWL_ZipCodeMinMaxTest").VerifyFieldIsReadOnly 
	Browser("Zip Code Read Only").Page("Zip Code Read Only").WebElement("RWL_ZipCodeMinMaxTest").VerifyDisplayedText dtScenario.value("ZipCodeMinMaxTest")
	Browser("Zip Code Read Only").Page("Zip Code Read Only").WebElement("RWL_ZipCodeProtected").VerifyFieldIsReadOnly 
	Browser("Zip Code Read Only").Page("Zip Code Read Only").WebElement("RWL_ZipCodeProtected").VerifyDisplayedText dtScenario.value("ZipCodeProtectec")
End Function
''###################################################################################################
''Function Name : FillInvalidDetailsAndVerifyMessagesInZipCode
''Description : Fill invalid zipcodes and verify messages
''Author : Gallop
''###################################################################################################
Public Function FillInvalidDetailsAndVerifyMessagesInZipCode
Environment.Value("StepName") = "FillInvalidDetailsAndVerifyMessagesInZipCode"
	Browser("Zip Code").Page("Zip Code").WebEdit("TXT_ZipCodeOneColumn").EnterText dtScenario.value("InvalidZipCode")
	Browser("Zip Code").Page("Zip Code").WebEdit("TXT_ZipCodeOneColumn2").EnterText dtScenario.value("InvalidZipCode")
	Browser("Zip Code").Page("Zip Code").WebEdit("TXT_ZipCodeTwoColumn").EnterText dtScenario.value("InvalidZipCode")
	Browser("Zip Code").Page("Zip Code").WebEdit("TXT_ZipCodeMinMaxTest").EnterText dtScenario.value("InvalidZipCode")
	Browser("Zip Code").Page("Zip Code").WebEdit("TXT_ZipCodeProtected").EnterText dtScenario.value("InvalidZipCode")
	Browser("Zip Code").Page("Zip Code").WebEdit("TXT_ZipCodeOneColumn").ClickObject 
	Browser("Zip Code").Page("Zip Code").WebElement("TWL_ZipCodeOneColumn").VerifyMandatoryMessage dtScenario.value("Message")
	Browser("Zip Code").Page("Zip Code").WebElement("TWL_ZipCodeOneColumn2").VerifyMandatoryMessage dtScenario.value("Message")
	Browser("Zip Code").Page("Zip Code").WebElement("TWL_ZipCodeTwoColumn").VerifyMandatoryMessage dtScenario.value("Message")
	Browser("Zip Code").Page("Zip Code").WebElement("TWL_ZipCodeMinMaxTest").VerifyMandatoryMessage dtScenario.value("Message")
	Browser("Zip Code").Page("Zip Code").WebElement("TWL_ZipCodeProtected").VerifyMandatoryMessage dtScenario.value("Message")
End Function
''###################################################################################################
''Function Name : NavigateToRulesShowHideChangeSet
''Description : Navigate to Rules Show Hide Change Set
''Author : Gallop
''###################################################################################################
Public Function NavigateToRulesShowHideChangeSet
Environment.Value("StepName") = "NavigateToRulesShowHideChangeSet"
	Browser("Work Queue").Page("Work Queue").WebElement("TAB _Home").VerifyExists 
	Browser("Work Queue").Page("Work Queue").WebElement("TAB_Tests").ClickObject 
	Browser("Work Queue").Page("Work Queue").WebElement("LNK_Rules>Show/Hide/Change/Set").ClickObject 
	Browser("Entry").Page("Entry").WebButton("BTN_Next").WaitForObjectToLoad 
	Browser("Entry").Page("Entry").WebButton("BTN_Next").ClickObject 

End Function
''###################################################################################################
''Function Name : VerifyTwoColumnReadOnlyStringValueInRules
''Description : Verify Two Column Read Only String value in Rules
''Author : Gallop
''###################################################################################################
Public Function VerifyTwoColumnReadOnlyStringValueInRules
Environment.Value("StepName") = "VerifyTwoColumnReadOnlyStringValueInRules"
	Browser("Strings").Page("Strings").WebElement("LBL_RuleToTest").PageSync 
	Browser("Strings").Page("Strings").WebElement("LBL_RuleToTest").VerifyPageName 
	Browser("Strings").Page("Strings").WebElement("DWL_ChooseTheRuleYouWish").SelectListBox dtScenario.value("Rule")
	Browser("Strings").Page("Strings").WebElement("RWL_TwoColumnReadOnlyString").VerifyDisplayedText dtScenario.value("TwoColumnReadOnlyString")

End Function
''###################################################################################################
''Function Name : VerifyMenuItems
''Description : Menu items are not visible based on role/privilege.
''Author : Gallop
''###################################################################################################
Public Function VerifyMenuItems
Environment.Value("StepName") = "VerifyMenuItems"
	Browser("Work In Progress").Page("Work In Progress").WebElement("TAB_SecurityAdministration").VerifyNotExists 
	Browser("Work In Progress").Page("Work In Progress").WebElement("TAB_Administration").VerifyNotExists 
	Browser("Work In Progress").Page("Work In Progress").WebElement("TAB_Development").VerifyNotExists 
	Browser("Work In Progress").Page("Work In Progress").WebElement("TAB_Home").WaitForObjectToLoad 
	Browser("Work In Progress").Page("Work In Progress").WebElement("TAB_Home").VerifyExists 
	Browser("Work In Progress").Page("Work In Progress").WebElement("TAB_Tests").VerifyExists 
	Browser("Work In Progress").Page("Work In Progress").WebElement("TAB_WorkQueue").VerifyExists 
	Browser("Work In Progress").Page("Work In Progress").WebElement("TAB_Reports").VerifyExists 

End Function
''###################################################################################################
''Function Name : VerifySubMenuItems
''Description : Menu - Sub Menu items are not visible based on role/privilege.
''Author : Gallop
''###################################################################################################
Public Function VerifySubMenuItems
Environment.Value("StepName") = "VerifySubMenuItems"
	Browser("Work In Progress").Page("Work In Progress").WebElement("TAB_SecurityAdministration").VerifyExists 
	Browser("Work In Progress").Page("Work In Progress").WebElement("TAB_Administration").VerifyExists 
	Browser("Work In Progress").Page("Work In Progress").WebElement("TAB_Development").VerifyExists 
	Browser("Work In Progress").Page("Work In Progress").WebElement("TAB_Home").VerifyExists 
	Browser("Work In Progress").Page("Work In Progress").WebElement("TAB_Tests").VerifyExists 
	Browser("Work In Progress").Page("Work In Progress").WebElement("TAB_WorkQueue").VerifyExists 
	Browser("Work In Progress").Page("Work In Progress").WebElement("TAB_Reports").VerifyExists 
	Browser("Work In Progress").Page("Work In Progress").WebElement("TAB_Home").ClickObject 
	Browser("Work In Progress").Page("Work In Progress").WebElement("LNK_MyWorkinProgress").VerifyEnabledandVisible 
	Browser("Work In Progress").Page("Work In Progress").WebElement("LNK_PersonalDashboard").VerifyEnabledandVisible 
	Browser("Work In Progress").Page("Work In Progress").WebElement("LNK_MissingDocuments").VerifyEnabledandVisible 
	Browser("Work In Progress").Page("Work In Progress").WebElement("TAB_Tests").ClickObject 
	Browser("Work In Progress").Page("Work In Progress").WebElement("LNK_ButtonTesting").VerifyEnabledandVisible 
	Browser("Work In Progress").Page("Work In Progress").WebElement("LNK_AuditTestWorkflow").VerifyEnabledandVisible 
	Browser("Work In Progress").Page("Work In Progress").WebElement("LNK_RuleActions").VerifyEnabledandVisible 
	Browser("Work In Progress").Page("Work In Progress").WebElement("LNK_RulesShowHideChangeSet").VerifyEnabledandVisible 
	Browser("Work In Progress").Page("Work In Progress").WebElement("LNK_RulesDrop Downs").VerifyEnabledandVisible 
	Browser("Work In Progress").Page("Work In Progress").WebElement("LNK_RulesShowHideRowsColumns").VerifyEnabledandVisible 
	Browser("Work In Progress").Page("Work In Progress").WebElement("LNK_RulesChangeQuestion").VerifyEnabledandVisible 
	Browser("Work In Progress").Page("Work In Progress").WebElement("LNK_QuestionsEditableRule").VerifyEnabledandVisible 
	Browser("Work In Progress").Page("Work In Progress").WebElement("LNK_Tables").VerifyEnabledandVisible 
	Browser("Work In Progress").Page("Work In Progress").WebElement("LNK_TestWorkflowtab").VerifyEnabledandVisible 
	Browser("Work In Progress").Page("Work In Progress").WebElement("LNK_RulesGenerateArithmetic").VerifyEnabledandVisible 
	Browser("Work In Progress").Page("Work In Progress").WebElement("LNK_TestQuestionTypes").VerifyEnabledandVisible 
	Browser("Work In Progress").Page("Work In Progress").WebElement("LNK_TestDocumenttab").VerifyEnabledandVisible 
	Browser("Work In Progress").Page("Work In Progress").WebElement("TAB_WorkQueue").ClickObject 
	Browser("Work In Progress").Page("Work In Progress").WebElement("LNK_WorkQueueinWorkQueue").VerifyEnabledandVisible 
	Browser("Work In Progress").Page("Work In Progress").WebElement("LNK_ServiceRequestSearch").VerifyEnabledandVisible 
	Browser("Work In Progress").Page("Work In Progress").WebElement("LNK_WorkflowTaskSearch").VerifyEnabledandVisible 
	Browser("Work In Progress").Page("Work In Progress").WebElement("LNK_Dashboard").VerifyEnabledandVisible 
	Browser("Work In Progress").Page("Work In Progress").WebElement("LNK_TaskDashboard").VerifyEnabledandVisible 
	Browser("Work In Progress").Page("Work In Progress").WebElement("LNK_VolumeDashboard").VerifyEnabledandVisible 
	Browser("Work In Progress").Page("Work In Progress").WebElement("LNK_MissingDocumentsDashboard").VerifyEnabledandVisible 

End Function
''###################################################################################################
''Function Name : AddDropDownValueInRules
''Description : Verify "Was this added to the list?" is added in list after clicking Dropdown Add - yes toggle
''Author : Gallop
''###################################################################################################
Public Function AddDropDownValueInRules
Environment.Value("StepName") = "AddDropDownValueInRules"
	Browser("Drop Down Rules").Page("Drop Down Rules").WebElement("DWL_SelectToShowMessage").VerifyValueNotExistsInDropDown dtScenario.value("DropDownValue")
	Browser("Drop Down Rules").Page("Drop Down Rules").WebElement("TGL_DropDownAdd").ClickOnToggles "Yes"
	Browser("Drop Down Rules").Page("Drop Down Rules").WebElement("DWL_SelectToShowMessage").VerifyValueExistsInDropDown dtScenario.value("DropDownValue")

End Function
''###################################################################################################
''Function Name : RemoveDropDownValueInRules
''Description : Verify "By selecting Yes to Drop Down Remove this gets removed" is removed in list after clicking Dropdown Remove - yes toggle
''Author : Gallop
''###################################################################################################
Public Function RemoveDropDownValueInRules
Environment.Value("StepName") = "RemoveDropDownValueInRules"
	Browser("Drop Down Rules").Page("Drop Down Rules").WebElement("DWL_SelectToShowMessage").VerifyValueExistsInDropDown dtScenario.value("DropDownValue")
	Browser("Drop Down Rules").Page("Drop Down Rules").WebElement("TGL_DropDownRemove").ClickOnToggles "Yes"
	Browser("Drop Down Rules").Page("Drop Down Rules").WebElement("DWL_SelectToShowMessage").VerifyValueNotExistsInDropDown dtScenario.value("DropDownValue")

End Function
''###################################################################################################
''Function Name : VerifyHiddenQuestionsInStringsInRules
''Description : Verify "One Column String Not Visible" and "Two Column String Not Visible" are displayed
''Author : Gallop
''###################################################################################################
Public Function VerifyHiddenQuestionsInStringsInRules
Environment.Value("StepName") = "VerifyHiddenQuestionsInStringsInRules"
	Browser("Strings").Page("Strings").WebElement("LBL_RuleToTest").PageSync 
	Browser("Strings").Page("Strings").WebElement("LBL_RuleToTest").VerifyPageName "Yes"
	Browser("Strings").Page("Strings").WebElement("DWL_ChooseTheRuleYouWish").SelectListBox dtScenario.value("DropDownValue")
	Browser("Strings").Page("Strings").WebElement("TWL_OneColumnStringNotVisible").VerifyExists 
	Browser("Strings").Page("Strings").WebElement("TWL_TwoColumnStringNotVisible").VerifyExists 

End Function
''###################################################################################################
''Function Name : NavigateToRulesDropdowns
''Description : Navigate to Rules>Dropdowns
''Author : Gallop
''###################################################################################################
Public Function NavigateToRulesDropdowns
Environment.Value("StepName") = "NavigateToRulesDropdowns"
	Browser("Work Queue").Page("Work Queue").WebElement("TAB _Home").VerifyExists 
	Browser("Work Queue").Page("Work Queue").WebElement("TAB_Tests").ClickObject 
	Browser("Work Queue").Page("Work Queue").WebElement("LNK_Rules>Drop Downs").ClickObject 
	Browser("Drop Down Rules").Page("Drop Down Rules").WebElement("LBL_DropDownDrivers").PageSync 
	Browser("Drop Down Rules").Page("Drop Down Rules").WebElement("LBL_DropDownDrivers").VerifyPageName 

End Function
''###################################################################################################
''Function Name : VerifyGenerateArithmeticAdditionInRules
''Description : Verify Two Column Numeric question displays the sum of Numeric One Column + Numeric One Column 2.
''Author : Gallop
''###################################################################################################
Public Function VerifyGenerateArithmeticAdditionInRules
Environment.Value("StepName") = "VerifyGenerateArithmeticAdditionInRules"
	Browser("Arithmetic Numeric").Page("Arithmetic Numeric").WebEdit("TXT_NumericOneColumn").EnterText dtScenario.value("NumericOneCoumn")
	Browser("Arithmetic Numeric").Page("Arithmetic Numeric").WebEdit("TXT_NumericOneColumn2").EnterText dtScenario.value("NumericOneCoumn2")
	Browser("Arithmetic Numeric").Page("Arithmetic Numeric").WebEdit("TXT_NumericOneColumn").ClickObject 
	Browser("Arithmetic Numeric").Page("Arithmetic Numeric").WebEdit("TXT_TwoColumnNumeric").VerifyValue dtScenario.value("TwoColumnNumeric")

End Function
''###################################################################################################
''Function Name : VerifyGenerateArithmeticDivisionInRules
''Description : Verify Numeric Comma Not Required question displays the results of Numeric Comma One Column 2 divided by Numeric Comma Two Column
''Author : Gallop
''###################################################################################################
Public Function VerifyGenerateArithmeticDivisionInRules
Environment.Value("StepName") = "VerifyGenerateArithmeticDivisionInRules"
	Browser("Arithmetic Numeric").Page("Arithmetic Numeric").WebEdit("TXT_NumericCommaOneColumn2").EnterText dtScenario.value("NumericCommaOneColumn2")
	Browser("Arithmetic Numeric").Page("Arithmetic Numeric").WebEdit("TXT_NumericCommaTwoColumn").EnterText dtScenario.value("NumericCommaTwoColumn")
	Browser("Arithmetic Numeric").Page("Arithmetic Numeric").WebEdit("TXT_NumericCommaOneColumn2").ClickObject 
	Browser("Arithmetic Numeric").Page("Arithmetic Numeric").WebEdit("TXT_NumericCommaNotRequired").VerifyValue dtScenario.value("NumericCommaNotRequired")

End Function
''###################################################################################################
''Function Name : NavigateToRulesGenerateArithmetic
''Description : Navigate to Rules>GenerateArithmetic
''Author : Gallop
''###################################################################################################
Public Function NavigateToRulesGenerateArithmetic
Environment.Value("StepName") = "NavigateToRulesGenerateArithmetic"
	Browser("Work Queue").Page("Work Queue").WebElement("TAB _Home").VerifyExists 
	Browser("Work Queue").Page("Work Queue").WebElement("TAB_Tests").ClickObject 
	Browser("Work Queue").Page("Work Queue").WebElement("LNK_Rules>Generate Arithmetic").ClickObject 
	Browser("Arithmetic Numeric").Page("Arithmetic Numeric").WebElement("LBL_Numeric").PageSync 
	Browser("Arithmetic Numeric").Page("Arithmetic Numeric").WebElement("LBL_Numeric").VerifyPageName 

End Function
''###################################################################################################
''Function Name : NavigateToXML
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function NavigateToXML
Environment.Value("StepName") = "NavigateToXML"
	Browser("Work Queue").Page("Work Queue").WebElement("TAB_Tests").ClickObject 
	Browser("Work Queue").Page("Work Queue").WebElement("LNK_Test Question Types").ClickObject 
	Browser("Navigation Page").Page("Navigation Page").WebElement("DWL_Navigate through Service").SelectListBox "XML"
	Browser("Navigation Page").Page("Navigation Page").WebButton("BTN_Next").ClickObject 
	Browser("XML").Page("XML").WebButton("BTN_Next").ClickObject 

End Function
''###################################################################################################
''Function Name : FillDataInXML
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function FillDataInXML
Environment.Value("StepName") = "FillDataInXML"
	Browser("XML").Page("XML").WebEdit("TXT_OneColumn").EnterText dtScenario.value("OneColumn")
	Browser("XML").Page("XML").WebEdit("TXT_OneColumn2").EnterText dtScenario.value("OneColumn2")
	Browser("XML").Page("XML").WebEdit("TXT_TwoColumn").EnterText dtScenario.value("TwoColumn")
	Browser("XML").Page("XML").WebEdit("TXT_Min/Max").EnterText dtScenario.value("Min/Max")

End Function
''###################################################################################################
''Function Name : VerifyMessagesInXML
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyMessagesInXML
Environment.Value("StepName") = "VerifyMessagesInXML"
	Browser("XML").Page("XML").WebButton("BTN_Next").WaitForObjectToLoad 
	Browser("XML").Page("XML").WebButton("BTN_Next").ClickObject 
	Browser("XML").Page("XML").WebElement("TWL_XML OneColumn").VerifyMandatoryMessage "This is a required field" 
	Browser("XML").Page("XML").WebElement("TWL_XMLOneColumn2").VerifyMandatoryMessage "This is a required field" 
	Browser("XML").Page("XML").WebElement("TWL_MinMaxTest").VerifyMandatoryMessage "This is a required field" 
	Browser("XML").Page("XML").WebElement("TWL_XMLTwoColumn").VerifyMandatoryMessage "This is a required field" 

End Function
''###################################################################################################
''Function Name : VerifyReadOnlyValuesInXML
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyReadOnlyValuesInXML
Environment.Value("StepName") = "VerifyReadOnlyValuesInXML"
	Browser("XML").Page("XML").WebEdit("TXT_OneColumn").ClickObject 
	Browser("XML").Page("XML").WebElement("TWL_XML OneColumn").VerifyMessageNotExists "This is a required field" 
	Browser("XML").Page("XML").WebElement("TWL_XMLOneColumn2").VerifyMessageNotExists "This is a required field" 
	Browser("XML").Page("XML").WebElement("TWL_XMLTwoColumn").VerifyMessageNotExists "This is a required field" 
	Browser("XML").Page("XML").WebElement("TWL_MinMaxTest").VerifyMessageNotExists "This is a required field" 
	Browser("XML").Page("XML").WebButton("BTN_Next").ClickObject 
	Browser("XML Read Only").Page("XML Read Only").WebElement("RWL_OneColumn").VerifyDisplayedText dtScenario.value("XMLOneColumn")
	Browser("XML Read Only").Page("XML Read Only").WebElement("RWL_OneColumn2").VerifyDisplayedText dtScenario.value("XMLOneColumn2")
	Browser("XML Read Only").Page("XML Read Only").WebElement("RWL_TwoColumn").VerifyDisplayedText dtScenario.value("XMLTwoColumn")
	Browser("XML Read Only").Page("XML Read Only").WebElement("RWL_MinMaxTest").VerifyDisplayedText dtScenario.value("XMLMinMax")
End Function
''###################################################################################################
''Function Name : VerifySpellCheckInXML
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifySpellCheckInXML
Environment.Value("StepName") = "VerifySpellCheckInXML"
	Browser("XML").Page("XML").WebEdit("TXT_OneColumn").VerifyExists 
	Browser("XML").Page("XML").WebEdit("TXT_OneColumn").EnterText dtScenario.value("WrongWord")
	Browser("XML").Page("XML").WebElement("TWL_XML OneColumn").VerifyExists 
	Browser("XML").Page("XML").WebElement("TWL_XML OneColumn").ClickSpellCheckIcon 
	Browser("XML").Frame("Window").WebList("dialogControl$Suggestions").VerifyExists 
	Browser("XML").Frame("Window").WebList("dialogControl$Suggestions").VerifySpellCheck dtScenario.value("CorrectSpelling")
	Browser("XML").Frame("Window").WebButton("BTN_Change").ClickObject 
	Browser("XML").Dialog("Message from webpage").Static("The Spell Check is complete!").VerifyExists 
	Browser("XML").Dialog("Message from webpage").WinButton("BTN_OK").ClickObject 
End Function
''###################################################################################################
''Function Name : VerifyGenerateArithmeticMultiplicationInRules
''Description : Verify Two Column Numeric displays the results of Not Required Numeric multiplied by Numeric Nondecimal
''Author : Gallop
''###################################################################################################
Public Function VerifyGenerateArithmeticMultiplicationInRules
Environment.Value("StepName") = "VerifyGenerateArithmeticMultiplicationInRules"
	Browser("Arithmetic Numeric").Page("Arithmetic Numeric").WebEdit("TXT_NotRequiredNumeric").EnterText dtScenario.value("NotRequiredNumeric")
	Browser("Arithmetic Numeric").Page("Arithmetic Numeric").WebEdit("TXT_NumericNonDecimal").EnterText dtScenario.value("NumericNonDecimal")
	Browser("Arithmetic Numeric").Page("Arithmetic Numeric").WebEdit("TXT_NotRequiredNumeric").ClickObject 
	Browser("Arithmetic Numeric").Page("Arithmetic Numeric").WebEdit("TXT_TwoColumnNumeric").VerifyValue dtScenario.value("TwoColumnNumeric")

End Function
''###################################################################################################
''Function Name : VerifyGenerateArithmeticSubtractionInRules
''Description : Verify Numeric One Column  displays the results of Numeric One Column 2 subtracted from Two Column Numeric
''Author : Gallop
''###################################################################################################
Public Function VerifyGenerateArithmeticSubtractionInRules
Environment.Value("StepName") = "VerifyGenerateArithmeticSubtractionInRules"
	Browser("Arithmetic Numeric").Page("Arithmetic Numeric").WebEdit("TXT_TwoColumnNumeric").EnterText dtScenario.value("TwoColumnNumeric")
	Browser("Arithmetic Numeric").Page("Arithmetic Numeric").WebEdit("TXT_NumericOneColumn2").EnterText dtScenario.value("NumericOneCoumn2")
	Browser("Arithmetic Numeric").Page("Arithmetic Numeric").WebEdit("TXT_TwoColumnNumeric").ClickObject 
	Browser("Arithmetic Numeric").Page("Arithmetic Numeric").WebEdit("TXT_NumericOneColumn").VerifyValue dtScenario.value("NumericOneCoumn")

End Function
''###################################################################################################
''Function Name : NavigateToTextBox
''Description : test desc
''Author : Chris Jarrell
''###################################################################################################
Public Function NavigateToTextBox
Environment.Value("StepName") = "NavigateToTextBox"
	Browser("Work Queue").Page("Work Queue").WebElement("TAB_Tests").ClickObject 
	Browser("Work Queue").Page("Work Queue").WebElement("LNK_Test Question Types").ClickObject 
	Browser("Navigation Page").Page("Navigation Page").WebElement("DWL_Navigate through Service").SelectListBox "Text Box"
	Browser("Navigation Page").Page("Navigation Page").WebButton("BTN_Next").ClickObject 

End Function
''###################################################################################################
''Function Name : FillDataInTextBox
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function FillDataInTextBox
Environment.Value("StepName") = "FillDataInTextBox"
	Browser("Text Box").Page("Text Box").WebEdit("TXT_LargeOneColumnRequired").EnterText dtScenario.value("LargeOneColumnRequired")
	Browser("Text Box").Page("Text Box").WebEdit("TXT_LargeTwoColumnRequired").EnterText dtScenario.value("LargeTwoColumnRequired")

End Function
''###################################################################################################
''Function Name : VerifyMessagesInTextBox
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyMessagesInTextBox
Environment.Value("StepName") = "VerifyMessagesInTextBox"
	Browser("Text Box").Page("Text Box").WebButton("BTN_Next").WaitForObjectToLoad 
	Browser("Text Box").Page("Text Box").WebButton("BTN_Next").ClickObject 
	Browser("Text Box").Page("Text Box").WebElement("TWL_Large One Column Required").VerifyMandatoryMessage "This is a required field"
	Browser("Text Box").Page("Text Box").WebElement("TWL_Large Two Column Required").VerifyMandatoryMessage "This is a required field"

End Function
''###################################################################################################
''Function Name : VerifyReadOnlyValuesInTextBox
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyReadOnlyValuesInTextBox
Environment.Value("StepName") = "VerifyReadOnlyValuesInTextBox"
	Browser("Text Box").Page("Text Box").WebEdit("TXT_LargeOneColumnRequired").ClickObject 
	Browser("Text Box").Page("Text Box").VerifyMessageNotExists "This is a required field"
	Browser("Text Box").Page("Text Box").VerifyMessageNotExists "This is a required field"
	Browser("Text Box").Page("Text Box").WebButton("BTN_Next").ClickObject 
	Browser("Text Box Read Only").Page("Text Box Read Only").WebElement("RWL_LargeOneColumnRequired").VerifyDisplayedText dtScenario.value("LargeOneColumnRequired")
	Browser("Text Box Read Only").Page("Text Box Read Only").WebElement("RWL_LargeTwoColumnRequired").VerifyDisplayedText dtScenario.value("LargeTwoColumnRequired")

End Function
''###################################################################################################
''Function Name : VerifySpellCheckInOneColumnTextBox
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifySpellCheckInOneColumnTextBox
Environment.Value("StepName") = "VerifySpellCheckInOneColumnTextBox"
	Browser("Text Box").Page("Text Box").WebEdit("TXT_LargeOneColumnSpellCheck").VerifyExists 
	Browser("Text Box").Page("Text Box").WebEdit("TXT_LargeOneColumnSpellCheck").EnterText dtScenario.value("WrongWord")
	Browser("Text Box").Page("Text Box").WebElement("TWL_Large One Column Spell").VerifyExists 
	Browser("Text Box").Page("Text Box").WebElement("TWL_Large One Column Spell").ClickSpellCheckIcon 
	Browser("Text Box").Frame("Window").WebList("DRP_dialogControl$Suggestions").VerifyExists 
	Browser("Text Box").Frame("Window").WebList("DRP_dialogControl$Suggestions").VerifySpellCheck dtScenario.value("CorrectSpelling")
	Browser("Text Box").Frame("Window").WebButton("BTN_Change").ClickObject 
	Browser("Text Box").Dialog("Message from webpage").Static("MSG_The Spell Check is complete!").VerifyExists 
	Browser("Text Box").Dialog("Message from webpage").WinButton("BTN_OK").ClickObject 

End Function
''###################################################################################################
''Function Name : CurrencyFormatNegative
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function CurrencyFormatNegative
Environment.Value("StepName") = "CurrencyFormatNegative"
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyFormattedOneColumn2").TypeText dtScenario.value("CurrencyFormatOneColumn2")
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyFormattedOneColumn").ClickObject 
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyFormattedOneColumn2").VerifyValue dtScenario.value("CurrencyFormatNegOneColumn2")

End Function
''###################################################################################################
''Function Name : CurrencyFormatted
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function CurrencyFormatted
Environment.Value("StepName") = "CurrencyFormatted"
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyFormattedTwoColumn").TypeText dtScenario.value("CurrencyFormattedTwoColumn")
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyFormattedOneColumn2").TypeText dtScenario.value("CurrencyFormattedOneColumn2")
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyFormattedOneColumn").ClickObject 
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyFormattedTwoColumn").VerifyValue dtScenario.value("CurrencyFormattedTwoColumnFormatted")
	Browser("Currency").Page("Currency").WebEdit("TXT_CurrencyFormattedOneColumn2").VerifyValue dtScenario.value("CurrencyFormattedOneColumn2Formatted")

End Function
''###################################################################################################
''Function Name : VerifyWidthInCurrency
''Description : Verify that One column questions are one column in width, two column questions are one column in width.
''Author : Chris Jarrell
''###################################################################################################
Public Function VerifyWidthInCurrency
Environment.Value("StepName") = "VerifyWidthInCurrency"
	Call VerifyColumnWidthInCurrency()
End Function
''###################################################################################################
''Function Name : FillDataAndVerifyReadOnlyValuesInBLAccount
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function FillDataAndVerifyReadOnlyValuesInBLAccount
Environment.Value("StepName") = "FillDataAndVerifyReadOnlyValuesInBLAccount"
	Browser("BL Account Number").Page("BL Account Number").WebEdit("TXT_BL#1").EnterText dtScenario.value("BL#1")
	Browser("BL Account Number").Page("BL Account Number").WebEdit("TXT_BL#2").EnterText "9876-5432"
	Browser("BL Account Number").Page("BL Account Number").WebEdit("TXT_BL#3").EnterText dtScenario.value("BL#3")
	Browser("BL Account Number").Page("BL Account Number").WebButton("BTN_Next").ClickObject 
	Browser("BL Account Number Read").Page("BL Account Number Read").WebElement("RWL_BL #4").VerifyPageName 
	Browser("BL Account Number Read").Page("BL Account Number Read").WebElement("RWL_BL #1").VerifyFieldIsReadOnly 
	Browser("BL Account Number Read").Page("BL Account Number Read").WebElement("RWL_BL #1").VerifyDisplayedText dtScenario.value("BL#1")
	Browser("BL Account Number Read").Page("BL Account Number Read").WebElement("RWL_BL #2").VerifyFieldIsReadOnly 
	Browser("BL Account Number Read").Page("BL Account Number Read").WebElement("RWL_BL #3").VerifyDisplayedText dtScenario.value("BL#3")
	Browser("BL Account Number Read").Page("BL Account Number Read").WebElement("RWL_BL #4").VerifyFieldIsReadOnly 
	Browser("BL Account Number Read").Page("BL Account Number Read").WebElement("RWL_BL #4").VerifyDisplayedText dtScenario.value("BL#4")

End Function
''###################################################################################################
''Function Name : VerifiySpecialAlphaCharactersNotAllowed
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifiySpecialAlphaCharactersNotAllowed
Environment.Value("StepName") = "VerifiySpecialAlphaCharactersNotAllowed"
	Browser("BL Account Number").Page("BL Account Number").WebEdit("TXT_BL#1").VerifySpecialCharacterNotAllowed dtScenario.value("SpecialCharacters")
	Browser("BL Account Number").Page("BL Account Number").WebEdit("TXT_BL#1").VerifyAlphaCharacterNotAllowed dtScenario.value("AlphaCharacters")
	Browser("BL Account Number").Page("BL Account Number").WebEdit("TXT_BL#2").VerifySpecialCharacterNotAllowed dtScenario.value("SpecialCharacters")
	Browser("BL Account Number").Page("BL Account Number").WebEdit("TXT_BL#2").VerifyAlphaCharacterNotAllowed dtScenario.value("AlphaCharacters")
	Browser("BL Account Number").Page("BL Account Number").WebEdit("TXT_BL#3").VerifySpecialCharacterNotAllowed dtScenario.value("SpecialCharacters")
	Browser("BL Account Number").Page("BL Account Number").WebEdit("TXT_BL#3").VerifyAlphaCharacterNotAllowed dtScenario.value("AlphaCharacters")

End Function
''###################################################################################################
''Function Name : VerifyReadOnlyValuesBLAccountNumber
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyReadOnlyValuesBLAccountNumber
Environment.Value("StepName") = "VerifyReadOnlyValuesBLAccountNumber"
	Browser("BL Account Number").Page("BL Account Number").WebElement("RWL_DefaultedBL #4").VerifyDisplayedText "1234-5678"

End Function
''###################################################################################################
''Function Name : VerifyAlphaSpecialCharactersNotAllowed
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyAlphaSpecialCharactersNotAllowed
Environment.Value("StepName") = "VerifyAlphaSpecialCharactersNotAllowed"
	Browser("Social Security Number").Page("Social Security Number").WebEdit("TXT_SocialOneColumnRequired").VerifySpecialCharacterNotAllowed dtScenario.value("SpecialCharacters")
	Browser("Social Security Number").Page("Social Security Number").WebEdit("TXT_SocialOneColumnRequired").VerifyAlphaCharacterNotAllowed dtScenario.value("AlphaCharacters")
	Browser("Social Security Number").Page("Social Security Number").WebEdit("TXT_SocialOneColumn2Required").VerifySpecialCharacterNotAllowed dtScenario.value("SpecialCharacters")
	Browser("Social Security Number").Page("Social Security Number").WebEdit("TXT_SocialOneColumn2Required").VerifyAlphaCharacterNotAllowed dtScenario.value("AlphaCharacters")
	Browser("Social Security Number").Page("Social Security Number").WebEdit("TXT_SocialTwoColumn").VerifySpecialCharacterNotAllowed dtScenario.value("SpecialCharacters")
	Browser("Social Security Number").Page("Social Security Number").WebEdit("TXT_SocialTwoColumn").VerifyAlphaCharacterNotAllowed dtScenario.value("AlphaCharacters")
	Browser("Social Security Number").Page("Social Security Number").WebEdit("TXT_SocialProtected").VerifySpecialCharacterNotAllowed dtScenario.value("SpecialCharacters")
	Browser("Social Security Number").Page("Social Security Number").WebEdit("TXT_SocialProtected").VerifySpecialCharacterNotAllowed dtScenario.value("AlphaCharacters")
	Browser("Social Security Number").Page("Social Security Number").WebEdit("TXT_SocialNotRequired").VerifySpecialCharacterNotAllowed dtScenario.value("SpecialCharacters")
	Browser("Social Security Number").Page("Social Security Number").WebEdit("TXT_SocialNotRequired").VerifyAlphaCharacterNotAllowed dtScenario.value("AlphaCharacters")

End Function
''###################################################################################################
''Function Name : VerifyReadOnlyValuesInSocial
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyReadOnlyValuesInSocial
Environment.Value("StepName") = "VerifyReadOnlyValuesInSocial"
	Browser("Social Security Number").Page("Social Security Number").VerifyDisplayedText "123-45-6789"
	Browser("Social Security Number").Page("Social Security Number").WebElement("RWL_Socialw.DashesDefaulted").VerifyDisplayedText "111-11-1111"

End Function
''###################################################################################################
''Function Name : VerifyDefaultedValuesInPhone
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyDefaultedValuesInPhone
Environment.Value("StepName") = "VerifyDefaultedValuesInPhone"
	Browser("Phone Number").Page("Phone Number").WebElement("RWL_PhoneNumberReadOnly").VerifyDisplayedText "(704) 111-1111"
	Browser("Phone Number").Page("Phone Number").WebElement("RWL_PhoneNumberDefaulted").VerifyDisplayedText "(012) 034-0567"

End Function
''###################################################################################################
''Function Name : VerifyReadOnlyFieldsInTaxID
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyReadOnlyFieldsInTaxID
Environment.Value("StepName") = "VerifyReadOnlyFieldsInTaxID"
	Browser("Tax ID").Page("Tax ID").WebElement("RWL_TaxID_Defaulted").VerifyDisplayedText "00-345789"
	Browser("Tax ID").Page("Tax ID").WebElement("RWL_TaxIDw.DashesDefaulted").VerifyDisplayedText "11-1111111"

End Function
''###################################################################################################
''Function Name : VerifyReadOnlyValuesInZipCode
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyReadOnlyValuesInZipCode
Environment.Value("StepName") = "VerifyReadOnlyValuesInZipCode"
	Browser("Zip Code").Page("Zip Code").WebElement("RWL_ZipCodeDefaulted").VerifyDisplayedText "32232 and 32232-2223"
	Browser("Zip Code").Page("Zip Code").WebElement("TWL_ZipCodeReadOnly").VerifyDisplayedText "32232-2223"

End Function
''###################################################################################################
''Function Name : VerifySpecialAlphaCharactersNotAllowedInTaxID
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifySpecialAlphaCharactersNotAllowedInTaxID
Environment.Value("StepName") = "VerifySpecialAlphaCharactersNotAllowedInTaxID"
	Browser("Tax ID").Page("Tax ID").WebEdit("TXT_TaxIDw.DashesOneColumn2").VerifySpecialCharacterNotAllowed dtScenario.value("SpecialCharacters")
	Browser("Tax ID").Page("Tax ID").WebEdit("TXT_TaxIDw.DashesOneColumn2").VerifyAlphaCharacterNotAllowed dtScenario.value("AlphaCharacters")
	Browser("Tax ID").Page("Tax ID").WebEdit("TXT_TaxIDw.DashesOneColumn").VerifySpecialCharacterNotAllowed dtScenario.value("SpecialCharacters")
	Browser("Tax ID").Page("Tax ID").WebEdit("TXT_TaxIDw.DashesOneColumn").VerifyAlphaCharacterNotAllowed dtScenario.value("AlphaCharacters")
	Browser("Tax ID").Page("Tax ID").WebEdit("TXT_TwoColumnTaxIDw.Dashes").VerifySpecialCharacterNotAllowed dtScenario.value("SpecialCharacters")
	Browser("Tax ID").Page("Tax ID").WebEdit("TXT_TwoColumnTaxIDw.Dashes").VerifyAlphaCharacterNotAllowed dtScenario.value("AlphaCharacters")
	Browser("Tax ID").Page("Tax ID").WebEdit("TXT_TaxIDw.DashesProtected").VerifySpecialCharacterNotAllowed dtScenario.value("SpecialCharacters")
	Browser("Tax ID").Page("Tax ID").WebEdit("TXT_TaxIDw.DashesProtected").VerifyAlphaCharacterNotAllowed dtScenario.value("AlphaCharacters")

End Function
''###################################################################################################
''Function Name : VerifySpecialAlphaCharactersNotAllowedInZipCode
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifySpecialAlphaCharactersNotAllowedInZipCode
Environment.Value("StepName") = "VerifySpecialAlphaCharactersNotAllowedInZipCode"
	Browser("Zip Code").Page("Zip Code").WebEdit("TXT_ZipCodeOneColumn").VerifySpecialCharacterNotAllowed dtScenario.value("SpecialCharacters")
	Browser("Zip Code").Page("Zip Code").WebEdit("TXT_ZipCodeOneColumn").VerifyAlphaCharacterNotAllowed dtScenario.value("AlphaCharacters")
	Browser("Zip Code").Page("Zip Code").WebEdit("TXT_ZipCodeOneColumn2").VerifySpecialCharacterNotAllowed dtScenario.value("SpecialCharacters")
	Browser("Zip Code").Page("Zip Code").WebEdit("TXT_ZipCodeOneColumn2").VerifyAlphaCharacterNotAllowed dtScenario.value("AlphaCharacters")
	Browser("Zip Code").Page("Zip Code").WebEdit("TXT_ZipCodeTwoColumn").VerifySpecialCharacterNotAllowed dtScenario.value("SpecialCharacters")
	Browser("Zip Code").Page("Zip Code").WebEdit("TXT_ZipCodeTwoColumn").VerifyAlphaCharacterNotAllowed dtScenario.value("AlphaCharacters")
	Browser("Zip Code").Page("Zip Code").WebEdit("TXT_ZipCodeProtected").VerifySpecialCharacterNotAllowed dtScenario.value("SpecialCharacters")
	Browser("Zip Code").Page("Zip Code").WebEdit("TXT_ZipCodeProtected").VerifyAlphaCharacterNotAllowed dtScenario.value("AlphaCharacters")
	Browser("Zip Code").Page("Zip Code").WebEdit("TXT_ZipCodeMinMaxTest").VerifySpecialCharacterNotAllowed dtScenario.value("SpecialCharacters")
	Browser("Zip Code").Page("Zip Code").WebEdit("TXT_ZipCodeMinMaxTest").VerifyAlphaCharacterNotAllowed dtScenario.value("AlphaCharacters")

End Function
''###################################################################################################
''Function Name : VerifyToolTipBLAccountNumber
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyToolTipBLAccountNumber
Environment.Value("StepName") = "VerifyToolTipBLAccountNumber"
	Browser("BL Account Number").Page("BL Account Number").WebEdit("TXT_BL#3").VerifyExists 
	Browser("BL Account Number").Page("BL Account Number").WebEdit("TXT_BL#3").VerifyToolTip "QA BL Account Number ToolTip Testing" 

End Function
''###################################################################################################
''Function Name : VerifyToolTipInZipCode
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyToolTipInZipCode
Environment.Value("StepName") = "VerifyToolTipInZipCode"
	Browser("Zip Code").Page("Zip Code").WebEdit("TXT_ZipCodeOneColumn").VerifyExists 
	Browser("Zip Code").Page("Zip Code").WebEdit("TXT_ZipCodeOneColumn").VerifyToolTip "QA ZipCode ToolTip Testing"
End Function
''###################################################################################################
''Function Name : VerifyToolTipInTaxID
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyToolTipInTaxID
Environment.Value("StepName") = "VerifyToolTipInTaxID"
	Browser("Tax ID").Page("Tax ID").WebEdit("TXT_TaxIDw.DashesOneColumn").VerifyExists 
	Browser("Tax ID").Page("Tax ID").WebEdit("TXT_TaxIDw.DashesOneColumn").VerifyToolTip "QA TaxID ToolTip Testing" 

End Function
''###################################################################################################
''Function Name : VerifyToolTipInSocial
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyToolTipInSocial
Environment.Value("StepName") = "VerifyToolTipInSocial"
	Browser("Social Security Number").Page("Social Security Number").WebEdit("TXT_SocialOneColumnRequired").VerifyExists 
	Browser("Social Security Number").Page("Social Security Number").WebEdit("TXT_SocialOneColumnRequired").VerifyToolTip "QA Social ToolTip Testing"

End Function
''###################################################################################################
''Function Name : VerifyToolTipInPhone
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyToolTipInPhone
Environment.Value("StepName") = "VerifyToolTipInPhone"
	Browser("Phone Number").Page("Phone Number").WebEdit("TXT_PhoneNumberOneColumn").VerifyExists 
	Browser("Phone Number").Page("Phone Number").WebEdit("TXT_PhoneNumberOneColumn").VerifyToolTip "Phone number tooltip"
End Function
''###################################################################################################
''Function Name : VerifyToolTipInXML
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyToolTipInXML
Environment.Value("StepName") = "VerifyToolTipInXML"
	Browser("XML").Page("XML").WebEdit("TXT_OneColumn").VerifyExists 
	Browser("XML").Page("XML").WebEdit("TXT_OneColumn").VerifyToolTip "QA XML ToolTip Testing"

End Function
''###################################################################################################
''Function Name : VerifyStringGroup
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyStringGroup
Environment.Value("StepName") = "VerifyStringGroup"
	Browser("Strings").Page("Strings").WebElement("LBL_StringsExpand").WaitForObjectToLoad 5
	Browser("Strings").Page("Strings").WebElement("LBL_StringsExpand").VerifyExists 
	Browser("Strings").Page("Strings").WebElement("LBL_StringsExpand").CheckGroupStatus 
	Browser("Strings").Page("Strings").WebElement("LBL_StringsCollapsed").CheckGroupStatus 
	Browser("Strings").Page("Strings").WebElement("LBL_StringAlphaExpand").CheckGroupStatus 
	Browser("Strings").Page("Strings").WebElement("LBL_StringAlphCollapsed").CheckGroupStatus 
	Browser("Strings").Page("Strings").WebEdit("TXT_NumericTwoColumnRequired").ClickObject 
	Browser("Strings").Page("Strings").WebElement("LBL_NumericStringExpand").CheckGroupStatus 
	Browser("Strings").Page("Strings").WebElement("LBL_NumericStringCollpased").CheckGroupStatus 

End Function
''###################################################################################################
''Function Name : ValidateCollapsibleGroup
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function ValidateCollapsibleGroup
Environment.Value("StepName") = "ValidateCollapsibleGroup"
	Browser("Check Boxes").Page("Check Boxes").WebElement("LBL_CheckBoxesExpanded").WaitForObjectToLoad 5
	Browser("Check Boxes").Page("Check Boxes").WebElement("LBL_CheckBoxesExpanded").VerifyExists 
	Browser("Check Boxes").Page("Check Boxes").WebElement("LBL_CheckBoxesExpanded").CheckGroupStatus 
	Browser("Check Boxes").Page("Check Boxes").WebElement("LBL_CheckBoxesCollapsed").VerifyExists 
	Browser("Check Boxes").Page("Check Boxes").WebElement("LBL_CheckBoxesCollapsed").CheckGroupStatus 
	Browser("Check Boxes").Page("Check Boxes").WebElement("LBL_CheckBoxGroupExpanded").VerifyExists 
	Browser("Check Boxes").Page("Check Boxes").WebElement("LBL_CheckBoxGroupExpanded").CheckGroupStatus 
	Browser("Check Boxes").Page("Check Boxes").WebElement("LBL_CheckBoxGroupCollapsed").VerifyExists 
	Browser("Check Boxes").Page("Check Boxes").WebElement("LBL_CheckBoxGroupCollapsed").CheckGroupStatus 

End Function
''###################################################################################################
''Function Name : ValidateCollapsibleQuestionGroup
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function ValidateCollapsibleQuestionGroup
Environment.Value("StepName") = "ValidateCollapsibleQuestionGroup"
	Browser("Dates").Page("Dates").WebElement("LBL_DateExpanded").WaitForObjectToLoad 5
	Browser("Dates").Page("Dates").WebElement("LBL_DateExpanded").VerifyExists 
	Browser("Dates").Page("Dates").WebElement("LBL_DateExpanded").CheckGroupStatus 
	Browser("Dates").Page("Dates").WebElement("LBL_DateCollpased").CheckGroupStatus 
	Browser("Dates").Page("Dates").WebElement("LBL_BusinessDatesExpanded").CheckGroupStatus 
	Browser("Dates").Page("Dates").WebElement("LBL_BusinessDatesCollapsed").CheckGroupStatus 
	Browser("Dates").Page("Dates").WebElement("LBL_DateMonth/DayOnlyExpanded").CheckGroupStatus 
	Browser("Dates").Page("Dates").WebElement("LBL_DateMonth/Day OnlyCollapsed").CheckGroupStatus 

End Function
''###################################################################################################
''Function Name : DeleteRowAndVerify
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function DeleteRowAndVerify
Environment.Value("StepName") = "DeleteRowAndVerify"
	Browser("Entry").Page("Entry").WebElement("LBL_EnterAccountNumber").VerifyExists 
	Browser("Entry").Page("Entry").WebElement("TWL_AccountNumber").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_AccountNumber").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_AccountNumber").EnterText dtScenario.value("Account")
	Browser("Entry").Page("Entry").WebButton("BTN_Back").VerifyExists 
	Browser("Entry").Page("Entry").WebButton("BTN_NextRepeatingMod").ClickObject 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebElement("LBL_RepeatingModuleTable").VerifyExists 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebElement("LBL_ThisTablePopulated").VerifyExists 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebElement("LBL_Repeating_Module_EmployeeList").VerifyExists 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebCheckBox("CheckBox_Index0").VerifyExists 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebCheckBox("CheckBox_Index1").VerifyExists 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebCheckBox("CheckBox_Index2").VerifyExists 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebCheckBox("CheckBox_Index3").VerifyExists 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebButton("Button_NewItem").VerifyExists 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").VerifyandClickButtonInRow "1|BUTTON"
	Browser("Run Rules for Table").Page("Run Rules for Table").WebElement("LNK_Delete").ClickObject 
	Browser("Run Rules for Table").Dialog("Message from webpage").WebElement("Delete_Are_you_certain").VerifyExists 
	Browser("Run Rules for Table").Dialog("Message from webpage").WinButton("Delete_OK").VerifyExists 
	Browser("Run Rules for Table").Dialog("Message from webpage").WinButton("Delete_OK").ClickObject 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").VerifyNumOfRowsInTable dtScenario.value("Rows")

End Function
''###################################################################################################
''Function Name : NavigateToRepeatingRepeatModTable
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function NavigateToRepeatingRepeatModTable
Environment.Value("StepName") = "NavigateToRepeatingRepeatModTable"
	Browser("Work Queue").Page("Work Queue").WebElement("TAB_Tests").ClickObject 
	Browser("Work Queue").Page("Work Queue").WebElement("LNK_RepeatingModuleTable").ClickObject 
	Browser("Entry").Page("Entry").WebElement("LBL_EnterAccountNumber").PageSync 
	Browser("Entry").Page("Entry").WebElement("LBL_EnterAccountNumber").VerifyPageName 

End Function
''###################################################################################################
''Function Name : DeleteRowAndVerify2
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function DeleteRowAndVerify2
Environment.Value("StepName") = "DeleteRowAndVerify2"
	Browser("Entry").Page("Entry").WebElement("LBL_EnterAccountNumber").VerifyExists 
	Browser("Entry").Page("Entry").WebElement("TWL_AccountNumber").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_AccountNumber").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_AccountNumber").EnterText dtScenario.value("Account")

End Function
''###################################################################################################
''Function Name : SelectAndVerifyRows
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function SelectAndVerifyRows
Environment.Value("StepName") = "SelectAndVerifyRows"
	Browser("Entry").Page("Entry").WebElement("LBL_EnterAccountNumber").VerifyExists 
	Browser("Entry").Page("Entry").WebElement("TWL_AccountNumber").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_AccountNumber").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_AccountNumber").EnterText dtScenario.value("Account")
	Browser("Entry").Page("Entry").WebButton("BTN_NextRepeatingMod").VerifyExists 
	Browser("Entry").Page("Entry").WebButton("BTN_NextRepeatingMod").ClickObject 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").WaitForObjectToLoad 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").VerifyExists 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").VerifyNumOfRowsInTable dtScenario.value("Rows")
	Browser("Run Rules for Table").Page("Run Rules for Table").WebCheckBox("CheckBox_Index1").VerifyExists 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebCheckBox("CheckBox_Index1").ClickObject 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebCheckBox("CheckBox_Index2").VerifyExists 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebCheckBox("CheckBox_Index2").ClickObject 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebButton("BTN_NextRepeatingMod").VerifyExists 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebButton("BTN_NextRepeatingMod").ClickObject 
	Browser("Table Results").Page("Table Results").WebTable("TBL_RepeatingModuleDataTable").VerifyExists 
	Browser("Table Results").Page("Table Results").WebTable("TBL_RepeatingModuleDataTable").VerifyNumOfRowsInTable 2

End Function
''###################################################################################################
''Function Name : BulkAddressChange
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function BulkAddressChange
Environment.Value("StepName") = "BulkAddressChange"
	Browser("Entry").Page("Entry").WebElement("TWL_AccountNumber").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_AccountNumber").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_AccountNumber").EnterText dtScenario.value("Account")
	Browser("Entry").Page("Entry").WebButton("BTN_NextRepeatingMod").VerifyExists 
	Browser("Entry").Page("Entry").WebButton("BTN_NextRepeatingMod").ClickObject 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").WaitForObjectToLoad 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").VerifyExists 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").VerifyNumOfRowsInTable dtScenario.value("Rows")
	Browser("Run Rules for Table").Page("Run Rules for Table").WebCheckBox("CheckBox_Index1").VerifyExists 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebCheckBox("CheckBox_Index1").ClickObject 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebCheckBox("CheckBox_Index2").VerifyExists 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebCheckBox("CheckBox_Index2").ClickObject 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebButton("BTN_NextRepeatingMod").VerifyExists 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebButton("BTN_NextRepeatingMod").ClickObject 
	Browser("Table Results").Page("Table Results").WebTable("TBL_RepeatingModuleDataTable").VerifyExists 
	Browser("Table Results").Page("Table Results").WebTable("TBL_RepeatingModuleDataTable").VerifyNumOfRowsInTable 2
	Browser("Table Results").Page("Table Results").WebElement("TGL_Yes").VerifyExists 
	Browser("Table Results").Page("Table Results").WebElement("TGL_Yes").ClickObject 
	Browser("Table Results").Page("Table Results").WebEdit("TXT_AddressChange").VerifyExists 
	Browser("Table Results").Page("Table Results").WebEdit("TXT_AddressChange").EnterText dtScenario.value("Address")
	Browser("Table Results").Page("Table Results").WebButton("BTN_NextRepeatingMod").VerifyExists 
	Browser("Table Results").Page("Table Results").WebButton("BTN_NextRepeatingMod").ClickObject 
	Browser("Multiple Rows").Page("Multiple Rows").WebElement("LBL_PageHeader").VerifyExists 
	Browser("Multiple Rows").Page("Multiple Rows").WebElement("LBL_PageMessage").VerifyExists 
	Browser("Multiple Rows").Page("Multiple Rows").WebTable("TBL_RepeatingModuleDataTable").VerifyNumOfRowsInTable 2
	Browser("Multiple Rows").Page("Multiple Rows").WebTable("TBL_RepeatingModuleDataTable").VerifyvalueInSpecificCell 2,5,"130 harbour place dr"

End Function
''###################################################################################################
''Function Name : VerifySpecificGridData
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifySpecificGridData
Environment.Value("StepName") = "VerifySpecificGridData"
	Browser("Entry").Page("Entry").WebElement("LBL_EnterAccountNumber").VerifyExists 
	Browser("Entry").Page("Entry").WebElement("TWL_AccountNumber").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_AccountNumber").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_AccountNumber").EnterText dtScenario.value("Account")
	Browser("Entry").Page("Entry").WebButton("BTN_NextRepeatingMod").VerifyExists 
	Browser("Entry").Page("Entry").WebButton("BTN_NextRepeatingMod").ClickObject 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").WaitForObjectToLoad 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").VerifyExists 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").VerifyNumOfRowsInTable dtScenario.value("Rows")
	Browser("Run Rules for Table").Page("Run Rules for Table").WebCheckBox("CheckBox_Index1").VerifyExists 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebCheckBox("CheckBox_Index1").ClickObject 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebCheckBox("CheckBox_Index2").VerifyExists 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebCheckBox("CheckBox_Index2").ClickObject 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebButton("BTN_NextRepeatingMod").VerifyExists 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebButton("BTN_NextRepeatingMod").ClickObject 
	Browser("Table Results").Page("Table Results").WebTable("TBL_RepeatingModuleDataTable").WaitForObjectToLoad 
	Browser("Table Results").Page("Table Results").WebTable("TBL_RepeatingModuleDataTable").VerifyExists 
	Browser("Table Results").Page("Table Results").WebTable("TBL_RepeatingModuleDataTable").VerifyNumOfRowsInTable 2
	Browser("Table Results").Page("Table Results").WebButton("BTN_NextRepeatingMod").VerifyExists 
	Browser("Table Results").Page("Table Results").WebButton("BTN_NextRepeatingMod").ClickObject 
	Browser("Multiple Rows").Page("Multiple Rows").WebTable("TBL_RepeatingModuleDataTable").WaitForObjectToLoad 
	Browser("Multiple Rows").Page("Multiple Rows").WebTable("TBL_RepeatingModuleDataTable").VerifyExists 
	Browser("Multiple Rows").Page("Multiple Rows").WebTable("TBL_RepeatingModuleDataTable").VerifyNumOfRowsInTable 2
	Browser("Multiple Rows").Page("Multiple Rows").WebTable("TBL_RepeatingModuleDataTable").VerifyvalueInSpecificCell 2,3,"Jack"
	Browser("Multiple Rows").Page("Multiple Rows").WebTable("TBL_RepeatingModuleDataTable").VerifyvalueInSpecificCell 2,4,"Spratt"
	Browser("Multiple Rows").Page("Multiple Rows").WebTable("TBL_RepeatingModuleDataTable").VerifyvalueInSpecificCell 2,6,"FALSE"
	Browser("Multiple Rows").Page("Multiple Rows").WebTable("TBL_RepeatingModuleDataTable").VerifyvalueInSpecificCell 2,7,"No"
	Browser("Multiple Rows").Page("Multiple Rows").WebTable("TBL_RepeatingModuleDataTable").VerifyvalueInSpecificCell 3,3,"Ray"
	Browser("Multiple Rows").Page("Multiple Rows").WebTable("TBL_RepeatingModuleDataTable").VerifyvalueInSpecificCell 3,4,"Mulligan"
	Browser("Multiple Rows").Page("Multiple Rows").WebTable("TBL_RepeatingModuleDataTable").VerifyvalueInSpecificCell 3,6,"TRUE"
	Browser("Multiple Rows").Page("Multiple Rows").WebTable("TBL_RepeatingModuleDataTable").VerifyvalueInSpecificCell 3,7,"YES"

End Function
''###################################################################################################
''Function Name : VerifyConcatenationInTable
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyConcatenationInTable
Environment.Value("StepName") = "VerifyConcatenationInTable"
	Browser("Entry").Page("Entry").WebElement("TWL_AccountNumber").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_AccountNumber").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_AccountNumber").EnterText dtScenario.value("Account")
	Browser("Entry").Page("Entry").WebButton("BTN_NextRepeatingMod").VerifyExists 
	Browser("Entry").Page("Entry").WebButton("BTN_NextRepeatingMod").ClickObject 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").WaitForObjectToLoad 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").VerifyExists 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").VerifyNumOfRowsInTable dtScenario.value("Rows")
	Browser("Run Rules for Table").Page("Run Rules for Table").WebCheckBox("CheckBox_Index1").VerifyExists 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebCheckBox("CheckBox_Index1").ClickObject 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebCheckBox("CheckBox_Index2").VerifyExists 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebCheckBox("CheckBox_Index2").ClickObject 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebButton("BTN_NextRepeatingMod").VerifyExists 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebButton("BTN_NextRepeatingMod").ClickObject 
	Browser("Table Results").Page("Table Results").WebTable("TBL_RepeatingModuleDataTable").VerifyExists 
	Browser("Table Results").Page("Table Results").WebTable("TBL_RepeatingModuleDataTable").VerifyNumOfRowsInTable 2
	Browser("Table Results").Page("Table Results").WebElement("TGL_Yes").VerifyExists 
	Browser("Table Results").Page("Table Results").WebElement("TGL_Yes").ClickObject 
	Browser("Table Results").Page("Table Results").WebEdit("TXT_AddressChange").VerifyExists 
	Browser("Table Results").Page("Table Results").WebEdit("TXT_AddressChange").EnterText dtScenario.value("Address")
	Browser("Table Results").Page("Table Results").WebButton("BTN_NextRepeatingMod").VerifyExists 
	Browser("Table Results").Page("Table Results").WebButton("BTN_NextRepeatingMod").ClickObject 
	Browser("Multiple Rows").Page("Multiple Rows").WebElement("LBL_PageHeader").VerifyExists 
	Browser("Multiple Rows").Page("Multiple Rows").WebElement("LBL_PageMessage").VerifyExists 
	Browser("Multiple Rows").Page("Multiple Rows").WebTable("TBL_RepeatingModuleDataTable").VerifyNumOfRowsInTable 2
	Browser("Multiple Rows").Page("Multiple Rows").WebTable("TBL_RepeatingModuleDataTable").VerifyvalueInSpecificCell 2,5,"130 harbour place dr"
	Browser("Multiple Rows").Page("Multiple Rows").WebTable("TBL_RepeatingModuleDataTable").VerifyvalueInSpecificCell 
	Browser("Multiple Rows").Page("Multiple Rows").WebButton("BTN_NextRepeatingMod").ClickObject 
	Browser("Full Name").Page("Full Name").WebElement("LBL_PageHeader_ConcatenatedName").VerifyExists 
	Browser("Full Name").Page("Full Name").WebElement("LBL_PageMessage_concatenates").VerifyExists 
	Browser("Full Name").Page("Full Name").WebTable("TBL_RepeatingModuleDataTable").VerifyExists 
	Browser("Full Name").Page("Full Name").WebTable("TBL_RepeatingModuleDataTable").VerifytheRowsInTable 2
	Browser("Full Name").Page("Full Name").WebTable("TBL_RepeatingModuleDataTable").VerifyvalueInSpecificCell 2,2,"Jack Spratt"

End Function
''###################################################################################################
''Function Name : VerifyConcatenatedName
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyConcatenatedName
Environment.Value("StepName") = "VerifyConcatenatedName"
	Browser("Entry").Page("Entry").WebElement("TWL_AccountNumber").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_AccountNumber").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_AccountNumber").EnterText dtScenario.value("Account")
	Browser("Entry").Page("Entry").WebButton("BTN_NextRepeatingMod").VerifyExists 
	Browser("Entry").Page("Entry").WebButton("BTN_NextRepeatingMod").ClickObject 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").WaitForObjectToLoad 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").VerifyExists 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").VerifyNumOfRowsInTable dtScenario.value("Rows")
	Browser("Run Rules for Table").Page("Run Rules for Table").WebCheckBox("CheckBox_Index1").VerifyExists 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebCheckBox("CheckBox_Index1").ClickObject 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebCheckBox("CheckBox_Index2").VerifyExists 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebCheckBox("CheckBox_Index2").ClickObject 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebButton("BTN_NextRepeatingMod").VerifyExists 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebButton("BTN_NextRepeatingMod").ClickObject 
	Browser("Table Results").Page("Table Results").WebTable("TBL_RepeatingModuleDataTable").VerifyExists 
	Browser("Table Results").Page("Table Results").WebTable("TBL_RepeatingModuleDataTable").VerifyNumOfRowsInTable 2
	Browser("Table Results").Page("Table Results").WebElement("TGL_Yes").VerifyExists 
	Browser("Table Results").Page("Table Results").WebElement("TGL_Yes").ClickObject 
	Browser("Table Results").Page("Table Results").WebEdit("TXT_AddressChange").VerifyExists 
	Browser("Table Results").Page("Table Results").WebEdit("TXT_AddressChange").EnterText dtScenario.value("Address")
	Browser("Table Results").Page("Table Results").WebButton("BTN_NextRepeatingMod").VerifyExists 
	Browser("Table Results").Page("Table Results").WebButton("BTN_NextRepeatingMod").ClickObject 
	Browser("Multiple Rows").Page("Multiple Rows").WebElement("LBL_PageHeader").VerifyExists 
	Browser("Multiple Rows").Page("Multiple Rows").WebElement("LBL_PageMessage").VerifyExists 
	Browser("Multiple Rows").Page("Multiple Rows").WebTable("TBL_RepeatingModuleDataTable").VerifyNumOfRowsInTable 2
	Browser("Multiple Rows").Page("Multiple Rows").WebTable("TBL_RepeatingModuleDataTable").VerifyvalueInSpecificCell 2,5,"130 harbour place dr"
	Browser("Multiple Rows").Page("Multiple Rows").WebTable("TBL_RepeatingModuleDataTable").VerifyvalueInSpecificCell 
	Browser("Multiple Rows").Page("Multiple Rows").WebButton("BTN_NextRepeatingMod").ClickObject 
	Browser("Full Name").Page("Full Name").WebElement("LBL_PageHeader_ConcatenatedName").VerifyExists 
	Browser("Full Name").Page("Full Name").WebElement("LBL_PageMessage_concatenates").VerifyExists 
	Browser("Full Name").Page("Full Name").WebTable("TBL_RepeatingModuleDataTable").VerifyExists 
	Browser("Full Name").Page("Full Name").WebTable("TBL_RepeatingModuleDataTable").VerifytheRowsInTable 3
	Browser("Full Name").Page("Full Name").WebTable("TBL_RepeatingModuleDataTable").VerifyvalueInSpecificCell 2,2,"Jack Spratt"
	Browser("Full Name").Page("Full Name").WebTable("TBL_RepeatingModuleDataTable").VerifyvalueInSpecificCell 3,2,"Ray Mulligan"
	Browser("Full Name").Page("Full Name").WebTable("TBL_RepeatingModuleDataTable").VerifyvalueInSpecificCell 2,1,"40000001" 
	Browser("Full Name").Page("Full Name").WebTable("TBL_RepeatingModuleDataTable").VerifyvalueInSpecificCell 3,1,"40000001"

End Function
''###################################################################################################
''Function Name : VerifyRoundingAddition
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyRoundingAddition
Environment.Value("StepName") = "VerifyRoundingAddition"
	Browser("Entry").Page("Entry").WebElement("LBL_InputsforTest").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput1").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput1").EnterText dtScenario.value("RoundingInput 1")
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput2").EnterText dtScenario.value("RoundingInput 2")
	Browser("Entry").Page("Entry").WebElement("DWL_SelectTest").VerifyExists 
	Browser("Entry").Page("Entry").WebElement("DWL_SelectTest").SelectListBoxByIndex 4
	Browser("Entry").Page("Entry").WebElement("TWL_OutNumeric").VerifyDisplayedText dtScenario.value("OutNumeric")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrency").VerifyDisplayedText dtScenario.value("OutCurrency")
	Browser("Entry").Page("Entry").VerifyDisplayedText dtScenario.value("OutCurrencyTruncated")
	Browser("Entry").Page("Entry").WebElement("TWL_WholeNumberCurrency").VerifyDisplayedText dtScenario.value("OutCurrencyWholeNumber")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrencyFormatNegative").VerifyDisplayedText dtScenario.value("OutCurrencyFormetNeg")
	Browser("Entry").Page("Entry").WebElement("TWL_OutNumericTwoDecimals").VerifyDisplayedText dtScenario.value("OutNumericTwoDecimal")
	Browser("Entry").Page("Entry").WebElement("TWL_OutStringNumeric").VerifyDisplayedText dtScenario.value("OutStringNumeric")

End Function
''###################################################################################################
''Function Name : NavigateToArithmeticRounding
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function NavigateToArithmeticRounding
Environment.Value("StepName") = "NavigateToArithmeticRounding"
	Browser("Work Queue").Page("Work Queue").WebElement("TAB_Tests").ClickObject 
	Browser("Work Queue").Page("Work Queue").WebElement("LNK_ArithmeticRounding").ClickObject 
	Browser("Entry").Page("Entry").WebElement("LBL_InputsforTest").PageSync 
	Browser("Entry").Page("Entry").WebElement("LBL_InputsforTest").VerifyPageName 

End Function
''###################################################################################################
''Function Name : VerifyRoundingAddition2
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyRoundingAddition2
Environment.Value("StepName") = "VerifyRoundingAddition2"
	Browser("Entry").Page("Entry").WebElement("LBL_InputsforTest").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput1").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput1").EnterText dtScenario.value("RoundingInput 1")
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput2").EnterText dtScenario.value("RoundingInput 2")
	Browser("Entry").Page("Entry").WebElement("DWL_SelectTest").SelectListBox dtScenario.value("DropDownValue")
	Browser("Entry").Page("Entry").WebElement("TWL_OutNumeric").VerifyDisplayedText dtScenario.value("OutNumeric")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrency").VerifyDisplayedText dtScenario.value("OutCurrency")
	Browser("Entry").Page("Entry").VerifyDisplayedText dtScenario.value("OutCurrencyTruncated")
	Browser("Entry").Page("Entry").WebElement("TWL_WholeNumberCurrency").VerifyDisplayedText dtScenario.value("OutCurrencyWholeNumber")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrencyFormatNegative").VerifyDisplayedText dtScenario.value("OutCurrencyFormetNeg")
	Browser("Entry").Page("Entry").WebElement("TWL_OutNumericTwoDecimals").VerifyDisplayedText dtScenario.value("OutNumericTwoDecimal")
	Browser("Entry").Page("Entry").WebElement("TWL_OutStringNumeric").VerifyDisplayedText dtScenario.value("OutStringNumeric")

End Function
''###################################################################################################
''Function Name : VerifyRoundingAddition3
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyRoundingAddition3
Environment.Value("StepName") = "VerifyRoundingAddition3"
	Browser("Entry").Page("Entry").WebElement("LBL_InputsforTest").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput1").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput1").EnterText dtScenario.value("RoundingInput 1")
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput2").EnterText dtScenario.value("RoundingInput 2")
	Browser("Entry").Page("Entry").WebElement("DWL_SelectTest").SelectListBox dtScenario.value("DropDownValue")
	Browser("Entry").Page("Entry").WebElement("TWL_OutNumeric").VerifyDisplayedText dtScenario.value("OutNumeric")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrency").VerifyDisplayedText dtScenario.value("OutCurrency")
	Browser("Entry").Page("Entry").VerifyDisplayedText dtScenario.value("OutCurrencyTruncated")
	Browser("Entry").Page("Entry").WebElement("TWL_WholeNumberCurrency").VerifyDisplayedText dtScenario.value("OutCurrencyWholeNumber")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrencyFormatNegative").VerifyDisplayedText dtScenario.value("OutCurrencyFormetNeg")
	Browser("Entry").Page("Entry").WebElement("TWL_OutNumericTwoDecimals").VerifyDisplayedText dtScenario.value("OutNumericTwoDecimal")
	Browser("Entry").Page("Entry").WebElement("TWL_OutStringNumeric").VerifyDisplayedText dtScenario.value("OutStringNumeric")

End Function
''###################################################################################################
''Function Name : VerifyRoundingAddition4
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyRoundingAddition4
Environment.Value("StepName") = "VerifyRoundingAddition4"
	Browser("Entry").Page("Entry").WebElement("LBL_InputsforTest").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput1").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput1").EnterText dtScenario.value("RoundingInput 1")
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput2").EnterText dtScenario.value("RoundingInput 2")
	Browser("Entry").Page("Entry").WebElement("DWL_SelectTest").SelectListBox dtScenario.value("DropDownValue")
	Browser("Entry").Page("Entry").WebElement("TWL_OutNumeric").VerifyDisplayedText dtScenario.value("OutNumeric")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrency").VerifyDisplayedText dtScenario.value("OutCurrency")
	Browser("Entry").Page("Entry").VerifyDisplayedText dtScenario.value("OutCurrencyTruncated")
	Browser("Entry").Page("Entry").WebElement("TWL_WholeNumberCurrency").VerifyDisplayedText dtScenario.value("OutCurrencyWholeNumber")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrencyFormatNegative").VerifyDisplayedText dtScenario.value("OutCurrencyFormetNeg")
	Browser("Entry").Page("Entry").WebElement("TWL_OutNumericTwoDecimals").VerifyDisplayedText dtScenario.value("OutCurrencyTwoDecimal")
	Browser("Entry").Page("Entry").WebElement("TWL_OutStringNumeric").VerifyDisplayedText dtScenario.value("OutStringNumeric")

End Function
''###################################################################################################
''Function Name : VerifyRoundingSubtraction
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyRoundingSubtraction
Environment.Value("StepName") = "VerifyRoundingSubtraction"
	Browser("Entry").Page("Entry").WebElement("LBL_InputsforTest").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput1").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput1").EnterText dtScenario.value("RoundingInput 1")
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput2").EnterText dtScenario.value("RoundingInput 2")
	Browser("Entry").Page("Entry").WebElement("DWL_SelectTest").SelectListBox dtScenario.value("DropDownValue")
	Browser("Entry").Page("Entry").WebElement("TWL_OutNumeric").VerifyDisplayedText dtScenario.value("OutNumeric")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrency").VerifyDisplayedText dtScenario.value("OutCurrency")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrencyTruncated)").VerifyDisplayedText dtScenario.value("OutCurrencyTruncated")
	Browser("Entry").Page("Entry").WebElement("TWL_WholeNumberCurrency").VerifyDisplayedText dtScenario.value("OutCurrencyWholeNumber")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrencyFormatNegative").VerifyDisplayedText dtScenario.value("OutCurrencyFormetNeg")
	Browser("Entry").Page("Entry").WebElement("TWL_OutNumericTwoDecimals").VerifyDisplayedText dtScenario.value("OutCurrencyTwoDecimal")
	Browser("Entry").Page("Entry").WebElement("TWL_OutStringNumeric").VerifyDisplayedText dtScenario.value("OutStringNumeric")

End Function
''###################################################################################################
''Function Name : VerifyRoundingSubtraction2
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyRoundingSubtraction2
Environment.Value("StepName") = "VerifyRoundingSubtraction2"
	Browser("Entry").Page("Entry").WebElement("LBL_InputsforTest").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput1").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput1").EnterText dtScenario.value("RoundingInput 1")
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput2").EnterText dtScenario.value("RoundingInput 2")
	Browser("Entry").Page("Entry").WebElement("DWL_SelectTest").SelectListBox dtScenario.value("DropDownValue")
	Browser("Entry").Page("Entry").WebElement("TWL_OutNumeric").VerifyDisplayedText dtScenario.value("OutNumeric")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrency").VerifyDisplayedText dtScenario.value("OutCurrency")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrencyTruncated)").VerifyDisplayedText dtScenario.value("OutCurrencyTruncated")
	Browser("Entry").Page("Entry").WebElement("TWL_WholeNumberCurrency").VerifyDisplayedText dtScenario.value("OutCurrencyWholeNumber")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrencyFormatNegative").VerifyDisplayedText dtScenario.value("OutCurrencyFormetNeg")
	Browser("Entry").Page("Entry").WebElement("TWL_OutNumericTwoDecimals").VerifyDisplayedText dtScenario.value("OutCurrencyTwoDecimal")
	Browser("Entry").Page("Entry").WebElement("TWL_OutStringNumeric").VerifyDisplayedText dtScenario.value("OutStringNumeric")

End Function
''###################################################################################################
''Function Name : VerifyRoundingSubtraction3
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyRoundingSubtraction3
Environment.Value("StepName") = "VerifyRoundingSubtraction3"
	Browser("Entry").Page("Entry").WebElement("LBL_InputsforTest").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput1").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput1").EnterText dtScenario.value("RoundingInput 1")
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput2").EnterText dtScenario.value("RoundingInput 2")
	Browser("Entry").Page("Entry").WebElement("DWL_SelectTest").SelectListBox dtScenario.value("DropDownValue")
	Browser("Entry").Page("Entry").WebElement("TWL_OutNumeric").VerifyDisplayedText dtScenario.value("OutNumeric")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrency").VerifyDisplayedText dtScenario.value("OutCurrency")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrencyTruncated)").VerifyDisplayedText dtScenario.value("OutCurrencyTruncated")
	Browser("Entry").Page("Entry").WebElement("TWL_WholeNumberCurrency").VerifyDisplayedText dtScenario.value("OutCurrencyWholeNumber")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrencyFormatNegative").VerifyDisplayedText dtScenario.value("OutCurrencyFormetNeg")
	Browser("Entry").Page("Entry").WebElement("TWL_OutNumericTwoDecimals").VerifyDisplayedText dtScenario.value("OutCurrencyTwoDecimal")
	Browser("Entry").Page("Entry").WebElement("TWL_OutStringNumeric").VerifyDisplayedText dtScenario.value("OutStringNumeric")

End Function
''###################################################################################################
''Function Name : VerifyRoundingSubtraction4
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyRoundingSubtraction4
Environment.Value("StepName") = "VerifyRoundingSubtraction4"
	Browser("Entry").Page("Entry").WebElement("LBL_InputsforTest").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput1").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput1").EnterText dtScenario.value("RoundingInput 1")
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput2").EnterText dtScenario.value("RoundingInput 2")
	Browser("Entry").Page("Entry").WebElement("DWL_SelectTest").SelectListBox dtScenario.value("DropDownValue")
	Browser("Entry").Page("Entry").WebElement("TWL_OutNumeric").VerifyDisplayedText dtScenario.value("OutNumeric")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrency").VerifyDisplayedText dtScenario.value("OutCurrency")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrencyTruncated)").VerifyDisplayedText dtScenario.value("OutCurrencyTruncated")
	Browser("Entry").Page("Entry").WebElement("TWL_WholeNumberCurrency").VerifyDisplayedText dtScenario.value("OutCurrencyWholeNumber")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrencyFormatNegative").VerifyDisplayedText dtScenario.value("OutCurrencyFormetNeg")
	Browser("Entry").Page("Entry").WebElement("TWL_OutNumericTwoDecimals").VerifyDisplayedText dtScenario.value("OutCurrencyTwoDecimal")
	Browser("Entry").Page("Entry").WebElement("TWL_OutStringNumeric").VerifyDisplayedText dtScenario.value("OutStringNumeric")

End Function
''###################################################################################################
''Function Name : VerifyRoundingSubtraction5
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyRoundingSubtraction5
Environment.Value("StepName") = "VerifyRoundingSubtraction5"
	Browser("Entry").Page("Entry").WebElement("LBL_InputsforTest").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput1").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput1").EnterText dtScenario.value("RoundingInput 1")
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput2").EnterText dtScenario.value("RoundingInput 2")
	Browser("Entry").Page("Entry").WebElement("DWL_SelectTest").SelectListBox dtScenario.value("DropDownValue")
	Browser("Entry").Page("Entry").WebElement("TWL_OutNumeric").VerifyDisplayedText dtScenario.value("OutNumeric")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrency").VerifyDisplayedText dtScenario.value("OutCurrency")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrencyTruncated)").VerifyDisplayedText dtScenario.value("OutCurrencyTruncated")
	Browser("Entry").Page("Entry").WebElement("TWL_WholeNumberCurrency").VerifyDisplayedText dtScenario.value("OutCurrencyWholeNumber")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrencyFormatNegative").VerifyDisplayedText dtScenario.value("OutCurrencyFormetNeg")
	Browser("Entry").Page("Entry").WebElement("TWL_OutNumericTwoDecimals").VerifyDisplayedText dtScenario.value("OutCurrencyTwoDecimal")
	Browser("Entry").Page("Entry").WebElement("TWL_OutStringNumeric").VerifyDisplayedText dtScenario.value("OutStringNumeric")

End Function
''###################################################################################################
''Function Name : VerifyRoundingMultiplication
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyRoundingMultiplication
Environment.Value("StepName") = "VerifyRoundingMultiplication"
	Browser("Entry").Page("Entry").WebElement("LBL_InputsforTest").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput1").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput1").EnterText dtScenario.value("RoundingInput 1")
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput2").EnterText dtScenario.value("RoundingInput 2")
	Browser("Entry").Page("Entry").WebElement("DWL_SelectTest").SelectListBox dtScenario.value("DropDownValue")
	Browser("Entry").Page("Entry").WebElement("TWL_OutNumeric").VerifyDisplayedText dtScenario.value("OutNumeric")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrency").VerifyDisplayedText dtScenario.value("OutCurrency")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrencyTruncated)").VerifyDisplayedText dtScenario.value("OutCurrencyTruncated")
	Browser("Entry").Page("Entry").WebElement("TWL_WholeNumberCurrency").VerifyDisplayedText dtScenario.value("OutCurrencyWholeNumber")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrencyFormatNegative").VerifyDisplayedText dtScenario.value("OutCurrencyFormetNeg")
	Browser("Entry").Page("Entry").WebElement("TWL_OutNumericTwoDecimals").VerifyDisplayedText dtScenario.value("OutCurrencyTwoDecimal")
	Browser("Entry").Page("Entry").WebElement("TWL_OutStringNumeric").VerifyDisplayedText dtScenario.value("OutStringNumeric")

End Function
''###################################################################################################
''Function Name : VerifyRoundingMultiplication2
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyRoundingMultiplication2
Environment.Value("StepName") = "VerifyRoundingMultiplication2"
	Browser("Entry").Page("Entry").WebElement("LBL_InputsforTest").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput1").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput1").EnterText dtScenario.value("RoundingInput 1")
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput2").EnterText dtScenario.value("RoundingInput 2")
	Browser("Entry").Page("Entry").WebElement("DWL_SelectTest").SelectListBox dtScenario.value("DropDownValue")
	Browser("Entry").Page("Entry").WebElement("TWL_OutNumeric").VerifyDisplayedText dtScenario.value("OutNumeric")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrency").VerifyDisplayedText dtScenario.value("OutCurrency")
	Browser("Entry").Page("Entry").VerifyDisplayedText dtScenario.value("OutCurrencyTruncated")
	Browser("Entry").Page("Entry").WebElement("TWL_WholeNumberCurrency").VerifyDisplayedText dtScenario.value("OutCurrencyWholeNumber")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrencyFormatNegative").VerifyDisplayedText dtScenario.value("OutCurrencyFormetNeg")
	Browser("Entry").Page("Entry").WebElement("TWL_OutNumericTwoDecimals").VerifyDisplayedText dtScenario.value("OutCurrencyTwoDecimal")
	Browser("Entry").Page("Entry").WebElement("TWL_OutStringNumeric").VerifyDisplayedText dtScenario.value("OutStringNumeric")

End Function
''###################################################################################################
''Function Name : VerifyRoundingMultiplication3
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyRoundingMultiplication3
Environment.Value("StepName") = "VerifyRoundingMultiplication3"
	Browser("Entry").Page("Entry").WebElement("LBL_InputsforTest").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput1").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput1").EnterText dtScenario.value("RoundingInput 1")
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput2").EnterText dtScenario.value("RoundingInput 2")
	Browser("Entry").Page("Entry").WebElement("DWL_SelectTest").SelectListBox dtScenario.value("DropDownValue")
	Browser("Entry").Page("Entry").WebElement("TWL_OutNumeric").VerifyDisplayedText dtScenario.value("OutNumeric")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrency").VerifyDisplayedText dtScenario.value("OutCurrency")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrencyTruncated)").VerifyDisplayedText dtScenario.value("OutCurrencyTruncated")
	Browser("Entry").Page("Entry").WebElement("TWL_WholeNumberCurrency").VerifyDisplayedText dtScenario.value("OutCurrencyWholeNumber")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrencyFormatNegative").VerifyDisplayedText dtScenario.value("OutCurrencyFormetNeg")
	Browser("Entry").Page("Entry").WebElement("TWL_OutNumericTwoDecimals").VerifyDisplayedText dtScenario.value("OutCurrencyTwoDecimal")
	Browser("Entry").Page("Entry").WebElement("TWL_OutStringNumeric").VerifyDisplayedText dtScenario.value("OutStringNumeric")

End Function
''###################################################################################################
''Function Name : VerifyRoundingMultiplication4
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyRoundingMultiplication4
Environment.Value("StepName") = "VerifyRoundingMultiplication4"
	Browser("Entry").Page("Entry").WebElement("LBL_InputsforTest").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput1").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput1").EnterText dtScenario.value("RoundingInput 1")
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput2").EnterText dtScenario.value("RoundingInput 2")
	Browser("Entry").Page("Entry").WebElement("DWL_SelectTest").SelectListBox dtScenario.value("DropDownValue")
	Browser("Entry").Page("Entry").WebElement("TWL_OutNumeric").VerifyDisplayedText dtScenario.value("OutNumeric")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrency").VerifyDisplayedText dtScenario.value("OutCurrency")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrencyTruncated)").VerifyDisplayedText dtScenario.value("OutCurrencyTruncated")
	Browser("Entry").Page("Entry").WebElement("TWL_WholeNumberCurrency").VerifyDisplayedText dtScenario.value("OutCurrencyWholeNumber")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrencyFormatNegative").VerifyDisplayedText dtScenario.value("OutCurrencyFormetNeg")
	Browser("Entry").Page("Entry").WebElement("TWL_OutNumericTwoDecimals").VerifyDisplayedText dtScenario.value("OutCurrencyTwoDecimal")
	Browser("Entry").Page("Entry").WebElement("TWL_OutStringNumeric").VerifyDisplayedText dtScenario.value("OutStringNumeric")

End Function
''###################################################################################################
''Function Name : VerifyRoundingMultiplication5
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyRoundingMultiplication5
Environment.Value("StepName") = "VerifyRoundingMultiplication5"
	Browser("Entry").Page("Entry").WebElement("LBL_InputsforTest").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput1").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput1").EnterText dtScenario.value("RoundingInput 1")
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput2").EnterText dtScenario.value("RoundingInput 2")
	Browser("Entry").Page("Entry").WebElement("DWL_SelectTest").SelectListBox dtScenario.value("DropDownValue")
	Browser("Entry").Page("Entry").WebElement("TWL_OutNumeric").VerifyDisplayedText dtScenario.value("OutNumeric")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrency").VerifyDisplayedText dtScenario.value("OutCurrency")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrencyTruncated)").VerifyDisplayedText dtScenario.value("OutCurrencyTruncated")
	Browser("Entry").Page("Entry").WebElement("TWL_WholeNumberCurrency").VerifyDisplayedText dtScenario.value("OutCurrencyWholeNumber")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrencyFormatNegative").VerifyDisplayedText dtScenario.value("OutCurrencyFormetNeg")
	Browser("Entry").Page("Entry").WebElement("TWL_OutNumericTwoDecimals").VerifyDisplayedText dtScenario.value("OutCurrencyTwoDecimal")
	Browser("Entry").Page("Entry").WebElement("TWL_OutStringNumeric").VerifyDisplayedText dtScenario.value("OutStringNumeric")

End Function
''###################################################################################################
''Function Name : VerifyRoundingDivision
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyRoundingDivision
Environment.Value("StepName") = "VerifyRoundingDivision"
	Browser("Entry").Page("Entry").WebElement("LBL_InputsforTest").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput1").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput1").EnterText dtScenario.value("RoundingInput 1")
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput2").EnterText dtScenario.value("RoundingInput 2")
	Browser("Entry").Page("Entry").WebElement("DWL_SelectTest").SelectListBox dtScenario.value("DropDownValue")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrency").VerifyDisplayedText dtScenario.value("OutCurrency")
	Browser("Entry").Page("Entry").WebElement("TWL_WholeNumberCurrency").VerifyDisplayedText dtScenario.value("OutCurrencyWholeNumber")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrencyFormatNegative").VerifyDisplayedText dtScenario.value("OutCurrencyFormetNeg")
	Browser("Entry").Page("Entry").WebElement("TWL_OutNumericTwoDecimals").VerifyDisplayedText dtScenario.value("OutCurrencyTwoDecimal")
	Browser("Entry").Page("Entry").WebElement("TWL_OutStringNumeric").VerifyDisplayedText dtScenario.value("OutStringNumeric")

End Function
''###################################################################################################
''Function Name : VerifyRoundingDivision2
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyRoundingDivision2
Environment.Value("StepName") = "VerifyRoundingDivision2"
	Browser("Entry").Page("Entry").WebElement("LBL_InputsforTest").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput1").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput1").EnterText dtScenario.value("RoundingInput 1")
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput2").EnterText dtScenario.value("RoundingInput 2")
	Browser("Entry").Page("Entry").WebElement("DWL_SelectTest").SelectListBox dtScenario.value("DropDownValue")
	Browser("Entry").Page("Entry").WebElement("TWL_OutNumeric").VerifyDisplayedText dtScenario.value("OutNumeric")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrency").VerifyDisplayedText dtScenario.value("OutCurrency")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrencyTruncated)").VerifyDisplayedText dtScenario.value("OutCurrencyTruncated")
	Browser("Entry").Page("Entry").WebElement("TWL_WholeNumberCurrency").VerifyDisplayedText dtScenario.value("OutCurrencyWholeNumber")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrencyFormatNegative").VerifyDisplayedText dtScenario.value("OutCurrencyFormetNeg")
	Browser("Entry").Page("Entry").WebElement("TWL_OutNumericTwoDecimals").VerifyDisplayedText dtScenario.value("OutCurrencyTwoDecimal")
	Browser("Entry").Page("Entry").WebElement("TWL_OutStringNumeric").VerifyDisplayedText dtScenario.value("OutStringNumeric")

End Function
''###################################################################################################
''Function Name : VerifyRoundingDivision3
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyRoundingDivision3
Environment.Value("StepName") = "VerifyRoundingDivision3"
	Browser("Entry").Page("Entry").WebElement("LBL_InputsforTest").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput1").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput1").EnterText dtScenario.value("RoundingInput 1")
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput2").EnterText dtScenario.value("RoundingInput 2")
	Browser("Entry").Page("Entry").WebElement("DWL_SelectTest").SelectListBox dtScenario.value("DropDownValue")
	Browser("Entry").Page("Entry").WebElement("TWL_OutNumeric").VerifyDisplayedText dtScenario.value("OutNumeric")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrency").VerifyDisplayedText dtScenario.value("OutCurrency")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrencyTruncated)").VerifyDisplayedText dtScenario.value("OutCurrencyTruncated")
	Browser("Entry").Page("Entry").WebElement("TWL_WholeNumberCurrency").VerifyDisplayedText dtScenario.value("OutCurrencyWholeNumber")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrencyFormatNegative").VerifyDisplayedText dtScenario.value("OutCurrencyFormetNeg")
	Browser("Entry").Page("Entry").WebElement("TWL_OutNumericTwoDecimals").VerifyDisplayedText dtScenario.value("OutCurrencyTwoDecimal")
	Browser("Entry").Page("Entry").WebElement("TWL_OutStringNumeric").VerifyDisplayedText dtScenario.value("OutStringNumeric")

End Function
''###################################################################################################
''Function Name : VerifyRoundingDivision4
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyRoundingDivision4
Environment.Value("StepName") = "VerifyRoundingDivision4"
	Browser("Entry").Page("Entry").WebElement("LBL_InputsforTest").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput1").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput1").EnterText dtScenario.value("RoundingInput 1")
	Browser("Entry").Page("Entry").WebEdit("TXT_RoundingInput2").EnterText dtScenario.value("RoundingInput 2")
	Browser("Entry").Page("Entry").WebElement("DWL_SelectTest").SelectListBox dtScenario.value("DropDownValue")
	Browser("Entry").Page("Entry").WebElement("TWL_OutNumeric").VerifyDisplayedText dtScenario.value("OutNumeric")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrency").VerifyDisplayedText dtScenario.value("OutCurrency")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrencyTruncated)").VerifyDisplayedText dtScenario.value("OutCurrencyTruncated")
	Browser("Entry").Page("Entry").WebElement("TWL_WholeNumberCurrency").VerifyDisplayedText dtScenario.value("OutCurrencyWholeNumber")
	Browser("Entry").Page("Entry").WebElement("TWL_OutCurrencyFormatNegative").VerifyDisplayedText dtScenario.value("OutCurrencyFormetNeg")
	Browser("Entry").Page("Entry").WebElement("TWL_OutNumericTwoDecimals").VerifyDisplayedText dtScenario.value("OutCurrencyTwoDecimal")
	Browser("Entry").Page("Entry").WebElement("TWL_OutStringNumeric").VerifyDisplayedText dtScenario.value("OutStringNumeric")

End Function
''###################################################################################################
''Function Name : VerifyTruncatedArithmetic
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyTruncatedArithmetic
Environment.Value("StepName") = "VerifyTruncatedArithmetic"
	Browser("Entry").Page("Entry").WebElement("LBL_InputsforTest").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_Dividend").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_Dividend").EnterText dtScenario.value("Dividend")
	Browser("Entry").Page("Entry").WebEdit("TXT_Divisor").EnterText dtScenario.value("Divisor")
	Browser("Entry").Page("Entry").WebEdit("TXT_AddedInput").ClickObject 
	Browser("Entry").Page("Entry").WebElement("TWL_OriginalQuotient").VerifyDisplayedText dtScenario.value("OriginalQuotient")
	Browser("Entry").Page("Entry").VerifyDisplayedText dtScenario.value("TruncatedQuotient")
	Browser("Entry").Page("Entry").WebEdit("TXT_AddedInput").EnterText dtScenario.value("AddedInput")
	Browser("Entry").Page("Entry").WebEdit("TXT_Divisor").ClickObject 
	Browser("Entry").Page("Entry").WebElement("TWL_TruncatedQuotientAddedInput").VerifyDisplayedText dtScenario.value("TruncateAddedInput")
	Browser("Entry").Page("Entry").WebElement("TWL_QuotientwAddedInput").VerifyDisplayedText dtScenario.value("QuotientAddedInput")

End Function
''###################################################################################################
''Function Name : VerifyTruncatedArithmetic2
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyTruncatedArithmetic2
Environment.Value("StepName") = "VerifyTruncatedArithmetic2"
	Browser("Entry").Page("Entry").WebElement("LBL_InputsforTest").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_Dividend").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_Dividend").EnterText dtScenario.value("Dividend")
	Browser("Entry").Page("Entry").WebEdit("TXT_Divisor").EnterText dtScenario.value("Divisor")
	Browser("Entry").Page("Entry").WebEdit("TXT_AddedInput").ClickObject 
	Browser("Entry").Page("Entry").WebElement("TWL_OriginalQuotient").VerifyDisplayedText dtScenario.value("OriginalQuotient")
	Browser("Entry").Page("Entry").VerifyDisplayedText dtScenario.value("TruncatedQuotient")
	Browser("Entry").Page("Entry").WebEdit("TXT_AddedInput").EnterText dtScenario.value("AddedInput")
	Browser("Entry").Page("Entry").WebEdit("TXT_Divisor").ClickObject 
	Browser("Entry").Page("Entry").WebElement("TWL_TruncatedQuotientAddedInput").VerifyDisplayedText dtScenario.value("TruncateAddedInput")
	Browser("Entry").Page("Entry").WebElement("TWL_QuotientwAddedInput").VerifyDisplayedText dtScenario.value("QuotientAddedInput")

End Function
''###################################################################################################
''Function Name : VerifyTruncatedArithmetic3
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyTruncatedArithmetic3
Environment.Value("StepName") = "VerifyTruncatedArithmetic3"
	Browser("Entry").Page("Entry").WebElement("LBL_InputsforTest").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_Dividend").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_Dividend").EnterText dtScenario.value("Dividend")
	Browser("Entry").Page("Entry").WebEdit("TXT_Divisor").EnterText dtScenario.value("Divisor")
	Browser("Entry").Page("Entry").WebEdit("TXT_AddedInput").ClickObject 
	Browser("Entry").Page("Entry").WebElement("TWL_OriginalQuotient").VerifyValueisNull 
	Browser("Entry").Page("Entry").VerifyDisplayedText dtScenario.value("TruncatedQuotient")
	Browser("Entry").Page("Entry").WebEdit("TXT_AddedInput").EnterText dtScenario.value("AddedInput")
	Browser("Entry").Page("Entry").WebEdit("TXT_Divisor").ClickObject 
	Browser("Entry").Page("Entry").WebElement("TWL_TruncatedQuotientAddedInput").VerifyDisplayedText dtScenario.value("TruncateAddedInput")
	Browser("Entry").Page("Entry").WebElement("TWL_QuotientwAddedInput").VerifyDisplayedText dtScenario.value("QuotientAddedInput")

End Function
''###################################################################################################
''Function Name : VerifyTruncatedArithmetic4
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyTruncatedArithmetic4
Environment.Value("StepName") = "VerifyTruncatedArithmetic4"
	Browser("Entry").Page("Entry").WebElement("LBL_InputsforTest").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_Dividend").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_Dividend").EnterText dtScenario.value("Dividend")
	Browser("Entry").Page("Entry").WebEdit("TXT_Divisor").EnterText dtScenario.value("Divisor")
	Browser("Entry").Page("Entry").WebEdit("TXT_AddedInput").ClickObject 
	Browser("Entry").Page("Entry").WebElement("TWL_OriginalQuotient").VerifyDisplayedText dtScenario.value("OriginalQuotient")
	Browser("Entry").Page("Entry").VerifyDisplayedText dtScenario.value("TruncatedQuotient")
	Browser("Entry").Page("Entry").WebEdit("TXT_AddedInput").EnterText dtScenario.value("AddedInput")
	Browser("Entry").Page("Entry").WebEdit("TXT_Divisor").ClickObject 
	Browser("Entry").Page("Entry").WebElement("TWL_TruncatedQuotientAddedInput").VerifyDisplayedText dtScenario.value("TruncateAddedInput")
	Browser("Entry").Page("Entry").WebElement("TWL_QuotientwAddedInput").VerifyValueisNull 

End Function
''###################################################################################################
''Function Name : VerifyQuestionValuesNotRemoved
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyQuestionValuesNotRemoved
Environment.Value("StepName") = "VerifyQuestionValuesNotRemoved"
	Browser("Entry").Page("Entry").WebElement("LBL_SelectClearingType").VerifyExists 
	Browser("Entry").Page("Entry").WebElement("LBL_ClearValuesTest").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_FirstName").EnterText dtScenario.value("FirstName")
	Browser("Entry").Page("Entry").WebEdit("TXT_LastName").EnterText dtScenario.value("LastName")
	Browser("Entry").Page("Entry").WebEdit("TXT_Phone").EnterText dtScenario.value("Phone")
	Browser("Entry").Page("Entry").WebEdit("TXT_Zipcode").EnterText dtScenario.value("ZipCode")
	Browser("Entry").Page("Entry").WebEdit("TXT_SocialSec").EnterText dtScenario.value("SocialSec")
	Browser("Entry").Page("Entry").WebEdit("TXT_Email").EnterText dtScenario.value("Email")
	Browser("Entry").Page("Entry").WebEdit("TXT_DateValue").VerifyExists dtScenario.value("DateValue")
	Browser("Entry").Page("Entry").WebElement("TWL_StateDropDown").SelectListBox dtScenario.value("DropDwonValue")
	Browser("Entry").Page("Entry").WebButton("BTN_Next").ClickObject 
	Browser("Entry").Page("Submit").WebButton("BTN_Back").ClickObject 
	Browser("Entry").Page("Entry").WebEdit("TXT_FirstName").VerifyValue dtScenario.value("FirstName")

End Function
''###################################################################################################
''Function Name : NavigateToClearQuestionValues
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function NavigateToClearQuestionValues
Environment.Value("StepName") = "NavigateToClearQuestionValues"
	Browser("Work Queue").Page("Work Queue").WebElement("TAB_Tests").ClickObject 
	Browser("Work Queue").Page("Work Queue").WebElement("LNK_ClearQuestionValues").ClickObject 
	Browser("Entry").Page("Entry").WebElement("LBL_SelectClearingType").PageSync 
	Browser("Entry").Page("Entry").WebElement("LBL_ClearValuesTest").VerifyPageName 

End Function
''###################################################################################################
''Function Name : VerifyQuestionValues
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyQuestionValues
Environment.Value("StepName") = "VerifyQuestionValues"
	Browser("Entry").Page("Entry").WebElement("LBL_ClearValuesTest").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_FirstName").EnterText dtScenario.value("FirstName")
	Browser("Entry").Page("Entry").WebEdit("TXT_LastName").EnterText dtScenario.value("LastName")
	Browser("Entry").Page("Entry").WebEdit("TXT_Phone").EnterText dtScenario.value("Phone")
	Browser("Entry").Page("Entry").WebEdit("TXT_DateValue").EnterText dtScenario.value("Date")
	Browser("Entry").Page("Entry").WebEdit("TXT_Zipcode").EnterText dtScenario.value("Zip")
	Browser("Entry").Page("Entry").WebElement("TWL_StateDropDown").SelectListBox dtScenario.value("State")
	Browser("Entry").Page("Entry").WebEdit("TXT_SocialSec").EnterText dtScenario.value("Social")
	Browser("Entry").Page("Entry").WebEdit("TXT_Email").EnterText dtScenario.value("Email")
	Browser("Entry").Page("Entry").WebButton("BTN_Next").ClickObject 
	Browser("Entry").Page("Submit").WebButton("BTN_Back").ClickObject 

End Function
''###################################################################################################
''Function Name : ClearQuestionsNotRemoved
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function ClearQuestionsNotRemoved
Environment.Value("StepName") = "ClearQuestionsNotRemoved"
	Browser("Entry").Page("Entry").WebEdit("TXT_FirstName").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_FirstName").EnterText dtScenario.value("First")
	Browser("Entry").Page("Entry").WebEdit("TXT_LastName").EnterText dtScenario.value("Last")
	Browser("Entry").Page("Entry").WebEdit("TXT_Phone").EnterText dtScenario.value("Phone")
	Browser("Entry").Page("Entry").WebElement("DWL_DropDownValue").SelectListBox dtScenario.value("State")
	Browser("Entry").Page("Entry").WebEdit("TXT_DateValue").EnterText gfGetCurrentDate
	Browser("Entry").Page("Entry").WebEdit("TXT_SocialSec").EnterText dtScenario.value("SocialSec")
	Browser("Entry").Page("Entry").WebEdit("TXT_Zipcode").EnterText dtScenario.value("Zip")
	Browser("Entry").Page("Entry").WebEdit("TXT_Email").EnterText dtScenario.value("Email")
	Browser("Entry").Page("Entry").WebButton("BTN_NextinClear").WaitForObjectToLoad 
	Browser("Entry").Page("Entry").WebButton("BTN_NextinClear").VerifyExists 
	Browser("Entry").Page("Entry").WebButton("BTN_NextinClear").ClickObject 
	Browser("Entry").Page("Submit").WebButton("BTN_ClearQBack").clickBack 

End Function
''###################################################################################################
''Function Name : ClearQuestionSetValue
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function ClearQuestionSetValue
Environment.Value("StepName") = "ClearQuestionSetValue"
	Browser("Entry").Page("Entry").WebEdit("TXT_FirstName").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_FirstName").EnterText dtScenario.value("First")
	Browser("Entry").Page("Entry").WebEdit("TXT_LastName").EnterText dtScenario.value("Last")
	Browser("Entry").Page("Entry").WebEdit("TXT_Phone").EnterText dtScenario.value("Phone")
	Browser("Entry").Page("Entry").WebElement("DWL_DropDownValue").SelectListBox dtScenario.value("State")
	Browser("Entry").Page("Entry").WebEdit("TXT_DateValue").EnterText gfGetCurrentDate
	Browser("Entry").Page("Entry").WebEdit("TXT_SocialSec").EnterText dtScenario.value("SocialSec")
	Browser("Entry").Page("Entry").WebEdit("TXT_Zipcode").EnterText dtScenario.value("Zip")
	Browser("Entry").Page("Entry").WebEdit("TXT_Email").EnterText dtScenario.value("Email")
	Browser("Entry").Page("Entry").WebElement("DWL_SelectRuleInt").ClickObject 
	Browser("Entry").Page("Entry").WebElement("DWL_SelectRule").ClickObject 
	Browser("Entry").Page("Entry").WebElement("DWL_SelectRule").SelectListBox dtScenario.value("Rule")
	Browser("Entry").Page("Entry").WebEdit("TXT_FirstName").VerifyValueisNull 
	Browser("Entry").Page("Entry").WebEdit("TXT_LastName").VerifyValueisNull 
	Browser("Entry").Page("Entry").WebEdit("TXT_Phone").VerifyValueisNull 
	Browser("Entry").Page("Entry").WebEdit("TXT_DateValue").VerifyValueisNull 
	Browser("Entry").Page("Entry").WebEdit("TXT_Email").VerifyValueisNull 
	Browser("Entry").Page("Entry").WebEdit("TXT_SocialSec").VerifyValueisNull 
	Browser("Entry").Page("Entry").WebElement("DWL_DropDownValue").VerifyValueisNull 

End Function
''###################################################################################################
''Function Name : ClearQuestionsClearGroup
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function ClearQuestionsClearGroup
Environment.Value("StepName") = "ClearQuestionsClearGroup"
	Browser("Entry").Page("Entry").WebEdit("TXT_FirstName").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_FirstName").EnterText dtScenario.value("First")
	Browser("Entry").Page("Entry").WebEdit("TXT_LastName").EnterText dtScenario.value("Last")
	Browser("Entry").Page("Entry").WebEdit("TXT_Phone").EnterText dtScenario.value("Phone")
	Browser("Entry").Page("Entry").WebElement("DWL_DropDownValue").SelectListBox dtScenario.value("State")
	Browser("Entry").Page("Entry").WebEdit("TXT_DateValue").EnterText gfGetCurrentDate
	Browser("Entry").Page("Entry").WebEdit("TXT_SocialSec").EnterText dtScenario.value("SocialSec")
	Browser("Entry").Page("Entry").WebEdit("TXT_Zipcode").EnterText dtScenario.value("Zip")
	Browser("Entry").Page("Entry").WebEdit("TXT_Email").EnterText dtScenario.value("Email")
	Browser("Entry").Page("Entry").WebElement("DWL_SelectRuleInt").ClickObject 
	Browser("Entry").Page("Entry").WebElement("DWL_SelectRule").ClickObject 
	Browser("Entry").Page("Entry").WebElement("DWL_SelectRule").SelectListBox dtScenario.value("Rule")
	Browser("Entry").Page("Entry").WebButton("BTN_NextinClear").ClickObject 
	Browser("Entry").Page("Submit").WebButton("BTN_ClearQBack").clickBack 
	Browser("Entry").Page("Entry").WebEdit("TXT_FirstName").VerifyValueisNull 
	Browser("Entry").Page("Entry").WebEdit("TXT_LastName").VerifyValueisNull 
	Browser("Entry").Page("Entry").WebEdit("TXT_Phone").VerifyValueisNull 
	Browser("Entry").Page("Entry").WebEdit("TXT_DateValue").VerifyValueisNull 
	Browser("Entry").Page("Entry").WebEdit("TXT_Email").VerifyValueisNull 
	Browser("Entry").Page("Entry").WebEdit("TXT_SocialSec").VerifyValueisNull 
	Browser("Entry").Page("Entry").WebElement("DWL_DropDownValue").VerifyValueisNull 

End Function
''###################################################################################################
''Function Name : ClearQuestionIndividualQuestions
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function ClearQuestionIndividualQuestions
Environment.Value("StepName") = "ClearQuestionIndividualQuestions"
	Browser("Entry").Page("Entry").WebEdit("TXT_FirstName").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_FirstName").EnterText dtScenario.value("First")
	Browser("Entry").Page("Entry").WebEdit("TXT_LastName").EnterText dtScenario.value("Last")
	Browser("Entry").Page("Entry").WebEdit("TXT_Phone").EnterText dtScenario.value("Phone")
	Browser("Entry").Page("Entry").WebElement("DWL_DropDownValue").SelectListBox dtScenario.value("State")
	Browser("Entry").Page("Entry").WebEdit("TXT_DateValue").EnterText gfGetCurrentDate
	Browser("Entry").Page("Entry").WebEdit("TXT_SocialSec").EnterText dtScenario.value("SocialSec")
	Browser("Entry").Page("Entry").WebEdit("TXT_Zipcode").EnterText dtScenario.value("Zip")
	Browser("Entry").Page("Entry").WebEdit("TXT_Email").EnterText dtScenario.value("Email")
	Browser("Entry").Page("Entry").WebElement("DWL_SelectRule").SelectListBox dtScenario.value("Rule")
	Browser("Entry").Page("Entry").WebEdit("TXT_FirstName").VerifyValueisNull 
	Browser("Entry").Page("Entry").WebEdit("TXT_LastName").VerifyValueisNull 
	Browser("Entry").Page("Entry").WebEdit("TXT_Phone").VerifyValueisNull 
	Browser("Entry").Page("Entry").WebEdit("TXT_Zipcode").VerifyValueisNull 
	Browser("Entry").Page("Entry").WebEdit("TXT_SocialSec").VerifyValueisNull 
	Browser("Entry").Page("Entry").WebEdit("TXT_Email").VerifyValueisNull 
	Browser("Entry").Page("Entry").WebElement("DWL_DropDownValue").VerifyValueisNull 

End Function
''###################################################################################################
''Function Name : ClearQuestionsIndividual
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function ClearQuestionsIndividual
Environment.Value("StepName") = "ClearQuestionsIndividual"
	Browser("Entry").Page("Entry").WebEdit("TXT_FirstName").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_FirstName").EnterText dtScenario.value("First")
	Browser("Entry").Page("Entry").WebEdit("TXT_LastName").EnterText dtScenario.value("Last")
	Browser("Entry").Page("Entry").WebEdit("TXT_Phone").EnterText dtScenario.value("Phone")
	Browser("Entry").Page("Entry").WebElement("DWL_DropDownValue").SelectListBox dtScenario.value("State")
	Browser("Entry").Page("Entry").WebEdit("TXT_DateValue").EnterText gfGetCurrentDate
	Browser("Entry").Page("Entry").WebEdit("TXT_SocialSec").EnterText dtScenario.value("SocialSec")
	Browser("Entry").Page("Entry").WebEdit("TXT_Zipcode").EnterText dtScenario.value("Zip")
	Browser("Entry").Page("Entry").WebEdit("TXT_Email").EnterText dtScenario.value("Email")
	Browser("Entry").Page("Entry").WebElement("DWL_SelectRuleInt").ClickObject 
	Browser("Entry").Page("Entry").WebElement("DWL_SelectRule").ClickObject 
	Browser("Entry").Page("Entry").WebElement("DWL_SelectRule").SelectListBox dtScenario.value("Rule")
	Browser("Entry").Page("Entry").WebEdit("TXT_FirstName").VerifyValueisNull 
	Browser("Entry").Page("Entry").WebEdit("TXT_LastName").VerifyValueisNull 
	Browser("Entry").Page("Entry").WebEdit("TXT_Phone").VerifyValueisNull 
	Browser("Entry").Page("Entry").WebEdit("TXT_Zipcode").VerifyValueisNull 
	Browser("Entry").Page("Entry").WebEdit("TXT_SocialSec").VerifyValueisNull 
	Browser("Entry").Page("Entry").WebEdit("TXT_DateValue").VerifyValueisNull 
	Browser("Entry").Page("Entry").WebEdit("TXT_Email").VerifyValueisNull 
	Browser("Entry").Page("Entry").WebElement("DWL_DropDownValue").VerifyValueisNull 

End Function
''###################################################################################################
''Function Name : VerifyRepeatingRules
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyRepeatingRules
Environment.Value("StepName") = "VerifyRepeatingRules"
	Browser("Entry").Page("Entry").WebElement("LBL_EnterAccountNumber").VerifyExists 
	Browser("Entry").Page("Entry").WebElement("TWL_AccountNumber").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_AccountNumber").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_AccountNumber").EnterText dtScenario.value("Account")
	Browser("Entry").Page("Entry").WebButton("BTN_NextRepeatingMod").VerifyExists 
	Browser("Entry").Page("Entry").WebButton("BTN_NextRepeatingMod").ClickObject 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").WaitForObjectToLoad 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").VerifyExists 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").VerifyNumOfRowsInTable dtScenario.value("Rows")
	Browser("Run Rules for Table").Page("Run Rules for Table").WebCheckBox("CheckBox_Index1").VerifyExists 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebCheckBox("CheckBox_Index1").ClickObject 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebCheckBox("CheckBox_Index2").VerifyExists 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebCheckBox("CheckBox_Index2").ClickObject 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").VerifyExists 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").VerifyvalueInSpecificCell 2,11,"$118,125.00"
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").VerifyvalueInSpecificCell 3,11,"$156,750.00"
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").VerifyvalueInSpecificCell 4,11," $168,750.00"
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").VerifyvalueInSpecificCell 5,11,"$175,875.00"
	Browser("Run Rules for Table").Page("Run Rules for Table").WebElement("TWL_MarketValueTotal").VerifyDisplayedText dtScenario.value("MarketValueTotal")
	Browser("Run Rules for Table").Page("Run Rules for Table").WebElement("TWL_QuantitiesGroupedBy").VerifyDisplayedText dtScenario.value("QuantitiesGroupedBy")

End Function
''###################################################################################################
''Function Name : testing
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function testing
Environment.Value("StepName") = "testing"
	Browser("Entry").Page("Entry").WebElement("TWL_RoundingInput2").VerifyExists 

End Function
''###################################################################################################
''Function Name : VerifyAddRowSubstringValidate
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyAddRowSubstringValidate
Environment.Value("StepName") = "VerifyAddRowSubstringValidate"
	Browser("Entry").Page("Entry").WebElement("LBL_EnterAccountNumber").VerifyExists 
	Browser("Entry").Page("Entry").WebElement("TWL_AccountNumber").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_AccountNumber").VerifyExists 
	Browser("Entry").Page("Entry").WebEdit("TXT_AccountNumber").EnterText dtScenario.value("Account")
	Browser("Entry").Page("Entry").WebButton("BTN_NextRepeatingMod").VerifyExists 
	Browser("Entry").Page("Entry").WebButton("BTN_NextRepeatingMod").ClickObject 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").WaitForObjectToLoad 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").VerifyExists 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").VerifyNumOfRowsInTable dtScenario.value("Rows")
	Browser("Run Rules for Table").Page("Run Rules for Table").WebCheckBox("CheckBox_Index1").VerifyExists 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebCheckBox("CheckBox_Index1").ClickObject 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebCheckBox("CheckBox_Index2").VerifyExists 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebCheckBox("CheckBox_Index2").ClickObject 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebButton("Button_NewItem").VerifyExists 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebButton("Button_NewItem").ClickObject 
	Browser("Test RM").Page("Test RM").WebElement("LBL_RepeatingModQuestions").VerifyExists 
	Browser("Test RM").Page("Test RM").WebEdit("TXT_AccountNumber").EnterText dtScenario.value("AccountNumber")
	Browser("Test RM").Page("Test RM").WebEdit("TXT_FirstName").EnterText dtScenario.value("FirstName")
	Browser("Test RM").Page("Test RM").WebEdit("TXT_LastName").EnterText dtScenario.value("LastName")
	Browser("Test RM").Page("Test RM").WebEdit("TXT_Row").EnterText dtScenario.value("Row")
	Browser("Test RM").Page("Test RM").WebEdit("TXT_Address").EnterText dtScenario.value("Address")
	Browser("Test RM").Page("Test RM").WebElement("RDL_IsSelectedYesNo").SelectRadioButton "Yes"
	Browser("Test RM").Page("Test RM").WebElement("RDL_IRA_YesNo").SelectRadioButton "Yes"
	Browser("Test RM").Page("Test RM").WebElement("RDL_IRA_YesNo").SelectRadioButton "No"
	Browser("Test RM").Page("Test RM").WebElement("CHK_Checkbox").SelectCheckBox 
	Browser("Test RM").Page("Test RM").WebEdit("TXT_Quantity").EnterText dtScenario.value("Quantity")
	Browser("Test RM").Page("Test RM").WebEdit("TXT_MarketValue").EnterText dtScenario.value("MarketValue")
	Browser("Test RM").Page("Test RM").WebEdit("TXT_Phone").EnterText dtScenario.value("Phone")
	Browser("Test RM").Page("Test RM").WebButton("BTN_Next").VerifyExists 
	Browser("Test RM").Page("Test RM").WebButton("BTN_Next").ClickObject 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").WaitForObjectToLoad 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").VerifyExists 
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").VerifyNumOfRowsInTable 6
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").VerifyvalueInSpecificCell 7,3,"Fred"
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").VerifyvalueInSpecificCell 7,4,"Smith"
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").VerifyvalueInSpecificCell 7,6,"No"
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").VerifyvalueInSpecificCell 7,7,"No"
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").VerifyvalueInSpecificCell 7,5,"721 Jetton st"
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").VerifyvalueInSpecificCell 7,8,"75"
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").VerifyvalueInSpecificCell 7,9,"$9,999.00"
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").VerifyvalueInSpecificCell 7,11,"$749,925.00"
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").VerifyvalueInSpecificCell 7,1,"3 EDITDELETE"
	Browser("Run Rules for Table").Page("Run Rules for Table").WebTable("TBL_RepeatingModuleDataTable").VerifyvalueInSpecificCell 7,2,"40000001"

End Function
''###################################################################################################
''Function Name : ValidateDefaultToNoToggle
''Description : Validate Yes & No Toggle can be selected
''Author : Gallop
''###################################################################################################
Public Function ValidateDefaultToNoToggle
Environment.Value("StepName") = "ValidateDefaultToNoToggle"
	Browser("Yes No Toggle").Page("Yes No Toggle").WebElement("TGL_Togglew/data").ClickOnToggles "Yes"
	Browser("Yes No Toggle").Page("Yes No Toggle").WebElement("TGL_Togglewo/Data").ClickOnToggles "Yes"
	Browser("Yes No Toggle").Page("Yes No Toggle").WebElement("TGL_Multi-Selectw/data").ClickOnToggles "Attached PDF Template"
	Browser("Yes No Toggle").Page("Yes No Toggle").WebElement("TGL_Multi-Selectw/data").ClickOnToggles "Reporting Svcs Report"
	Browser("Yes No Toggle").Page("Yes No Toggle").WebElement("TGL_Multi-Selectw/data").ClickOnToggles "Import Export Map"
	Browser("Yes No Toggle").Page("Yes No Toggle").WebElement("TGL_Togglew/data").ValidateToggleisSelected "Yes"
	Browser("Yes No Toggle").Page("Yes No Toggle").WebElement("TGL_Togglewo/Data").ValidateToggleisSelected "Yes"
	Browser("Yes No Toggle").Page("Yes No Toggle").WebElement("TGL_DefaultsToNo").ValidateToggleisSelected "No"
	Browser("Yes No Toggle").Page("Yes No Toggle").WebElement("TGL_Multi-Selectw/data").ValidateToggleisSelected "Attached PDF Template"
	Browser("Yes No Toggle").Page("Yes No Toggle").WebElement("TGL_Multi-Selectw/data").ValidateToggleisSelected "Reporting Svcs Report"
	Browser("Yes No Toggle").Page("Yes No Toggle").WebElement("TGL_Multi-Selectw/data").ValidateToggleisSelected "Import Export Map"
	Browser("Yes No Toggle").Page("Yes No Toggle").WebButton("BTNYesNoToggle_Next").clickNext 
	Browser("Yes No Toggle Read Only").Page("Yes No Toggle Read Only").WebElement("RWL_Togglew/data").VerifyDisplayedText "Yes"
	Browser("Yes No Toggle Read Only").Page("Yes No Toggle Read Only").WebElement("RWL_DefaultsToNo").VerifyDisplayedText "No"
	Browser("Yes No Toggle Read Only").Page("Yes No Toggle Read Only").WebElement("RWL_Togglewo/Data").VerifyDisplayedText "Yes"
	Browser("Yes No Toggle Read Only").Page("Yes No Toggle Read Only").WebElement("RWL_Multi-Selectw/data").VerifyDisplayedText "Import Export Map"
	Browser("Yes No Toggle Read Only").Page("Yes No Toggle Read Only").WebElement("RWL_Multi-Selectw/data").VerifyDisplayedText "Attached PDF Template"
	Browser("Yes No Toggle Read Only").Page("Yes No Toggle Read Only").WebElement("RWL_Multi-Selectw/data").VerifyDisplayedText "Reporting Svcs Report"
	Browser("Yes No Toggle Read Only").Page("Yes No Toggle Read Only").WebButton("BTN_YesNoGear").VerifyExists 
	Browser("Yes No Toggle Read Only").Page("Yes No Toggle Read Only").WebButton("BTN_YesNoGear").ClickObject 
	Browser("Yes No Toggle Read Only").Page("Yes No Toggle Read Only").WebElement("LNK_Debug").VerifyExists 
	Browser("Yes No Toggle Read Only").Page("Yes No Toggle Read Only").WebElement("LNK_Debug").ClickObject 
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").VerifyExists 
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").VerifyvalueInSpecificCell 5,3,"No"
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").VerifyvalueInSpecificCell 4,3,"8^6^9"
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").VerifyvalueInSpecificCell 6,3,"Yes"
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").VerifyvalueInSpecificCell 7,3,"Yes"

End Function
''###################################################################################################
''Function Name : ValidateDateMonthYearOneColumn
''Description : Validate Date Month/Year One Column in the "Date Month/Year Question Group".
''Author : Gallop
''###################################################################################################
Public Function ValidateDateMonthYearOneColumn
Environment.Value("StepName") = "ValidateDateMonthYearOneColumn"
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonth/YearOneColumn").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").WebElement("DTL_DateMonth/YearOneColumn").ClickOnCalenderIcon 
	Browser("Dates").Page("Dates").WebElement("DTL_DateMonth/YearOneColumnCalendarIcon").ClickObject 
	Browser("Dates").Page("Dates").Link("LNK_CalendarDefaultYear").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").Link("LNK_CalendarDefaultYear").VerifyDisplayedText gfGetYear
	Browser("Dates").Page("Dates").Link("LNK_CalendarTodayDate").ClickObject 
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonth/YearOneColumn").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonth/YearOneColumn").VerifyValue gfGetMonthYear
	Browser("Dates").Page("Dates").WebElement("DTL_DateMonth/YearOneColumnCalendarIcon").ClickObject 
	Browser("Dates").Page("Dates").Link("LNK_CalendarDefaultYear").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").Link("LNK_CalendarDefaultYear").ClickObject 
	Browser("Dates").Page("Dates").WebElement("DTL_DateMonth/YearOneColumn").ClickOnCalenderIcon 
	Browser("Dates").Page("Dates").Link("LNK_CalendarDefaultYear").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").Link("LNK_CalendarDefaultYear").VerifyYearRangeInCalendar "2010-2019"
	Browser("Dates").Page("Dates").WebElement("DTL_DateMonth/YearOneColumnCalendarIcon").ClickObject 
	Browser("Dates").Page("Dates").Link("LNK_CalendarDefaultYear").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").Link("LNK_CalendarDefaultYear").ClickObject 
	Browser("Dates").Page("Dates").WebElement("DTL_DateMonth/YearOneColumn").ClickOnCalenderIcon 
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").VerifyDataInCalendar "1990 - 1999"
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").VerifyDataInCalendar "2090 - 2099"
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").VerifyDataAndClickInCalendar "2010 - 2019"
	Browser("Dates").Page("Dates").WebElement("DTL_DateMonth/YearOneColumn").ClickOnCalenderIcon 
	Browser("Dates").Page("Dates").Link("LNK_CalendarDefaultYear").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").Link("LNK_CalendarDefaultYear").VerifyYearRangeInCalendar "2010-2019"
	Browser("Dates").Page("Dates").WebElement("DTL_Month/YearMin/Max Test-MaxSize0").VerifyExists 
	Browser("Dates").Page("Dates").WebElement("DTL_Month/YearMin/Max Test-MaxSize0").ClickOnCalenderIcon 
	Browser("Dates").Page("Dates").WebElement("DTL_Month/YearMin/MaxTest-MaxSize0CalendarIcon").ClickObject 
	Browser("Dates").Page("Dates").Link("LNK_CalendarRightArrowIcon").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").Link("LNK_CalendarRightArrowIcon").VerifyCalenderNavigation "Not Movable"
	Browser("Dates").Page("Dates").Link("LNK_CalendarLeftArrowIcon").VerifyCalenderNavigation "Movable"
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").VerifyNextMothNotShownInCalendar 
	Browser("Dates").Page("Dates").WebElement("DTL_DateMonth/YearMinTest-1").VerifyExists 
	Browser("Dates").Page("Dates").WebElement("DTL_DateMonth/YearMinTest-1").ClickOnCalenderIcon 
	Browser("Dates").Page("Dates").WebElement("DTL_DateMonth/YearMinTest-1CalendarIcon").ClickObject 
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").Link("LNK_CalendarLeftArrowIcon").VerifyCalenderNavigation "Movable"
	Browser("Dates").Page("Dates").Link("LNK_CalendarLeftArrowIcon").ClickObject 
	Browser("Dates").Page("Dates").WebElement("DTL_DateMonth/YearMinTest-1CalendarIcon").ClickObject 
	Browser("Dates").Page("Dates").Link("LNK_CalendarLeftArrowIcon").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").Link("LNK_CalendarLeftArrowIcon").VerifyCalenderNavigation "Not Movable"
	Browser("Dates").Page("Dates").WebElement("DTL_Month/YearNotEditable").VerifyExists 
	Browser("Dates").Page("Dates").WebElement("DTL_Month/YearNotEditable").VerifyDisabledandVisible 
	Browser("Dates").Page("Dates").WebElement("DTL_Month/YearNotEditable").VerifyDisplayedText "07/1955"

End Function
''###################################################################################################
''Function Name : ValidateDateBirthDayOneColumn
''Description : Validate Date BirthDay One Column in the "Date BirthDay Question Group".
''Author : Gallop
''###################################################################################################
Public Function ValidateDateBirthDayOneColumn
Environment.Value("StepName") = "ValidateDateBirthDayOneColumn"
	Browser("Dates").Page("Dates").WebElement("DTL_BirthdayOneColumnRequired").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").WebElement("DTL_BirthdayOneColumnRequired").VerifyExists 
	Browser("Dates").Page("Dates").WebElement("DTL_BirthdayOneColumnRequiredCalendarIcon").ClickObject 
	Browser("Dates").Page("Dates").Link("LNK_CalendarDefaultYear").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").Link("LNK_CalendarDefaultYear").VerifyDisplayedText "2010-2019"
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").VerifyDataInCalendar gfGetYear
	Browser("Dates").Page("Dates").Link("LNK_CalendarDefaultYear").ClickObject 
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").WebElement("DTL_BirthdayOneColumnRequiredCalendarIcon").ClickObject 
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").VerifyDataInCalendar "2090 - 2099"
	Browser("Dates").Page("Dates").Link("LNK_CalendarTodayDate").ClickObject 
	Browser("Dates").Page("Dates").WebEdit("TXT_BirthdayOneColumnRequired").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").WebEdit("TXT_BirthdayOneColumnRequired").VerifyValue gfGetCurrentDate
	Browser("Dates").Page("Dates").WebElement("DTL_BirthdayNotEditable").VerifyExists 
	Browser("Dates").Page("Dates").WebElement("DTL_BirthdayNotEditable").VerifyFieldIsReadOnly 
	Browser("Dates").Page("Dates").WebElement("DTL_BirthdayNotEditable").VerifyDisplayedText "12/25/2015"
	Browser("Dates").Page("Dates").WebElement("DTL_DateBirthDay_DateMin/MaxTest-MaxSize0").VerifyExists 
	Browser("Dates").Page("Dates").WebElement("DTL_DateBirthDay_DateMin/MaxTest-MaxSize0_CaledarIcon").ClickObject 
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").VerifyDataInCalendar gfGetYear
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").VerifyRecordNotPresentInTable gfGetNextYear
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").VerifyDataAndClickInCalendar gfGetYear
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").WebElement("DTL_DateBirthDay_DateMin/MaxTest-MaxSize0_CaledarIcon").ClickObject 
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").VerifyDataInCalendar gfGetCurrentCalendarMonthName
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").VerifyDataAndClickInCalendar gfGetCurrentCalendarMonthName
	Browser("Dates").Page("Dates").WebElement("DTL_DateBirthDay_DateMin/MaxTest-MaxSize0_CaledarIcon").ClickObject 
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarDates").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarDates").VerifyDataInCalendar gfGetDay
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarDates").VerifyDataAndClickInCalendar gfGetDay
	Browser("Dates").Page("Dates").WebEdit("TXT_DateBirthDay_DateMin/MaxTest-MaxSize0").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").WebElement("DTL_DateBirthDay_BirthdayMin/MaxTest-MinSize1").VerifyExists 
	Browser("Dates").Page("Dates").WebElement("DTL_DateBirthDay_BirthdayMin/MaxTest-MinSize1").ClickOnCalenderIcon 
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").VerifyDataInCalendar gfGetYear
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").VerifyRecordNotPresentInTable gfGetPrevYear
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").VerifyRecordNotPresentInTable gfGetNextYear
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").VerifyDataAndClickInCalendar gfGetYear
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").WebElement("DTL_DateBirthDay_BirthdayMin/MaxTest-MinSize1_CalendarIcon").ClickObject 
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").VerifyDataInCalendar gfGetCurrentCalendarMonthName
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").VerifyDataAndClickInCalendar gfGetCurrentCalendarMonthName
	Browser("Dates").Page("Dates").WebElement("DTL_DateBirthDay_BirthdayMin/MaxTest-MinSize1_CalendarIcon").ClickObject 
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarDates").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarDates").VerifyDataInCalendar gfGetDay
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarDates").VerifyDataInCalendar gfGetPrevDay
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarDates").VerifyRecordNotPresentInTable gfGetNextDay
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarDates").VerifyRecordNotPresentInTable gfGetPrevDay-1
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarDates").VerifyDataAndClickInCalendar gfGetDay
	Browser("Dates").Page("Dates").WebEdit("TXT_BirthdayMin/MaxTest_MinSize1").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").WebEdit("TXT_BirthdayMin/MaxTest_MinSize1").VerifyValue gfGetCurrentDate

End Function
''###################################################################################################
''Function Name : ValidateDateBirthDay
''Description : Validate Date BirthDay One Column in the "Date BirthDay Question Group".
''Author : Gallop
''###################################################################################################
Public Function ValidateDateBirthDay
Environment.Value("StepName") = "ValidateDateBirthDay"
	Browser("Dates").Page("Dates").WebElement("DTL_BirthdayOneColumnRequired").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").WebElement("DTL_BirthdayOneColumnRequired").VerifyExists 
	Browser("Dates").Page("Dates").WebElement("DTL_BirthdayOneColumnRequiredCalendarIcon").ClickObject 
	Browser("Dates").Page("Dates").Link("LNK_CalendarDefaultYear").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").Link("LNK_CalendarDefaultYear").VerifyDisplayedText "2010-2019"
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").VerifyDataInCalendar gfGetYear
	Browser("Dates").Page("Dates").Link("LNK_CalendarDefaultYear").ClickObject 
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").WebElement("DTL_BirthdayOneColumnRequiredCalendarIcon").ClickObject 
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").VerifyDataInCalendar "2090 - 2099"
	Browser("Dates").Page("Dates").Link("LNK_CalendarTodayDate").ClickObject 
	Browser("Dates").Page("Dates").WebEdit("TXT_BirthdayOneColumnRequired").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").WebEdit("TXT_BirthdayOneColumnRequired").VerifyValue gfGetCurrentDate
	Browser("Dates").Page("Dates").WebElement("DTL_BirthdayNotEditable").VerifyExists 
	Browser("Dates").Page("Dates").WebElement("DTL_BirthdayNotEditable").VerifyFieldIsReadOnly 
	Browser("Dates").Page("Dates").WebElement("DTL_BirthdayNotEditable").VerifyDisplayedText "12/25/2015"
	Browser("Dates").Page("Dates").WebElement("DTL_DateBirthDay_DateMin/MaxTest-MaxSize0").VerifyExists 
	Browser("Dates").Page("Dates").WebElement("DTL_DateBirthDay_DateMin/MaxTest-MaxSize0_CaledarIcon").ClickObject 
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").VerifyDataInCalendar gfGetYear
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").VerifyRecordNotPresentInTable gfGetNextYear
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").VerifyDataAndClickInCalendar gfGetYear
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").WebElement("DTL_DateBirthDay_DateMin/MaxTest-MaxSize0_CaledarIcon").ClickObject 
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").VerifyDataInCalendar gfGetCurrentCalendarMonthName
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").VerifyDataAndClickInCalendar gfGetCurrentCalendarMonthName
	Browser("Dates").Page("Dates").WebElement("DTL_DateBirthDay_DateMin/MaxTest-MaxSize0_CaledarIcon").ClickObject 
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarDates").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarDates").VerifyDataInCalendar gfGetDay
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarDates").VerifyDataAndClickInCalendar gfGetDay
	Browser("Dates").Page("Dates").WebEdit("TXT_DateBirthDay_DateMin/MaxTest-MaxSize0").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").WebElement("DTL_DateBirthDay_BirthdayMin/MaxTest-MinSize1").VerifyExists 
	Browser("Dates").Page("Dates").WebElement("DTL_DateBirthDay_BirthdayMin/MaxTest-MinSize1").ClickOnCalenderIcon 
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").VerifyDataInCalendar gfGetYear
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").VerifyRecordNotPresentInTable gfGetPrevYear
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").VerifyRecordNotPresentInTable gfGetNextYear
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").VerifyDataAndClickInCalendar gfGetYear
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").WebElement("DTL_DateBirthDay_BirthdayMin/MaxTest-MinSize1_CalendarIcon").ClickObject 
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").VerifyDataInCalendar gfGetCurrentCalendarMonthName
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").VerifyDataAndClickInCalendar gfGetCurrentCalendarMonthName
	Browser("Dates").Page("Dates").WebElement("DTL_DateBirthDay_BirthdayMin/MaxTest-MinSize1_CalendarIcon").ClickObject 
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarDates").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarDates").VerifyDataInCalendar gfGetDay
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarDates").VerifyDataInCalendar gfGetPrevDay
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarDates").VerifyRecordNotPresentInTable gfGetNextDay
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarDates").VerifyRecordNotPresentInTable gfGetPrevDay-1
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarDates").VerifyDataAndClickInCalendar gfGetDay
	Browser("Dates").Page("Dates").WebEdit("TXT_BirthdayMin/MaxTest_MinSize1").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").WebEdit("TXT_BirthdayMin/MaxTest_MinSize1").VerifyValue gfGetCurrentDate

End Function
''###################################################################################################
''Function Name : ValidateDateMonthYear
''Description : Validate Date Month/Year One Column in the "Date Month/Year Question Group".
''Author : Gallop
''###################################################################################################
Public Function ValidateDateMonthYear
Environment.Value("StepName") = "ValidateDateMonthYear"
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonth/YearOneColumn").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").WebElement("DTL_DateMonth/YearOneColumn").ClickOnCalenderIcon 
	Browser("Dates").Page("Dates").WebElement("DTL_DateMonth/YearOneColumnCalendarIcon").ClickObject 
	Browser("Dates").Page("Dates").Link("LNK_CalendarDefaultYear").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").Link("LNK_CalendarDefaultYear").VerifyDisplayedText gfGetYear
	Browser("Dates").Page("Dates").Link("LNK_CalendarTodayDate").ClickObject 
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonth/YearOneColumn").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").WebEdit("TXT_DateMonth/YearOneColumn").VerifyValue gfGetMonthYear
	Browser("Dates").Page("Dates").WebElement("DTL_DateMonth/YearOneColumnCalendarIcon").ClickObject 
	Browser("Dates").Page("Dates").Link("LNK_CalendarDefaultYear").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").Link("LNK_CalendarDefaultYear").ClickObject 
	Browser("Dates").Page("Dates").WebElement("DTL_DateMonth/YearOneColumn").ClickOnCalenderIcon 
	Browser("Dates").Page("Dates").Link("LNK_CalendarDefaultYear").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").Link("LNK_CalendarDefaultYear").VerifyYearRangeInCalendar "2010-2019"
	Browser("Dates").Page("Dates").WebElement("DTL_DateMonth/YearOneColumnCalendarIcon").ClickObject 
	Browser("Dates").Page("Dates").Link("LNK_CalendarDefaultYear").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").Link("LNK_CalendarDefaultYear").ClickObject 
	Browser("Dates").Page("Dates").WebElement("DTL_DateMonth/YearOneColumn").ClickOnCalenderIcon 
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").VerifyDataInCalendar "1990 - 1999"
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").VerifyDataInCalendar "2090 - 2099"
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").VerifyDataAndClickInCalendar "2010 - 2019"
	Browser("Dates").Page("Dates").WebElement("DTL_DateMonth/YearOneColumn").ClickOnCalenderIcon 
	Browser("Dates").Page("Dates").Link("LNK_CalendarDefaultYear").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").Link("LNK_CalendarDefaultYear").VerifyYearRangeInCalendar "2010-2019"
	Browser("Dates").Page("Dates").WebElement("DTL_Month/YearMin/Max Test-MaxSize0").VerifyExists 
	Browser("Dates").Page("Dates").WebElement("DTL_Month/YearMin/Max Test-MaxSize0").ClickOnCalenderIcon 
	Browser("Dates").Page("Dates").WebElement("DTL_Month/YearMin/MaxTest-MaxSize0CalendarIcon").ClickObject 
	Browser("Dates").Page("Dates").Link("LNK_CalendarRightArrowIcon").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").Link("LNK_CalendarLeftArrowIcon").VerifyCalenderNavigation "Movable"
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").VerifyNextMothNotShownInCalendar 
	Browser("Dates").Page("Dates").WebElement("DTL_DateMonth/YearMinTest-1").VerifyExists 
	Browser("Dates").Page("Dates").WebElement("DTL_DateMonth/YearMinTest-1CalendarIcon").ClickObject 
	Browser("Dates").Page("Dates").WebTable("TBL_CalendarTable").WaitForObjectToLoad 
	Browser("Dates").Page("Dates").Link("LNK_CalendarLeftArrowIcon").VerifyCalenderNavigation "Not Movable"
	Browser("Dates").Page("Dates").WebElement("DTL_Month/YearNotEditable").VerifyExists 
	Browser("Dates").Page("Dates").WebElement("DTL_Month/YearNotEditable").VerifyDisabledandVisible 
	Browser("Dates").Page("Dates").WebElement("DTL_Month/YearNotEditable").VerifyDisplayedText "07/1955"

End Function
''###################################################################################################
''Function Name : NavigateToName
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function NavigateToName
Environment.Value("StepName") = "NavigateToName"
	Browser("Work Queue").Page("Work Queue").WebElement("TAB_Tests").ClickObject 
	Browser("Work Queue").Page("Work Queue").WebElement("LNK_Test Question Types").ClickObject 
	Browser("Navigation Page").Page("Navigation Page").WebElement("DWL_Navigate through Service").SelectListBox "Name"
	Browser("Navigation Page").Page("Navigation Page").WebButton("BTN_Next").ClickObject 
	Browser("Name").Page("Name").WebElement("LPL_NamePageMessage").PageSync 
	Browser("Name").Page("Name").WebElement("LPL_NamePageMessage").VerifyPageName 

End Function
''###################################################################################################
''Function Name : NavigateToSingle SelectSlider
''Description : Navigate to Yes No page
''Author : Gallop
''###################################################################################################
Public Function NavigateToSingle_SelectSlider
Environment.Value("StepName") = "NavigateToSingle SelectSlider"
	Browser("Work Queue").Page("Work Queue").WebElement("TAB_Tests").ClickObject 
	Browser("Work Queue").Page("Work Queue").WebElement("LNK_Test Question Types").ClickObject 
	Browser("Navigation Page").Page("Navigation Page").WebElement("DWL_Navigate through Service").SelectListBox "Single Select - Slider"
	Browser("Navigation Page").Page("Navigation Page").WebButton("BTN_Next").ClickObject 
	Browser("Yes/No").Page("Yes/No").WebElement("LBL_Yes/No").PageSync 
	Browser("Yes/No").Page("Yes/No").WebElement("LBL_Yes/No").VerifyPageName 

End Function
''###################################################################################################
''Function Name : NavigateToSingleSelectSlider
''Description : Navigate to Yes No page
''Author : Gallop
''###################################################################################################
Public Function NavigateToSingleSelectSlider
Environment.Value("StepName") = "NavigateToSingleSelectSlider"
	Browser("Work Queue").Page("Work Queue").WebElement("TAB_Tests").ClickObject 
	Browser("Work Queue").Page("Work Queue").WebElement("LNK_Test Question Types").ClickObject 
	Browser("Navigation Page").Page("Navigation Page").WebElement("DWL_Navigate through Service").SelectListBox "Single Select - Slider"
	Browser("Navigation Page").Page("Navigation Page").WebButton("BTN_Next").ClickObject 
	Browser("Yes/No").Page("Yes/No").WebElement("LBL_Yes/No").PageSync 
	Browser("Yes/No").Page("Yes/No").WebElement("LBL_Yes/No").VerifyPageName 

End Function
''###################################################################################################
''Function Name : FillRequiredDetailsInSingleSelectSlider
''Description : Fill all mandatory fields and selct No for all fields in Yes No Alert and click Next
''Author : Gallop
''###################################################################################################
Public Function FillRequiredDetailsInSingleSelectSlider
Environment.Value("StepName") = "FillRequiredDetailsInSingleSelectSlider"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("SS_SingleSelect1").ClickOnToggles "YES"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("SS_SingleSelectTrueFalse").ClickOnToggles "YES"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("SS_SingleSelectDefaultsToNo").ClickOnToggles "YES"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("QA_SingleSelectwcodegroupTesting").ClickOnToggles "Account to Account"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("SLD_SliderShowHide").ClickOnToggles "Show"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("SLD_Slider2NO").ClickOnToggles "YES"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebButton("BTN_Next").ClickObject 
	Browser("Single Select - Slider").Page("Single Select - Slider_2").WebElement("RWL_SingleSelect1").VerifyDisplayedText "YES"
	Browser("Single Select - Slider").Page("Single Select - Slider_2").WebElement("RWL_SingleSelectTrueFalse").VerifyDisplayedText "YES"
	Browser("Single Select - Slider").Page("Single Select - Slider_2").WebElement("RWL_SingleSelectDefaultsToNo").VerifyDisplayedText "YES"
	Browser("Single Select - Slider").Page("Single Select - Slider_2").WebElement("RWL_QASingleSelectwcodegroup").VerifyDisplayedText "Account to Account"
	Browser("Single Select - Slider").Page("Single Select - Slider_2").WebElement("RWL_Slider1").VerifyDisplayedText "Show"
	Browser("Single Select - Slider").Page("Single Select - Slider_2").WebElement("RWL_Slider2").VerifyDisplayedText "YES"

End Function
''###################################################################################################
''Function Name : VerifyMandatoryErrorMessagesInSingleSelectSlider
''Description : Verimanadatory messages displayed in Yes No page
''Author : Gallop
''###################################################################################################
Public Function VerifyMandatoryErrorMessagesInSingleSelectSlider
Environment.Value("StepName") = "VerifyMandatoryErrorMessagesInSingleSelectSlider"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebButton("BTN_Next").ClickObject 
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("SS_SingleSelect1").VerifyDisplayedText "This is a required field"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("SS_SingleSelectTrueFalse").VerifyDisplayedText "This is a required field"

End Function
''###################################################################################################
''Function Name : VerifySingleSelectTogglesONDebugTable
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifySingleSelectTogglesONDebugTable
Environment.Value("StepName") = "VerifySingleSelectTogglesONDebugTable"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("SS_SingleSelect1").ClickOnToggles "YES"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("SS_SingleSelectTrueFalse").ClickOnToggles "YES"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebButton("BTN_Next").ClickObject 
	Browser("Single Select - Slider").Page("Single Select - Slider_2").WebElement("RWL_Slider1").WaitForObjectToLoad 
	Browser("Single Select - Slider").Page("Single Select - Slider_2").WebElement("RWL_Slider1").VerifyDisplayedText "Hide"
	Browser("Single Select - Slider").Page("Single Select - Slider_2").WebElement("RWL_Slider2").VerifyDisplayedText "No"
	Browser("Single Select - Slider").Page("Single Select - Slider_2").WebElement("RWL_SliderDefaultToYes").VerifyDisplayedText "Yes"
	Browser("Single Select - Slider").Page("Single Select - Slider_2").WebElement("RWL_SliderCodeGroup").VerifyDisplayedText "Securities"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebButton("BTN_YesNoGear").ClickObject 
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("LNK_Debug").WaitForObjectToLoad 
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("LNK_Debug").ClickObject 
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").WaitForObjectToLoad 
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").VerifyExists 
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").VerifyvalueInSpecificCell 5,3,"Hide"
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").VerifyvalueInSpecificCell 6,3,"No"
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").VerifyvalueInSpecificCell 7,3,"Yes"
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").VerifyvalueInSpecificCell 8,3,"Securities"

End Function
''###################################################################################################
''Function Name : ValidateDefaultToNo
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function ValidateDefaultToNo
Environment.Value("StepName") = "ValidateDefaultToNo"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("SS_SingleSelect1").ClickOnToggles "No"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("SS_SingleSelectTrueFalse").ClickOnToggles "Yes"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("SS_SingleSelectDefaultsToNo").ClickOnToggles "Yes"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("SS_SingleSelectCodeGroup").ClickOnToggles "Cash"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("SS_SingleSelect1").ValidateToggleisSelected "No"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("SS_SingleSelectTrueFalse").ValidateToggleisSelected "Yes"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("SS_SingleSelectDefaultsToNo").ValidateToggleisSelected "Yes"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("SS_SingleSelectCodeGroup").ValidateToggleisSelected "Cash"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebButton("BTN_Next").ClickObject 
	Browser("Single Select - Slider").Page("Single Select - Slider_2").WebElement("RWL_SingleSelect1").VerifyDisplayedText "No"
	Browser("Single Select - Slider").Page("Single Select - Slider_2").WebElement("RWL_SingleSelectTrueFalse").VerifyDisplayedText "Yes"
	Browser("Single Select - Slider").Page("Single Select - Slider_2").WebElement("RWL_SingleSelectDefaultsToNo").VerifyDisplayedText "Yes"
	Browser("Single Select - Slider").Page("Single Select - Slider_2").WebElement("RWL_SingleSelectCodewGroup").VerifyDisplayedText "Cash"
	Browser("Single Select - Slider").Page("Single Select - Slider_2").WebButton("WebButton_Gear").VerifyExists 
	Browser("Single Select - Slider").Page("Single Select - Slider_2").WebButton("WebButton_Gear").ClickObject 
	Browser("Single Select - Slider").Page("Single Select - Slider_2").WebElement("LNK_Debug").VerifyExists 
	Browser("Single Select - Slider").Page("Single Select - Slider_2").WebElement("LNK_Debug").ClickDebugObject 
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").WaitForObjectToLoad 
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").VerifyExists 
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").VerifyvalueInSpecificCell 5,3,"No"
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").VerifyvalueInSpecificCell 6,3,"True"
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").VerifyvalueInSpecificCell 8,3,"Yes"
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").VerifyvalueInSpecificCell 9,3,"Cash"
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").VerifyvalueInSpecificCell 10,3,"Hide"
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").VerifyvalueInSpecificCell 11,3,"No"
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").VerifyvalueInSpecificCell 12,3,"Yes"
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").VerifyvalueInSpecificCell 13,3,"Securities"

End Function
''###################################################################################################
''Function Name : ValidateRequiredError
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function ValidateRequiredError
Environment.Value("StepName") = "ValidateRequiredError"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebButton("BTN_Next").ClickObject 
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("SS_SingleSelect1").VerifyMandatoryMessage 

End Function
''###################################################################################################
''Function Name : ValidateSingleSelect
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function ValidateSingleSelect
Environment.Value("StepName") = "ValidateSingleSelect"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("LBL_SingleSelectSlider").VerifyExists 
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("SS_SingleSelectTrueFalse").VerifyExists 
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("SS_SingleSelectTrueFalse").ClickOnToggles "No"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("SS_SingleSelect1").ClickOnToggles "Yes"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("SS_SingleSelectDefaultsToNo").ValidateToggleisSelected "No"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("SS_SingleSelectCodeGroup").ValidateToggleisSelected "Securities"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebButton("BTN_Next").ClickObject 
	Browser("Single Select - Slider").Page("Single Select - Slider_2").WebElement("RWL_SingleSelect1").VerifyDisplayedText "Yes"
	Browser("Single Select - Slider").Page("Single Select - Slider_2").WebElement("RWL_SingleSelectTrueFalse").VerifyDisplayedText "No"
	Browser("Single Select - Slider").Page("Single Select - Slider_2").WebElement("RWL_SingleSelectDefaultsToNo").VerifyDisplayedText "No"
	Browser("Single Select - Slider").Page("Single Select - Slider_2").WebElement("RWL_SingleSelectCodewGroup").VerifyDisplayedText "Securities"

End Function
''###################################################################################################
''Function Name : NavigateToSingleSelect
''Description : Navigate to Yes No page
''Author : Gallop
''###################################################################################################
Public Function NavigateToSingleSelect
Environment.Value("StepName") = "NavigateToSingleSelect"
	Browser("Work Queue").Page("Work Queue").WebElement("TAB_Tests").ClickObject 
	Browser("Work Queue").Page("Work Queue").WebElement("LNK_Test Question Types").ClickObject 
	Browser("Navigation Page").Page("Navigation Page").WebElement("DWL_Navigate through Service").SelectListBox "Single Select - Slider"
	Browser("Navigation Page").Page("Navigation Page").WebButton("BTN_Next").ClickObject 
	Browser("Yes/No").Page("Yes/No").WebElement("LBL_Yes/No").PageSync 
	Browser("Yes/No").Page("Yes/No").WebElement("LBL_Yes/No").VerifyPageName 

End Function
''###################################################################################################
''Function Name : ChnageSliderDefaultValuesAndCheckInDebugTable
''Description : Change Slider Dafault values and  check in Debug Table
''Author : Gallop
''###################################################################################################
Public Function ChnageSliderDefaultValuesAndCheckInDebugTable
Environment.Value("StepName") = "ChnageSliderDefaultValuesAndCheckInDebugTable"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("SS_SingleSelect1").ClickOnToggles "YES"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("SS_SingleSelectTrueFalse").ClickOnToggles "YES"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("SLD_SliderShowHide").ClickOnToggles "SHOW"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("SLD_Slider2NO").ClickOnToggles "YES"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("SLD_DefaultToYes").ClickOnToggles "NO"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("SLD_CodeGroup").ClickOnToggles "CASH"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebButton("BTN_Next").ClickObject 
	Browser("Single Select - Slider").Page("Single Select - Slider_2").WebElement("RWL_Slider1").WaitForObjectToLoad 
	Browser("Single Select - Slider").Page("Single Select - Slider_2").WebElement("RWL_Slider1").VerifyDisplayedText "Show"
	Browser("Single Select - Slider").Page("Single Select - Slider_2").WebElement("RWL_Slider2").VerifyDisplayedText "Yes"
	Browser("Single Select - Slider").Page("Single Select - Slider_2").WebElement("RWL_SliderDefaultToYes").VerifyDisplayedText "No"
	Browser("Single Select - Slider").Page("Single Select - Slider_2").WebElement("RWL_SliderCodeGroup").VerifyDisplayedText "Cash"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebButton("BTN_YesNoGear").ClickObject 
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("LNK_Debug").WaitForObjectToLoad 
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("LNK_Debug").ClickObject 
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").WaitForObjectToLoad 
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").VerifyExists 
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").VerifyvalueInSpecificCell 5,3,"Show"
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").VerifyvalueInSpecificCell 6,3,"Yes"
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").VerifyvalueInSpecificCell 7,3,"No"
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").VerifyvalueInSpecificCell 8,3,"Cash"

End Function
''###################################################################################################
''Function Name : VerifySliderDefaultValues
''Description : Verify Slider Dafault values and also check in Debug Table
''Author : Gallop
''###################################################################################################
Public Function VerifySliderDefaultValues
Environment.Value("StepName") = "VerifySliderDefaultValues"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("SS_SingleSelect1").ClickOnToggles "YES"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("SS_SingleSelectTrueFalse").ClickOnToggles "YES"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebButton("BTN_Next").ClickObject 
	Browser("Single Select - Slider").Page("Single Select - Slider_2").WebElement("RWL_Slider1").WaitForObjectToLoad 
	Browser("Single Select - Slider").Page("Single Select - Slider_2").WebElement("RWL_Slider1").VerifyDisplayedText "Hide"
	Browser("Single Select - Slider").Page("Single Select - Slider_2").WebElement("RWL_Slider2").VerifyDisplayedText "No"
	Browser("Single Select - Slider").Page("Single Select - Slider_2").WebElement("RWL_SliderDefaultToYes").VerifyDisplayedText "Yes"
	Browser("Single Select - Slider").Page("Single Select - Slider_2").WebElement("RWL_SliderCodeGroup").VerifyDisplayedText "Securities"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebButton("BTN_YesNoGear").ClickObject 
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("LNK_Debug").WaitForObjectToLoad 
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("LNK_Debug").ClickDebugObject 
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").WaitForObjectToLoad 
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").VerifyExists 
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").VerifyvalueInSpecificCell 5,3,"YES"
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").VerifyvalueInSpecificCell 6,3,"TRUE"
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").VerifyvalueInSpecificCell 8,3,"NO"
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").VerifyvalueInSpecificCell 9,3,"Securities"

End Function
''###################################################################################################
''Function Name : ChangeSliderDefaultValuesAndCheck
''Description : Change Slider Dafault values and  check in Debug Table
''Author : Gallop
''###################################################################################################
Public Function ChangeSliderDefaultValuesAndCheck
Environment.Value("StepName") = "ChangeSliderDefaultValuesAndCheck"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("SS_SingleSelect1").ClickOnToggles "YES"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("SS_SingleSelectTrueFalse").ClickOnToggles "YES"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("SLD_SliderShowHide").ClickOnToggles "SHOW"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("SLD_Slider2NO").ClickOnToggles "YES"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("SLD_DefaultToYes").ClickOnToggles "NO"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("SLD_CodeGroup").ClickOnToggles "CASH"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebButton("BTN_Next").ClickObject 
	Browser("Single Select - Slider").Page("Single Select - Slider_2").WebElement("RWL_Slider1").WaitForObjectToLoad 
	Browser("Single Select - Slider").Page("Single Select - Slider_2").WebElement("RWL_Slider1").VerifyDisplayedText "Show"
	Browser("Single Select - Slider").Page("Single Select - Slider_2").WebElement("RWL_Slider2").VerifyDisplayedText "Yes"
	Browser("Single Select - Slider").Page("Single Select - Slider_2").WebElement("RWL_SliderDefaultToYes").VerifyDisplayedText "No"
	Browser("Single Select - Slider").Page("Single Select - Slider_2").WebElement("RWL_SliderCodeGroup").VerifyDisplayedText "Cash"
	Browser("Single Select - Slider").Page("Single Select - Slider").WebButton("BTN_YesNoGear").ClickObject 
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("LNK_Debug").WaitForObjectToLoad 
	Browser("Single Select - Slider").Page("Single Select - Slider").WebElement("LNK_Debug").ClickDebugObject 
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").WaitForObjectToLoad 
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").VerifyExists 
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").VerifyvalueInSpecificCell 5,3,"YES"
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").VerifyvalueInSpecificCell 6,3,"TRUE"
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").VerifyvalueInSpecificCell 8,3,"No"
	Browser("IFS Page Debugging").Page("IFS Page Debugging").WebTable("TBL_Debug").VerifyvalueInSpecificCell 9,3,"Securities"

End Function
''###################################################################################################
''Function Name : NavigateToSmartyStreetTesting
''Description : NavigateToSmartyStreetTesting
''Author : Gallop
''###################################################################################################
Public Function NavigateToSmartyStreetTesting
Environment.Value("StepName") = "NavigateToSmartyStreetTesting"
	Browser("Work In Progress").Page("Work In Progress").WebElement("TAB_Tests").ClickObject 
	Browser("Work In Progress").Page("Work In Progress").WebElement("LNK_SmartyStreetsTesting").ClickObject 

End Function
''###################################################################################################
''Function Name : VerifyDefaultFieldsAndValues
''Description : VerifydefaultFieldsAndValues
''Author : Gallop
''###################################################################################################
Public Function VerifyDefaultFieldsAndValues
Environment.Value("StepName") = "VerifyDefaultFieldsAndValues"
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebElement("LBL_LegalAddress").WaitForObjectToLoad 
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebElement("LBL_LegalAddress").VerifyExists 
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebElement("LBL_EmployerAddress").VerifyExists 
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebElement("LBL_Free-formAddress").VerifyExists 
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebElement("LBL_ForeignAddress").VerifyExists 
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebElement("LA_Validation Status").VerifyDisplayedText "Not Run"
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebElement("FA_StateAlabamaselect").VerifyDisplayedText "Alabama"
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebButton("BTN_Validate").VerifyExists 
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebButton("BTN_Next").VerifyExists 
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebButton("BTN_CorrectLater").VerifyExists 
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebButton("BTN_Back").VerifyExists 

End Function
''###################################################################################################
''Function Name : VerifyDefaultValues
''Description : VerifydefaultFieldsAndValues
''Author : Gallop
''###################################################################################################
Public Function VerifyDefaultValues
Environment.Value("StepName") = "VerifyDefaultValues"
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebElement("LBL_LegalAddress").WaitForObjectToLoad 
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebElement("LBL_LegalAddress").VerifyExists 
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebElement("LBL_EmployerAddress").VerifyExists 
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebElement("LBL_Free-formAddress").VerifyExists 
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebElement("LBL_ForeignAddress").VerifyExists 
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebElement("LA_Validation Status").VerifyDisplayedText "Not Run"
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebElement("FA_StateAlabamaselect").VerifyDisplayedText "Alabama"
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebButton("BTN_Validate").VerifyExists 
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebButton("BTN_Next").VerifyExists 
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebButton("BTN_CorrectLater").VerifyExists 
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebButton("BTN_Back").VerifyExists 

End Function
''###################################################################################################
''Function Name : VerifyRequiredErrorMeesage
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyRequiredErrorMeesage
Environment.Value("StepName") = "VerifyRequiredErrorMeesage"
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebElement("LBL_LegalAddress").WaitForObjectToLoad 
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebButton("BTN_Next").clickNext 
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebElement("LA_Address").VerifyDisplayedText "This is a required field"

End Function
''###################################################################################################
''Function Name : VerifyReadOnlyValuesInSmartyStreets
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function VerifyReadOnlyValuesInSmartyStreets
Environment.Value("StepName") = "VerifyReadOnlyValuesInSmartyStreets"
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebElement("LBL_LegalAddress").WaitForObjectToLoad 
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebElement("LA_Address").TypeText "721 Jetton St"
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebElement("LA_City").TypeText "Davidson"
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebElement("LA_State").TypeText "NC"
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebElement("LA_Zip").TypeText "28036"
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebElement("EA_Street").TypeText "1971 University Blvd"
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebEdit("EA_CityZipState").TypeText "Lynchburg, VA, 24515"
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebEdit("FFA_FullName").TypeText "1971 University Blvd, Lynchburg, VA, 24515"
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebElement("FA_CountrySelect").SelectListBox "India"
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebEdit("FA_Address1").TypeText "Flat No.100"
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebEdit("FA_Address2").TypeText "Triveni Apartments"
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebElement("FA_City").TypeText "Pitam Pura"
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebEdit("FA_ForgienZip").TypeText "NEW DELHI 110034"
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTesting").WebButton("BTN_Next").ClickObject 
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTestingReadOnly").WebElement("LA_Address").WaitForObjectToLoad 
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTestingReadOnly").WebElement("LA_Address").VerifyDisplayedText "721 Jetton St"
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTestingReadOnly").WebElement("LA_City").VerifyDisplayedText "Davidson"
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTestingReadOnly").WebElement("LA_State").VerifyDisplayedText "NC"
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTestingReadOnly").WebElement("LA_Zip").VerifyDisplayedText "28036-7107"
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTestingReadOnly").WebElement("EA_Street").VerifyDisplayedText "1971 University Blvd"
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTestingReadOnly").WebElement("EA_CityStateZip").VerifyDisplayedText "Lynchburg VA 24515-0002"
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTestingReadOnly").WebElement("FFA_FullAddress").VerifyDisplayedText "1971 University Blvd Lynchburg VA 24515-0002"
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTestingReadOnly").WebElement("FA_Country").VerifyDisplayedText "India"
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTestingReadOnly").WebElement("FA_AddressLine1").VerifyDisplayedText "Flat No.100"
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTestingReadOnly").WebElement("FA_AddressLine2").VerifyDisplayedText "Triveni Apartments"
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTestingReadOnly").WebElement("FA_City").VerifyDisplayedText "Pitam Pura"
	Browser("SmartyStreetsTesting").Page("SmartyStreetsTestingReadOnly").WebElement("FA_ForeignZip").VerifyDisplayedText "NEW DELHI 110034"

End Function
''###################################################################################################
''Function Name : NavigateToListTransfer
''Description : Navigate to List transfer page
''Author : Gallop
''###################################################################################################
Public Function NavigateToListTransfer
Environment.Value("StepName") = "NavigateToListTransfer"
	Browser("Work Queue").Page("Work Queue").WebElement("TAB_Tests").ClickObject 
	Browser("Work Queue").Page("Work Queue").WebElement("LNK_Test Question Types").ClickObject 
	Browser("Navigation Page").Page("Navigation Page").WebElement("DWL_Navigate through Service").SelectListBox "List Transfer"
	Browser("Navigation Page").Page("Navigation Page").WebButton("BTN_Next").ClickObject 
	Browser("ListTransfer").Page("ListTransfer").WebElement("LBL_ListTransfer").PageSync 
	Browser("ListTransfer").Page("ListTransfer").WebElement("LBL_ListTransfer").VerifyPageName 

End Function
''###################################################################################################
''Function Name : EnterClientName
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function EnterClientName
Environment.Value("StepName") = "EnterClientName"
	Browser("Login").Page("Client Search").WebButton("btn_Search").VerifyPageName 
	Browser("Login").Page("Client Search").WebElement("lbl_ClientSearchCriteria").VerifyExists 
	Browser("Login").Page("Client Search").WebElement("lbl_SearchResults").VerifyExists 
	Browser("Login").Page("Client Search").WebEdit("txt_ClientName").EnterText dtScenario.value("ClientName")
	Browser("Login").Page("Client Search").WebButton("btn_Search").ClickObject 
	Browser("Login").Page("Client Search").WebTable("tbl_ClientName").VerifyExists 
	Browser("Login").Page("Client Search").WebTable("tbl_ClientName").VerifyandClickLinkInRow dtScenario.value("SearchClientName")

End Function
''###################################################################################################
''Function Name : NavigateToEntryRequestDetails
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function NavigateToEntryRequestDetails
Environment.Value("StepName") = "NavigateToEntryRequestDetails"
	Browser("Login").Page("Work Queue").WebElement("lnk_Certificates").ClickObject 
	Browser("Login").Page("Work Queue").WebElement("lnk_CreateRequest").ClickObject 
	Browser("Login").Page("EntrerRequestDetails").WebButton("btn_SelectClient").WaitForObjectToLoad 
	Browser("Login").Page("EntrerRequestDetails").WebButton("btn_SelectClient").VerifyPageName 
	Browser("Login").Page("EntrerRequestDetails").WebButton("btn_SelectClient").ClickObject 

End Function
''###################################################################################################
''Function Name : LoginToFinance
''Description : Login to application
''Author : Gallop
''###################################################################################################
Public Function LoginToFinance
Environment.Value("StepName") = "LoginToFinance"
	Browser("Login").Page("Login").WebButton("btn_Login").WaitForObjectToLoad 
	Browser("Login").Page("Login").WebEdit("txt_UserName").EnterText dtScenario.value("UserName")
	Browser("Login").Page("Login").WebEdit("txt_Password").EnterText dtScenario.value("PassWord")
	Browser("Login").Page("Login").WebButton("btn_Login").ClickObject 
	Browser("Login").Page("Work Queue").WebElement("lnk_Certificates").VerifyPageName 
	Browser("Login").Page("Work Queue").WebElement("lnk_Certificates").VerifyExists 

End Function
''###################################################################################################
''Function Name : LoginToSecurityWindow
''Description : Login to application
''Author : Gallop
''###################################################################################################
Public Function LoginToSecurityWindow
Environment.Value("StepName") = "LoginToSecurityWindow"
	Call StartApplication()
	Browser("Browser").Dialog("Windows Security").WinEdit("txt_UserName").EnterText dtScenario.value("AuthUserName")
	Browser("Browser").Dialog("Windows Security").WinEdit("txt_PassWord").EnterText dtScenario.value("AuthPassword")
	Browser("Browser").Dialog("Windows Security").WinButton("btn_OK").ClickObject 

End Function
''###################################################################################################
''Function Name : ValidateEntryPage
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function ValidateEntryPage
Environment.Value("StepName") = "ValidateEntryPage"
	Browser("Login").Page("Entry").WebElement("lbl_RequestSummary").VerifyPageName 
	Browser("Login").Page("Entry").WebElement("lbl_RequestSummary").VerifyExists 
	Browser("Login").Page("Entry").WebElement("lbl_ClientSummary").VerifyExists 
	Browser("Login").Page("Entry").WebElement("lbl_RequestDetails").VerifyExists 
	Browser("Login").Page("Entry").WebElement("lbl_NamedInsuredCertifcate").VerifyExists 
	Browser("Login").Page("Entry").WebElement("lbl_Coverages").VerifyExists 
	Browser("Login").Page("Entry").WebElement("lbl_AdditionalRequirements").VerifyExists 
	Browser("Login").Page("Entry").WebElement("lbl_AutoID").VerifyExists 
	Browser("Login").Page("Entry").WebElement("lbl_HandlingInstructions").VerifyExists 
	Browser("Login").Page("Entry").Link("tab_Documents").VerifyExists 
	Browser("Login").Page("Entry").Link("tab_Email").VerifyExists 
	Browser("Login").Page("Entry").Link("tab_Audit").VerifyExists 
	Browser("Login").Page("Entry").Link("tab_WorkFlow").VerifyExists 
	Browser("Login").Page("Entry").WebButton("btn_Submit").VerifyExists 
	Browser("Login").Page("Entry").WebButton("btn_Cancel").VerifyExists 
	Browser("Login").Page("Entry").WebButton("btn_Back").VerifyExists 
	Browser("Login").Page("Entry").WebElement("dtl_RequestID").GetReqID 
	Browser("Login").Page("Entry").WebElement("dwl_SourceOfRequest").SelectListBox "Email"

End Function
''###################################################################################################
''Function Name : EditNumberOfHoldersForIssuance
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function EditNumberOfHoldersForIssuance
Environment.Value("StepName") = "EditNumberOfHoldersForIssuance"
	Browser("Login").Page("Entry").WebButton("btn_Submit").ClickObject 
	Browser("Login").Page("Work Queue").WebEdit("txt_SearchID").PageSync 
	Browser("Login").Page("Work Queue").WebButton("btn_Search").VerifyPageName 
	Browser("Login").Page("Work Queue").WebEdit("txt_SearchID").VerifyExists 
	Browser("Login").Page("Work Queue").WebEdit("txt_SearchID").EnterReqID 
	Browser("Login").Page("Work Queue").WebButton("btn_Search").ClickObject 
	Browser("Login").Page("RequestSummary").WebButton("btn_Task").VerifyPageName 
	Browser("Login").Page("RequestSummary").Link("tab_Communications").VerifyExists 
	Browser("Login").Page("RequestSummary").Link("tab_WorkFlow").VerifyExists 
	Browser("Login").Page("RequestSummary").Link("tab_Email").VerifyExists 
	Browser("Login").Page("RequestSummary").Link("tab_Documents").VerifyExists 
	Browser("Login").Page("RequestSummary").Link("tab_Audit").VerifyExists 
	Browser("Login").Page("RequestSummary").Link("tab_WorkFlow").ClickObject 
	Browser("Login").Page("RequestSummary").WebTable("tbl_Task").WaitForTableToLoad 5
	Browser("Login").Page("RequestSummary").WebTable("tbl_Task").VerifyExists 
	Browser("Login").Page("RequestSummary").WebTable("tbl_Task").VerifyvalueInSpecificCell 2,2,"New"
	Browser("Login").Page("RequestSummary").WebTable("tbl_Task").VerifyandClickLinkInRow "Midterm Review & Process Request|TakeAssignDue Date"
	Browser("Login").Page("RequestSummary").WebElement("lnk_Take").VerifyExists 
	Browser("Login").Page("RequestSummary").WebElement("lnk_DueDate").VerifyExists 
	Browser("Login").Page("RequestSummary").WebElement("lnk_Assign").VerifyExists 
	Browser("Login").Page("RequestSummary").WebButton("btn_Task").ClickObject 
	Browser("Login").Page("Process Details").WebButton("btn_SelectHolder(s)").VerifyPageName 
	Browser("Login").Page("Process Details").WebButton("btn_SelectHolder(s)").VerifyExists 
	Browser("Login").Page("Process Details").WebButton("btn_NeedInformation").VerifyExists 
	Browser("Login").Page("Process Details").WebButton("btn_EmailInquiry").VerifyExists 
	Browser("Login").Page("Process Details").WebButton("btn_Back").VerifyExists 
	Browser("Login").Page("Process Details").WebButton("btn_SelectHolder(s)").ClickObject 
	Browser("Login").Page("SelectHolderForIssuance").WebButton("btn_SelectClientDistribution").VerifyPageName 
	Browser("Login").Page("SelectHolderForIssuance").WebTable("tbl_SelectHolders").WaitForTableToLoad 30
	Browser("Login").Page("SelectHolderForIssuance").WebTable("tbl_SelectHolders").VerifyExists 
	Browser("Login").Page("SelectHolderForIssuance").WebTable("tbl_SelectHolders").SelectCheckBoxsInTable 5,1
	Browser("Login").Page("SelectHolderForIssuance").WebButton("btn_SelectClientDistribution").ClickObject 
	Browser("Login").Page("Select Client Distribution").WebElement("lbl_SelectClientDistribution").VerifyPageName 
	Browser("Login").Page("Select Client Distribution").WebTable("tbl_SelectClientDistribution").WaitForTableToLoad 5
	Browser("Login").Page("Select Client Distribution").WebTable("tbl_SelectClientDistribution").VerifyExists 
	Browser("Login").Page("Select Client Distribution").WebButton("btn_Add").VerifyExists 
	Browser("Login").Page("Select Client Distribution").WebTable("tbl_SelectClientDistribution").VerifyTableColumn "FilterName"
	Browser("Login").Page("Select Client Distribution").WebTable("tbl_SelectClientDistribution").VerifyTableColumn "FilterType"
	Browser("Login").Page("Select Client Distribution").WebTable("tbl_SelectClientDistribution").VerifyTableColumn "FilterMethod"
	Browser("Login").Page("Select Client Distribution").WebTable("tbl_SelectClientDistribution").VerifyTableColumn "FilterDestination"
	Browser("Login").Page("Select Client Distribution").WebTable("tbl_SelectClientDistribution").VerifyTableColumn "FilterCC Address"
	Browser("Login").Page("Select Client Distribution").WebButton("btn_ConfirmIssuance").VerifyExists 
	Browser("Login").Page("Select Client Distribution").WebButton("btn_Back").VerifyExists 
	Browser("Login").Page("Select Client Distribution").WebButton("btn_Back").ClickObject 
	Browser("Login").Page("SelectHolderForIssuance").WebButton("btn_SelectClientDistribution").VerifyPageName 
	Browser("Login").Page("SelectHolderForIssuance").WebTable("tbl_SelectHolders").WaitForTableToLoad 40
	Browser("Login").Page("SelectHolderForIssuance").WebTable("tbl_SelectHolders").DeselectCheckBoxsInTable 2
	Browser("Login").Page("SelectHolderForIssuance").WebButton("btn_SelectClientDistribution").ClickObject 
	Browser("Login").Page("Select Client Distribution").WebElement("lbl_SelectClientDistribution").PageSync 
	Browser("Login").Page("Select Client Distribution").WebElement("lbl_SelectClientDistribution").VerifyPageName 
	Browser("Login").Page("Select Client Distribution").WebTable("tbl_SelectClientDistribution").WaitForTableToLoad 4
	Browser("Login").Page("Select Client Distribution").WebElement("lnk_Add").VerifyExists 
	Browser("Login").Page("Select Client Distribution").WebTable("tbl_SelectClientDistribution").VerifyTableColumn "FilterName"
	Browser("Login").Page("Select Client Distribution").WebTable("tbl_SelectClientDistribution").VerifyTableColumn "FilterType"
	Browser("Login").Page("Select Client Distribution").WebTable("tbl_SelectClientDistribution").VerifyTableColumn "FilterMethod"
	Browser("Login").Page("Select Client Distribution").WebTable("tbl_SelectClientDistribution").VerifyTableColumn "FilterDestination"
	Browser("Login").Page("Select Client Distribution").WebTable("tbl_SelectClientDistribution").VerifyTableColumn "FilterCC Address"
	Browser("Login").Page("Select Client Distribution").WebTable("tbl_SelectClientDistribution").SelectMethodInTable "Email"
	Browser("Login").Page("Select Client Distribution").WebButton("btn_ConfirmIssuance").ClickObject 
	Browser("Login").Page("Submit Issuance").WebElement("dtl_IssuanceCertificateCount").VerifyPageName 
	Browser("Login").Page("Submit Issuance").WebTable("tbl_SelectClientDist").WaitForTableToLoad 4
	Browser("Login").Page("Submit Issuance").WebTable("tbl_SelectClientDist").VerifyExists 
	Browser("Login").Page("Submit Issuance").WebTable("tbl_SelectClientDist").VerifyTableColumn "Name"
	Browser("Login").Page("Submit Issuance").WebTable("tbl_SelectClientDist").VerifyTableColumn "Type"
	Browser("Login").Page("Submit Issuance").WebTable("tbl_SelectClientDist").VerifyTableColumn "Method"
	Browser("Login").Page("Submit Issuance").WebTable("tbl_SelectClientDist").VerifyTableColumn "Destination"
	Browser("Login").Page("Submit Issuance").WebTable("tbl_SelectClientDist").VerifyTableColumn "CC Address"
	Browser("Login").Page("Submit Issuance").WebElement("dtl_IssuanceCertificateCount").VerifyDisplayedText 3
	Browser("Login").Page("Submit Issuance").WebButton("btn_IssueCertificates").VerifyExists 
	Browser("Login").Page("Submit Issuance").WebButton("btn_IssueCertificates").ClickObject 
	Browser("Login").Page("Work Queue").WebElement("lnk_Certificates").VerifyPageName 

End Function
''###################################################################################################
''Function Name : AutoID
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function AutoID
Environment.Value("StepName") = "AutoID"
	Browser("Login").Page("Entry").WebElement("dwl_RequestType").SelectDropDownValues "Renewal"
	Browser("Login").Page("Entry").WebElement("dwl_Certificates").SelectDropDownValues "Auto ID Cards"
	Browser("Login").Page("Entry").WebButton("btn_Submit").ClickObject 
	Browser("Login").Page("Work Queue").WebElement("lnk_Certificates").VerifyPageName 
	Browser("Login").Page("Work Queue").WebEdit("txt_SearchID").EnterReqID 
	Browser("Login").Page("Work Queue").WebButton("btn_Search").ClickObject 
	Browser("Login").Page("RequestSummary").WebButton("btn_Task").VerifyPageName 
	Browser("Login").Page("RequestSummary").Link("tab_WorkFlow").VerifyExists 
	Browser("Login").Page("RequestSummary").WebElement("dtl_RenewalReview").VerifyExists 
	Browser("Login").Page("RequestSummary").WebElement("dtl_RemovingWorkflowMsg").VerifyDisplayedText "Removing workflow task 'Midterm Review & Process Request' due to service request type change"
	Browser("Login").Page("RequestSummary").Link("tab_WorkFlow").ClickObject 
	Browser("Login").Page("RequestSummary").WebTable("tbl_Task").VerifyvalueInSpecificCell 2,2,"New"
	Browser("Login").Page("RequestSummary").WebTable("tbl_Task").VerifyandClickLinkInRow "Midterm Review & Process Request|TakeAssignDue Date"
	Browser("Login").Page("RequestSummary").WebButton("btn_Task").ClickObject 
	Browser("Login").Page("Process Details").WebButton("btn_SelectHolder(s)").VerifyPageName 
	Browser("Login").Page("Process Details").WebButton("btn_SelectAutoIDCard(s)").VerifyExists 
	Browser("Login").Page("Process Details").WebButton("btn_SelectAutoIDCard(s)").ClickObject 
	Browser("Login").Page("SelectAutoIDCardFor").WebElement("lbl_SelectCard(s)ToIssue").VerifyPageName 
	Browser("Login").Page("SelectAutoIDCardFor").WebElement("lbl_RequestSummary").VerifyExists 
	Browser("Login").Page("SelectAutoIDCardFor").WebElement("lbl_FilterCriteria").VerifyExists 
	Browser("Login").Page("SelectAutoIDCardFor").WebElement("lbl_SelectCard(s)ToIssue").VerifyExists 
	Browser("Login").Page("SelectAutoIDCardFor").WebEdit("txt_Year").VerifyExists 
	Browser("Login").Page("SelectAutoIDCardFor").WebEdit("txt_Source").VerifyExists 
	Browser("Login").Page("SelectAutoIDCardFor").WebEdit("txt_Model").VerifyExists 
	Browser("Login").Page("SelectAutoIDCardFor").WebEdit("txt_Make").VerifyExists 
	Browser("Login").Page("SelectAutoIDCardFor").WebEdit("txt_LicensedState").VerifyExists 
	Browser("Login").Page("SelectAutoIDCardFor").WebEdit("txt_Batch").VerifyExists 
	Browser("Login").Page("SelectAutoIDCardFor").WebEdit("txt_AutoIDTemplate").VerifyExists 
	Browser("Login").Page("SelectAutoIDCardFor").WebButton("btn_SelectClientDistribution").VerifyExists 
	Browser("Login").Page("SelectAutoIDCardFor").WebButton("btn_SelectAll").VerifyExists 
	Browser("Login").Page("SelectAutoIDCardFor").WebButton("btn_Search").VerifyExists 
	Browser("Login").Page("SelectAutoIDCardFor").WebButton("btn_ClearSelection").VerifyExists 
	Browser("Login").Page("SelectAutoIDCardFor").WebButton("btn_Back").VerifyExists 
	Browser("Login").Page("SelectAutoIDCardFor").WebTable("tbl_SelectCardsToIssue").VerifyTableColumn "ID"
	Browser("Login").Page("SelectAutoIDCardFor").WebTable("tbl_SelectCardsToIssue").VerifyTableColumn "Year"
	Browser("Login").Page("SelectAutoIDCardFor").WebTable("tbl_SelectCardsToIssue").VerifyTableColumn "Make"
	Browser("Login").Page("SelectAutoIDCardFor").WebTable("tbl_SelectCardsToIssue").VerifyTableColumn "Model"
	Browser("Login").Page("SelectAutoIDCardFor").WebTable("tbl_SelectCardsToIssue").VerifyTableColumn "VIN"
	Browser("Login").Page("SelectAutoIDCardFor").WebTable("tbl_SelectCardsToIssue").VerifyTableColumn "Batch"
	Browser("Login").Page("SelectAutoIDCardFor").WebTable("tbl_SelectCardsToIssue").VerifyTableColumn "Auto ID Template"
	Browser("Login").Page("SelectAutoIDCardFor").WebTable("tbl_SelectCardsToIssue").VerifyTableColumn "Licensed State"
	Browser("Login").Page("SelectAutoIDCardFor").WebTable("tbl_SelectCardsToIssue").VerifyTableColumn "Source"
	Browser("Login").Page("SelectAutoIDCardFor").WebTable("tbl_SelectCardsToIssue").VerifyTableColumn "Status"
	Browser("Login").Page("SelectAutoIDCardFor").WebEdit("txt_Year").EnterText "2007"
	Browser("Login").Page("SelectAutoIDCardFor").WebButton("btn_Search").ClickObject 
	Browser("Login").Page("SelectAutoIDCardFor").WebTable("tbl_SelectCardsToIssue").WaitForTableToLoad 6
	Browser("Login").Page("SelectAutoIDCardFor").WebTable("tbl_SelectCardsToIssue").VerifyvalueInSpecificCell 2,3,"2007"
	Browser("Login").Page("SelectAutoIDCardFor").WebTable("tbl_SelectCardsToIssue").VerifyvalueInSpecificCell 10,3,"2007"
	Browser("Login").Page("SelectAutoIDCardFor").WebButton("btn_ClearSelection").ClickObject 
	Browser("Login").Page("SelectAutoIDCardFor").WebEdit("txt_Make").EnterText "Ford"
	Browser("Login").Page("SelectAutoIDCardFor").WebButton("btn_Search").ClickObject 
	Browser("Login").Page("SelectAutoIDCardFor").WebTable("tbl_SelectCardsToIssue").WaitForTableToLoad 6
	Browser("Login").Page("SelectAutoIDCardFor").WebTable("tbl_SelectCardsToIssue").VerifyvalueInSpecificCell 2,4,"Ford"
	Browser("Login").Page("SelectAutoIDCardFor").WebTable("tbl_SelectCardsToIssue").VerifyvalueInSpecificCell 10,4,"Ford"
	Browser("Login").Page("SelectAutoIDCardFor").WebTable("tbl_SelectCardsToIssue").SelectCheckBoxsInTable 3,1
	Browser("Login").Page("SelectAutoIDCardFor").WebButton("btn_SelectClientDistribution").ClickObject 
	Browser("Login").Page("Select Client Distribution").WebButton("btn_ConfirmIssuance").VerifyPageName 
	Browser("Login").Page("Select Client Distribution").WebButton("btn_Add").VerifyExists 
	Browser("Login").Page("Select Client Distribution").WebTable("tbl_SelectClientDistribution").VerifyTableColumn "FilterName"
	Browser("Login").Page("Select Client Distribution").WebTable("tbl_SelectClientDistribution").VerifyTableColumn "FilterType"
	Browser("Login").Page("Select Client Distribution").WebTable("tbl_SelectClientDistribution").VerifyTableColumn "FilterMethod"
	Browser("Login").Page("Select Client Distribution").WebTable("tbl_SelectClientDistribution").VerifyTableColumn "FilterDestination"
	Browser("Login").Page("Select Client Distribution").WebTable("tbl_SelectClientDistribution").VerifyTableColumn "FilterCC Address"
	Browser("Login").Page("Select Client Distribution").WebButton("btn_ConfirmIssuance").VerifyExists 
	Browser("Login").Page("Select Client Distribution").WebButton("btn_Back").VerifyExists 
	Browser("Login").Page("Select Client Distribution").WebTable("tbl_SelectClientDistribution").SelectMethodInTable "Email"
	Browser("Login").Page("Select Client Distribution").WebButton("btn_ConfirmIssuance").ClickObject 
	Browser("Login").Page("Submit Issuance").WebElement("dtl_IssuanceCertificateCount").VerifyPageName 
	Browser("Login").Page("Submit Issuance").WebTable("tbl_SelectCard(S)ToIssue").VerifyTableColumn "FilterID"
	Browser("Login").Page("Submit Issuance").WebTable("tbl_SelectCard(S)ToIssue").VerifyTableColumn "FilterYear"
	Browser("Login").Page("Submit Issuance").WebTable("tbl_SelectCard(S)ToIssue").VerifyTableColumn "FilterMake"
	Browser("Login").Page("Submit Issuance").WebTable("tbl_SelectCard(S)ToIssue").VerifyTableColumn "FilterModel"
	Browser("Login").Page("Submit Issuance").WebTable("tbl_SelectCard(S)ToIssue").VerifyTableColumn "FilterVIN"
	Browser("Login").Page("Submit Issuance").WebTable("tbl_SelectCard(S)ToIssue").VerifyTableColumn "FilterBatch"
	Browser("Login").Page("Submit Issuance").WebTable("tbl_SelectCard(S)ToIssue").VerifyTableColumn "FilterAuto ID Template"
	Browser("Login").Page("Submit Issuance").WebTable("tbl_SelectCard(S)ToIssue").VerifyTableColumn "FilterLicensed State"
	Browser("Login").Page("Submit Issuance").WebTable("tbl_SelectCard(S)ToIssue").VerifyTableColumn "FilterSource"
	Browser("Login").Page("Submit Issuance").WebTable("tbl_SelectCard(S)ToIssue").VerifyTableColumn "FilterStatus "
	Browser("Login").Page("Submit Issuance").WebTable("tbl_SelectCard(S)ToIssue").VerifyTableColumn "FilterType "
	Browser("Login").Page("Submit Issuance").WebTable("tbl_SelectCard(S)ToIssue").VerifyNumOfRowsInTable 3
	Browser("Login").Page("Submit Issuance").WebButton("btn_IssueCertificates").ClickObject 
	Browser("Login").Page("Work Queue").WebElement("lnk_Certificates").VerifyPageName 

End Function
''###################################################################################################
''Function Name : ChangeRequestTypeRenewalToMidterm
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function ChangeRequestTypeRenewalToMidterm
Environment.Value("StepName") = "ChangeRequestTypeRenewalToMidterm"
	Browser("Login").Page("Entry").WebElement("dwl_RequestType").SelectDropDownValues "Renewal"
	Browser("Login").Page("Entry").WebButton("btn_Submit").ClickObject 
	Browser("Login").Page("Work Queue").WebElement("lnk_Certificates").VerifyPageName 
	Browser("Login").Page("Work Queue").WebEdit("txt_SearchID").EnterReqID 
	Browser("Login").Page("Work Queue").WebButton("btn_Search").ClickObject 
	Browser("Login").Page("RequestSummary").WebButton("btn_Task").VerifyPageName 
	Browser("Login").Page("RequestSummary").Link("tab_WorkFlow").VerifyExists 
	Browser("Login").Page("RequestSummary").WebElement("dtl_RemovingWorkflowMsg").VerifyDisplayedText "Removing workflow task 'Midterm Review & Process Request' due to service request type change"
	Browser("Login").Page("RequestSummary").WebElement("dtl_AlertsMsg").VerifyDisplayedText "Changing service request type from 'Midterm Issuance' to type 'Renewal Issuance'"
	Browser("Login").Page("RequestSummary").WebElement("dtl_AssignedTeam").VerifyDisplayedText "West"
	Browser("Login").Page("RequestSummary").WebElement("dtl_RenewalReview").VerifyExists 
	Browser("Login").Page("RequestSummary").Link("tab_WorkFlow").ClickObject 
	Browser("Login").Page("RequestSummary").WebTable("tbl_Task").VerifyandClickLinkInRow "Midterm Review & Process Request|TakeAssignDue Date"
	Browser("Login").Page("RequestSummary").Link("tab_WorkFlow").OpenNewTab 
	Browser("NewTab").Page("NewLoginPage").WebButton("btn_Login").VerifyPageName 
	Browser("NewTab").Page("NewLoginPage").WebEdit("txt_UserName").EnterText dtScenario.value("UserName")
	Browser("NewTab").Page("NewLoginPage").WebEdit("txt_PassWord").EnterText dtScenario.value("PassWord")
	Browser("NewTab").Page("NewLoginPage").WebButton("btn_Login").ClickObject 
	Browser("NewTab").Page("Work Queue").WebElement("dtl_Filter").VerifyPageName 
	Browser("NewTab").Page("Work Queue").WebElement("dtl_Filter").VerifyExists 
	Browser("NewTab").Page("Work Queue").WebElement("dtl_Filter").ClickObject 
	Browser("NewTab").Page("Work Queue").WebElement("dwl_AssignedTeam").VerifyExists 
	Browser("NewTab").Page("Work Queue").WebElement("dwl_AssignedTeam").VerifyValueExistsInDropDown "Midwest"
	Browser("NewTab").Page("Work Queue").WebElement("dwl_AssignedTeam").VerifyValueExistsInDropDown "Northeast"
	Browser("NewTab").Page("Work Queue").WebElement("dwl_AssignedTeam").VerifyValueExistsInDropDown "P&S"
	Browser("NewTab").Page("Work Queue").WebElement("dwl_AssignedTeam").VerifyValueExistsInDropDown "West"
	Browser("NewTab").Page("Work Queue").WebElement("dwl_AssignedTeam").VerifyValueExistsInDropDown "Process Support"
	Browser("NewTab").Page("Work Queue").WebElement("dwl_AssignedTeam").VerifyValueExistsInDropDown "Quality Control"
	Browser("NewTab").Page("Work Queue").WebElement("dwl_AssignedTeam").VerifyValueExistsInDropDown "Admin"
	Browser("NewTab").Page("Work Queue").WebButton("btn_ApplyFilter").VerifyExists 
	Browser("NewTab").Page("Work Queue").WebButton("btn_ClearFilter").VerifyExists 
	Browser("NewTab").Page("Work Queue").WebButton("btn_Cancel").VerifyExists 
	Browser("NewTab").Page("Work Queue").WebElement("dwl_AssignedTeam").ClickObject 
	Browser("NewTab").Page("Work Queue").WebElement("dtl_West").ClickObject 
	Browser("NewTab").Page("Work Queue").WebButton("btn_ApplyFilter").ClickObject 
	Browser("NewTab").Page("Work Queue").WebTable("tbl_SRWorkQueue").VerifyExists 
	Browser("NewTab").Page("Work Queue").WebTable("tbl_SRWorkQueue").WaitForTableToLoad 3
	Browser("NewTab").Page("Work Queue").WebTable("tbl_SRWorkQueue").VerifyandClickWebElementInRow "Renewal Review & Process Request | Show All"
	Browser("NewTab").Page("Work Queue").WebTable("tbl_SRWest").WaitForObjectToLoad 
	Browser("NewTab").Page("Work Queue").WebTable("tbl_SRWest").VerifyExists 
	Browser("NewTab").Page("Work Queue").Link("lnk_ID").ClickObject 
	Browser("NewTab").Page("Work Queue").WebTable("tbl_SRWest").WaitForObjectToLoad 
	Browser("NewTab").Page("Work Queue").Link("lnk_ID").ClickObject 
	Browser("NewTab").Page("Work Queue").WebTable("tbl_SRWest").WaitForTableToLoad 5
	Browser("NewTab").Page("Work Queue").WebTable("tbl_SRWest").VerifyReqIDInTable 2,1
	Browser("NewTab").Page("Work Queue").WebTable("tbl_SRWest").VerifyvalueInSpecificCell 2,16,"Processing Request"
	Browser("NewTab").Page("Work Queue").WebTable("tbl_SRWest").VerifyvalueInSpecificCell 2,4,"Renewal Review & Process Request"
	Browser("NewTab").Page("Work Queue").WebTable("tbl_SRWest").VerifyvalueInSpecificCell 2,3,"Renewal Issuance"
	Browser("NewTab").Page("Work Queue").WebTable("tbl_SRWest").VerifyvalueInSpecificCell 2,2,"West"
	Browser("Login").Page("RequestSummary").WebButton("btn_Task").ClickObject 
	Browser("Login").Page("Process Details").WebButton("btn_SelectHolder(s)").VerifyPageName 
	Browser("Login").Page("Process Details").WebButton("btn_ClearAssignment").VerifyExists 
	Browser("Login").Page("Process Details").WebButton("btn_ClientSummary").VerifyExists 
	Browser("Login").Page("Process Details").WebButton("btn_ChangeClient").VerifyExists 
	Browser("Login").Page("Process Details").WebButton("btn_ChangeRequestType").VerifyExists 
	Browser("Login").Page("Process Details").WebButton("btn_CloseRequest").VerifyExists 
	Browser("Login").Page("Process Details").WebElement("dtl_AssignedTeam").VerifyDisplayedText "Atlantic/South"
	Browser("Login").Page("Process Details").WebElement("dtl_RemovingWorkflowTaskMSg").VerifyDisplayedText "Removing workflow task 'Midterm Review & Process Request' due to service request type change"
	Browser("Login").Page("Process Details").WebElement("dtl_ChangingServiceRequestMsg").VerifyDisplayedText "Changing service request type from 'Midterm Issuance' to type 'Renewal Issuance'"
	Browser("Login").Page("Process Details").WebButton("btn_SelectHolder(s)").VerifyExists 
	Browser("Login").Page("Process Details").WebButton("btn_EmailInquiry").VerifyExists 
	Browser("Login").Page("Process Details").WebButton("btn_NeedInformation").VerifyExists 
	Browser("Login").Page("Process Details").WebButton("btn_Back").VerifyExists 
	Browser("Login").Page("Process Details").WebButton("btn_ChangeRequestType").ClickObject 
	Browser("Login").Page("Change Request Type").WebElement("dtl_RequestType").VerifyPageName 
	Browser("Login").Page("Change Request Type").WebElement("dtl_RequestType").ClickObject 
	Browser("Login").Page("Change Request Type").WebElement("btn_Midterm").ClickObject 
	Browser("Login").Page("Change Request Type").WebButton("btn_Update").ClickObject 
	Browser("Login").Page("Process Details").WebElement("dtl_AssignedTeam").VerifyPageName 
	Browser("Login").Page("Process Details").WebElement("dtl_AssignedTeam").VerifyDisplayedText "Atlantic/South"
	Browser("Login").Page("Process Details").WebElement("dtl_ChangingServiceRequestMsg").VerifyDisplayedText "Changing service request type from 'Renewal Issuance' to type 'Midterm Issuance'" 
	Browser("Login").Page("Process Details").WebElement("dtl_RemovingWorkflowTaskMSg").VerifyDisplayedText "Removing workflow task 'Renewal Review & Process Request' due to service request type change."
	Browser("Login").Page("Process Details").WebButton("btn_SelectHolder(s)").ClickObject 
	Browser("Login").Page("SelectHolderForIssuance").WebButton("btn_Search").VerifyPageName 
	Browser("Login").Page("SelectHolderForIssuance").WebElement("dtl_AssignedTeam").VerifyDisplayedText "Atlantic/South"
	Browser("Login").Page("SelectHolderForIssuance").WebTable("tbl_SelectHolders").WaitForTableToLoad 20
	Browser("Login").Page("SelectHolderForIssuance").WebTable("tbl_SelectHolders").SelectCheckBoxsInTable 2,1
	Browser("Login").Page("SelectHolderForIssuance").WebButton("btn_SelectClientDistribution").ClickObject 
	Browser("Login").Page("Select Client Distribution").WebButton("btn_ConfirmIssuance").VerifyPageName 
	Browser("Login").Page("Select Client Distribution").WebTable("tbl_SelectClientDistribution").WaitForTableToLoad 1
	Browser("Login").Page("Select Client Distribution").WebTable("tbl_SelectClientDistribution").SelectMethodInTable "Email"
	Browser("Login").Page("Select Client Distribution").WebButton("btn_ConfirmIssuance").ClickObject 
	Browser("Login").Page("Submit Issuance").WebElement("dtl_IssuanceCertificateCount").VerifyDisplayedText 2
	Browser("Login").Page("Submit Issuance").WebButton("btn_IssueCertificates").ClickObject 
	Browser("Login").Page("Work Queue").WebElement("lnk_Certificates").VerifyPageName 

End Function
''###################################################################################################
''Function Name : RenewalClientTeamMismatchCanCompleteRequest
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function RenewalClientTeamMismatchCanCompleteRequest
Environment.Value("StepName") = "RenewalClientTeamMismatchCanCompleteRequest"
	Browser("Login").Page("Entry").WebElement("dwl_RequestType").SelectDropDownValues "Renewal"
	Browser("Login").Page("Entry").WebButton("btn_Submit").ClickObject 
	Browser("Login").Page("Work Queue").WebElement("lnk_Certificates").VerifyPageName 
	Browser("Login").Page("Work Queue").WebEdit("txt_SearchID").EnterReqID 
	Browser("Login").Page("Work Queue").WebButton("btn_Search").ClickObject 
	Browser("Login").Page("RequestSummary").WebElement("dtl_AssignedTeam").VerifyPageName 
	Browser("Login").Page("RequestSummary").Link("tab_WorkFlow").VerifyExists 
	Browser("Login").Page("RequestSummary").Link("tab_WorkFlow").ClickObject 
	Browser("Login").Page("RequestSummary").WebTable("tbl_Task").VerifyvalueInSpecificCell 2,2,"New"
	Browser("Login").Page("RequestSummary").WebTable("tbl_Task").VerifyandClickLinkInRow "Midterm Review & Process Request|TakeAssignDue Date"
	Browser("Login").Page("RequestSummary").WebElement("dtl_RenewalReview").VerifyExists 
	Browser("Login").Page("RequestSummary").WebElement("dtl_RequestEntry").VerifyExists 
	Browser("Login").Page("RequestSummary").WebButton("btn_Task").ClickObject 
	Browser("Login").Page("Process Details").WebElement("dtl_AssignedTeam").VerifyPageName 
	Browser("Login").Page("Process Details").WebElement("lbl_YellowWarnignMsg").VerifyDisplayedText "The current user team is Nashville. The client is assigned to Mumbai. To clear the assignment associated with the request, click Clear Assignment or proceed with the request"
	Browser("Login").Page("Process Details").WebButton("btn_ClearAssignment").VerifyExists 
	Browser("Login").Page("Process Details").WebButton("btn_SelectHolder(s)").ClickObject 
	Browser("Login").Page("SelectHolderForIssuance").WebElement("dtl_AssignedTeam").VerifyPageName 
	Browser("Login").Page("SelectHolderForIssuance").WebTable("tbl_SelectHolders").VerifyExists 
	Browser("Login").Page("SelectHolderForIssuance").WebButton("btn_SelectClientDistribution").VerifyExists 
	Browser("Login").Page("SelectHolderForIssuance").WebButton("btn_SelectAll").VerifyExists 
	Browser("Login").Page("SelectHolderForIssuance").WebButton("btn_Search").VerifyExists 
	Browser("Login").Page("SelectHolderForIssuance").WebButton("btn_ClearSelection").VerifyExists 
	Browser("Login").Page("SelectHolderForIssuance").WebButton("btn_Back").VerifyExists 
	Browser("Login").Page("SelectHolderForIssuance").WebTable("tbl_SelectHolders").WaitForObjectToLoad 
	Browser("Login").Page("SelectHolderForIssuance").WebTable("tbl_SelectHolders").SelectCheckBoxsInTable 2,1
	Browser("Login").Page("SelectHolderForIssuance").WebButton("btn_SelectClientDistribution").ClickObject 
	Browser("Login").Page("Select Client Distribution").WebElement("lbl_SelectClientDistribution").VerifyPageName 
	Browser("Login").Page("Select Client Distribution").WebElement("dwl_ClientPrinter").VerifyExists 
	Browser("Login").Page("Select Client Distribution").WebTable("tbl_SelectClientDistribution").VerifyExists 
	Browser("Login").Page("Select Client Distribution").WebButton("btn_Add").VerifyExists 
	Browser("Login").Page("Select Client Distribution").WebTable("tbl_SelectClientDistribution").VerifyTableColumn "FilterName"
	Browser("Login").Page("Select Client Distribution").WebTable("tbl_SelectClientDistribution").VerifyTableColumn "FilterType"
	Browser("Login").Page("Select Client Distribution").WebTable("tbl_SelectClientDistribution").VerifyTableColumn "FilterMethod"
	Browser("Login").Page("Select Client Distribution").WebTable("tbl_SelectClientDistribution").VerifyTableColumn "FilterDestination"
	Browser("Login").Page("Select Client Distribution").WebTable("tbl_SelectClientDistribution").VerifyTableColumn "FilterCC Address"
	Browser("Login").Page("Select Client Distribution").WebButton("btn_ConfirmIssuance").VerifyExists 
	Browser("Login").Page("Select Client Distribution").WebButton("btn_Back").VerifyExists 
	Browser("Login").Page("Select Client Distribution").WebTable("tbl_SelectClientDistribution").SelectMethodInTable "Email"
	Browser("Login").Page("Select Client Distribution").WebButton("btn_ConfirmIssuance").ClickObject 
	Browser("Login").Page("Submit Issuance").WebElement("dtl_IssuanceCertificateCount").VerifyPageName 
	Browser("Login").Page("Submit Issuance").WebElement("dtl_IssuanceCertificateCount").VerifyDisplayedText 2
	Browser("Login").Page("Submit Issuance").WebTable("tbl_SelectClientDist").VerifyvalueInSpecificCell 2,3,"Email"
	Browser("Login").Page("Submit Issuance").WebButton("btn_IssueCertificates").ClickObject 
	Browser("Login").Page("Work Queue").WebElement("lnk_Certificates").VerifyPageName 

End Function
''###################################################################################################
''Function Name : NavigateToClientSearchPage
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function NavigateToClientSearchPage
Environment.Value("StepName") = "NavigateToClientSearchPage"
	Browser("Login").Page("Work Queue").WebElement("lnk_Certificates").ClickObject 
	Browser("Login").Page("Work Queue").WebElement("lnk_ClientLookup").ClickObject 
	Browser("Login").Page("Client Search").WebElement("lbl_SearchResults").VerifyPageName 
	Browser("Login").Page("Client Search").WebElement("lbl_ClientSearchCriteria").VerifyExists 
	Browser("Login").Page("Client Search").WebElement("lbl_SearchResults").VerifyExists 
	Browser("Login").Page("Client Search").WebEdit("txt_ClientLookUpCode").EnterText dtScenario.value("ClientLookUpCode")
	Browser("Login").Page("Client Search").WebButton("btn_Search").ClickObject 
	Browser("Login").Page("Client Search").WebTable("tbl_ClientName").VerifyExists 
	Browser("Login").Page("Client Search").WebTable("tbl_ClientName").VerifyandClickLinkInRow dtScenario.value("SearchClientName")
	Browser("Login").Page("Client Summary").WebElement("lbl_ClientSummary").VerifyPageName 
	Browser("Login").Page("Client Summary").WebElement("lbl_ClientSummary").VerifyExists 
	Browser("Login").Page("Client Summary").WebElement("lbl_ClientProfile").VerifyExists 
	Browser("Login").Page("Client Summary").WebElement("lbl_CertCenterContactInformation").VerifyExists 
	Browser("Login").Page("Client Summary").WebElement("lbl_CertCenterNotes").VerifyExists 
	Browser("Login").Page("Client Summary").WebElement("lbl_ClientDistributionDetails").VerifyExists 
	Browser("Login").Page("Client Summary").WebElement("lbl_MasterTemplate(s)").VerifyExists 
	Browser("Login").Page("Client Summary").WebElement("lbl_AutoIDTemplate(s)").VerifyExists 
	Browser("Login").Page("Client Summary").Link("tab_Audit").VerifyExists 
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateGrid").WaitForTableToLoad 2
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateGrid").VerifyTableColumn "FilterID"
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateGrid").VerifyTableColumn "FilterACORD Form"
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateGrid").VerifyTableColumn "FilterDescription"
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateGrid").VerifyAndClickRecordInTable "ACORD 24",1
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateSubGrid").VerifyExists 
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateSubGrid").WaitForTableToLoad 1
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateSubGrid").VerifyTableColumn "ID"
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateSubGrid").VerifyTableColumn "Description"
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateSubGrid").VerifyTableColumn "Line of Business"
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateSubGrid").VerifyTableColumn "Effective Date"
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateSubGrid").VerifyTableColumn "Expiration Date "
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateSubGrid").VerifyTableColumn "Holder Count"
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateGrid").VerifyAndClickRecordInTable "ACORD 24",2
	Browser("Login").Page("MasterTemplateSummary").WebElement("lbl_SelectedAttachments").VerifyPageName 
	Browser("Login").Page("MasterTemplateSummary").WebElement("lbl_ClientSummary").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebElement("lbl_MasterTemplateSummary").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebElement("lbl_MasterTemplateDetails").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebElement("lbl_SelectedAttachments").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebElement("lbl_ActiveCoverageTemplates").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebElement("lbl_ActiveHolders").VerifyExists 

End Function
''###################################################################################################
''Function Name : UpdateHolderStatus
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function UpdateHolderStatus
Environment.Value("StepName") = "UpdateHolderStatus"
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebElement("lbl_1-25Of1001Items").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").WaitForTableToLoad 5
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyNumOfRowsInTable 25
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyTableColumn "FilterID"
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyTableColumn "FilterHolder Name"
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyTableColumn "FilterSummary"
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyTableColumn "FilterJob Code"
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyTableColumn "FilterHolder City"
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyTableColumn "FilterHolder State"
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyTableColumn "FilterNamed Insured"
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyTableColumn "FilterNamed Insured Address"
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyTableColumn "FilterNo. Attachments"
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyTableColumn "FilterIssued Date"
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyTableColumn "FilterStatus"
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").ClickIconInLastRowInTable "FilterStatus|Filter"
	Browser("Login").Page("MasterTemplateSummary").WebEdit("txt_Status").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebEdit("txt_Status").EnterText "Issued"
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_Filter").ClickObject 
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").WaitForTableToLoad 5
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyNumOfRowsInTable 25
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_HolderMassUpdates").ClickObject 
	Browser("Login").Page("Holder Mass Update Entry").WebElement("dwl_Updateselection").VerifyPageName 
	Browser("Login").Page("Holder Mass Update Entry").WebElement("dwl_Updateselection").VerifyExists 
	Browser("Login").Page("Holder Mass Update Entry").WebButton("btn_Next").VerifyExists 
	Browser("Login").Page("Holder Mass Update Entry").WebButton("btn_Back").VerifyExists 
	Browser("Login").Page("Holder Mass Update Entry").WebButton("btn_Next").ClickObject 
	Browser("Login").Page("Holder Mass Update Status").WebElement("dwl_CurrentStatus").SelectDropDownValues "Issued"
	Browser("Login").Page("Holder Mass Update Status").WebElement("dwl_CurrentStatus").SelectDropDownValues "Ready for Issuance"
	Browser("Login").Page("Holder Mass Update Status").WebButton("btn_Next").ClickObject 
	Browser("Login").Page("Holder Mass Update Submit").WebElement("dtl_NewStatus").VerifyPageName 
	Browser("Login").Page("Holder Mass Update Submit").WebElement("dtl_CurrentStatus").VerifyFieldIsReadOnly 
	Browser("Login").Page("Holder Mass Update Submit").WebElement("dtl_NewStatus").VerifyFieldIsReadOnly 
	Browser("Login").Page("Holder Mass Update Submit").WebButton("btn_Update").ClickObject 
	Browser("Login").Page("MasterTemplateSummary").WebElement("lbl_SelectedAttachments").VerifyPageName 
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_EditMasterTemplate").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_RefreshAttachments").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_AddCoverageTemplate").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_AddHolder").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_HolderMassUpdates").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_HolderExport").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebElement("lbl_ClientSummary").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebElement("lbl_MasterTemplateSummary").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebElement("lbl_MasterTemplateDetails").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebElement("lbl_ActiveHolders").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").ClickIconInLastRowInTable "FilterStatus|Filter"
	Browser("Login").Page("MasterTemplateSummary").WebEdit("txt_Status").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebEdit("txt_Status").EnterText "Issued"
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_Filter").ClickObject 
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").WaitForTableToLoad 5
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyNumOfRowsInTable 0

End Function
''###################################################################################################
''Function Name : NavigateToMasterTemplateID
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function NavigateToMasterTemplateID
Environment.Value("StepName") = "NavigateToMasterTemplateID"
	Browser("Login").Page("Work Queue").WebEdit("txt_SearchID").EnterText "421160"
	Browser("Login").Page("Work Queue").WebButton("btn_Search").ClickObject 
	Browser("Login").Page("Client Summary").WebElement("lbl_MasterTemplate(s)").VerifyPageName 
	Browser("Login").Page("Client Summary").WebElement("dtl_ClientName").VerifyDisplayedText "Grace Limousine, LLC And Leopard Properties LLC"
	Browser("Login").Page("Client Summary").WebButton("btn_EditClientProfile").VerifyExists 
	Browser("Login").Page("Client Summary").WebButton("btn_AddMasterTemplate").VerifyExists 
	Browser("Login").Page("Client Summary").WebButton("btn_AddAutoIDTemplate").VerifyExists 
	Browser("Login").Page("Client Summary").WebButton("btn_HolderImport/Export").VerifyExists 
	Browser("Login").Page("Client Summary").WebButton("btn_AutoIDImport/Export").VerifyExists 
	Browser("Login").Page("Client Summary").WebButton("btn_RenewMasters").VerifyExists 
	Browser("Login").Page("Client Summary").WebElement("lbl_ClientSummary").VerifyExists 
	Browser("Login").Page("Client Summary").WebElement("lbl_ClientProfile").VerifyExists 
	Browser("Login").Page("Client Summary").WebElement("lbl_CertCenterContactInformation").VerifyExists 
	Browser("Login").Page("Client Summary").WebElement("lbl_CertCenterNotes").VerifyExists 
	Browser("Login").Page("Client Summary").WebElement("lbl_ClientDistributionDetails").VerifyExists 
	Browser("Login").Page("Client Summary").WebElement("lbl_MasterTemplate(s)").VerifyExists 
	Browser("Login").Page("Client Summary").WebElement("lbl_AutoIDTemplate(s)").VerifyExists 
	Browser("Login").Page("Client Summary").WebElement("lbl_RenewalMasterRequest").VerifyExists 
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateGrid").VerifyExists 
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateGrid").WaitForTableToLoad 1
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateGrid").VerifyAndClickRecordInTable "ACORD 24",2
	Browser("Login").Page("MasterTemplateSummary").WebElement("lbl_SelectedAttachments").VerifyPageName 
	Browser("Login").Page("MasterTemplateSummary").WebElement("dtl_ClientName").VerifyDisplayedText "Grace Limousine, LLC And Leopard Properties LLC"

End Function
''###################################################################################################
''Function Name : ValidateMasterTemplatePage
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function ValidateMasterTemplatePage
Environment.Value("StepName") = "ValidateMasterTemplatePage"
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_EditMasterTemplate").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_RefreshAttachments").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_AddCoverageTemplate").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_AddHolder").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_HolderMassUpdates").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_HolderExport").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebElement("lbl_ClientSummary").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebElement("lbl_MasterTemplateSummary").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebElement("lbl_SelectedAttachments").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebElement("lbl_ActiveCoverageTemplates").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebElement("lbl_ActiveHolders").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").WaitForTableToLoad 5
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyNumOfRowsInTable 25
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyTableColumn "FilterID"
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyTableColumn "FilterHolder Name"
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyTableColumn "FilterSummary"
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyTableColumn "FilterJob Code"
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyTableColumn "FilterHolder City"
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyTableColumn "FilterHolder State"
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyTableColumn "FilterNamed Insured"
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyTableColumn "FilterMultiple Named Insured"
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyTableColumn "FilterNamed Insured Address"
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyTableColumn "FilterNo. Attachments"
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyTableColumn "FilterIssued Date"
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyTableColumn "FilterStatus"

End Function
''###################################################################################################
''Function Name : AddAttachments
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function AddAttachments
Environment.Value("StepName") = "AddAttachments"
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyColumnDataInTable 11,0,"No. Attachments"
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyAndClickRecordInTable "Grace Limousine, LLC And Leopard Properties LLC",2
	Browser("Login").Page("Holder_Summary").WebButton("btn_Done").VerifyPageName 
	Browser("Login").Page("Holder_Summary").WebTable("tbl_SelectedAttachments").VerifyNumOfRowsInTable 0
	Browser("Login").Page("Holder_Summary").WebButton("btn_Done").ClickObject 
	Browser("Login").Page("MasterTemplateSummary").WebElement("lbl_SelectedAttachments").VerifyPageName 
	Browser("Login").Page("MasterTemplateSummary").WebElement("dtl_ClientName").VerifyDisplayedText "Grace Limousine, LLC And Leopard Properties LLC"
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_EditMasterTemplate").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_RefreshAttachments").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_AddCoverageTemplate").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_AddHolder").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_HolderMassUpdates").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_HolderExport").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_HolderMassUpdates").ClickObject 
	Browser("Login").Page("Holder Mass Update Entry").WebElement("dwl_Updateselection").VerifyPageName 
	Browser("Login").Page("Holder Mass Update Entry").WebElement("dwl_Updateselection").VerifyExists 
	Browser("Login").Page("Holder Mass Update Entry").WebElement("dwl_Action").VerifyExists 
	Browser("Login").Page("Holder Mass Update Entry").WebButton("btn_Next").VerifyExists 
	Browser("Login").Page("Holder Mass Update Entry").WebButton("btn_Back").VerifyExists 
	Browser("Login").Page("Holder Mass Update Entry").WebElement("dwl_Action").ClickObject 
	Browser("Login").Page("Holder Mass Update Entry").WebElement("lnk_Add").VerifyExists 
	Browser("Login").Page("Holder Mass Update Entry").WebElement("lnk_Add").ClickObject 
	Browser("Login").Page("Holder Mass Update Entry").WebButton("btn_Next").ClickObject 
	Browser("Login").Page("Holder Mass Update Add").WebButton("btn_Next").VerifyPageName 
	Browser("Login").Page("Holder Mass Update Add").WebTable("tbl_AvailableAttachments").WaitForTableToLoad 3
	Browser("Login").Page("Holder Mass Update Add").WebTable("tbl_AvailableAttachments").VerifyExists 
	Browser("Login").Page("Holder Mass Update Add").WebTable("tbl_AvailableAttachments").VerifyTableColumn "FilterID"
	Browser("Login").Page("Holder Mass Update Add").WebTable("tbl_AvailableAttachments").VerifyTableColumn "FilterDescription"
	Browser("Login").Page("Holder Mass Update Add").WebTable("tbl_AvailableAttachments").VerifyTableColumn "Sort Order "
	Browser("Login").Page("Holder Mass Update Add").WebTable("tbl_AvailableAttachments").SelectMethodInTable "Excel Attachment"
	Browser("Login").Page("Holder Mass Update Add").WebTable("tbl_AvailableAttachments").SelectMethodInTable "Willis Cancellation Notice - Willis 102"
	Browser("Login").Page("Holder Mass Update Add").WebButton("btn_Next").ClickObject 
	Browser("Login").Page("Holder Mass Selection").WebButton("btn_SelectAll").VerifyPageName 
	Browser("Login").Page("Holder Mass Selection").WebTable("tbl_HolderSelection").VerifyExists 
	Browser("Login").Page("Holder Mass Selection").WebTable("tbl_HolderSelection").WaitForTableToLoad 10
	Browser("Login").Page("Holder Mass Selection").WebTable("tbl_HolderSelection").VerifyNumOfRowsInTable 25
	Browser("Login").Page("Holder Mass Selection").WebButton("btn_SelectAll").VerifyExists 
	Browser("Login").Page("Holder Mass Selection").WebButton("btn_Next").VerifyExists 
	Browser("Login").Page("Holder Mass Selection").WebButton("btn_Back").VerifyExists 
	Browser("Login").Page("Holder Mass Selection").WebTable("tbl_HolderSelection").VerifyTableColumn "FilterID"
	Browser("Login").Page("Holder Mass Selection").WebTable("tbl_HolderSelection").VerifyTableColumn "FilterHolder Name"
	Browser("Login").Page("Holder Mass Selection").WebTable("tbl_HolderSelection").VerifyTableColumn "FilterMaster Type"
	Browser("Login").Page("Holder Mass Selection").WebTable("tbl_HolderSelection").VerifyTableColumn "FilterMaster Description"
	Browser("Login").Page("Holder Mass Selection").WebTable("tbl_HolderSelection").VerifyTableColumn "FilterSummary"
	Browser("Login").Page("Holder Mass Selection").WebTable("tbl_HolderSelection").VerifyTableColumn "FilterJob Code"
	Browser("Login").Page("Holder Mass Selection").WebTable("tbl_HolderSelection").VerifyTableColumn "FilterNamed Insured"
	Browser("Login").Page("Holder Mass Selection").WebTable("tbl_HolderSelection").VerifyTableColumn "FilterAttached Coverage Templates"
	Browser("Login").Page("Holder Mass Selection").WebTable("tbl_HolderSelection").VerifyTableColumn "FilterLast Modified Date"
	Browser("Login").Page("Holder Mass Selection").WebTable("tbl_HolderSelection").VerifyTableColumn "FilterStatus"
	Browser("Login").Page("Holder Mass Selection").WebButton("btn_SelectAll").ClickObject 
	Browser("Login").Page("Holder Mass Update Submit").WebButton("btn_Update").VerifyPageName 
	Browser("Login").Page("Holder Mass Update Submit").WebTable("tbl_HolderSelection").VerifyExists 
	Browser("Login").Page("Holder Mass Update Submit").WebTable("tbl_HolderSelection").WaitForTableToLoad 6
	Browser("Login").Page("Holder Mass Update Submit").WebTable("tbl_HolderSelection").VerifyColumnDataInTable 11,"True","Selected"
	Browser("Login").Page("Holder Mass Update Submit").WebTable("tbl_AvailableAttachments").VerifyRecordPresentInTable "Excel Attachment"
	Browser("Login").Page("Holder Mass Update Submit").WebTable("tbl_AvailableAttachments").VerifyRecordPresentInTable "Willis Cancellation Notice - Willis 102"
	Browser("Login").Page("Holder Mass Update Submit").WebTable("tbl_AvailableAttachments").VerifyColumnDataInTable 3,"false","Remove"
	Browser("Login").Page("Holder Mass Update Submit").WebTable("tbl_AvailableAttachments").VerifyRecordsDisplayedInTable "Excel Attachment","True"
	Browser("Login").Page("Holder Mass Update Submit").WebTable("tbl_AvailableAttachments").VerifyRecordsDisplayedInTable "Willis Cancellation Notice - Willis 102","True"
	Browser("Login").Page("Holder Mass Update Submit").WebButton("btn_Update").ClickObject 
	Browser("Login").Page("MasterTemplateSummary").WebElement("lbl_SelectedAttachments").VerifyPageName 
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").WaitForTableToLoad 3
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyColumnDataInTable 11,2,"No. attachments"
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyAndClickRecordInTable "Grace Limousine, LLC And Leopard Properties LLC",2
	Browser("Login").Page("Holder_Summary").WebButton("btn_Done").VerifyPageName 
	Browser("Login").Page("Holder_Summary").WebTable("tbl_SelectedAttachments").VerifyExists 
	Browser("Login").Page("Holder_Summary").WebTable("tbl_SelectedAttachments").WaitForTableToLoad 3
	Browser("Login").Page("Holder_Summary").WebTable("tbl_SelectedAttachments").VerifyNumOfRowsInTable 2
	Browser("Login").Page("Holder_Summary").WebTable("tbl_SelectedAttachments").VerifyvalueInSpecificCell 2,1,"Excel Attachment"
	Browser("Login").Page("Holder_Summary").WebTable("tbl_SelectedAttachments").VerifyvalueInSpecificCell 3,1,"Willis Cancellation Notice - Willis 102"
	Browser("Login").Page("Holder_Summary").WebButton("btn_Done").ClickObject 
	Browser("Login").Page("MasterTemplateSummary").WebElement("lbl_SelectedAttachments").VerifyPageName 

End Function
''###################################################################################################
''Function Name : RemoveAttachments
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function RemoveAttachments
Environment.Value("StepName") = "RemoveAttachments"
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyColumnDataInTable 11,2,"No. Attachments"
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyAndClickRecordInTable "Grace Limousine, LLC And Leopard Properties LLC",2
	Browser("Login").Page("Holder_Summary").WebButton("btn_Done").VerifyPageName 
	Browser("Login").Page("Holder_Summary").WebTable("tbl_SelectedAttachments").WaitForTableToLoad 2
	Browser("Login").Page("Holder_Summary").WebTable("tbl_SelectedAttachments").VerifyExists 
	Browser("Login").Page("Holder_Summary").WebTable("tbl_SelectedAttachments").VerifyNumOfRowsInTable 2
	Browser("Login").Page("Holder_Summary").WebButton("btn_Done").ClickObject 
	Browser("Login").Page("MasterTemplateSummary").WebElement("lbl_SelectedAttachments").VerifyPageName 
	Browser("Login").Page("MasterTemplateSummary").WebElement("dtl_ClientName").VerifyDisplayedText "Grace Limousine, LLC And Leopard Properties LLC"
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_EditMasterTemplate").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_RefreshAttachments").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_AddCoverageTemplate").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_AddHolder").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_HolderMassUpdates").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_HolderExport").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_HolderMassUpdates").ClickObject 
	Browser("Login").Page("Holder Mass Update Entry").WebElement("dwl_Updateselection").VerifyPageName 
	Browser("Login").Page("Holder Mass Update Entry").WebElement("dwl_Updateselection").VerifyExists 
	Browser("Login").Page("Holder Mass Update Entry").WebElement("dwl_Action").VerifyExists 
	Browser("Login").Page("Holder Mass Update Entry").WebButton("btn_Next").VerifyExists 
	Browser("Login").Page("Holder Mass Update Entry").WebButton("btn_Back").VerifyExists 
	Browser("Login").Page("Holder Mass Update Entry").WebElement("dwl_Action").ClickObject 
	Browser("Login").Page("Holder Mass Update Entry").WebElement("lnk_Remove").VerifyExists 
	Browser("Login").Page("Holder Mass Update Entry").WebElement("lnk_Remove").ClickObject 
	Browser("Login").Page("Holder Mass Update Entry").WebButton("btn_Next").ClickObject 
	Browser("Login").Page("Holder Mass Update Remove").WebButton("btn_Next").VerifyPageName 
	Browser("Login").Page("Holder Mass Update Remove").WebTable("tbl_AvailableAttachments").WaitForTableToLoad 4
	Browser("Login").Page("Holder Mass Update Remove").WebTable("tbl_AvailableAttachments").VerifyExists 
	Browser("Login").Page("Holder Mass Update Remove").WebTable("tbl_AvailableAttachments").VerifyTableColumn "FilterID"
	Browser("Login").Page("Holder Mass Update Remove").WebTable("tbl_AvailableAttachments").VerifyTableColumn "FilterDescription"
	Browser("Login").Page("Holder Mass Update Remove").WebTable("tbl_AvailableAttachments").VerifyTableColumn "FilterSortOrder"
	Browser("Login").Page("Holder Mass Update Remove").WebTable("tbl_AvailableAttachments").SelectMethodInTable "Excel Attachment"
	Browser("Login").Page("Holder Mass Update Remove").WebTable("tbl_AvailableAttachments").SelectMethodInTable "Willis Cancellation Notice - Willis 102"
	Browser("Login").Page("Holder Mass Update Remove").WebButton("btn_Next").ClickObject 
	Browser("Login").Page("Holder Mass Selection").WebButton("btn_SelectAll").VerifyPageName 
	Browser("Login").Page("Holder Mass Selection").WebTable("tbl_HolderSelection").WaitForTableToLoad 3
	Browser("Login").Page("Holder Mass Selection").WebTable("tbl_HolderSelection").VerifyExists 
	Browser("Login").Page("Holder Mass Selection").WebTable("tbl_HolderSelection").VerifyNumOfRowsInTable 25
	Browser("Login").Page("Holder Mass Selection").WebButton("btn_SelectAll").VerifyExists 
	Browser("Login").Page("Holder Mass Selection").WebButton("btn_Next").VerifyExists 
	Browser("Login").Page("Holder Mass Selection").WebButton("btn_Back").VerifyExists 
	Browser("Login").Page("Holder Mass Selection").WebTable("tbl_HolderSelection").VerifyTableColumn "FilterID"
	Browser("Login").Page("Holder Mass Selection").WebTable("tbl_HolderSelection").VerifyTableColumn "FilterHolder Name"
	Browser("Login").Page("Holder Mass Selection").WebTable("tbl_HolderSelection").VerifyTableColumn "FilterMaster Type"
	Browser("Login").Page("Holder Mass Selection").WebTable("tbl_HolderSelection").VerifyTableColumn "FilterMaster Description"
	Browser("Login").Page("Holder Mass Selection").WebTable("tbl_HolderSelection").VerifyTableColumn "FilterSummary"
	Browser("Login").Page("Holder Mass Selection").WebTable("tbl_HolderSelection").VerifyTableColumn "FilterJob Code"
	Browser("Login").Page("Holder Mass Selection").WebTable("tbl_HolderSelection").VerifyTableColumn "FilterNamed Insured"
	Browser("Login").Page("Holder Mass Selection").WebTable("tbl_HolderSelection").VerifyTableColumn "FilterAttached Coverage Templates"
	Browser("Login").Page("Holder Mass Selection").WebTable("tbl_HolderSelection").VerifyTableColumn "FilterLast Modified Date"
	Browser("Login").Page("Holder Mass Selection").WebTable("tbl_HolderSelection").VerifyTableColumn "FilterStatus"
	Browser("Login").Page("Holder Mass Selection").WebButton("btn_SelectAll").ClickObject 
	Browser("Login").Page("Holder Mass Update Submit").WebButton("btn_Update").VerifyPageName 
	Browser("Login").Page("Holder Mass Update Submit").WebTable("tbl_HolderSelection").WaitForTableToLoad 5
	Browser("Login").Page("Holder Mass Update Submit").WebTable("tbl_HolderSelection").VerifyExists 
	Browser("Login").Page("Holder Mass Update Submit").WebTable("tbl_HolderSelection").VerifyColumnDataInTable 11,"True","Selected"
	Browser("Login").Page("Holder Mass Update Submit").WebTable("tbl_AvailableAttachments").VerifyRecordPresentInTable "Excel Attachment"
	Browser("Login").Page("Holder Mass Update Submit").WebTable("tbl_AvailableAttachments").VerifyRecordPresentInTable "Willis Cancellation Notice - Willis 102"
	Browser("Login").Page("Holder Mass Update Submit").WebTable("tbl_AvailableAttachments").VerifyColumnDataInTable 3,"true","Remove"
	Browser("Login").Page("Holder Mass Update Submit").WebTable("tbl_AvailableAttachments").VerifyColumnDataInTable 4,"false","Add"
	Browser("Login").Page("Holder Mass Update Submit").WebButton("btn_Update").ClickObject 
	Browser("Login").Page("MasterTemplateSummary").WebElement("lbl_SelectedAttachments").VerifyPageName 
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").WaitForTableToLoad 2
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyColumnDataInTable 11,0,"No. attachments"
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyAndClickRecordInTable "Grace Limousine, LLC And Leopard Properties LLC",2
	Browser("Login").Page("Holder_Summary").WebButton("btn_Done").VerifyPageName 
	Browser("Login").Page("Holder_Summary").WebTable("tbl_SelectedAttachments").WaitForTableToLoad 2
	Browser("Login").Page("Holder_Summary").WebTable("tbl_SelectedAttachments").VerifyExists 
	Browser("Login").Page("Holder_Summary").WebTable("tbl_SelectedAttachments").VerifyNumOfRowsInTable 0
	Browser("Login").Page("Holder_Summary").WebButton("btn_Done").ClickObject 
	Browser("Login").Page("MasterTemplateSummary").WebElement("lbl_SelectedAttachments").VerifyPageName 

End Function
''###################################################################################################
''Function Name : UpdateHoldersPredependencyTest
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function UpdateHoldersPredependencyTest
Environment.Value("StepName") = "UpdateHoldersPredependencyTest"
	Browser("Login").Page("Entry").WebElement("dwl_RequestType").SelectDropDownValues "Renewal"
	Browser("Login").Page("Entry").WebButton("btn_Submit").ClickObject 
	Browser("Login").Page("Work Queue").WebElement("lnk_Certificates").VerifyPageName 
	Browser("Login").Page("Work Queue").WebEdit("txt_SearchID").EnterReqID 
	Browser("Login").Page("Work Queue").WebButton("btn_Search").ClickObject 
	Browser("Login").Page("RequestSummary").WebElement("dtl_AssignedTeam").VerifyPageName 
	Browser("Login").Page("RequestSummary").Link("tab_WorkFlow").VerifyExists 
	Browser("Login").Page("RequestSummary").Link("tab_WorkFlow").ClickObject 
	Browser("Login").Page("RequestSummary").WebTable("tbl_Task").VerifyvalueInSpecificCell 2,2,"New"
	Browser("Login").Page("RequestSummary").WebTable("tbl_Task").VerifyandClickLinkInRow "Midterm Review & Process Request|TakeAssignDue Date"
	Browser("Login").Page("RequestSummary").WebElement("dtl_RenewalReview").VerifyExists 
	Browser("Login").Page("RequestSummary").WebElement("dtl_RequestEntry").VerifyExists 
	Browser("Login").Page("RequestSummary").WebButton("btn_Task").ClickObject 
	Browser("Login").Page("Process Details").WebElement("dtl_AssignedTeam").VerifyPageName 
	Browser("Login").Page("Process Details").WebButton("btn_ClearAssignment").VerifyExists 
	Browser("Login").Page("Process Details").WebButton("btn_SelectHolder(s)").ClickObject 
	Browser("Login").Page("SelectHolderForIssuance").WebElement("dtl_AssignedTeam").VerifyPageName 
	Browser("Login").Page("SelectHolderForIssuance").WebTable("tbl_SelectHolders").VerifyExists 
	Browser("Login").Page("SelectHolderForIssuance").WebButton("btn_SelectClientDistribution").VerifyExists 
	Browser("Login").Page("SelectHolderForIssuance").WebButton("btn_SelectAll").VerifyExists 
	Browser("Login").Page("SelectHolderForIssuance").WebButton("btn_Search").VerifyExists 
	Browser("Login").Page("SelectHolderForIssuance").WebButton("btn_ClearSelection").VerifyExists 
	Browser("Login").Page("SelectHolderForIssuance").WebButton("btn_Back").VerifyExists 
	Browser("Login").Page("SelectHolderForIssuance").WebEdit("txt_MasterType").EnterText "ACORD 24"
	Browser("Login").Page("SelectHolderForIssuance").WebButton("btn_Search").ClickObject 
	Browser("Login").Page("SelectHolderForIssuance").WebTable("tbl_SelectHolders").WaitForTableToLoad 20
	Browser("Login").Page("SelectHolderForIssuance").WebCheckBox("chkb_SelectAllCheckBox").ClickObject 
	Browser("Login").Page("SelectHolderForIssuance").WebButton("btn_SelectClientDistribution").ClickObject 
	Browser("Login").Page("Select Client Distribution").WebElement("lbl_SelectClientDistribution").VerifyPageName 
	Browser("Login").Page("Select Client Distribution").WebElement("dwl_ClientPrinter").VerifyExists 
	Browser("Login").Page("Select Client Distribution").WebTable("tbl_SelectClientDistribution").VerifyExists 
	Browser("Login").Page("Select Client Distribution").WebButton("btn_Add").VerifyExists 
	Browser("Login").Page("Select Client Distribution").WebTable("tbl_SelectClientDistribution").VerifyTableColumn "FilterName"
	Browser("Login").Page("Select Client Distribution").WebTable("tbl_SelectClientDistribution").VerifyTableColumn "FilterType"
	Browser("Login").Page("Select Client Distribution").WebTable("tbl_SelectClientDistribution").VerifyTableColumn "FilterMethod"
	Browser("Login").Page("Select Client Distribution").WebTable("tbl_SelectClientDistribution").VerifyTableColumn "FilterDestination"
	Browser("Login").Page("Select Client Distribution").WebTable("tbl_SelectClientDistribution").VerifyTableColumn "FilterCC Address"
	Browser("Login").Page("Select Client Distribution").WebButton("btn_ConfirmIssuance").VerifyExists 
	Browser("Login").Page("Select Client Distribution").WebButton("btn_Back").VerifyExists 
	Browser("Login").Page("Select Client Distribution").WebElement("dwl_ClientPrinter").ClickObject 
	Browser("Login").Page("Select Client Distribution").WebElement("dtl_CSC4").ClickObject 
	Browser("Login").Page("Select Client Distribution").WebTable("tbl_SelectClientDistribution").SelectMethodInTable "Mail"
	Browser("Login").Page("Select Client Distribution").WebButton("btn_ConfirmIssuance").ClickObject 
	Browser("Login").Page("Submit Issuance").WebElement("dtl_IssuanceCertificateCount").VerifyPageName 
	Browser("Login").Page("Submit Issuance").WebElement("dtl_IssuanceCertificateCount").VerifyDisplayedText 25
	Browser("Login").Page("Submit Issuance").WebTable("tbl_SelectClientDist").VerifyvalueInSpecificCell 2,3,"Mail"
	Browser("Login").Page("Submit Issuance").WebButton("btn_IssueCertificates").ClickObject 
	Browser("Login").Page("Work Queue").WebElement("lnk_Certificates").VerifyPageName 

End Function
''###################################################################################################
''Function Name : NavigateToMasterSummaryPage
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function NavigateToMasterSummaryPage
Environment.Value("StepName") = "NavigateToMasterSummaryPage"
	Browser("Login").Page("Work Queue").WebElement("lnk_Certificates").ClickObject 
	Browser("Login").Page("Work Queue").WebElement("lnk_ClientLookup").ClickObject 
	Browser("Login").Page("Client Search").WebElement("lbl_SearchResults").VerifyPageName 
	Browser("Login").Page("Client Search").WebElement("lbl_ClientSearchCriteria").VerifyExists 
	Browser("Login").Page("Client Search").WebElement("lbl_SearchResults").VerifyExists 
	Browser("Login").Page("Client Search").WebEdit("txt_ClientName").EnterText dtScenario.value("ClientLookUpCode")
	Browser("Login").Page("Client Search").WebButton("btn_Search").ClickObject 
	Browser("Login").Page("Client Search").WebTable("tbl_ClientName").VerifyExists 
	Browser("Login").Page("Client Search").WebTable("tbl_ClientName").VerifyandClickLinkInRow dtScenario.value("SearchClientName")
	Browser("Login").Page("Client Summary").WebElement("lbl_ClientSummary").VerifyPageName 
	Browser("Login").Page("Client Summary").WebElement("lbl_ClientSummary").VerifyExists 
	Browser("Login").Page("Client Summary").WebElement("lbl_ClientProfile").VerifyExists 
	Browser("Login").Page("Client Summary").WebElement("lbl_CertCenterContactInformation").VerifyExists 
	Browser("Login").Page("Client Summary").WebElement("lbl_CertCenterNotes").VerifyExists 
	Browser("Login").Page("Client Summary").WebElement("lbl_ClientDistributionDetails").VerifyExists 
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateGrid").WaitForTableToLoad 2
	Browser("Login").Page("Client Summary").WebElement("lbl_MasterTemplate(s)").VerifyExists 
	Browser("Login").Page("Client Summary").WebElement("lbl_AutoIDTemplate(s)").VerifyExists 
	Browser("Login").Page("Client Summary").Link("tab_Audit").VerifyExists 
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateGrid").VerifyTableColumn "FilterID"
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateGrid").VerifyTableColumn "FilterACORD Form"
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateGrid").VerifyTableColumn "FilterDescription"
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateGrid").VerifyAndClickRecordInTable "ACORD 25",1
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateSubGrid").VerifyExists 
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateSubGrid").VerifyTableColumn "ID"
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateSubGrid").VerifyTableColumn "Description"
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateSubGrid").VerifyTableColumn "Line of Business"
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateSubGrid").VerifyTableColumn "Effective Date"
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateSubGrid").VerifyTableColumn "Expiration Date "
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateSubGrid").VerifyTableColumn "Holder Count"
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateGrid").VerifyAndClickRecordInTable "ACORD 25",2
	Browser("Login").Page("MasterTemplateSummary").WebElement("lbl_SelectedAttachments").VerifyPageName 
	Browser("Login").Page("MasterTemplateSummary").WebElement("lbl_ClientSummary").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebElement("lbl_MasterTemplateSummary").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebElement("lbl_MasterTemplateDetails").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebElement("lbl_SelectedAttachments").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebElement("lbl_ActiveCoverageTemplates").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebElement("lbl_ActiveHolders").VerifyExists 

End Function
''###################################################################################################
''Function Name : NavigateToHolderImportExportPage
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function NavigateToHolderImportExportPage
Environment.Value("StepName") = "NavigateToHolderImportExportPage"
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_HolderExport").ClickObject 
	Browser("Login").Page("HolderImportExport").WebButton("btn_Done").VerifyPageName 
	Browser("Login").Page("HolderImportExport").WebButton("btn_Done").VerifyExists 
	Browser("Login").Page("HolderImportExport").WebButton("btn_Back").VerifyExists 
	Browser("Login").Page("HolderImportExport").Link("tab_Export").VerifyExists 
	Browser("Login").Page("HolderImportExport").Link("tab_Details").VerifyExists 
	Browser("Login").Page("HolderImportExport").Link("tab_Export").ClickObject 
	Browser("Login").Page("HolderImportExport").WebButton("btn_Export").VerifyExists 
	Browser("Login").Page("HolderImportExport").WebElement("dwl_Status").VerifyExists 
	Browser("Login").Page("HolderImportExport").WebElement("dwl_IssuanceStatus").VerifyExists 
	Browser("Login").Page("HolderImportExport").WebElement("dwl_IssuanceStatus").ClickObject 

End Function
''###################################################################################################
''Function Name : SelectReadyForReIssue
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function SelectReadyForReIssue
Environment.Value("StepName") = "SelectReadyForReIssue"
	Browser("Login").Page("HolderImportExport").WebElement("dtl_ReadyForReIssue").VerifyExists 
	Browser("Login").Page("HolderImportExport").WebElement("dtl_ReadyForReIssue").ClickObject 

End Function
''###################################################################################################
''Function Name : StatusChangeViaImport
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function StatusChangeViaImport
Environment.Value("StepName") = "StatusChangeViaImport"
	Browser("Login").Page("HolderImportExport").WebButton("btn_Export").ClickObject 
	Browser("Login").Page("HolderImportExport").WebElement("dtl_ExportStatus").GetSRID 
	Browser("Login").Page("HolderImportExport").WebElement("tab_WorkQueue").ClickObject 
	Browser("Login").Page("HolderImportExport").WebElement("dtl_WorkQueue").ClickObject 
	Browser("Login").Page("Work Queue").WebElement("lnk_Certificates").VerifyPageName 
	Browser("Login").Page("Work Queue").WebEdit("txt_SearchID").EnterSRID 
	Browser("Login").Page("Work Queue").WebButton("btn_Search").ClickObject 
	Browser("Login").Page("ExportReportSummary").WebElement("tab_Certificates").VerifyPageName 
	Browser("Login").Page("ExportReportSummary").Link("tab_WorkFlow").VerifyExists 
	Browser("Login").Page("ExportReportSummary").Link("tab_Details").VerifyExists 
	Browser("Login").Page("ExportReportSummary").Link("tab_Documents").VerifyExists 
	Browser("Login").Page("ExportReportSummary").Link("tab_Audit").VerifyExists 
	Browser("Login").Page("ExportReportSummary").Link("tab_Details").ClickObject 
	Browser("Login").Page("ExportReportSummary").WebElement("dtl_ImportStatus").ReFreshPage 
	Browser("Login").Page("ExportReportSummary").Link("tab_Documents").WaitForObjectToLoad 
	Browser("Login").Page("ExportReportSummary").Link("tab_Documents").ClickObject 
	Browser("Login").Page("ExportReportSummary").WebTable("tbl_Document").WaitForTableToLoad 3
	Browser("Login").Page("ExportReportSummary").WebTable("tbl_Document").VerifyExists 
	Browser("Login").Page("ExportReportSummary").WebTable("tbl_Document").VerifyandClickWebElementInRow "Export File|view attachment"
	Browser("Login").WinObject("Notification").WinButton("btn_SaveAs").WaitinSec 5
	Browser("Login").WinObject("Notification").WinButton("btn_SaveAs").VerifyExists 
	Browser("Login").WinObject("Notification").WinButton("btn_SaveAs").ClickObject 
	Browser("Login").WinObject("Notification").WinButton("btn_SaveAs").DownloadSaveAs 
	Browser("Login").Dialog("Save As").WinEdit("txt_FileName").WaitForObjectToLoad 
	Browser("Login").Dialog("Save As").WinEdit("txt_FileName").DownloadFile "TC762.xlsx"
	Browser("Login").Dialog("Save As").WinButton("btn_Save").WaitinSec 2
	Browser("Login").Dialog("Save As").WinButton("btn_Save").ClickObject 
	Browser("Login").Page("ExportReportSummary").Link("tab_Documents").WaitForObjectToLoad 
	Browser("Login").Page("ExportReportSummary").Link("tab_Documents").VerifyDownlodedFileExist "TC762.xlsx"
	Browser("Login").Page("ExportReportSummary").WebElement("tab_Certificates").ClickObject 
	Browser("Login").Page("ExportReportSummary").WebElement("lnk_ClientLookup").ClickObject 
	Browser("Login").Page("Client Search").WebButton("btn_Search").VerifyPageName 
	Browser("Login").Page("Client Search").WebEdit("txt_ClientName").EnterText dtScenario.value("ClientLookUpCode")
	Browser("Login").Page("Client Search").WebButton("btn_Search").ClickObject 
	Browser("Login").Page("Client Search").WebTable("tbl_ClientName").WaitForTableToLoad 1
	Browser("Login").Page("Client Search").WebTable("tbl_ClientName").VerifyandClickLinkInRow dtScenario.value("SearchClientName")
	Browser("Login").Page("Client Summary").WebButton("btn_RenewMasters").VerifyPageName 
	Browser("Login").Page("Client Summary").WebButton("btn_HolderImport/Export").ClickObject 
	Browser("Login").Page("ImportExportHolder").WebButton("btn_ViewEPICContactID").VerifyPageName 
	Browser("Login").Page("ImportExportHolder").WebButton("btn_ViewEPICContactID").VerifyExists 
	Browser("Login").Page("ImportExportHolder").WebButton("btn_Done").VerifyExists 
	Browser("Login").Page("ImportExportHolder").WebButton("btn_Back").VerifyExists 
	Browser("Login").Page("ImportExportHolder").Link("tab_Import").VerifyExists 
	Browser("Login").Page("ImportExportHolder").Link("tab_Export").VerifyExists 
	Browser("Login").Page("ImportExportHolder").Link("tab_Details").VerifyExists 
	Browser("Login").Page("ImportExportHolder").Link("tab_Import").ClickObject 
	Browser("Login").Page("ImportExportHolder").WebFile("wf_SelectFiles").ClickObject 
	Browser("Login").Dialog("Choose File to Upload").WinEdit("txt_FileName").EnterText dtScenario.value("ResourcePath")
	Browser("Login").Dialog("Choose File to Upload").WinButton("BTN_Open").ClickObject 
	Browser("Login").Page("ImportExportHolder").WebElement("dtl_UploadedFile").VerifyExists 
	Browser("Login").Page("ImportExportHolder").WebButton("btn_Upload").ClickObject 
	Browser("Login").Page("ImportExportHolder").WebElement("dtl_UploadStatus").VerifyExists 
	Browser("Login").Page("ImportExportHolder").WebElement("dtl_UploadStatus").GetSRID 
	Browser("Login").Page("ImportExportHolder").WebElement("tab_WorkQueue").ClickObject 
	Browser("Login").Page("ImportExportHolder").WebElement("lnk_WorkQueue").ClickObject 
	Browser("Login").Page("Work Queue").WebEdit("txt_SearchID").EnterSRID 
	Browser("Login").Page("Work Queue").WebButton("btn_Search").ClickObject 
	Browser("Login").Page("ExportReportSummary").WebElement("tab_Certificates").VerifyPageName 
	Browser("Login").Page("ExportReportSummary").WebElement("dtl_ImportStatus").VerifyExists 
	Browser("Login").Page("ExportReportSummary").WebElement("dtl_ImportStatus").ReFreshPage 
	Browser("Login").Page("ExportReportSummary").WebElement("dtl_ImportStatus").VerifyDisplayedText "No Import Errors"
	Browser("Login").Page("ExportReportSummary").Link("tab_WorkFlow").ClickObject 
	Browser("Login").Page("ExportReportSummary").WebTable("tbl_WorkFlow").VerifyRecordsDisplayedInTable "Holder Import Processing","Completed"
	Browser("Login").Page("ExportReportSummary").WebElement("tab_Certificates").ClickObject 
	Browser("Login").Page("ExportReportSummary").WebElement("lnk_ClientLookup").ClickObject 
	Browser("Login").Page("Client Search").WebElement("lbl_SearchResults").VerifyPageName 
	Browser("Login").Page("Client Search").WebEdit("txt_ClientName").EnterText dtScenario.value("ClientLookUpCode")
	Browser("Login").Page("Client Search").WebButton("btn_Search").ClickObject 
	Browser("Login").Page("Client Search").WebTable("tbl_ClientName").WaitForTableToLoad 1
	Browser("Login").Page("Client Search").WebTable("tbl_ClientName").VerifyandClickLinkInRow dtScenario.value("SearchClientName")
	Browser("Login").Page("Client Summary").WebButton("btn_RenewMasters").VerifyPageName 
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateGrid").WaitForTableToLoad 2
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateGrid").VerifyAndClickRecordInTable "ACORD 25",2
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_RefreshAttachments").VerifyPageName 
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").WaitForTableToLoad 5
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyNumOfRowsInTable 10
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyColumnDataInTable 13,"Issued","Status"

End Function
''###################################################################################################
''Function Name : StatusChangeAsReIssueViaImport
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function StatusChangeAsReIssueViaImport
Environment.Value("StepName") = "StatusChangeAsReIssueViaImport"
	Browser("Login").Page("HolderImportExport").WebButton("btn_Export").ClickObject 
	Browser("Login").Page("HolderImportExport").WebElement("dtl_ExportStatus").GetSRID 
	Browser("Login").Page("HolderImportExport").WebElement("tab_WorkQueue").ClickObject 
	Browser("Login").Page("HolderImportExport").WebElement("dtl_WorkQueue").ClickObject 
	Browser("Login").Page("Work Queue").WebElement("lnk_Certificates").VerifyPageName 
	Browser("Login").Page("Work Queue").WebEdit("txt_SearchID").EnterSRID 
	Browser("Login").Page("Work Queue").WebButton("btn_Search").ClickObject 
	Browser("Login").Page("ExportReportSummary").WebElement("tab_Certificates").VerifyPageName 
	Browser("Login").Page("ExportReportSummary").Link("tab_WorkFlow").VerifyExists 
	Browser("Login").Page("ExportReportSummary").Link("tab_Details").VerifyExists 
	Browser("Login").Page("ExportReportSummary").Link("tab_Documents").VerifyExists 
	Browser("Login").Page("ExportReportSummary").Link("tab_Audit").VerifyExists 
	Browser("Login").Page("ExportReportSummary").Link("tab_Documents").ClickObject 
	Browser("Login").Page("ExportReportSummary").WebElement("dtl_ImportStatus").ReFreshPage 
	Browser("Login").Page("ExportReportSummary").Link("tab_Documents").ClickObject 
	Browser("Login").Page("ExportReportSummary").WebTable("tbl_Document").WaitForTableToLoad 1
	Browser("Login").Page("ExportReportSummary").WebTable("tbl_Document").VerifyExists 
	Browser("Login").Page("ExportReportSummary").WebTable("tbl_Document").VerifyandClickWebElementInRow "Export File|view attachment"
	Browser("Login").WinObject("Notification").WinButton("btn_SaveAs").WaitinSec 5
	Browser("Login").WinObject("Notification").WinButton("btn_SaveAs").VerifyExists 
	Browser("Login").WinObject("Notification").WinButton("btn_SaveAs").ClickObject 
	Browser("Login").WinObject("Notification").WinButton("btn_SaveAs").DownloadSaveAs 
	Browser("Login").Dialog("Save As").WinEdit("txt_FileName").WaitForObjectToLoad 
	Browser("Login").Dialog("Save As").WinEdit("txt_FileName").DownloadFile "TC767.xlsx"
	Browser("Login").Dialog("Save As").WinButton("btn_Save").WaitinSec 2
	Browser("Login").Dialog("Save As").WinButton("btn_Save").ClickObject 
	Browser("Login").Page("ExportReportSummary").Link("tab_Details").WaitForObjectToLoad 
	Browser("Login").Page("ExportReportSummary").Link("tab_Details").VerifyDownlodedFileExist "TC767.xlsx"
	Browser("Login").Page("ExportReportSummary").WebElement("tab_Certificates").ClickObject 
	Browser("Login").Page("ExportReportSummary").WebElement("lnk_ClientLookup").ClickObject 
	Browser("Login").Page("Client Search").WebButton("btn_Search").VerifyPageName 
	Browser("Login").Page("Client Search").WebEdit("txt_ClientName").EnterText dtScenario.value("ClientLookUpCode")
	Browser("Login").Page("Client Search").WebButton("btn_Search").ClickObject 
	Browser("Login").Page("Client Search").WebTable("tbl_ClientName").WaitForTableToLoad 1
	Browser("Login").Page("Client Search").WebTable("tbl_ClientName").VerifyandClickLinkInRow dtScenario.value("SearchClientName")
	Browser("Login").Page("Client Summary").WebButton("btn_RenewMasters").VerifyPageName 
	Browser("Login").Page("Client Summary").WebButton("btn_HolderImport/Export").ClickObject 
	Browser("Login").Page("ImportExportHolder").WebButton("btn_ViewEPICContactID").VerifyPageName 
	Browser("Login").Page("ImportExportHolder").WebButton("btn_ViewEPICContactID").VerifyExists 
	Browser("Login").Page("ImportExportHolder").WebButton("btn_Done").VerifyExists 
	Browser("Login").Page("ImportExportHolder").WebButton("btn_Back").VerifyExists 
	Browser("Login").Page("ImportExportHolder").Link("tab_Import").VerifyExists 
	Browser("Login").Page("ImportExportHolder").Link("tab_Export").VerifyExists 
	Browser("Login").Page("ImportExportHolder").Link("tab_Details").VerifyExists 
	Browser("Login").Page("ImportExportHolder").Link("tab_Import").ClickObject 
	Browser("Login").Page("ImportExportHolder").WebFile("wf_SelectFiles").ClickObject 
	Browser("Login").Dialog("Choose File to Upload").WinEdit("txt_FileName").EnterText dtScenario.value("ResourcePath")
	Browser("Login").Dialog("Choose File to Upload").WinButton("BTN_Open").ClickObject 
	Browser("Login").Page("ImportExportHolder").WebElement("dtl_UploadedFile").VerifyExists 
	Browser("Login").Page("ImportExportHolder").WebButton("btn_Upload").ClickObject 
	Browser("Login").Page("ImportExportHolder").WebElement("dtl_UploadStatus").VerifyExists 
	Browser("Login").Page("ImportExportHolder").WebElement("dtl_UploadStatus").GetSRID 
	Browser("Login").Page("ImportExportHolder").WebElement("tab_WorkQueue").ClickObject 
	Browser("Login").Page("ImportExportHolder").WebElement("lnk_WorkQueue").ClickObject 
	Browser("Login").Page("Work Queue").WebEdit("txt_SearchID").EnterSRID 
	Browser("Login").Page("Work Queue").WebButton("btn_Search").ClickObject 
	Browser("Login").Page("ExportReportSummary").WebElement("tab_Certificates").VerifyPageName 
	Browser("Login").Page("ExportReportSummary").WebElement("dtl_ImportStatus").WaitForObjectToLoad 
	Browser("Login").Page("ExportReportSummary").WebElement("dtl_ImportStatus").VerifyExists 
	Browser("Login").Page("ExportReportSummary").WebElement("dtl_ImportStatus").ReFreshPage 
	Browser("Login").Page("ExportReportSummary").WebElement("dtl_ImportStatus").VerifyDisplayedText "No Import Errors"
	Browser("Login").Page("ExportReportSummary").Link("tab_WorkFlow").ClickObject 
	Browser("Login").Page("ExportReportSummary").WebTable("tbl_WorkFlow").VerifyRecordsDisplayedInTable "Holder Import Processing","Completed"
	Browser("Login").Page("ExportReportSummary").WebElement("tab_Certificates").ClickObject 
	Browser("Login").Page("ExportReportSummary").WebElement("lnk_ClientLookup").ClickObject 
	Browser("Login").Page("Client Search").WebElement("lbl_SearchResults").VerifyPageName 
	Browser("Login").Page("Client Search").WebEdit("txt_ClientName").EnterText dtScenario.value("ClientLookUpCode")
	Browser("Login").Page("Client Search").WebButton("btn_Search").ClickObject 
	Browser("Login").Page("Client Search").WebTable("tbl_ClientName").WaitForTableToLoad 1
	Browser("Login").Page("Client Search").WebTable("tbl_ClientName").VerifyandClickLinkInRow dtScenario.value("SearchClientName")
	Browser("Login").Page("Client Summary").WebButton("btn_RenewMasters").VerifyPageName 
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateGrid").WaitForTableToLoad 2
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateGrid").VerifyAndClickRecordInTable "ACORD 25",2
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_RefreshAttachments").VerifyPageName 
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").WaitForTableToLoad 5
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyNumOfRowsInTable 10
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveHoldersGrid").VerifyColumnDataInTable 13,"Ready for Reissue","Status"

End Function
''###################################################################################################
''Function Name : SelectIssued
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function SelectIssued
Environment.Value("StepName") = "SelectIssued"
	Browser("Login").Page("HolderImportExport").WebElement("dtl_Issued").VerifyExists 
	Browser("Login").Page("HolderImportExport").WebElement("dtl_Issued").ClickObject 

End Function
''###################################################################################################
''Function Name : PreCursorSteps
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function PreCursorSteps
Environment.Value("StepName") = "PreCursorSteps"
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_EditMasterTemplate").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_RefreshAttachments").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_AddCoverageTemplate").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_AddHolder").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_HolderMassUpdates").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_HolderExport").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebElement("lbl_ClientSummary").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebElement("lbl_MasterTemplateSummary").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebElement("lbl_SelectedAttachments").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebElement("lbl_ActiveCoverageTemplates").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebElement("lbl_ActiveHolders").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveCoverageTemp").VerifyExists 
	Browser("Login").Page("MasterTemplateSummary").Link("lnk_Carat").ClickObject 
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveCoverageTemp").WaitForTableToLoad 1
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveCoverageTemp").VerifyRecordsDisplayedInTable "Copy","Copy"
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveCoverageTemp").VerifyRecordsDisplayedInTable "Renew","Renew"
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveCoverageTemp").VerifyandClickWebElementInRow "Renew|SummaryCopy"
	Browser("Login").Page("MasterTemplateSummary").WebTable("tbl_ActiveCoverageTemp").VerifyandClickWebElementInRow "Renew|Summary"
	Browser("Login").Page("Summary").WebButton("btn_Edit").VerifyPageName 
	Browser("Login").Page("Summary").WebElement("lbl_MasterTemplateSummary").VerifyExists 
	Browser("Login").Page("Summary").WebElement("lbl_PolicyDetails").VerifyExists 
	Browser("Login").Page("Summary").WebElement("lbl_TemplateDetails").VerifyExists 
	Browser("Login").Page("Summary").WebElement("lbl_Limits").VerifyExists 
	Browser("Login").Page("Summary").WebElement("lbl_GeneralLiability").VerifyExists 
	Browser("Login").Page("Summary").WebElement("lbl_DescriptionOf").VerifyExists 
	Browser("Login").Page("Summary").WebElement("lbl_SelectedAttachments").VerifyExists 
	Browser("Login").Page("Summary").Link("tab_WorkFlow").VerifyExists 
	Browser("Login").Page("Summary").Link("tab_Documents").VerifyExists 
	Browser("Login").Page("Summary").Link("tab_Details").VerifyExists 
	Browser("Login").Page("Summary").Link("tab_Audit").VerifyExists 
	Browser("Login").Page("Summary").WebButton("btn_Edit").ClickObject 
	Browser("Login").Page("Edit").WebButton("btn_PolicyDetailsEdit").VerifyPageName 
	Browser("Login").Page("Edit").WebElement("lbl_MasterTemplateSummary").VerifyExists 
	Browser("Login").Page("Edit").WebElement("lbl_PolicyDetails").VerifyExists 
	Browser("Login").Page("Edit").WebElement("lbl_TemplateDetails").VerifyExists 
	Browser("Login").Page("Edit").WebElement("lbl_GeneralLiability").VerifyExists 
	Browser("Login").Page("Edit").WebElement("lbl_Limits").VerifyExists 
	Browser("Login").Page("Edit").WebElement("lbl_DescriptionOf").VerifyExists 
	Browser("Login").Page("Edit").WebElement("lbl_AvailableAttachments").VerifyExists 
	Browser("Login").Page("Edit").WebButton("btn_PolicyDetailsEdit").ClickObject 
	Browser("Login").Page("Edit").WebElement("lnk_Edit").WaitForObjectToLoad 
	Browser("Login").Page("Edit").WebElement("lnk_Edit").ClickObject 
	Browser("Login").Page("PolicySearch").WebElement("lbl_PolicySearchResults").VerifyPageName 
	Browser("Login").Page("PolicySearch").WebElement("lbl_MasterTemplateSummary").VerifyExists 
	Browser("Login").Page("PolicySearch").WebElement("lbl_PolicyCriteria").VerifyExists 
	Browser("Login").Page("PolicySearch").WebElement("lbl_PolicySearchResults").VerifyExists 
	Browser("Login").Page("PolicySearch").WebTable("tbl_PolicySearchResults").WaitForTableToLoad 1
	Browser("Login").Page("PolicySearch").WebTable("tbl_PolicySearchResults").VerifyExists 
	Browser("Login").Page("PolicySearch").WebTable("tbl_PolicySearchResults").VerifyTableColumn "FilterLine ID"
	Browser("Login").Page("PolicySearch").WebTable("tbl_PolicySearchResults").VerifyTableColumn "FilterPolicy Number"
	Browser("Login").Page("PolicySearch").WebTable("tbl_PolicySearchResults").VerifyTableColumn "FilterLOB Type Code"
	Browser("Login").Page("PolicySearch").WebTable("tbl_PolicySearchResults").VerifyTableColumn "FilterLine Description"
	Browser("Login").Page("PolicySearch").WebTable("tbl_PolicySearchResults").VerifyTableColumn "FilterPolicy Description"
	Browser("Login").Page("PolicySearch").WebTable("tbl_PolicySearchResults").VerifyTableColumn "FilterAgency"
	Browser("Login").Page("PolicySearch").WebTable("tbl_PolicySearchResults").VerifyTableColumn "FilterBranch"
	Browser("Login").Page("PolicySearch").WebTable("tbl_PolicySearchResults").VerifyTableColumn "FilterEffective Date"
	Browser("Login").Page("PolicySearch").WebTable("tbl_PolicySearchResults").VerifyTableColumn "FilterExpiration Date"
	Browser("Login").Page("PolicySearch").WebTable("tbl_PolicySearchResults").VerifyandClickWebElementInRow "372113|412897"
	Browser("Login").Page("MasterTemplateSummary").WebButton("btn_HolderMassUpdates").VerifyPageName 

End Function
''###################################################################################################
''Function Name : NavigateMasterSummary
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function NavigateMasterSummary
Environment.Value("StepName") = "NavigateMasterSummary"
	Browser("Login").Page("Work Queue").WebElement("lnk_Certificates").ClickObject 
	Browser("Login").Page("Work Queue").WebElement("lnk_ClientLookup").ClickObject 
	Browser("Login").Page("Client Search").WebElement("lbl_SearchResults").VerifyPageName 
	Browser("Login").Page("Client Search").WebElement("lbl_ClientSearchCriteria").VerifyExists 
	Browser("Login").Page("Client Search").WebElement("lbl_SearchResults").VerifyExists 
	Browser("Login").Page("Client Search").WebEdit("txt_ClientName").EnterText dtScenario.value("ClientLookUpCode")
	Browser("Login").Page("Client Search").WebButton("btn_Search").ClickObject 
	Browser("Login").Page("Client Search").WebTable("tbl_ClientName").VerifyExists 
	Browser("Login").Page("Client Search").WebTable("tbl_ClientName").VerifyandClickLinkInRow dtScenario.value("SearchClientName")
	Browser("Login").Page("Client Summary").WebElement("lbl_ClientSummary").VerifyPageName 
	Browser("Login").Page("Client Summary").WebElement("lbl_ClientSummary").VerifyExists 
	Browser("Login").Page("Client Summary").WebElement("lbl_ClientProfile").VerifyExists 
	Browser("Login").Page("Client Summary").WebElement("lbl_CertCenterContactInformation").VerifyExists 
	Browser("Login").Page("Client Summary").WebElement("lbl_CertCenterNotes").VerifyExists 
	Browser("Login").Page("Client Summary").WebElement("lbl_ClientDistributionDetails").VerifyExists 
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateGrid").WaitForTableToLoad 2
	Browser("Login").Page("Client Summary").WebElement("lbl_MasterTemplate(s)").VerifyExists 
	Browser("Login").Page("Client Summary").WebElement("lbl_AutoIDTemplate(s)").VerifyExists 
	Browser("Login").Page("Client Summary").Link("tab_Audit").VerifyExists 
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateGrid").VerifyTableColumn "FilterID"
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateGrid").VerifyTableColumn "FilterACORD Form"
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateGrid").VerifyTableColumn "FilterDescription"
	Browser("Login").Page("Client Summary").WebTable("tbl_MasterTemplateGrid").VerifyvalueInSpecificCell 2,4,"Renew Masters Test"

End Function
''###################################################################################################
''Function Name : RenewMasterTemplateFromRenewToCopy
''Description : Description of Component
''Author : Gallop
''###################################################################################################
Public Function RenewMasterTemplateFromRenewToCopy
Environment.Value("StepName") = "RenewMasterTemplateFromRenewToCopy"
	Browser("Login").Page("Client Summary").WebButton("btn_RenewMasters").ClickObject 
	Browser("Login").Page("SelectMasterType").WebButton("btn_Next").VerifyPageName 
	Browser("Login").Page("SelectMasterType").WebElement("dwl_AcordType").VerifyExists 
	Browser("Login").Page("SelectMasterType").WebElement("dwl_AcordType").VerifyValueExistsInDropDown "ACORD 24: CERTIFICATE OF PROPERTY INSURANCE"
	Browser("Login").Page("SelectMasterType").WebElement("dwl_AcordType").VerifyValueExistsInDropDown "ACORD 25.CERTIFICATE OF LIABILITY INSURANCE"
	Browser("Login").Page("SelectMasterType").WebElement("dwl_AcordType").VerifyValueExistsInDropDown "ACORD 27: EVIDENCE OF PROPERTY INSURANCE"
	Browser("Login").Page("SelectMasterType").WebElement("dwl_AcordType").VerifyValueExistsInDropDown "ACORD 28: EVIDENCE OF COMMERICAL PROPERTY INSURANCE"
	Browser("Login").Page("SelectMasterType").WebElement("dwl_AcordType").VerifyValueExistsInDropDown "ACORD 30: CERTIFICATE OF GARAGE INSURANCE"
	Browser("Login").Page("SelectMasterType").WebElement("dwl_AcordType").SelectDropDownValues "ACORD 25.CERTIFICATE OF LIABILITY INSURANCE"
	Browser("Login").Page("SelectMasterType").WebButton("btn_Next").ClickObject 
	Browser("Login").Page("SelectMaster").WebButton("btn_Next").VerifyPageName 
	Browser("Login").Page("SelectMaster").WebElement("lbl_SelectMaster(s)").VerifyExists 
	Browser("Login").Page("SelectMaster").WebElement("lbl_MasterTemplateCopyDetails").VerifyExists 
	Browser("Login").Page("SelectMaster").WebTable("tbl_SelectMaster(s)").VerifyvalueInSpecificCell 2,5,"Renew Masters Test"
	Browser("Login").Page("SelectMaster").WebTable("tbl_SelectMaster(s)").SelectCheckBoxsInTable 1,2
	Browser("Login").Page("SelectMaster").WebButton("btn_Next").ClickObject 
	Browser("Login").Page("SelectCoverageTemplate").WebButton("btn_Next").VerifyPageName 
	Browser("Login").Page("SelectCoverageTemplate").WebElement("lbl_SelectCoverageTemplate").VerifyExists 
	Browser("Login").Page("SelectCoverageTemplate").WebElement("lbl_MasterTemplateCopyDetails").VerifyExists 
	Browser("Login").Page("SelectCoverageTemplate").WebTable("tbl_SelectCoverageTemplate").WaitForTableToLoad 1
	Browser("Login").Page("SelectCoverageTemplate").WebTable("tbl_SelectCoverageTemplate").VerifyandClickWebElementInRow "Copy|Renewselect"
	Browser("Login").Page("SelectCoverageTemplate").WebElement("dtl_Remove").VerifyExists 
	Browser("Login").Page("SelectCoverageTemplate").WebElement("dtl_Renew").VerifyExists 
	Browser("Login").Page("SelectCoverageTemplate").WebElement("dtl_Copy").VerifyExists 
	Browser("Login").Page("SelectCoverageTemplate").WebElement("dtl_Copy").ClickObject 
	Browser("Login").Page("SelectCoverageTemplate").WebButton("btn_Next").ClickObject 
	Browser("Login").Page("SelectPolicy").WebButton("btn_Submit").VerifyPageName 
	Browser("Login").Page("SelectPolicy").WebElement("lbl_MasterTemplateCopyDetails").VerifyExists 
	Browser("Login").Page("SelectPolicy").WebElement("lbl_Confirm/SelectPolicy").VerifyExists 
	Browser("Login").Page("SelectPolicy").WebElement("dtl_RequestID").GetReqID 
	Browser("Login").Page("SelectPolicy").WebButton("btn_Submit").ClickObject 
	Browser("Login").Page("Client Summary").WebButton("btn_RenewMasters").VerifyPageName 
	Browser("Login").Page("Client Summary").WebTable("tbl_RenewalMasterRequest").WaitForTableToLoad 2
	Browser("Login").Page("Client Summary").WebTable("tbl_RenewalMasterRequest").VerifyAndClickRecordInTable "Master Template Copy",1
	Browser("Login").Page("Summary").WebButton("btn_Work").VerifyPageName 
	Browser("Login").Page("Summary").Link("tab_WorkFlow").VerifyExists 
	Browser("Login").Page("Summary").Link("tab_Documents").VerifyExists 
	Browser("Login").Page("Summary").Link("tab_Details").VerifyExists 
	Browser("Login").Page("Summary").Link("tab_Audit").VerifyExists 
	Browser("Login").Page("Summary").WebElement("lbl_TemplateDetails").ReFreshPage 3
	Browser("Login").Page("Summary").WebElement("dtl_MasterTemplateCopy").WaitForObjectToLoad 
	Browser("Login").Page("Summary").WebElement("dtl_MasterTemplateCopy").VerifyExists 
	Browser("Login").Page("Summary").WebElement("dtl_HolderCopy").VerifyExists 
	Browser("Login").Page("Summary").WebElement("dtl_CoverageTemplateCopy").VerifyExists 
	Browser("Login").Page("Summary").WebElement("dtl_CompleteMasterCopyWorkflow").VerifyExists 
	Browser("Login").Page("Summary").Link("tab_WorkFlow").ClickObject 
	Browser("Login").Page("Summary").WebTable("tbl_WorkFlow").VerifyExists 
	Browser("Login").Page("Summary").WebTable("tbl_WorkFlow").WaitForTableToLoad 1
	Browser("Login").Page("Summary").WebTable("tbl_WorkFlow").VerifyvalueInSpecificCell 2,2,"In Progress"
	Browser("Login").Page("Summary").WebButton("btn_Work").ClickObject 
	Browser("Login").Page("Summary").WebButton("btn_Complete").VerifyPageName 
	Browser("Login").Page("Summary").WebButton("btn_GenerateReport").VerifyExists 
	Browser("Login").Page("Summary").WebButton("btn_Complete").VerifyExists 
	Browser("Login").Page("Summary").WebButton("btn_Back").VerifyExists 
	Browser("Login").Page("Summary").WebButton("btn_Complete").ClickObject 
	Browser("Login").Page("Summary").WebButton("btn_GenerateReport").VerifyPageName 
	Browser("Login").Page("Summary").Link("tab_WorkFlow").VerifyExists 
	Browser("Login").Page("Summary").Link("tab_WorkFlow").ClickObject 
	Browser("Login").Page("Summary").WebTable("tbl_WorkFlow").WaitForTableToLoad 1
	Browser("Login").Page("Summary").WebTable("tbl_WorkFlow").VerifyExists 
	Browser("Login").Page("Summary").WebTable("tbl_WorkFlow").VerifyvalueInSpecificCell 2,2,"Completed"

End Function
