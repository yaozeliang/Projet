package src.main.java.test;
 
import java.io.File;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.mime.MultipartEntity;
import org.apache.http.entity.mime.content.FileBody;

 
public class RESTClient {
     
    public static void main(String args[]) throws Exception {
        File f = new File("/home/jboss/myfile.txt");
        sendFile(f);
    }
    public static void sendFile(File file) throws Exception 
    {
    String BASE_URL="http://localhost:8080/RESTDemo/rest/upload";
        HttpClient client = new DefaultHttpClient() ;
        HttpPost postRequest = new HttpPost (BASE_URL) ;
        try
        {
             
            //Set various attributes 
            MultipartEntity multiPartEntity = new MultipartEntity () ;
            
           // multiPartEntity.addPart("fileName", new StringBody(file.getName() != null ? file.getName() : file.getName())) ;
   
            FileBody fileBody = new FileBody(file, "application/octect-stream") ;
            //Prepare payload
            multiPartEntity.addPart("attachment", fileBody) ;
   
            //Set to request body
            postRequest.setEntity(multiPartEntity) ;
              
            //Send request
            HttpResponse response = client.execute(postRequest) ;
              
            //Verify response if any
            if (response != null)
            {
                System.out.println(response.getStatusLine().getStatusCode());
            }
        }
        catch (Exception ex)
        {
            ex.printStackTrace() ;
        }
    }
}