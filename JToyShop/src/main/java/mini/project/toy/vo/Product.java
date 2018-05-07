package mini.project.toy.vo;

public class Product {
	private String pcode;
	private String pname;
	private int num;
	private int price;
	private String category;
	private int pcount; 
	private String inputdate;
	private String originalfile;
	private String savedfile;
	
	public Product() {	}

	public Product(String pcode, String pname, int num, int price, String category, int pcount, String inputdate,
			String originalfile, String savedfile) {
		this.pcode = pcode;
		this.pname = pname;
		this.num = num;
		this.price = price;
		this.category = category;
		this.pcount = pcount;
		this.inputdate = inputdate;
		this.originalfile = originalfile;
		this.savedfile = savedfile;
	}

	public String getPcode() {
		return pcode;
	}

	public void setPcode(String pcode) {
		this.pcode = pcode;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getPcount() {
		return pcount;
	}

	public void setPcount(int pcount) {
		this.pcount = pcount;
	}

	public String getInputdate() {
		return inputdate;
	}

	public void setInputdate(String inputdate) {
		this.inputdate = inputdate;
	}

	public String getOriginalfile() {
		return originalfile;
	}

	public void setOriginalfile(String originalfile) {
		this.originalfile = originalfile;
	}

	public String getSavedfile() {
		return savedfile;
	}

	public void setSavedfile(String savedfile) {
		this.savedfile = savedfile;
	}

	@Override
	public String toString() {
		return "Product [pcode=" + pcode + ", pname=" + pname + ", num=" + num + ", price=" + price + ", category="
				+ category + ", pcount=" + pcount + ", inputdate=" + inputdate + ", originalfile=" + originalfile
				+ ", savedfile=" + savedfile + "]";
	}
	
	
	
	

}
