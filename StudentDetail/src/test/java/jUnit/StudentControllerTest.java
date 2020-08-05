package jUnit;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.io.IOException;
import java.util.Date;

import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.junit.Before;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.MockitoAnnotations;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import com.google.gson.JsonParseException;
import com.student.controller.StudentController;
import com.student.pojo.StudentBean;

public class StudentControllerTest {
	
	  @InjectMocks
	    private StudentController studentController;
	 
	    private MockMvc mockMvc;
	 
	    @Before
	    public void setup() {
	        MockitoAnnotations.initMocks(this);
	        this.mockMvc = MockMvcBuilders.standaloneSetup(studentController).build();
	    }
	    
	    private String mapToJson(Object obj) throws IOException {
			ObjectMapper objectMapper = new ObjectMapper();
			return objectMapper.writeValueAsString(obj);
		}
		protected <T> T mapFromJson(String json, Class<T> clazz)
				throws JsonParseException, JsonMappingException, IOException {

			ObjectMapper objectMapper = new ObjectMapper();
			return objectMapper.readValue(json, clazz);
		}
	    
	    @Test
	    public void createStudentEntry(){
	    	try {
	    		StudentBean studentBean = new StudentBean(1, 556644, "Harry", "lobo", 75, 16, "harr@gmail.com", "8796547856", "Navi Mumbai", "Science", new Date());
		    	String inputJson = mapToJson(studentBean);
		    	MvcResult mvcResult = this.mockMvc.perform(MockMvcRequestBuilders.get("/createStudentRecord").accept(MediaType.APPLICATION_JSON).content(inputJson)).andReturn();
		    	int status = mvcResult.getResponse().getStatus();
		    	assertNotNull(mvcResult);
			} catch (Exception e) {
				e.printStackTrace();
			}
	    }
	    
	    @Test
	    public void getStudentByFilter(){
	    	try {
	    		StudentBean studentBean = new StudentBean();
		    	String inputJson = mapToJson(studentBean);
		    	MvcResult mvcResult = this.mockMvc.perform(MockMvcRequestBuilders.get("/getStudentRecord")
		    			.accept(MediaType.APPLICATION_JSON).content(inputJson)).andReturn();
		    	int status = mvcResult.getResponse().getStatus();
		    	assertNotNull(mvcResult);
				assertTrue(status > 0);
			} catch (Exception e) {
				e.printStackTrace();
			}
	    }
	    
	    @Test
	    public void getStudentEntryForUpdate(){
	    	try {
		    	String rollNo = "832455";
		    	MvcResult mvcResult = this.mockMvc.perform(MockMvcRequestBuilders.get("/updateStudentRecord/"+rollNo)
		    			.accept(MediaType.APPLICATION_JSON)).andReturn();
		    	int status = mvcResult.getResponse().getStatus();
				assertEquals(200, status);
			} catch (Exception e) {
				e.printStackTrace();
			}
	    }
	    
	    @Test
	    public void updateExistingStudentRecord(){
	    	try {
	    		StudentBean studentBean = new StudentBean(1, 556644, "Rayan", "lobo", 75, 16, "harr@gmail.com", "8796547856", "Navi Mumbai", "Science", new Date());
		    	String inputJson = mapToJson(studentBean);
		    	MvcResult mvcResult = this.mockMvc.perform(MockMvcRequestBuilders.get("/updateStudentRecord/updateExistingStudentRecord")
		    			.accept(MediaType.APPLICATION_JSON).content(inputJson)).andReturn();
		    	int status = mvcResult.getResponse().getStatus();
				assertEquals(200, status);
			} catch (Exception e) {
				e.printStackTrace();
			}
	    }
	    
	    @Test
	    public void delete(){
	    	try {
		    	String rollNo = "45879";
		    	MvcResult mvcResult = this.mockMvc.perform(MockMvcRequestBuilders.get("/deleteStudentRecord/"+rollNo)
		    			.accept(MediaType.APPLICATION_JSON)).andReturn();
		    	int status = mvcResult.getResponse().getStatus();
				assertEquals(200, status);
			} catch (Exception e) {
				e.printStackTrace();
			}
	    }
}
