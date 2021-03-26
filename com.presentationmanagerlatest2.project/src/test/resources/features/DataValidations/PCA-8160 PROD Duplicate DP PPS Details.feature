#Author: chaitanya kumar natuva
@PCA8160
Feature: PCA-8160,PROD Duplicate DP PPS Details

  #####################################################   Scenario-1  #############################################################
  @PCA8160_1
  Scenario Outline: PCA8160_1 Validate the PROD Duplicate DP PPS for clientkey '"<ClientKey>"' in "oppty_prod" collection
    Given user validate the duplicate DP PPS in "oppty_prod" collection for "<ClientKey>"

    Examples: 
      | ClientKey |
      #|         4 |
      #|        48 |
      #|        87 |
      |        16 |

  #|       150 |
  #|         3 |
  #|         4 |
  #|         8 |
  #|         9 |
  #|        11 |
  #|        12 |
  #|        14 |
  #|        16 |
  #|        19 |
  #|        20 |
  #|        22 |
  #|        24 |
  #|        25 |
  #|        27 |
  #|        37 |
  #|        43 |
  #|        44 |
  #|        46 |
  #|        48 |
  #|        51 |
  #|        53 |
  #|        56 |
  #|        58 |
  #|        72 |
  #|        75 |
  #|        77 |
  #|        81 |
  #|        84 |
  #|        87 |
  #|       110 |
  #|       112 |
  #|       114 |
  #|       121 |
  #|       122 |
  #|       128 |
  #|       134 |
  #|       138 |
  #####################################################   Scenario-2  #############################################################
  @PCA8160_2
  Scenario Outline: PCA8160_2 Validate the PROD Duplicate DP PPS for clientkey '"<Clientkey>"' in "profileoppty_prod" collection
    Given user validate the duplicate DP PPS in "profileoppty_prod" collection for "<Clientkey>"

    Examples: 
      | Clientkey |
      #|        14 |
      |        16 |
      #|        20 |
      #|        24 |
      #|        46 |
      #|        48 |
      #|        72 |
      #|        75 |
      #|        84 |
      #|        87 |
      #|       110 |
      #|       112 |
      #|       128 |
      #|       138 |
      #|       150 |
