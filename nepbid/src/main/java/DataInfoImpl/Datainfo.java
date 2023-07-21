package DataInfoImpl;


import java.io.File;
import java.net.PasswordAuthentication;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.ContextNotEmptyException;

import com.biddingsystem.model.Bid;
import com.biddingsystem.model.Bidder;
import com.biddingsystem.model.Products;
import com.biddingsystem.model.Transaction;
import com.biddingsystem.utill.DBConnect;
import com.mysql.cj.exceptions.RSAException;

public class Datainfo {

	 public List<Transaction> getAllTransactions() {
	        Connection connection = null;
	        List<Transaction> transactions = new ArrayList<>();

	        try {
	            connection = DBConnect.getConnection();
	            String sql="SELECT * FROM sellers";

	            PreparedStatement statement = connection.prepareStatement(sql);
	            ResultSet rs = statement.executeQuery();

	            while (rs.next()) {
	                Transaction transaction = new Transaction(); 	
	                		transaction.setSellerid(rs.getInt("Seller_id"));
	                		transaction.setSname(rs.getString("sname"));
	                		transaction.setScontact(rs.getString("scontact"));
	                	    transaction.setSaddress(rs.getString("saddress"));
	                		transaction.setSemail(rs.getString("semail"));
	                		transaction.setSpassword(rs.getString("spassword"));
	                		
	                transactions.add(transaction);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        } finally {
	            try {
	                if (connection != null) {
	                    connection.close();
	                }
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }

	        return transactions;
	    }
	 
	 
	 
	 public List<Bidder> getAllBidders() {
	        Connection connection = null;
	        List<Bidder> bidders = new ArrayList<>();

	        try {
	            connection = DBConnect.getConnection();
	            String sql="SELECT Bidderid,name,email,contact FROM Bidder";

	            PreparedStatement statement = connection.prepareStatement(sql);
	            ResultSet rs = statement.executeQuery();

	            while (rs.next()) {
	            	Bidder bidder = new Bidder();
	            	bidder.setBidderid(rs.getInt("Bidderid"));
	            	bidder.setName(rs.getString("name"));
	            	bidder.setEmail(rs.getString("email"));
	            	bidder.setContact(rs.getInt("contact"));
	                
	            	bidders.add(bidder);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        } finally {
	            try {
	                if (connection != null) {
	                    connection.close();
	                }
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }

	        return bidders;
	    }
	 
	 
	 // extract the image from the database for products.
	 

	 
	 public List<Products> getAllProducts(){
		 List<Products> products = new ArrayList<>();
		 Connection connection = null;
		 String sql = "select productid,productname,category,starting_bp,description,image from newproduct";
		 try {
			 connection = DBConnect.getConnection();
			 
			 PreparedStatement preparedStatement = connection.prepareStatement(sql);
			 ResultSet resultSet = preparedStatement.executeQuery();
			 
			 while(resultSet.next()) {
				 Products product = new Products();
				 product.setProductid(resultSet.getInt("productid"));
				 product.setProductname(resultSet.getString("productname"));			
				 product.setProductcategory(resultSet.getString("category"));
				 product.setStarting_bp(resultSet.getString("starting_bp"));
				 product.setProductdescription(resultSet.getString("description"));
				 product.setImage("assets"+File.separator+"productimages"+File.separator+resultSet.getString("image"));
				 products.add(product);
				 
			 }
		 }
		 catch ( Exception e ) {
			// TODO: handle exception
		}
		 
		 finally {
	            try {
	                if (connection != null) {
	                    connection.close();
	                }
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
		 
		 return products;
		 
	 }
	 
	 
	 
	 // update password
	 public boolean match(String pass , String pass2) {
		return pass.equals(pass2); 
	 }
	 
	 // fetch password for admin
	 public String fetchpassword(int id) {
		 String pass="";
		 
		 try {
			Connection connection = DBConnect.getConnection();
			String sqlString = "select Adminpassword from admin where id=?";
			PreparedStatement preparedStatement = connection.prepareStatement(sqlString);
			
			preparedStatement.setInt(1, id);
			
			ResultSet resultSet =  preparedStatement.executeQuery();
			while(resultSet.next()) {
				pass=resultSet.getString("Adminpassword");
			}
			
		} catch (SQLException e) {
			// TODO: handle exception
		}
		 
		 return pass;
	 }
	 
	 // update admin password
	 public void Updatepass(String s,int id) {
		 String p = "update admin set Adminpassword='"+s+"' where id ='"+id+"'";
		 
		 try {
			 Connection connection = DBConnect.getConnection();
			 Statement stmt = connection.createStatement();
			 int r = stmt.executeUpdate(p);
			
		} catch (SQLException e) {
			// TODO: handle exception
		}

	 }
	 
	 
	// fetch data from tables
	 public Products getAllProductsDetails(int id){
		 Products product = new Products();
		 Connection connection = null;
		 String sql = "select * from newproduct where productid='"+id+"'";
		 try {
			 connection = DBConnect.getConnection();
			 
			 PreparedStatement preparedStatement = connection.prepareStatement(sql);
			 ResultSet resultSet = preparedStatement.executeQuery();
			 
			 while(resultSet.next()) {
				 product.setProductid(resultSet.getInt("productid"));
				 product.setProductname(resultSet.getString("productname"));			
				 product.setProductcategory(resultSet.getString("category"));
				 product.setStarting_bp(resultSet.getString("starting_bp"));
				 product.setBidtime(resultSet.getString("bidtime"));
				 product.setProductdescription(resultSet.getString("description"));
				 product.setImage("assets"+File.separator+"productimages"+File.separator+resultSet.getString("image"));

				 
			 }
		 }
		 catch ( Exception e ) {
			// TODO: handle exception
		}
		 
		 finally {
	            try {
	                if (connection != null) {
	                    connection.close();
	                }
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
		 
		 
		 return product;
	 }
	 
	 // fetch the data from the bids tables
	 public List<Bid> getAllBids(){
		 List<Bid> tBids = new ArrayList<>();
		 String string = "select productid,bidderid,bidamount,status from bids where status='"+"pending"+"'";
		 
		 try {
			Connection connection =DBConnect.getConnection();
			PreparedStatement preparedStatement = connection.prepareStatement(string);
			
			ResultSet resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				Bid bid = new Bid();
				int id =resultSet.getInt("productid");
				bid.setPid(id);
				bid.setBid(resultSet.getInt("bidderid"));
				bid.setBidamount(resultSet.getInt("bidamount"));
				bid.setStatus(resultSet.getString("status"));
				bid.setSid(seller(id));
				tBids.add(bid);
			}
			
		} catch (SQLException e) {
			// TODO: handle exception
		}
		 
		 
		 return tBids;
	 }
	 
	 //fetch selllerid	 
	public int seller(int pid) {
		int sid=0;
		
		String string = "select sellerid from newproduct where productid=?";
		
		try {
			Connection connection = DBConnect.getConnection();
			PreparedStatement preparedStatement = connection.prepareStatement(string);
			preparedStatement.setInt(1, pid);
			
			ResultSet resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				sid = resultSet.getInt("sellerid");
			}
			
		} catch (SQLException e) {
			// TODO: handle exception
		}
		
		return sid;
		
	}
	
	
	//fetch amount from product id
	public boolean amount(int amt,int pid) {
		boolean istrue = false;
		String string = "select bidamount from bids where productid =?";
		try {
			Connection connection = DBConnect.getConnection();
			PreparedStatement preparedStatement= connection.prepareStatement(string);
			
			preparedStatement.setInt(1, pid);
			
			ResultSet resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				int a = resultSet.getInt("bidamount");
				if(amt >= a) {
					istrue = true;
				}
			}
		} catch (SQLException e) {
			// TODO: handle exception
		}
		
		return istrue;
	}
	
	
	//find product
	public boolean findid(int id) {
		boolean istrue = false;
		String string = "select * from bids where productid =?";
		try {
			Connection connection = DBConnect.getConnection();
			PreparedStatement preparedStatement= connection.prepareStatement(string);
			
			preparedStatement.setInt(1, id);
			
			ResultSet resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				istrue = true;
			}
		} catch (SQLException e) {
			// TODO: handle exception
		}
		
		return istrue;
	}
	
	
	
	// after allotment
	public boolean allotment(int id) {
		boolean istrue = false;
		String string = "update bids set status=? where productid =?";
		try {
			Connection connection = DBConnect.getConnection();
			PreparedStatement preparedStatement= connection.prepareStatement(string);
			
			preparedStatement.setString(1, "alloted");
			preparedStatement.setInt(2, id);
			
			int  rew = preparedStatement.executeUpdate();
			
			if(rew == 1) {
				istrue = true;
			}
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return istrue;
	}
	
	
	//reverse
	public boolean noallotment(int id) {
		boolean istrue = false;
		String string = "update bids set status=? where productid =?";
		try {
			Connection connection = DBConnect.getConnection();
			PreparedStatement preparedStatement= connection.prepareStatement(string);
			
			preparedStatement.setString(1, "notalloted");
			preparedStatement.setInt(2, id);
			
			int  rew = preparedStatement.executeUpdate();
			
			if(rew == 1) {
				istrue = true;
			}
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return istrue;
	}
	
	
	//extraact status
	public String status(int id) {
		String s ="";
		String string = "select status from bids where productid="+id+"";
		try {
			Connection connection = DBConnect.getConnection();
			PreparedStatement preparedStatement= connection.prepareStatement(string);
			
		     ResultSet resultSet= preparedStatement.executeQuery();
			
			if(resultSet.next()) {
				s = resultSet.getString("status");
			}
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return s;
	}
	
	public List<Bid> getAllBidsStatus(){
		
		 List<Bid> tBids = new ArrayList<>();
		 String string = "select productid,bidderid,bidamount,status from bids";
		 
		 try {
			Connection connection =DBConnect.getConnection();
			PreparedStatement preparedStatement = connection.prepareStatement(string);
			
			ResultSet resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				Bid bid = new Bid();
				int id =resultSet.getInt("productid");
				bid.setPid(id);
				bid.setBid(resultSet.getInt("bidderid"));
				bid.setBidamount(resultSet.getInt("bidamount"));
				bid.setStatus(resultSet.getString("status"));
				bid.setSid(seller(id));
				tBids.add(bid);
			}
			
		} catch (SQLException e) {
			// TODO: handle exception
		}
		 
		 
		 return tBids;
	}
	
	
	 
	 
	 
}
