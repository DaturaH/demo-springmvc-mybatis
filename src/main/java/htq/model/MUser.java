package htq.model;

public class MUser {
    private String id;

    private String name;

    private Integer age;

    private String address;

    private String password;
    
	private String question;
    
    private String reallyName ;
    
    private String result;
    
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }
    
    public String getPassword(){
    	return password;
    }
    
    public void setPassword(String password){
    	this.password = password == null ? null : password.trim();
    }
    
    public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question == null ? null : question.trim();
	}

	public String getReallyName() {
		return reallyName;
	}

	public void setReallyName(String reallyName) {
		this.reallyName = reallyName == null ? null : reallyName.trim();
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result == null ? null : result.trim();
	}

}