package mini.project.toy.vo;

public class Reply {
	private int rno;
	private String pcode;
	private String id;
	private String context;
	private String inputdate;
	
	public Reply() {	}

	public Reply(int rno, String pcode, String id, String context, String inputdate) {
		this.rno = rno;
		this.pcode = pcode;
		this.id = id;
		this.context = context;
		this.inputdate = inputdate;
	}

	public Reply(String pcode, String id, String context) {
		this.pcode = pcode;
		this.id = id;
		this.context = context;
	}

	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}

	public String getPcode() {
		return pcode;
	}

	public void setPcode(String pcode) {
		this.pcode = pcode;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getContext() {
		return context;
	}

	public void setContext(String context) {
		this.context = context;
	}

	public String getInputdate() {
		return inputdate;
	}

	public void setInputdate(String inputdate) {
		this.inputdate = inputdate;
	}

	@Override
	public String toString() {
		return "Reply [rno=" + rno + ", pcode=" + pcode + ", id=" + id + ", context=" + context
				+ ", inputdate=" + inputdate + "]";
	}
	
	
	
	
	
}


