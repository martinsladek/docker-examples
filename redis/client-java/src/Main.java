import redis.clients.jedis.Jedis; 

public class Main { 
   public static void main(String[] args) { 
      //Connecting to Redis server on localhost 
      //Jedis jedis = new Jedis("localhost"); 
      Jedis jedis = new Jedis("some-redis"); 
      System.out.println("Connection to server sucessfully"); 
      //check whether server is running or not 
      System.out.println("Server is running: "+jedis.ping()); 
   } 
} 