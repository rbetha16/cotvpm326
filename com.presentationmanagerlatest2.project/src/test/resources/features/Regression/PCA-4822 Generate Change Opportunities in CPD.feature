#Author: shailaja.nuthi@cotiviti.com
@Regression @PI-27
Feature: Change Opportunities

  #####################################################   Scenario-1  #############################################################
  #Chaitanya Kumar Natuva
  @PCA15352 @PCA8207
  Scenario Outline: PCA15352,PCA8207 Validation of 'Change Opportunities' Tab in Available OpportunityDeck
    Given User "<User>" logged into "PM" application
    When user selects "<Client>" from Client drop down list
    Then user should select "Change Opportunities" tab
    Then User validates "DP List" in "Change Opportunities"

    Examples: 
      | User   | Client         |
      | nkumar | Aetna Medicaid |

  #####################################################   Scenario-2 #############################################################
  #Chaitanya Kumar Natuva
  @PCA8206
  Scenario Outline: PCA8206 Validation of Change Opportunities Tab columns
    Given User "<User>" logged into "PM" application
    When user selects "<Client>" from Client drop down list
    Then user should select "Change Opportunities" tab
    Then user should view all the coloumns in Change Opportunities

    Examples: 
      | User   | Client         |
      | nkumar | Aetna Medicaid |

  #####################################################   Scenario-3  #############################################################
  #Chaitanya Kumar Natuva
  @PCA14507 @ReRun
  Scenario Outline: PCA14507 verify create presentation functionality in 'Change Opportunities'
    Given User "<User>" logged into "PM" application
    When user selects "<Client>" from Client drop down list
    Then user should select "Change Opportunities" tab
    Then user should be able to create presentation in Change Opportunities
    And user should not create presentation with same name in Change Opportunities

    Examples: 
      | User   | Client |
      | nkumar | Cigna  |

  #####################################################   Scenario-4  #############################################################
  #Shailaja Nuthi
  @PCA17912
  Scenario Outline: PCA-17912 Change summary data with change data
    Given User "<User>" logged into "PM" application
    When user selects "<Client>" from Client drop down list
    Then user should select "Change Opportunities" tab
    Then user validates change summary data for "<changeType>"

    Examples: 
      | User   | Client             | changeType         |
      | nkumar | Aetna Medicaid     | NEW MP             |
      | nkumar | Aetna Medicaid     | NEW TOPIC          |
      | nkumar | Aetna Medicaid     | RECAT TOPIC        |
      | nkumar | Aetna Medicaid     | NEW DP             |
      | nkumar | Aetna Medicaid     | RECAT DP           |
      | nkumar | Aetna Medicaid     | RECATEGORIZED RULE |
      | nkumar | Fidelis Care, Inc. | DEACT DP           |
      | nkumar | UnitedHealth Group | CHANGE DP DESC     |
      | nkumar | Wellmark, Inc.     | CLAIM TYPE ADDED   |
      | nkumar | Aetna Medicaid     | CLAIM TYPE REMOVED |
      | nkumar | Health Net, Inc.   | NEW RULE           |
      | nkumar | Fidelis Care, Inc. | DEACTIVATED POLICY |
      | nkumar | Aetna Medicaid     | VERSION CHANGE     |
      | nkumar | Fidelis Care, Inc. | REFERENCE CHANGE   |

  #####################################################   Scenario-5  #############################################################
  #Shailaja Nuthi
  @PCA14506 @PCA14508 @PCA14509 @PCA21692 @PCA21486 @PCA17377 @PCA17838
  Scenario Outline: End to End functionality on finalization in Change Opportunity grid
    Given User "<User>" logged into "PM" application
    When user selects "<Client>" from Client drop down list
    Then user should select "Change Opportunities" tab
    Then user should be able to create presentation in Change Opportunities
    Then User validates the "<sValidation>" of Dp's for the Profile in "Change Opportunities"

    Examples: 
      
      | User   | Client | sValidation                                                         |
      | nkumar | Cigna  | Assignment,Capture Decision Popup,Finalize Single DP-Approve Change |
      | nkumar | Cigna  | Assignment,Finalize Single DP-Approve Change with Mod               |
      | nkumar | Cigna  | Assignment,Finalize Single DP-Reject Change                         |
      | nkumar | Cigna  | Assignment,Finalize All DP-Approve Change                           |
      | nkumar | Cigna  | Assignment,Finalize All DP-Approve Change with Mod                  |
      | nkumar | Cigna  | Assignment,Finalize All DP-Reject Change                            |
      | nkumar | Cigna  | Assignment,Finalize All Decisions                                   |