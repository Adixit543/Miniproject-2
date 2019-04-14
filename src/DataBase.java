import java.sql.*;
import javax.swing.JOptionPane;
public class DataBase
{
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
		
	public DataBase()
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/income_expense_manager","root","");
			if(con==null)
			{
				System.out.println("Not Connect");
			}
			else
			{
				System.out.println("Connect");
			}
		}
		catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
	}
        public void getConnection()
        {
            try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/income_expense_manager","root","");
			if(con==null)
			{
				System.out.println("Not Connect");
			}
			else
			{
				System.out.println("Connect");
			}
		}
		catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
        }
	
	public  void Ins_Upa_Del(String str)
	{
		try
		{
			st=con.createStatement();
			st.executeUpdate(str);
		}
		catch(Exception ex)
		{
			JOptionPane.showMessageDialog(null,ex.getMessage());
		}
	}
	public ResultSet getdata(String str)
	{
		try
		{
			st=con.createStatement();
			rs=st.executeQuery(str);
		}
		catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
		return rs;
		
	}
	public void con_close()
	{
		try
		{
			con.close();
		}
		catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
		
	}

    
}
	
