package project.features.steps;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

import org.json.simple.parser.ParseException;

import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import net.serenitybdd.core.Serenity;
import net.thucydides.core.annotations.Steps;
import net.thucydides.core.steps.ScenarioSteps;
import projects.steps.definitions.SubSequentReleaseStepDef;

public class SubSequentReleaseStep extends ScenarioSteps {

	private static final long serialVersionUID = 1L;

	@Steps
	SubSequentReleaseStepDef oSubSequentReleaseStepDef;

	@Then("^Set up the Data for ELL Changes for \"([^\"]*)\",\"([^\"]*)\",\"([^\"]*)\",\"([^\"]*)\"$")
	public void set_up_the_Data_for_ELL_Changes_for(String arg1, String arg2, String arg3, String arg4) throws Throwable {
		oSubSequentReleaseStepDef.setUpDataforELLChanges(arg1,arg2,arg3,arg4);
	}
}
