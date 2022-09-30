import java.sql.*;
import java.util.Scanner;
//import java.math.BigInteger;
public class Assignment5Team8 {

	public static void main(String[] args) {
		 Scanner sc = new Scanner(System.in);
		 String Type,Itemname;
		 int Itemid,Price,Branchid,Zipcode;
		 try
		 {
			 while(true)
			 {
				 System.out.println("Choose option");
				 System.out.println("1.Display Customer Details\n2. Display Menu Items"
				 		+ "\n3.Delete Menu Item\n4.Update Menu Prices \n"
		 		+ "5.Insert Menu Details\n6.Business Goal 1\n7.Business Goal 2\n8.Business Goal 3\n9.Business Goal 4\n"
		 		+ "10.Business Goal 5\n11.DisplayBranches\n12.UpdateRestaurant");
				int option = sc.nextInt();
				 
				 switch(option)
				 {
				 	case 1:DisplayCustomers();
			 		break;
	                case 2:ListMenu();
                    break;
				 	case 3: System.out.println("Enter Item name to be deleted");		 		
	 		 		String itemname=sc.next();
	 		 		DeleteItem(itemname);
	 		 		break;
				 	case 4: System.out.println("Enter Itemid to be updated");
		 			Itemid=sc.nextInt();
		 			System.out.println("Enter Price");				 			
		 			Price=sc.nextInt();
		 			UpdateMenu(Itemid,Price);
		 			break;
				 	case 5: System.out.println("Enter Menu Details");
		 			System.out.println("");
		 			System.out.println("Enter Itemid of the item");
		 			Itemid=sc.nextInt();
		 			System.out.println("Enter Price of the item");
		 			Price=sc.nextInt(); 
		 			System.out.println("Enter itemname of the item");
		 			Itemname=sc.next();
		 			System.out.println("Enter Type of the item");
		 			Type=sc.next();
		 			InsertMenuitem(Itemid,Price,Itemname,Type);
		 			break;
				 	case 6: BusinessGoal1();
		 				break;
				 	case 7: BusinessGoal2();
 					break;
				 	case 8: BusinessGoal3();
				             break;
				 	case 9: BusinessGoal4();
				 			break;
				 	case 10: BusinessGoal5();
				 			break;
                                        case 11:DisplayBranches();
                                                        break;
                                        case 12:System.out.println("Enter Branchid\n");
                                         Branchid=sc.nextInt();
                                         System.out.println("Enter Zipcode\n");
                                         Zipcode=sc.nextInt();
                                         UpdateRestaurant(Branchid,Zipcode);
                                         
				 }
			 }
		 }
		 catch(Exception ex)
		 {
			 throw ex;
		 }
		 finally 
		 {
			 sc.close();
		 }
	}
	/*Get connection*/
	public static Connection getConnection()
	{
	System.out.println("-------- Oracle JDBC Connection Testing ------");
	 
	try {

		Class.forName("oracle.jdbc.driver.OracleDriver");

	} catch (ClassNotFoundException e) {

		System.out.println("Where is your Oracle JDBC Driver?");
		e.printStackTrace();
		return null;

	}

	System.out.println("Oracle JDBC Driver Registered!");

	Connection connection = null;

	try {

        connection = DriverManager.getConnection("jdbc:oracle:thin:@acaddbprod-2.uta.edu:1523/pcse1p.data.uta.edu", "rxp6013", "Rohithpeta2409");
	} catch (SQLException e) {
		System.out.println("Connection Failed! Check output console");
		e.printStackTrace();
		return null;

	}
		return connection;
	}
	public static void  DisplayCustomers()
	{

		Connection connection=getConnection();
		if (connection != null) {
            System.out.println("Customer Details");
		} else {
			System.out.println("Connection Failed!!!");
		}
            try {
        	Statement stmt = connection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
                
               String query = "SELECT * FROM S22_S003_8_CUSTOMER"; 
                          
	       ResultSet rs = stmt.executeQuery(query);
                
	       System.out.println("CUSTOMERID  OREDERID	BRANCHID AGE RATING ITEMID TURNAROUNDTIME MISTAKES CHEF INCHARGE");
	       System.out.println("****************************************************************************************");
	       while (rs.next())
	       {
	         System.out.println(rs.getString("CUSTOMERID")+"    "+rs.getInt("ORDERID")+"    "+rs.getInt("BRANCHID")+"    "+rs.getInt("AGE")+"    "+rs.getInt("RATING")+"    "+rs.getInt("ITEMID")+"    "+rs.getInt("TURNAROUNDTIME")+"    "+rs.getString("CHEF")+"    "+rs.getString("INCHARGE"));
	       }
	       System.out.println("********************************************************************************************");
	       rs.close();
	       stmt.close();
               connection.close();
             }
             catch (SQLException e) {
 
			e.printStackTrace();
			return;
 
		}
	}
public static void  DisplayBranches()
	{

		Connection connection=getConnection();
		if (connection != null) {
            System.out.println("Customer Details");
		} else {
			System.out.println("Connection Failed!!!");
		}
            try {
        	Statement stmt = connection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
                
               String query = "SELECT * FROM S22_S003_8_RESTAURANT"; 
                          
	       ResultSet rs = stmt.executeQuery(query);
                
	       System.out.println("BRANCHID   EMAIL  BRANCHNAME  STREETNAME  ZIPCODE");
	       System.out.println("****************************************************************************************");
	       while (rs.next())
	       {
	         System.out.println(rs.getInt("BRANCHID")+"   "+rs.getString("EMAIL")+"    "+rs.getString("BRANCHNAME")+"    "+rs.getString("STREETNAME")+"    "+rs.getInt("ZIPCODE"));
	       }
	       System.out.println("********************************************************************************************");
	       rs.close();
	       stmt.close();
               connection.close();
             }
             catch (SQLException e) {
 
			e.printStackTrace();
			return;
 
		}
	}
    public static void  ListMenu()
	{

		Connection connection=getConnection();
		if (connection != null) {
           System.out.println("Menu Details");
		} else {
			System.out.println("Failed to make connection!");
		}
       try {
       	Statement stmt = connection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
           String query = "select * from S22_S003_8_MENU";           
	       ResultSet rs = stmt.executeQuery(query);
	       System.out.println("ITEMID  PRICE  ITEMNAME  TYPE");
	       System.out.println("********************************************************");
	       while (rs.next())
	       {
	         System.out.println(rs.getInt("ITEMID")+"        "+rs.getInt("PRICE")+"        "+rs.getString("ITEMNAME")+"                    "+rs.getString("Type"));
	       }
           System.out.println("****************************************************************************");
	       rs.close();
	       stmt.close();
           connection.close();
       }
       catch (SQLException e) {

			e.printStackTrace();
			return;

		}
	}
    public static void DeleteItem(String itemname)
	{
	
		try(Connection connection=getConnection()) {
        	Statement stmt = connection.createStatement();
            String query = "delete from s22_s003_8_MENU where ITEMNAME="+"'"+itemname+"'";           
            int rowsEffected= stmt.executeUpdate(query);
            if(rowsEffected>0)
            {
            	System.out.println("Menu item Deleted Successfully");
            }
            else
            {
            	System.out.println("Menu name is not valid");
            }
            System.out.println();
            System.out.println("****************************************************************************");
	        stmt.close();
            connection.close();
            ListMenu();
        }
        catch (SQLException e) {
 
			e.printStackTrace();
			return;
 
		}
	}
    public static void UpdateMenu(int itemid,int price)
	{
	
		try(Connection connection=getConnection()) {
        	Statement stmt = connection.createStatement();
            String query = "update S22_S003_8_MENU set PRICE="+price+" where ITEMID="+itemid+"";           
            int rowsEffected= stmt.executeUpdate(query);
            if(rowsEffected>0)
            {
            	System.out.println("Menu item Updated Successfully");
            }
            else
            {
            	System.out.println("Item is not updated,Please enter valid menu item");
            }
            System.out.println();
            System.out.println("***********************************************************");
	        stmt.close();
            connection.close();
        }
        catch (SQLException e) {
 
			e.printStackTrace();
			return;
 
		}
	}
    public static void UpdateRestaurant(int branchid,int zipcode)
	{
	
		try(Connection connection=getConnection()) {
        	Statement stmt = connection.createStatement();
            String query = "update S22_S003_8_RESTAURANT set ZIPCODE="+zipcode+" where BRANCHID="+branchid+"";           
            int rowsEffected= stmt.executeUpdate(query);
            if(rowsEffected>0)
            {
            	System.out.println("Zipcode Updated Successfully");
            }
            else
            {
            	System.out.println("Update Not Succesful");
            }
            System.out.println();
            System.out.println("***********************************************************");
	        stmt.close();
            connection.close();
        }
        catch (SQLException e) {
 
			e.printStackTrace();
			return;
 
		}
	}

	public static void InsertMenuitem(int Itemid,int Price,String Itemname,String Type)
	{
		
		try(Connection connection=getConnection()) {
        	Statement stmt = connection.createStatement();
            String query = "insert into S22_S003_8_MENU(ITEMID,PRICE,ITEMNAME,TYPE) values('"+Itemid+"',"
            		 +Price+",'"+Itemname+"','"+Type+"')";
            int rowsEffected=stmt.executeUpdate(query);
            if(rowsEffected>0)
            {
            	System.out.println("Menu item Inserted Successfully");
            }
            System.out.println("*********************************************************************");
	        stmt.close();
            connection.close();
        }
        catch (SQLException e) {
 
			e.printStackTrace();
			return;
 
		}
		
	}
	public static void BusinessGoal1()
	{
		Connection connection=getConnection();
		if (connection == null) {
			System.out.println("Failed to make connection!");
		}
        try {
        	Statement stmt = connection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
            String query = "		SELECT BRANCHID,C.CHEF,C.INCHARGE,SUM(TOTALCOST)"
            		+ " FROM S22_S003_8_CUSTOMER C"
            		+ " INNER JOIN"
            		+ " S22_S003_8_RECEIPT R"
            		+ " ON C.ORDERID=R.ORDERID"
            		+ " GROUP BY CUBE(BRANCHID,CHEF,INCHARGE)";           
	       ResultSet rs = stmt.executeQuery(query);
	       System.out.println("BRANCHID    CHEF    INCHARGE    TOTALCOST");
	       System.out.println("------------------------------------------------------------");
	       while (rs.next())
	       {
	         System.out.println(rs.getString("BRANCHID")+"		"+rs.getString("CHEF")+"	"+rs.getString("INCHARGE")+"		"+rs.getInt("SUM(TOTALCOST)"));
	       }
	       System.out.println("***************************************************************");
	       rs.close();
	       stmt.close();
            connection.close();
        }
        catch (SQLException e) {
 			e.printStackTrace();
			return;
 
		}
	}
	public static void BusinessGoal2()
	{
		Connection connection=getConnection();
		if (connection == null) {
			System.out.println("Failed to make connection!");
		}
        try {
        	Statement stmt = connection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
                String query = "SELECT R.BRANCHNAME,C.CHEF,C.INCHARGE,AVG(RATING) FROM"
            		+ " S22_S003_8_RESTAURANT R"
            		+ " INNER JOIN "
            		+ " S22_S003_8_CUSTOMER C"
            		+ " ON R.BRANCHID=C.BRANCHID"
            		+ " GROUP BY ROLLUP(R.BRANCHNAME,C.CHEF,C.INCHARGE)";           
	       ResultSet rs = stmt.executeQuery(query);
	       System.out.println("BranchName   Chef      Incharge        Rating");
	       System.out.println("------------------------------------------------------------");
	       while (rs.next())
	       {
	    	   
	         System.out.println(rs.getString("BRANCHNAME")+"    "+rs.getString("CHEF")+"    "+rs.getString("INCHARGE")+"    "+rs.getInt("AVG(RATING)"));
	    	   
	       }
	       System.out.println("*****************************************88");
	       rs.close();
	       stmt.close();
            connection.close();
        }
        catch (SQLException e) {
 			e.printStackTrace();
			return;
 
		}
	}
	public static void 	BusinessGoal3()
	{
		Connection connection=getConnection();
		if (connection == null) {
			System.out.println("Failed to make connection!");
		}
        try {
        	Statement stmt = connection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
            String query = " SELECT NAME,SALARY,GENDER,COUNT(GENDER)"
                            +" OVER (PARTITION BY GENDER) AS GENDERTOTAL,AVG(SALARY)"
                            +" OVER (PARTITION BY GENDER) AS AVGSALARY,MIN(SALARY)"
                            +" OVER (PARTITION BY GENDER) AS MINSALARY,MAX(SALARY)"
                            +" OVER (PARTITION BY GENDER) AS MAXSALARY FROM S22_S003_8_EMPLOYEE";           
	       ResultSet rs = stmt.executeQuery(query);
	       System.out.println("NAME     SALARY   GENDER   GENDERTOTAL    AVERAGESALARY    MINSALARY     MAXSALARY ");
	       System.out.println("------------------------------------------------------------");
	       while (rs.next())
	       {
	         System.out.println(rs.getString("NAME")+"    "+rs.getInt("SALARY")+"    "+rs.getString("GENDER")+"    "+rs.getInt("GENDERTOTAL")+"    "+rs.getInt("AVGSALARY")+"    "+rs.getInt("MINSALARY")+"    "+rs.getInt("MAXSALARY"));
	       }
	       System.out.println("--------------------------------------------------------");
	       rs.close();
	       stmt.close();
            connection.close();
        }
        catch (SQLException e) { 
			e.printStackTrace();
			return;
 
		}
	}
	public static void 	BusinessGoal4()
	{
		Connection connection=getConnection();
		if (connection == null) {
			System.out.println("Failed to make connection!");
		}
        try {
        	Statement stmt = connection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
            String query ="SELECT M.ITEMNAME,R.TOTALCOST FROM"
                          +" S22_S003_8_RECEIPT R"
                          +" INNER JOIN"
                          + " S22_S003_8_MENU M"
                           +" ON R.ITEMID=M.ITEMID"
                           + " ORDER BY R.TOTALCOST DESC FETCH FIRST 10 ROWS ONLY" ;           
	       ResultSet rs = stmt.executeQuery(query);
	       System.out.println("ITEMNAME  TOTALCOST ");
	       System.out.println("------------------------------------------------------------");
	       while (rs.next())
	       {
	         System.out.println(rs.getString("ITEMNAME")+"    "+rs.getInt("TOTALCOST"));
	       }
	       System.out.println("*******************************************************************");
	       rs.close();
	       stmt.close();
            connection.close();
        }
        catch (SQLException e) {
 			e.printStackTrace();
			return;
 
		}
	}
	public static void  BusinessGoal5()
	{
		Connection connection=getConnection();
		if (connection == null) {
			System.out.println("Failed to make connection!");
		}
        try {
        	Statement stmt = connection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
            String query = "SELECT BRANCHNAME,AVG(RATING) FROM"
                            +" S22_S003_8_RESTAURANT R"
                            +" INNER JOIN S22_S003_8_CUSTOMER C"
                            +" ON R.BRANCHID=C.BRANCHID"
                            +" GROUP BY BRANCHNAME"
                            +" HAVING AVG(RATING) IN"
                            +" (SELECT MAX(AVG(RATING)) FROM"
                            +" S22_S003_8_RESTAURANT R"
                            +" INNER JOIN"
                             +" S22_S003_8_CUSTOMER C"
                             +" ON R.BRANCHID=C.BRANCHID"
                             +" GROUP BY BRANCHNAME)";          
	       ResultSet rs = stmt.executeQuery(query);
	       System.out.println("BRANCHNAME   RATING ");
	       System.out.println("------------------------------------------------------------");
	       while (rs.next())
	       {	    	   
	         System.out.println(rs.getString("BRANCHNAME")+"    "+rs.getInt("AVG(RATING)"));
	       }
	       System.out.println("--------------------------------------------------------");
	       rs.close();
	       stmt.close();
            connection.close();
        }
        catch (SQLException e) { 
			e.printStackTrace();
			return;
 
		}
	}


}
