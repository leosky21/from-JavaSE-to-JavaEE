package Internet;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;

public class ReadUrlThread implements Runnable{
	URL url;
	public void setURL(URL url){
		this.url = url;
	}
	public void run(){
		try{
			InputStream  in = url.openStream();
			byte[] b = new byte[1024];
			int n = -1;
			while((n=in.read(b))!= -1){
				String str = new String(b,0,n);
				System.out.print(str);
			}
		}catch(IOException e){
		}
	}
}
