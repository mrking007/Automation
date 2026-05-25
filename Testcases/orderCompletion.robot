*** Settings ***
Resource    ../../Automation_RobotFramework/UserDefinedKeywords/orderCompletion.robot
Resource    ../../Automation_RobotFramework/UserDefinedKeywords/LoginDetails.robot


*** Test Cases ***
TC01
   LoginDetails.LoginBrowser 
Tc02
    orderCompletion.OrderCompletion