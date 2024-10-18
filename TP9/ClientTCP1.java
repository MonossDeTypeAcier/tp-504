import java.io.*;
import java.net.*;

public class ClientTCP1 {
    try{
            Socket socket =new Socket("localhost", 2016)
            DataOutputStream dOut = new DataOutputStream(socket.getOutputStream());
            dOut.writeUTF("Message test");
            socket.close();
        }
        catch (Exception ex)
        {System.out.println("Erreur");}
}
