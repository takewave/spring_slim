package slim.model.memberInfo;

import org.springframework.web.multipart.MultipartFile;

public class MemberInfoDTO {
private String  id       ;  
private String  passwd   ;
private String  mname    ;
private String  call     ;
private String  zipcode  ;
private String  address1 ;
private String  address2 ;
private String  email    ;
private String  emailAgree    ;
private String  regdate    ;
private String  mGradeCode    ;

public String getId() {
return id;
}
public void setId(String id) {
this.id = id;
}
public String getPasswd() {
return passwd;
}
public void setPasswd(String passwd) {
this.passwd = passwd;
}
public String getMname() {
return mname;
}
public void setMname(String mname) {
this.mname = mname;
}
public String getTel() {
return call;
}
public void setTel(String tel) {
this.call = call;
}
public String getEmail() {
return email;
}
public void setEmail(String email) {
this.email = email;
}
public String getZipcode() {
return zipcode;
}
public void setZipcode(String zipcode) {
this.zipcode = zipcode;
}
public String getAddress1() {
return address1;
}
public void setAddress1(String address1) {
this.address1 = address1;
}
public String getAddress2() {
return address2;
}
public void setAddress2(String address2) {
this.address2 = address2;
}

public String getEmailAgree() {
	return emailAgree;
}
public void setEmailAgree(String emailAgree) {
	this.emailAgree = emailAgree;
}
public String getmGradeCode() {
	return mGradeCode;
}
public void setmGradeCode(String mGradeCode) {
	this.mGradeCode = mGradeCode;
}
public String getRegdate() {
	return regdate;
}
public void setRegdate(String regdate) {
	this.regdate = regdate;
}
 
}