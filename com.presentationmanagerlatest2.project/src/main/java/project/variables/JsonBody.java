package project.variables;

import java.io.IOException;
import java.util.HashMap;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.google.gson.Gson;
import net.serenitybdd.core.pages.PageObject;
import project.utilities.ExcelUtils;
import project.utilities.RestServiceUtils;

public class JsonBody extends PageObject{
	
	RestServiceUtils oRestServiceUtils = new RestServiceUtils();
	
	@SuppressWarnings("unchecked")
	public static String getRequestPayload(String sRequestname , HashMap<String,Object> sInput ) throws ParseException, IOException{
		
		//Loading all the services from Excel
		//ExcelUtils.loadServices();
		
		String getDPRequestBody = ProjectVariables.sServices.get(sRequestname).get("RequestBody");

		JSONParser parser = new JSONParser();
		JSONObject json = (JSONObject) parser.parse(getDPRequestBody);
		
		json.putAll(sInput);
	
		Gson g = new Gson();		
		String str = g.toJson(json);

		System.out.println(str);
		
		return str;
		
	}
	
	
}
