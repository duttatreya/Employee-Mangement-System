package dao;

import java.sql.*;
public class DAOLayer {
    private static Connection con = null;
    static
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/rcpl";
            con = DriverManager.getConnection(url,"root","EatShitH4kr");
        }catch(Exception e){
            System.out.println("CONNECTION ERROR : "+e.getMessage());
        }
    }
    
    public static Connection getCon(){
        return con;
    }
    
    public static ResultSet selectData(String selectQuery){
     try{
         ResultSet rs = null;
         Statement s = con.createStatement();
         rs = s.executeQuery(selectQuery);
         return rs;
     }catch(Exception e){
         System.out.println("SELECT ERROR : "+e.getMessage());
         return null;
     }
    }
    
    public static int updateData(String dmlQuery){
      try{
         int rs = 0;
          Statement s = con.createStatement();
          rs = s.executeUpdate(dmlQuery);
         return rs;
     }catch(Exception e){
         System.out.println("UPDATE ERROR : "+e.getMessage());
         return -1;
     }
    }
}


