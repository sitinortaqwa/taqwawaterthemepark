package cart;

public class cartItem {
	private String roomName;
	private int night;
	private double price;
	private int roomBook;
	private double total;
	
	public String getRoom() {
		return roomName;
	}
	
	public void setRoom(String roomName) {
		this.roomName = roomName;
	}
	public int getNight() {
		return roomBook;
	}
	
	public void setNight(int night) {
		this.night = night;
	}

	public double getPrice() {
		return price;
	}
	
	public void setPrice(double price) {
		this.price = price;
	}
	
	public int getBook() {
		return roomBook;
	}
	
	public void setBook(int roomBook) {
		this.roomBook = roomBook;
	}
	public double getTotal() {
		return total;
	}
	
	public void setTotal(double total) {
		this.total = total;
	}
	

}

