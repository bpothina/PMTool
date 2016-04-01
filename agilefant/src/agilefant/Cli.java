package agilefant;

import java.io.*;
import java.net.*;
import java.util.*;  


public class Cli {

	public static void main(String args[])throws Exception

	{
		System.out.println("Test1");
		String serverName = "localhost";
		int port = 8080;
		String command = "GET";
		String filePath = "C:\\Users\\SRUJAN POTHINA\\Desktop\\getdata.txt";
		int filesize = 6022386;
		
		try
		{   
			System.out.println("Test2");
			Socket client=new Socket(serverName,port);
			System.out.println("Just connected to " + serverName + "on port" + port + "\n"); 
			ObjectOutputStream objectOutputStream = new ObjectOutputStream(client.getOutputStream());   
			ObjectInputStream objectInputStream = new ObjectInputStream(client.getInputStream());                      
				
			if (command.equals("GET")) 
			{
				objectOutputStream.writeObject(command + " " + filePath + " HTTP/1.1");

				String status = (String) objectInputStream.readObject();
								
				if ( status.equals("200 OK")) 
				{
					String fileName = (String) objectInputStream.readObject();
					System.out.println("Contents of the file " + fileName + " Status :" + status +":\n");
		
					try
					{
						String words = (String) objectInputStream.readObject();
						while (words != null && words.length() > 0) 
						{
							System.out.println(words);
							words = (String) objectInputStream.readObject();
						}
					}catch(EOFException e)
					{
						System.out.println("\nFile received\n");
					}
				}
				else {
					System.out.println("\nFile not received\n");
				}
				
			}
			else if (command.equals("PUT")) 
			{
			
			}
			objectOutputStream.close();
			objectInputStream.close();
			client.close();			
		}
		
	catch(IOException e)
    {
    }
 }
}