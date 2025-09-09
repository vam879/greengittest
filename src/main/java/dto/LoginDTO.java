package dto;

public class LoginDTO {
    private int us_id;
    private String us_pass;

    public LoginDTO() {}

    public LoginDTO(int us_id, String us_pass) {
    	this.us_id = us_id;  
        this.us_pass = us_pass;
    }

    public int getUs_id() {
        return us_id;
    }

    public void setId(int us_id) {
        this.us_id = us_id;
    }

    public  String getUs_pass() {
        return us_pass;
    }

    public void setUs_pass(String us_pass) {
        this.us_pass = us_pass;
    }
}