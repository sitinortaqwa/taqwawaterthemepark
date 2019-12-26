package cart;

import java.util.ArrayList;

public class cart {
	private ArrayList allCartItems = new ArrayList();
	private double Total;
	
	public int getItemCount() {
		return allCartItems.size();
	}
	
	//delete cart
	public void deleteCartItem( String itemIndex) {
		int item = 0;
		try {
			item = Integer.parseInt(itemIndex);
			allCartItems.remove(item - 1);
			calculateTotal();
		}
		catch(NumberFormatException nfe) {
			System.out.println("Error while removing cart item: "+nfe.getMessage());
			nfe.printStackTrace();
		}
	}
	
	//update cart
	public void updateCartItem(String itemIndex, String roomBook) {
		double total = 0.0;
		double price = 0.0;
		int Quantity = 0;
		int item = 0;
		cartItem cartitm = null;
		try {
			item = Integer.parseInt(itemIndex);
			Quantity = Integer.parseInt(roomBook);
			if(Quantity>0) {
				cartitm = (cartItem)allCartItems.get(item-1);
				price = cartitm.getPrice();
				total = price*Quantity;
				cartitm.setBook(Quantity);
				cartitm.setTotal(total);
				calculateTotal();
				
			}
		}
		catch (NumberFormatException nfe) {
			System.out.println("Error while updating cart: "+nfe.getMessage());
			nfe.printStackTrace();
		}
	}
	
	//add cart
	public void addCartItem(String roomName, String roomBook, String night, String price, String total) {
		double totall = 0.0;
		double pricee = 0.0;
		int Quantity = 0;
		cartItem cartitm = new cartItem();
		try {
			pricee = Double.parseDouble(price);
			Quantity = Integer.parseInt(roomBook);
			int N = Integer.parseInt(night);
			if(Quantity>0) {
				totall = pricee*Quantity;
				cartitm.setRoom(roomName);
				cartitm.setBook(Quantity);
				cartitm.setNight(N);
				cartitm.setPrice(pricee);
				cartitm.setTotal(totall);
				allCartItems.add(cartitm);
				calculateTotal();
			}
		}
		catch (NumberFormatException nfe) {
			System.out.println("Error while parsing from String to primitive types: "+nfe.getMessage());
			nfe.printStackTrace();
		}
	}
	
	public void addCartItem(cartItem cartitm) {
		  allCartItems.add(cartitm);
		 }
		  
		 public cartItem getCartItem(int itemIndex) {
		  cartItem cartitm = null;
		  if(allCartItems.size()>itemIndex) {
			  cartitm = (cartItem) allCartItems.get(itemIndex);
		  }
		  return cartitm;
		 }
		  
		 public ArrayList getCartItems() {
		  return allCartItems;
		 }
		 public void setCartItems(ArrayList allCartItems) {
		  this.allCartItems = allCartItems;
		 }
		 public double getTotal() {
		  return Total;
		 }
		 public void setTotal(double total) {
		  this.Total = total;
		 }
		  
		 protected void calculateTotal() {
		  double Total = 0;
		  for(int counter=0;counter<allCartItems.size();counter++) {
		   cartItem cartitm = (cartItem) allCartItems.get(counter);
		   Total+=cartitm.getTotal();
		    
		  }
		  setTotal(Total);
		 }

}
