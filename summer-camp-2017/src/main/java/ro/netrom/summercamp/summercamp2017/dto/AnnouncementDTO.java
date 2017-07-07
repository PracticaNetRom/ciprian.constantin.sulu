package ro.netrom.summercamp.summercamp2017.dto;

import java.io.Serializable;
import java.util.Date;


import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class AnnouncementDTO {

	private Integer id;
	private String title;
	private String content;
	private String location;
	private String confirmationCode;
	private Date createDate;
	private Date expireDate;
	private String ownerEmail;
	private String ownerFirstName;
	private String ownerLastName;
	private String ownerPhone;
	private String categoryName;
	private String categoryDescription;

	public AnnouncementDTO() {
		
		
	}

	public AnnouncementDTO(Integer id, String title, String content, String location, String confirmationCode, Date createDate,
			Date expireDate, String ownerEmail, String ownerFirstName, String ownerLastName, String ownerPhone,
			String categoryName, String categoryDescription) {

		this.id = id;
		this.title = title;
		this.content = content;
		this.location = location;
		this.confirmationCode = confirmationCode;
		this.createDate = createDate;
		this.expireDate = expireDate;
		this.ownerEmail = ownerEmail;
		this.ownerLastName = ownerLastName;
		this.ownerFirstName = ownerFirstName;
		this.ownerPhone = ownerPhone;
		this.categoryName = categoryName;
		this.categoryDescription = categoryDescription;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getConfirmationCode() {
		return confirmationCode;
	}

	public void setConfirmationCode(String confirmationCode) {
		this.confirmationCode = confirmationCode;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getExpireDate() {
		return expireDate;
	}

	public void setExpireDate(Date expireDate) {
		this.expireDate = expireDate;
	}

	public String getOwnerEmail() {
		return ownerEmail;
	}

	public void setOwnerEmail(String ownerEmail) {
		this.ownerEmail = ownerEmail;
	}

	public String getOwnerFirstName() {
		return ownerFirstName;
	}

	public void setOwnerFirstName(String ownerFirstName) {
		this.ownerFirstName = ownerFirstName;
	}

	public String getOwnerLastName() {
		return ownerLastName;
	}

	public void setOwnerLastName(String ownerLastName) {
		this.ownerLastName = ownerLastName;
	}

	public String getOwnerPhone() {
		return ownerPhone;
	}

	public void setOwnerPhone(String ownerPhone) {
		this.ownerPhone = ownerPhone;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	

	
	@Override
	public   String toString() {
		return "AnnouncementDTO [title=" + title + ", content=" + content + ", location=" + location
				+ ", confirmationCode=" + confirmationCode + ", createDate=" + createDate + ", expireDate=" + expireDate
				+ ", ownerEmail=" + ownerEmail + ", ownerFirstName=" + ownerFirstName + ", ownerLastName="
				+ ownerLastName + ", ownerPhone=" + ownerPhone + ", categoryName=" + categoryName + "]";
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCategoryDescription() {
		return categoryDescription;
	}

	public void setCategoryDescription(String categoryDescription) {
		this.categoryDescription = categoryDescription;
	}

}
