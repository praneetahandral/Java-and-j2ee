package database;
 import java.sql.*;
 

public class JdbcAccess {
 
    public static void main(String[] args) {
         
        String databaseURL = "jdbc:ucanaccess://e://User//Praneeta//eclipse-workspace// database//Employee.accdb";;
         
        try{
             
             Class.forNome (net.ucanaccess.jdbc.ucanaccessDrives"); 
	     Connection con=DriverManager.getConnection (dataURL);
            String sql = "INSERT INTO Employee (Eid, Ename,Eadd) VALUES (?, ?, ?)";
             
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, "101");
            preparedStatement.setString(2, "Praneeta");
            preparedStatement.setString(3, "Bagalkot");
             
            int row = preparedStatement.executeUpdate();
             
            if (row > 0) {
                System.out.println("Inserted sucessfully");
            }
             
            sql = "SELECT * FROM Employee";
             
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(sql);
             
            while (rs.next()) {
                int id = rs.getInt("Employee_no");
                String eid = rs.getString("Eid");
                String ename = rs.getString("Ename");
                String eadd = rs.getString("Eadd");
                 
                System.out.println(id + ", " + eid+ ", " + ename+ ", " + eadd);
            }
             
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}
