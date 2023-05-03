*** Settings ***
Documentation   This step file contains all the library/resource imports
Library         SeleniumLibrary
Library         OperatingSystem
Library         String
Library         DateTime
Library         ../../Lib/utilLibrary.py

Resource       navigation.robot
Resource       scenarioLog.robot
Resource       seleniumKeywords.robot
Resource       util.robot
Resource       ../../POM/page_element_ids.robot

Variables      ../../POM/variables.yaml
