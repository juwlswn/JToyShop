package mini.project.toy.vo;

public class Cart {
	private int cno;
	private String pname;
	private String  id;
	private int numcount;
	private int price;
	private int totalprice;
	private String inputdate;
	private String pcode;
	
	public Cart() {	}

	public Cart(int cno, String pname, String id, int numcount, int price, int totalprice, String inputdate, String pcode) {
		this.cno = cno;
		this.pname = pname;
		this.id = id;
		this.numcount = numcount;
		this.price = price;
		this.totalprice = totalprice;
		this.inputdate = inputdate;
		this.pcode = pcode;
	}

	public int getCno() {
		return cno;
	}

	public void setCno(int cno) {
		this.cno = cno;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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
	
	public String getPcode() {
		return pcode;
	}

	public void setPcode(String pcode) {
		this.pcode = pcode;
	}

	@Override
	public String toString() {
		return "Cart [cno=" + cno + ", pname=" + pname + ", id=" + id + ", numcount=" + numcount + ", price=" + price
				+ ", totalprice=" + totalprice + ", inputdate=" + inputdate + ", pcode=" + pcode + "]";
	}

	
	
	
}
