package ro.netrom.summercamp.summercamp2017.dto;

public class SaveCommentDTO {

	private String name;
	private String content;
	
	public SaveCommentDTO() {
		
	}
	public SaveCommentDTO(String name, String content) {
		super();
		this.name = name;
		this.content = content;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
}
