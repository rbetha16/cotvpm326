#Author: chaitanya kumar natuva
@Regression @PCA750 @CaptureDecision
Feature: PCA-750,Capture Decision

  #####################################################   Scenario-1  #############################################################
  @PCA750_1 @Sanity
  Scenario Outline: PCA_750_1 Validate the capture decision "Reject" funcitonality in Presentation deck at "<Level>" Level for the Client "<Client>"
    Given User "<User>" logged into "" application with Services
    Given the "<User>" moving the data from CPW to PM through the service for the client "<Client>" with "Single" DPKey
    Then Create the presenatation profile with given request data client "<Client>" payershort "" lob "" product "" and prority "" with "<User>"
    Then assign multiple dps to created profile
    Then User "<User>" logged into "PM" application
    When user selects "<Client>" from Client drop down list
    Then The CPMorCMD clicks on the "Presentation having DPs"
    And Apply All Payers and LOBs filters in Presenation profile
    And Expand all the items in presenation hierarchy view
    Then Select DPs at "<Level>" level in presentation hierarchy view
    And Capture "<Decision>" decision
    Then verify the captured decision "<Decision>" in Payer/LOB Grid
    And verify the "<Decision>" status updated in database for DP
    Then verify the captured decision values "<Decision>" in Payer/LOB Grid decision popup
    When User Modify the captured decison "<Decision>" values in Payer/LOB Grid decision popup
    Then verify the modified captured "<Decision>" values updated in database for DP
    And User logsout of the "PM" Application

    Examples: 
      | User   | Client    | Level | Decision |
      | nkumar | Humana| Topic | Reject   |

  #| nkumar | Humana    | DP    | Reject   |
  #####################################################   Scenario-2  #############################################################
  @PCA750_2
  Scenario Outline: PCA_750_2 Validate the capture decision "Approve-Test Only" funcitonality in Presentation deck at "<Level>" Level for the Client "<Client>"
    Given User "<User>" logged into "" application with Services
    Given the "<User>" moving the data from CPW to PM through the service for the client "<Client>" with "Single" DPKey
    Then Create the presenatation profile with given request data client "<Client>" payershort "" lob "" product "" and prority "" with "<User>"
    Then assign multiple dps to created profile
    Then User "<User>" logged into "PM" application
    When user selects "<Client>" from Client drop down list
    Then The CPMorCMD clicks on the "Presentation having DPs"
    And Apply All Payers and LOBs filters in Presenation profile
    And Expand all the items in presenation hierarchy view
    Then Select DPs at "<Level>" level in presentation hierarchy view
    And Capture "<Decision>" decision
    Then verify the captured decision "<Decision>" in Payer/LOB Grid
    And verify the "<Decision>" status updated in database for DP
    Then verify the captured decision values "<Decision>" in Payer/LOB Grid decision popup
    When User Modify the captured decison "<Decision>" values in Payer/LOB Grid decision popup
    Then verify the modified captured "<Decision>" values updated in database for DP
    #And User logsout of the "PM" Application

    Examples: 
      | User   | Client    | Level | Decision          |
      | nkumar | WellPoint | Topic | Approve Test Only |

  #| nkumar | Humana  | DP    | Approve Test Only |
  #####################################################   Scenario-3  #############################################################
  @PCA750_3 @FloraaRegression
  Scenario Outline: PCA_750_3 Validate the capture decision "Approve with Mod Test Only " funcitonality in Presentation deck at "<Level>" Level for the Client "<Client>"
    Given User "<User>" logged into "" application with Services
    Given the "<User>" moving the data from CPW to PM through the service for the client "<Client>" with "Single" DPKey
    Then Create the presenatation profile with given request data client "<Client>" payershort "" lob "" product "" and prority "" with "<User>"
    Then assign multiple dps to created profile
    Then User "<User>" logged into "PM" application
    When user selects "<Client>" from Client drop down list
    Then The CPMorCMD clicks on the "Presentation having DPs"
    And Apply All Payers and LOBs filters in Presenation profile
    And Expand all the items in presenation hierarchy view
    Then Select DPs at "<Level>" level in presentation hierarchy view
    And Capture "<Decision>" decision
    Then verify the captured decision "<Decision>" in Payer/LOB Grid
    And verify the "<Decision>" status updated in database for DP
    Then verify the captured decision values "<Decision>" in Payer/LOB Grid decision popup
    When User Modify the captured decison "<Decision>" values in Payer/LOB Grid decision popup
    Then verify the modified captured "<Decision>" values updated in database for DP
    #And User logsout of the "PM" Application

    Examples: 
      | User   | Client | Level | Decision                   |
      #| nkumar | WellPoint | Topic | Approve with Mod Test Only |
      | nkumar | Humana | DP    | Approve with Mod Test Only |

  #####################################################   Scenario-4  #############################################################
  @PCA750_4
  Scenario Outline: PCA_750_4 Validate the capture decision "Approve" funcitonality in Presentation deck at "<Level>" Level for the Client "<Client>"
    Given User "<User>" logged into "" application with Services
    Given the "<User>" moving the data from CPW to PM through the service for the client "<Client>" with "Single" DPKey
    Then Create the presenatation profile with given request data client "<Client>" payershort "" lob "" product "" and prority "" with "<User>"
    Then assign multiple dps to created profile
    Then User "<User>" logged into "PM" application
    When user selects "<Client>" from Client drop down list
    Then The CPMorCMD clicks on the "Presentation having DPs"
    And Apply All Payers and LOBs filters in Presenation profile
    And Expand all the items in presenation hierarchy view
    Then Select DPs at "<Level>" level in presentation hierarchy view
    And Capture "<Decision>" decision
    Then verify the captured decision "<Decision>" in Payer/LOB Grid
    And verify the "<Decision>" status updated in database for DP
    Then verify the captured decision values "<Decision>" in Payer/LOB Grid decision popup
    When User Modify the captured decison "<Decision>" values in Payer/LOB Grid decision popup
    Then verify the modified captured "<Decision>" values updated in database for DP
    #And User logsout of the "PM" Application

    Examples: 
      | User   | Client    | Level | Decision |
      | nkumar | Humana    | Topic | Approve  |
      #| nkumar | WellPoint | DP    | Approve  |

  #####################################################   Scenario-5  #############################################################
  @PCA750_5 @Sanity
  Scenario Outline: PCA_750_5 Validate the capture decision "Approve with Mod" funcitonality in Presentation deck at "<Level>" Level for the Client "<Client>"
    Given User "<User>" logged into "" application with Services
    Given the "<User>" moving the data from CPW to PM through the service for the client "<Client>" with "Single" DPKey
    Then Create the presenatation profile with given request data client "<Client>" payershort "" lob "" product "" and prority "" with "<User>"
    Then assign multiple dps to created profile
    Then User "<User>" logged into "PM" application
    When user selects "<Client>" from Client drop down list
    Then The CPMorCMD clicks on the "Presentation having DPs"
    And Apply All Payers and LOBs filters in Presenation profile
    And Expand all the items in presenation hierarchy view
    Then Select DPs at "<Level>" level in presentation hierarchy view
    And Capture "<Decision>" decision
    Then verify the captured decision "<Decision>" in Payer/LOB Grid
    And verify the "<Decision>" status updated in database for DP
    Then verify the captured decision values "<Decision>" in Payer/LOB Grid decision popup
    When User Modify the captured decison "<Decision>" values in Payer/LOB Grid decision popup
    Then verify the modified captured "<Decision>" values updated in database for DP
    And User logsout of the "PM" Application

    Examples: 
      | User   | Client | Level | Decision         |
      | nkumar | Humana | Topic | Approve with Mod |

  # | nkumar | WellPoint | DP    | Approve with Mod |
  #####################################################   Scenario-6  #############################################################
  @PCA750_6 @Sanity
  Scenario Outline: PCA_750_6 Validate the capture decision "Defer" funcitonality in Presentation deck at "<Level>" Level for the Client "<Client>"
    Given User "<User>" logged into "" application with Services
    Given the "<User>" moving the data from CPW to PM through the service for the client "<Client>" with "Single" DPKey
    Then Create the presenatation profile with given request data client "<Client>" payershort "" lob "" product "" and prority "" with "<User>"
    Then assign multiple dps to created profile
    Then User "<User>" logged into "PM" application
    When user selects "<Client>" from Client drop down list
    Then The CPMorCMD clicks on the "Presentation having DPs"
    And Apply All Payers and LOBs filters in Presenation profile
    And Expand all the items in presenation hierarchy view
    Then Select DPs at "<Level>" level in presentation hierarchy view
    And Capture "<Decision>" decision
    Then verify the captured decision "<Decision>" in Payer/LOB Grid
    And verify the "<Decision>" status updated in database for DP
    Then verify the captured decision values "<Decision>" in Payer/LOB Grid decision popup
    When User Modify the captured decison "<Decision>" values in Payer/LOB Grid decision popup
    Then verify the modified captured "<Decision>" values updated in database for DP
    #And User logsout of the "PM" Application

    Examples: 
      | User   | Client | Level | Decision |
      | nkumar | Humana | Topic | Defer    |

  # | nkumar | Dean Health Plan | DP    | Defer    |
  ####################################################   Scenario-7  #############################################################
  @PCA750_7
  Scenario Outline: PCA_750_7 Validate the capture decision "Follow up" funcitonality in Presentation deck at "<Level>" Level for the Client "<Client>"
    Given User "<User>" logged into "" application with Services
    Given the "<User>" moving the data from CPW to PM through the service for the client "<Client>" with "Single" DPKey
    Then Create the presenatation profile with given request data client "<Client>" payershort "" lob "" product "" and prority "" with "<User>"
    Then assign multiple dps to created profile
    Then User "<User>" logged into "PM" application
    When user selects "<Client>" from Client drop down list
    Then The CPMorCMD clicks on the "Presentation having DPs"
    And Apply All Payers and LOBs filters in Presenation profile
    And Expand all the items in presenation hierarchy view
    Then Select DPs at "<Level>" level in presentation hierarchy view
    And Capture "<Decision>" decision
    Then verify the captured decision "<Decision>" in Payer/LOB Grid
    And verify the "<Decision>" status updated in database for DP
    Then verify the captured decision values "<Decision>" in Payer/LOB Grid decision popup
    When User Modify the captured decison "<Decision>" values in Payer/LOB Grid decision popup
    Then verify the modified captured "<Decision>" values updated in database for DP
    #And User logsout of the "PM" Application

    Examples: 
      | User   | Client | Level | Decision  |
      | nkumar | Humana | Topic | Follow up |

  #| nkumar | EmblemHealth | DP    | Follow up |
  #####################################################   Scenario-8  #############################################################
  @PCA750_8
  Scenario Outline: PCA_750_8 Validate the capture decision "Reject" funcitonality in Presentation deck at "<Level>" Level for the Client "<Client>" for multiple DPs
    Given User "<User>" logged into "" application with Services
    Given the "<User>" moving the data from CPW to PM through the service for the client "<Client>" with "Multiple" DPKey
    Then Create the presenatation profile with given request data client "<Client>" payershort "" lob "" product "" and prority "" with "<User>"
    Then assign multiple dps to created profile
    Then User "<User>" logged into "PM" application
    When user selects "<Client>" from Client drop down list
    Then The CPMorCMD clicks on the "Presentation having DPs"
    And Apply All Payers and LOBs filters in Presenation profile
    And Expand all the items in presenation hierarchy view
    Then Select DPs at "<Level>" level in presentation hierarchy view
    And Capture "<Decision>" decision
    Then verify the captured decision "<Decision>" in Payer/LOB Grid
    And verify the "<Decision>" status updated in database for DP
    Then verify the captured decision values "<Decision>" in Payer/LOB Grid decision popup
    When User Modify the captured decison "<Decision>" values in Payer/LOB Grid decision popup
    Then verify the modified captured "<Decision>" values updated in database for DP
    #And User logsout of the "PM" Application

    Examples: 
      | User   | Client | Level          | Decision |
      | nkumar | Humana | Medical Policy | Reject   |

  #####################################################   Scenario-9  #############################################################
  @PCA750_9
  Scenario Outline: PCA_750_9 Validate the capture decision "Approve-Test Only" funcitonality in Presentation deck at "<Level>" Level for the Client "<Client>" for multiple DPs
    Given User "<User>" logged into "" application with Services
    Given the "<User>" moving the data from CPW to PM through the service for the client "<Client>" with "Multiple" DPKey
    Then Create the presenatation profile with given request data client "<Client>" payershort "" lob "" product "" and prority "" with "<User>"
    Then assign multiple dps to created profile
    Then User "<User>" logged into "PM" application
    When user selects "<Client>" from Client drop down list
    Then The CPMorCMD clicks on the "Presentation having DPs"
    And Apply All Payers and LOBs filters in Presenation profile
    And Expand all the items in presenation hierarchy view
    Then Select DPs at "<Level>" level in presentation hierarchy view
    And Capture "<Decision>" decision
    Then verify the captured decision "<Decision>" in Payer/LOB Grid
    And verify the "<Decision>" status updated in database for DP
    Then verify the captured decision values "<Decision>" in Payer/LOB Grid decision popup
    When User Modify the captured decison "<Decision>" values in Payer/LOB Grid decision popup
    Then verify the modified captured "<Decision>" values updated in database for DP
    #And User logsout of the "PM" Application

    Examples: 
      | User   | Client    | Level          | Decision          |
      | nkumar | WellPoint | Medical Policy | Approve Test Only |

  #####################################################   Scenario-10  #############################################################
  @PCA750_10
  Scenario Outline: PCA_750_10 Validate the capture decision "Approve with Mod Test Only " funcitonality in Presentation deck at "<Level>" Level for the Client "<Client>" for multiple DPs
    Given User "<User>" logged into "" application with Services
    Given the "<User>" moving the data from CPW to PM through the service for the client "<Client>" with "Multiple" DPKey
    Then Create the presenatation profile with given request data client "<Client>" payershort "" lob "" product "" and prority "" with "<User>"
    Then assign multiple dps to created profile
    Then User "<User>" logged into "PM" application
    When user selects "<Client>" from Client drop down list
    Then The CPMorCMD clicks on the "Presentation having DPs"
    And Apply All Payers and LOBs filters in Presenation profile
    And Expand all the items in presenation hierarchy view
    Then Select DPs at "<Level>" level in presentation hierarchy view
    And Capture "<Decision>" decision
    Then verify the captured decision "<Decision>" in Payer/LOB Grid
    And verify the "<Decision>" status updated in database for DP
    Then verify the captured decision values "<Decision>" in Payer/LOB Grid decision popup
    When User Modify the captured decison "<Decision>" values in Payer/LOB Grid decision popup
    Then verify the modified captured "<Decision>" values updated in database for DP
    #And User logsout of the "PM" Application

    Examples: 
      | User   | Client    | Level          | Decision                   |
      | nkumar | WellPoint | Medical Policy | Approve with Mod Test Only |

  #####################################################   Scenario-11  #############################################################
  @PCA750_11
  Scenario Outline: PCA_750_11 Validate the capture decision "Defer" funcitonality in Presentation deck at "<Level>" Level for the Client "<Client>" for multiple DPs
    Given User "<User>" logged into "" application with Services
    Given the "<User>" moving the data from CPW to PM through the service for the client "<Client>" with "Multiple" DPKey
    Then Create the presenatation profile with given request data client "<Client>" payershort "" lob "" product "" and prority "" with "<User>"
    Then assign multiple dps to created profile
    Then User "<User>" logged into "PM" application
    When user selects "<Client>" from Client drop down list
    Then The CPMorCMD clicks on the "Presentation having DPs"
    And Apply All Payers and LOBs filters in Presenation profile
    And Expand all the items in presenation hierarchy view
    Then Select DPs at "<Level>" level in presentation hierarchy view
    And Capture "<Decision>" decision
    Then verify the captured decision "<Decision>" in Payer/LOB Grid
    And verify the "<Decision>" status updated in database for DP
    Then verify the captured decision values "<Decision>" in Payer/LOB Grid decision popup
    When User Modify the captured decison "<Decision>" values in Payer/LOB Grid decision popup
    Then verify the modified captured "<Decision>" values updated in database for DP
    #And User logsout of the "PM" Application

    Examples: 
      | User   | Client | Level          | Decision |
      | nkumar | Humana | Medical Policy | Defer    |

  ####################################################   Scenario-12  #############################################################
  @PCA750_12
  Scenario Outline: PCA_750_12 Validate the capture decision "Follow up" funcitonality in Presentation deck at "<Level>" Level for the Client "<Client>" for multiple DPs
    Given User "<User>" logged into "" application with Services
    Given the "<User>" moving the data from CPW to PM through the service for the client "<Client>" with "Multiple" DPKey
    Then Create the presenatation profile with given request data client "<Client>" payershort "" lob "" product "" and prority "" with "<User>"
    Then assign multiple dps to created profile
    Then User "<User>" logged into "PM" application
    When user selects "<Client>" from Client drop down list
    Then The CPMorCMD clicks on the "Presentation having DPs"
    And Apply All Payers and LOBs filters in Presenation profile
    And Expand all the items in presenation hierarchy view
    Then Select DPs at "<Level>" level in presentation hierarchy view
    And Capture "<Decision>" decision
    Then verify the captured decision "<Decision>" in Payer/LOB Grid
    And verify the "<Decision>" status updated in database for DP
    Then verify the captured decision values "<Decision>" in Payer/LOB Grid decision popup
    When User Modify the captured decison "<Decision>" values in Payer/LOB Grid decision popup
    Then verify the modified captured "<Decision>" values updated in database for DP
    #And User logsout of the "PM" Application

    Examples: 
      | User   | Client | Level          | Decision  |
      | nkumar | Humana | Medical Policy | Follow up |

  ####################################################   Scenario-13  #############################################################
  @PCA750_13
  Scenario Outline: PCA_750_13 Validate the capture decision "Approve" funcitonality in Presentation deck at "<Level>" Level for the Client "<Client>" for multiple DPs
    Given User "<User>" logged into "" application with Services
    Given the "<User>" moving the data from CPW to PM through the service for the client "<Client>" with "Multiple" DPKey
    Then Create the presenatation profile with given request data client "<Client>" payershort "" lob "" product "" and prority "" with "<User>"
    Then assign multiple dps to created profile
    Then User "<User>" logged into "PM" application
    When user selects "<Client>" from Client drop down list
    Then The CPMorCMD clicks on the "Presentation having DPs"
    And Apply All Payers and LOBs filters in Presenation profile
    And Expand all the items in presenation hierarchy view
    Then Select DPs at "<Level>" level in presentation hierarchy view
    And Capture "<Decision>" decision
    Then verify the captured decision "<Decision>" in Payer/LOB Grid
    And verify the "<Decision>" status updated in database for DP
    Then verify the captured decision values "<Decision>" in Payer/LOB Grid decision popup
    When User Modify the captured decison "<Decision>" values in Payer/LOB Grid decision popup
    Then verify the modified captured "<Decision>" values updated in database for DP
    #And User logsout of the "PM" Application

    Examples: 
      | User   | Client | Level          | Decision |
      | nkumar | Humana | Medical Policy | Approve  |

  ####################################################   Scenario-14  #############################################################
  @PCA750_14
  Scenario Outline: PCA_750_14 Validate the capture decision "Approve with Mod" funcitonality in Presentation deck at "<Level>" Level for the Client "<Client>" for multiple DPs
    Given User "<User>" logged into "" application with Services
    Given the "<User>" moving the data from CPW to PM through the service for the client "<Client>" with "Multiple" DPKey
    Then Create the presenatation profile with given request data client "<Client>" payershort "" lob "" product "" and prority "" with "<User>"
    Then assign multiple dps to created profile
    Then User "<User>" logged into "PM" application
    When user selects "<Client>" from Client drop down list
    Then The CPMorCMD clicks on the "Presentation having DPs"
    And Apply All Payers and LOBs filters in Presenation profile
    And Expand all the items in presenation hierarchy view
    Then Select DPs at "<Level>" level in presentation hierarchy view
    And Capture "<Decision>" decision
    Then verify the captured decision "<Decision>" in Payer/LOB Grid
    And verify the "<Decision>" status updated in database for DP
    Then verify the captured decision values "<Decision>" in Payer/LOB Grid decision popup
    When User Modify the captured decison "<Decision>" values in Payer/LOB Grid decision popup
    Then verify the modified captured "<Decision>" values updated in database for DP
    #And User logsout of the "PM" Application

    Examples: 
      | User   | Client | Level          | Decision         |
      | nkumar | Humana | Medical Policy | Approve with Mod |

  #####################################################   Scenario-15  #############################################################
  @PCA750_15
  Scenario Outline: PCA_750_15 Validate the capture decision as "Reject" and update decision as "Follow up" at "<Level>" Level for the Client "<Client>"
    Given User "<User>" logged into "" application with Services
    Given the "<User>" moving the data from CPW to PM through the service for the client "<Client>" with "Single" DPKey
    Then Create the presenatation profile with given request data client "<Client>" payershort "" lob "" product "" and prority "" with "<User>"
    Then assign multiple dps to created profile
    Then User "<User>" logged into "PM" application
    When user selects "<Client>" from Client drop down list
    Then The CPMorCMD clicks on the "Presentation having DPs"
    And Apply All Payers and LOBs filters in Presenation profile
    And Expand all the items in presenation hierarchy view
    Then Select DPs at "<Level>" level in presentation hierarchy view
    And Capture "<Decision>" decision
    Then verify the captured decision "<Decision>" in Payer/LOB Grid
    And verify the "<Decision>" status updated in database for DP
    Then verify the captured decision values "<Decision>" in Payer/LOB Grid decision popup
    When User Modify the captured decison "<UpdateDecision>" values in Payer/LOB Grid decision popup
    Then verify the modified captured "<UpdateDecision>" values updated in database for DP
    #And User logsout of the "PM" Application

    Examples: 
      | User   | Client | Level | Decision | UpdateDecision |
      | nkumar | Humana | Topic | Reject   | Follow up      |
