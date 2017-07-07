package ro.netrom.summercamp.summercamp2017.dto;

import java.util.Date;
import java.util.List;



import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class CommentDTO {

	private Integer id;
	private String content;
	private String name;
	private String parent;
	private Integer announcementId;
	private Date createDate;
	private List<CommentDTO> children;

	public CommentDTO() {

	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getParent() {
		return parent;
	}

	public void setParent(String parent) {
		this.parent = parent;
	}

	public Integer getAnnouncementId() {
		return announcementId;
	}

	public void setAnnouncementId(Integer announcementId) {
		this.announcementId = announcementId;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public List<CommentDTO> getChildren() {
		return children;
	}

	public void setChildren(List<CommentDTO> children) {
		this.children = children;
	}
}
