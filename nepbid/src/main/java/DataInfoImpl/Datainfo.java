package DataInfoImpl;


import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.biddingsystem.model.Bid;
import com.biddingsystem.model.Bidder;
import com.biddingsystem.model.Products;
import com.biddingsystem.model.Transaction;
import com.biddingsystem.utill.DBConnect;

public class Datainfo {

	public static Connection connection= null;
	public static PreparedStatement  statement = null;
	
	 public List<Transaction> getAllTransactions() {
	        List<Transaction> transactions = new ArrayList<>();

	        try {
	            connection = DBConnect.getConnection();
	            String sql="SELECT * FROM sellers";

	            statement = connection.prepareStatement(sql);
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
	                connection.close();
	                statement.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }

	        return transactions;
	    }
	 
	 
	 
	 public List<Bidder> getAllBidders() {
	        List<Bidder> bidders = new ArrayList<>();

	        try {
	            connection = DBConnect.getConnection();
	            String sql="SELECT Bidderid,name,email,contact FROM Bidder";
	            statement = connection.prepareStatement(sql);
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
	                connection.close();
	                statement.close();
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
			 
			statement = connection.prepareStatement(sql);
			 ResultSet resultSet = statement.executeQuery();
			 
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
	                connection.close();
	                statement.close();
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
	 public String fetchpassword(String id) {
		 String pass="";
		 
		 try {
			connection = DBConnect.getConnection();
			String sqlString = "select Adminpassword from admin where Adminusername=?";
			statement = connection.prepareStatement(sqlString);
			
			statement.setString(1, id);
			
			ResultSet resultSet =  statement.executeQuery();
			while(resultSet.next()) {
				pass=resultSet.getString("Adminpassword");
			}
			
		} catch (SQLException e) {
			// TODO: handle exception
		}
		 
		 return pass;
	 }
	 
	 // update admin password
	 public void Updatepass(String s,String id) {
		 String p = "update admin set Adminpassword='"+s+"' where Adminusername ='"+id+"'";
		 
		 try {
			 connection = DBConnect.getConnection();
			 Statement stmt = connection.createStatement();
			 int r = stmt.executeUpdate(p);
			
		} catch (SQLException e) {
			// TODO: handle exception
		}
		 finally {
	            try {
	                connection.close();
	                statement.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }

	 }
	 
	 
	// fetch data from tables
	 public Products getAllProductsDetails(int id){
		 Products product = new Products();
		 String sql = "select * from newproduct where productid='"+id+"'";
		 try {
			 connection = DBConnect.getConnection();
			 
			 statement = connection.prepareStatement(sql);
			 ResultSet resultSet = statement.executeQuery();
			 
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
	                connection.close();
	                statement.close();
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
			connection =DBConnect.getConnection();
			statement = connection.prepareStatement(string);
			
			ResultSet resultSet = statement.executeQuery();
			
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
		 
		 finally {
	            try {
	                connection.close();
	                statement.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
		 
		 
		 
		 return tBids;
	 }
	 
	 //fetch seller id	 
	public int seller(int pid) {
		int sid=0;
		
		String string = "select sellerid from newproduct where productid=?";
		
		try {
			connection = DBConnect.getConnection();
			statement = connection.prepareStatement(string);
			statement.setInt(1, pid);
			
			ResultSet resultSet = statement.executeQuery();
			
			while(resultSet.next()) {
				sid = resultSet.getInt("sellerid");
			}
			
		} catch (SQLException e) {
			// TODO: handle exception
		}
		
		finally {
            try {
                connection.close();
                statement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
		
		return sid;
		
	}
	
	
	//fetch amount from product id
	public boolean amount(int amt,int pid) {
		boolean istrue = false;
		String string = "select bidamount from bids where productid =?";
		try {
			 connection = DBConnect.getConnection();
			statement= connection.prepareStatement(string);
			
			statement.setInt(1, pid);
			
			ResultSet resultSet = statement.executeQuery();
			
			while(resultSet.next()) {
				int a = resultSet.getInt("bidamount");
				if(amt >= a) {
					istrue = true;
				}
			}
		} catch (SQLException e) {
			// TODO: handle exception
		}
		
		finally {
            try {
                connection.close();
                statement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
		
		return istrue;
	}
	
	
	//find product
	public boolean findid(int id) {
		boolean istrue = false;
		String string = "select * from bids where productid =?";
		try {
			connection = DBConnect.getConnection();
			statement= connection.prepareStatement(string);
			
			statement.setInt(1, id);
			
			ResultSet resultSet = statement.executeQuery();
			
			while(resultSet.next()) {
				istrue = true;
			}
		} catch (SQLException e) {
			// TODO: handle exception
		}
		finally {
            try {
                connection.close();
                statement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
		
		return istrue;
	}
	
	
	
	// after allotment
	public boolean allotment(int id) {
		boolean istrue = false;
		String string = "update bids set status=? where productid =?";
		try {
			connection = DBConnect.getConnection();
			statement= connection.prepareStatement(string);
			
			statement.setString(1, "alloted");
			statement.setInt(2, id);
			
			int  rew = statement.executeUpdate();
			
			if(rew == 1) {
				istrue = true;
			}
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		finally {
            try {
                connection.close();
                statement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
		
		return istrue;
	}
	
	
	//reverse
	public boolean noallotment(int id) {
		boolean istrue = false;
		String string = "update bids set status=? where productid =?";
		try {
			connection = DBConnect.getConnection();
			statement= connection.prepareStatement(string);
			
			statement.setString(1, "notalloted");
			statement.setInt(2, id);
			
			int  rew = statement.executeUpdate();
			
			if(rew == 1) {
				istrue = true;
			}
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		finally {
            try {
                connection.close();
                statement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
		
		return istrue;
	}
	
	
	//extract status
	public String status(int id) {
		String s ="";
		String string = "select status from bids where productid="+id+"";
		try {
			connection = DBConnect.getConnection();
			statement= connection.prepareStatement(string);
			
		     ResultSet resultSet= statement.executeQuery();
			
			if(resultSet.next()) {
				s = resultSet.getString("status");
			}
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		finally {
            try {
                connection.close();
                statement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
		
		return s;
	}
	
	public List<Bid> getAllBidsStatus(){
		
		 List<Bid> tBids = new ArrayList<>();
		 String string = "select productid,bidderid,bidamount,status from bids";
		 
		 try {
			connection =DBConnect.getConnection();
			statement = connection.prepareStatement(string);
			
			ResultSet resultSet = statement.executeQuery();
			
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
		 
		 finally {
	            try {
	                connection.close();
	                statement.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
		 
		 
		 return tBids;
	}
	
	
	
	
	public Products topProducts(){ 
		Products product = new Products();
		String string =" select * from newproduct where productid = (select productid from bids b1 where 3-1 = (select count(Distinct(b2.bidamount)) from bids b2 where b2.bidamount > b1.bidamount))";
		
		
		try {
			connection = DBConnect.getConnection();
			statement = connection.prepareStatement(string);
			
			ResultSet resultSet = statement.executeQuery();
			
			while (resultSet.next()) {
				
				product.setProductid(resultSet.getInt("productid"));
				 product.setProductname(resultSet.getString("productname"));			
				 product.setProductcategory(resultSet.getString("category"));
				 product.setStarting_bp(resultSet.getString("starting_bp"));
				 product.setBidtime(resultSet.getString("bidtime"));
				 product.setProductdescription(resultSet.getString("description"));
				 product.setImage("assets"+File.separator+"productimages"+File.separator+resultSet.getString("image"));
				 
				 
				
			}
			
		} catch (SQLException e) {
			// TODO: handle exception
		}
		finally {
            try {
                connection.close();
                statement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
		
		return product;
	} 
	
	
	// fetch the number of product bidder and sellers
	
	public int fetchproduct() {
		int count = 0;
		
		String query = "select count(*) from newproduct";
		
		try {
			connection = DBConnect.getConnection();
			statement = connection.prepareStatement(query);
			ResultSet resultSet = statement.executeQuery();
			
			while(resultSet.next()) {
				count = resultSet.getInt(1);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		finally {
            try {
                connection.close();
                statement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
		
		
		return count;
	}
	
	public int fetchseller() {
		int count = 0;
		
		String query = "select count(*) from sellers";
		
		try {
			connection = DBConnect.getConnection();
			statement = connection.prepareStatement(query);
			ResultSet resultSet = statement.executeQuery();
			
			while(resultSet.next()) {
				count = resultSet.getInt(1);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		finally {
            try {
                connection.close();
                statement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
		
		
		return count;
	}
		
	
	public int fetchBidder() {
		int count = 0;
		
		String query = "select count(*) from Bidder";
		
		try {
			connection = DBConnect.getConnection();
			statement = connection.prepareStatement(query);
			ResultSet resultSet = statement.executeQuery();
			
			while(resultSet.next()) {
				count = resultSet.getInt(1);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		finally {
            try {
                connection.close();
                statement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
		
		
		return count;
	}


	
	// fetch sellers password

	public String fetchSellerpassword(int parseInt) {
		String pass="";
		
		String query = "select spassword from sellers where Seller_id=?";
		try {
			connection = DBConnect.getConnection();
			statement = connection.prepareStatement(query);
			
			statement.setInt(1,parseInt);
			ResultSet resultSet = statement.executeQuery();
			
			while(resultSet.next()) {
				pass = resultSet.getString(1);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		finally {
            try {
                connection.close();
                statement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
		
		return pass;
	}


	// update the sellers password
	public void UpdateSellerpass(String newpassword, String id) {
      String p = "update sellers set spassword ='"+newpassword+"' where Seller_id='"+Integer.parseInt(id)+"'";
		 
		 try {
			 connection = DBConnect.getConnection();
			 Statement stmt = connection.createStatement();
			 
			 int r = stmt.executeUpdate(p);
			
		} catch (SQLException e) {
			// TODO: handle exception
		}
		 finally {
	            try {
	                connection.close();
	                statement.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	}
	
	
	// fetch seller name
	public String sellername(int id) {
		String name="";
		String query= "select sname from sellers where Seller_id=?";
		 try {
			 connection = DBConnect.getConnection();
				statement = connection.prepareStatement(query);
				
				statement.setInt(1,id);
				ResultSet resultSet = statement.executeQuery();
				
				while(resultSet.next()) {
					name = resultSet.getString(1);
				}
			
		} catch (SQLException e) {
			// TODO: handle exception
		}
		 finally {
	            try {
	                connection.close();
	                statement.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
		
		
		return name;
	}
	
		
	
	 
}
