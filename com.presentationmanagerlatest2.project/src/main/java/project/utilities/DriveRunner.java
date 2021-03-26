package project.utilities;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import net.thucydides.core.webdriver.DriverSource;

public class DriveRunner implements DriverSource {

	//public static String downLoadDirectory;
	//private static RemoteWebDriver webDriver;
	
	public WebDriver newDriver() {
		try {

			
			ChromeOptions options = new ChromeOptions();

			// add parameter which will disable the extension
			options.addArguments("--disable-extensions");
			options.setExperimentalOption("useAutomationExtension",false);
			System.out.println("testflow");
			return new ChromeDriver(options);
			
		} catch (Exception e) {
			throw new Error(e);
		}
		
		/*try{
            System.setProperty("webdriver.chrome.driver", System.getProperty("user.dir") + "\\BrowserDrivers\\chromedriver_win32\\chromedriver.exe");
            HashMap<String, Object> chromePrefs = new HashMap<String, Object>();

            chromePrefs.put("download.default_directory", downLoadDirectory);
            chromePrefs.put("profile.default_content_settings.popups", 0);
            chromePrefs.put("profile.content_settings.exceptions.automatic_downloads.*.setting", 1);
            chromePrefs.put("download.prompt_for_download", false);
            chromePrefs.put("pdfjs.disabled", true);
            chromePrefs.put("credentials_enable_service", false);
            chromePrefs.put("profile.password_manager_enabled", false);

            ChromeOptions options = new ChromeOptions();
           // options.setExperimentalOption("prefs", chromePrefs);
            options.addArguments("--disable-extensions");
            options.addArguments("--test-type");


            options.setExperimentalOption("prefs", chromePrefs);

            DesiredCapabilities cap = DesiredCapabilities.chrome();
            cap.setCapability(ChromeOptions.CAPABILITY, options);
            cap.setCapability(CapabilityType.ACCEPT_SSL_CERTS, true);
            cap.setCapability(CapabilityType.SUPPORTS_ALERTS, true);

            webDriver = new ChromeDriver(ChromeDriverService.createDefaultService(), cap);
            
            return webDriver;
    }catch (Exception e){
        throw new Error(e);
    }*/

	}

	public boolean takesScreenshots() {
		// TODO Auto-generated method stub
		return true;
	}


}
