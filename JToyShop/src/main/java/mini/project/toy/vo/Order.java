package mini.project.toy.vo;

public class Order {
	private String ono;
	private String id;
	private String phone;
	private String address;
	private String pname;
	private int numcount;
	private int price;
	private int totalprice;
	private String type;
	private String inputdate;
	private String pcode;
	
	public Order() {	}

	public Order(String ono, String id, String phone, String address, String pname, int numcount, int price,
			int totalprice, String inputdate, String type, String pcode) {
		this.ono = ono;
		this.id = id;
		this.phone = phone;
		this.address = address;
		this.pname = pname;
		this.numcount = numcount;
		this.price = price;
		this.totalprice = totalprice;
		this.inputdate = inputdate;
		this.type = type;
		this.pcode = pcode;
	}

	public String getOno() {
		return ono;
	}

	public void setOno(String ono) {
		this.ono = ono;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public int getNumcount() {
		return numcount;
	}

	public void setNumcount(int numcount) {
		this.numcount = numcount;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getTotalprice() {
		return totalprice;
	}

	public void setTotalprice(int totalprice) {
		this.totalprice = totalprice;
	}

	public String getInputdate() {
		return inputdate;
	}

	public void setInputdate(String inputdate) {
		this.inputdate = inputdate;
	}
	
	
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	
	
	public String getPcode() {
		return pcode;
	}

	public void setPcode(String pcode) {
		this.pcode = pcode;
	}

	@Override
	public String toString() {
		return "Order [ono=" + ono + ", id=" + id + ", phone=" + phone + ", address=" + address + ", pname=" + pname
				+ ", numcount=" + numcount + ", price=" + price + ", totalprice=" + totalprice + ", type=" + type
				+ ", inputdate=" + inputdate + ", pcode=" + pcode + "]";
	}

	

	
	
	
	
	
	
	
	
}
