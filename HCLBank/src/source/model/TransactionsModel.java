package divya.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.sql.DataSource;

import divya.entity.Transactions;

public class TransactionsModel {


	public List<Transactions> listTransactionsById(int customerId, DataSource dataSource) {

		//1. Initialize connection objects
		List<Transactions> listUsers = new ArrayList<>();
		Connection connect = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			connect = dataSource.getConnection();
			int cus_id = customerId;
			//2. create sql query
			String query = "select tranc_amt, tranc_date, account_name  from transactions where cus_id =" + cus_id;
			stmt = connect.createStatement();

			rs = stmt.executeQuery(query);
			while(rs.next()) {
				listUsers.add(new Transactions(rs.getInt("tranc_amt"), rs.getDate("tranc_date"), rs.getString("account_name")));

			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return listUsers;

	}

	public void addTransaction(Transactions newTransaction, DataSource dataSource ) {
		Connection conn = null;
		PreparedStatement mySt = null;
		try {
			conn = dataSource.getConnection();
			
			int cus_id = newTransaction.getCus_id();
			int tranc_amt = newTransaction.getTransc_amt();
			String account_name = newTransaction.getAccount_name();
			
			java.util.Date date=new java.util.Date();
			
		    Calendar calendar = Calendar.getInstance();
		    java.sql.Date tranc_date = new java.sql.Date(calendar.getTime().getTime());
			
			
			String query = "insert into transactions (cus_id, tranc_amt, tranc_date, account_name) values (?, ?, ?, ?)";
			mySt = conn.prepareStatement(query);
			mySt.setInt(1, cus_id);
			mySt.setInt(2, tranc_amt);
			mySt.setDate(3, tranc_date);
			mySt.setString(4, account_name);
			
			mySt.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		}
		
	}
}

