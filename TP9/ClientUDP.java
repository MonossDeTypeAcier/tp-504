import java.io.*;
import java.net.*;
public class ClientUDP {
    public static void main( String[] args )
    {
        try{
            InetAddress addr = InetAddress.getLocalHost();
            System.out.println("adresse=" +addr.getHostName());
            String s="Hello world";
            byte[] data = s.getBytes();
            DatagramPacket packet = new DatagramPacket( data, data.length, addr, 1234);
            DatagramSocket sock = new DatagramSocket();
            sock.send(packet);
            System.out.println("1");
            DatagramPacket packet2 = new DatagramPacket (new byte[1024], 1024);
            sock.receive(packet2); 
            sock.close();
        }
        catch (Exception ex)
        {System.out.println("Erreur");}
    }
}
