import java.io.*;
import java.net.*;
public class ServeurTCP1 {
    public static void main( String[] args )
    {
        try{
            ServerSocket socketserver = new ServerSocket(2016);
            System.out.println("Serveur en attente");
            Socket socket =socketserver.accept();
            
        
        }
        catch (Exception ex)
        {System.out.println("Erreur");}
    }
}
