package dto;

public class NoticeDTO {
    private int n_id;
    private String n_title;
    private String n_content;
    private String n_regdate;
    private int n_views;

    public NoticeDTO() {}
    
    public NoticeDTO(int id, String title, String content, String regdate, int views) {
        this.n_id = id;
        this.n_title = title;
        this.n_content = content;
        this.n_regdate = regdate;
        this.n_views = views;
    }

	public int getN_id() {
		return n_id;
	}

	public void setN_id(int n_id) {
		this.n_id = n_id;
	}

	public String getN_title() {
		return n_title;
	}

	public void setN_title(String n_title) {
		this.n_title = n_title;
	}

	public String getN_content() {
		return n_content;
	}

	public void setN_content(String n_content) {
		this.n_content = n_content;
	}

	public String getN_regdate() {
		return n_regdate;
	}

	public void setN_regdate(String n_regdate) {
		this.n_regdate = n_regdate;
	}

	public int getN_views() {
		return n_views;
	}

	public void setN_views(int n_views) {
		this.n_views = n_views;
	}

	@Override
	public String toString() {
		return "NoticeDTO [n_id=" + n_id + ", n_title=" + n_title + ", n_content=" + n_content + ", n_regdate="
				+ n_regdate + ", n_views=" + n_views + "]";
	}

 
    
}
