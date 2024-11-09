package demo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class open {

	public static void main(String[] args) throws SQLException {
		// TODO Auto-generated method stub
		String username="root";
		String password="Sachin@99444";
		String conn="jdbc:mysql://localhost:3306/bank";
		String query="select * from transactions";
		Connection connection=DriverManager.getConnection(conn,username,password);
		Statement statement=connection.createStatement();
		ResultSet re=statement.executeQuery(query);
		while(re.next()) {
		System.out.println(re.getInt("transaction_id")+" "+re.getString("transaction_type")+" "+re.getString("branch"));
		}
		

	}

}