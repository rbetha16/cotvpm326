package project.features.steps;

import org.junit.Assert;


import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import net.thucydides.core.annotations.Steps;
import net.thucydides.core.steps.ScenarioSteps;
import projects.steps.definitions.HomePageStepDef;

public class HomePageSteps {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Steps
	HomePageStepDef oHomeStepDef;

	@Given("^the user views the Presentation Manager Home Page")
	public void the_user_views_the_Presentation_Manager_Home_Page() throws Throwable {

		oHomeStepDef.the_user_views_the_Presentation_Manager_Home_Page();
	}

	@Then("^user logs out of the application$")
	public void user_logs_out_of_the_application(String sAppName) throws Throwable {
		oHomeStepDef.user_logs_out_of_the_application(sAppName);
	}
	
	
	@Then("^The user should view the PresentationManager HomePage$")
	public void the_user_should_view_the_PresentationManager_HomePage() throws Throwable {
	
		oHomeStepDef.userViewsPMHomepage();	
		
	}
	
	@Then("^User logsout of the \"([^\"]*)\" Application$")
	public void user_logsout_of_the_Application(String sAppName) throws Throwable 
	{
		oHomeStepDef.logoutOfApplication(sAppName);
	   
	}
	
	@Given("^navigate to \"([^\"]*)\" application$")
	public void navigate_to_application(String sAppName) throws Throwable {
		oHomeStepDef.navigationToApplication(sAppName);
	}
	
	@Then("^validate existence of PPS details in HomePage$")
	public void validate_existence_of_PPS_details_in_HomePage() throws Throwable {
		oHomeStepDef.validatePPSExistence();
	}
}

// @Given("^\"([^\"]*)\" logs in to \"([^\"]*)\" Application for the second
// time$")
// public void logs_in_to_Application_for_the_second_time(String arg1, String
// arg2) throws Throwable {
// // Write code here that turns the phrase above into concrete actions
// throw new PendingException();
// }

// @Given("^user selects \"([^\"]*)\" from \"([^\"]*)\"$")
// public void user_selects_from(String arg1, String arg2) throws Throwable{
// oHomePageStepDef.user_selects_value_from(arg1, arg2);
// }
//
//
// @Given("^user clicks on \"([^\"]*)\" for \"([^\"]*)\"$")
// public void user_clicks_on_for(String arg1, String arg2) {
// oHomePageStepDef.clickButton(arg1,arg2);
// }
//
// @Given("^user records the selection on the page$")
// public void user_records_the_selection_on_the_page() throws Throwable {
// oHomePageStepDef.user_makes_note_of_what_is_selected();
//
// }
//
// @Then("^user logs out of the application$")
// public void user_logs_out_of_the_application() throws Throwable {
// oHomePageStepDef.user_logs_out();
//
// }
// @Then("^users does a refresh on the screen$")
// public void users_does_a_refresh_on_the_screen() {
// oHomePageStepDef.refreshPage();
// }
//
//
// @Then("^user should view \"([^\"]*)\" in \"([^\"]*)\"$")
// public void user_should_view_in(String arg1, String arg2) throws Throwable {
// oHomePageStepDef.user_checks_element_is_selected(arg1, arg2);
// }
//
//
// @Then("^user should view \"([^\"]*)\" button for \"([^\"]*)\"$")
// public void user_should_view_button_for(String arg1, String arg2) throws
// Throwable {
// oHomePageStepDef.user_checks_element_is_visible(arg1, arg2);
//
//
// }
//
// @Then("^User should view \"([^\"]*)\"$")
// public void user_should_view(String arg1) throws Throwable {
// // Write code here that turns the phrase above into concrete actions
// throw new PendingException();
// }
//
//
//
//
//
//
//// @Given("^User is logged into the PM application$")
//// @Step
//// public void user_is_logged_into_the_PM_application() throws Throwable {
//// Assert.assertTrue(oHomePageStepDef.openPMApplication());
//// }
////
//// @Then("^User should view \"([^\"]*)\"$")
//// public void user_should_view(String arg1) throws Throwable {
//// Assert.assertTrue(oHomePageStepDef.verifyHomePageElementExists(arg1));
//// }
////
//// @Then("^User navigates to the \"([^\"]*)\" and clicks on the icon to the
// top left below sub-header$")
//// public void
// user_navigates_to_the_and_clicks_on_the_icon_to_the_top_left_below_sub_header(String
// arg1)
//// throws Throwable {
//// Assert.assertTrue(oHomePageStepDef.navigateToElement(arg1));
//// }
////
//// @Then("^The \"([^\"]*)\" opens$")
//// public void the_opens(String arg1) throws Throwable {
//// Assert.assertTrue(oHomePageStepDef.checkElementVisible(arg1));
//// }
////
//// @Then("^The \"([^\"]*)\" and \"([^\"]*)\" button should be disabled$")
//// public void the_and_button_should_be_disabled(String arg1, String arg2)
// throws Throwable {
//// Assert.assertTrue(oHomePageStepDef.checkElementDisabled(arg1));
//// Assert.assertTrue(oHomePageStepDef.checkElementDisabled(arg2));
//// }
////
//// @Then("^The \"([^\"]*)\" and \"([^\"]*)\" button should be enabled$")
//// public void the_and_button_should_be_enabled(String arg1, String arg2)
// throws Throwable {
//// Assert.assertTrue(oHomePageStepDef.checkElementEnabled(arg1));
//// Assert.assertTrue(oHomePageStepDef.checkElementEnabled(arg2));
//// }
////
//// @When("^The user has selected any one or multiple \"([^\"]*)\"$")
//// public void the_user_has_selected_any_one_or_multiple(String arg1) throws
// Throwable {
//// // Write code here that turns the phrase above into concrete actions
//// throw new PendingException();
//// }
//
// }
