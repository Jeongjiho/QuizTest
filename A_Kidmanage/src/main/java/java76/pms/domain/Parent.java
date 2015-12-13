package java76.pms.domain;

import java.io.Serializable;

public class Parent implements Serializable {
  private static final long serialVersionUID = 1L;

  protected String member_uid;
  protected String name;
  protected String email;
  protected String kidClass;
  protected String kidName;
  protected String tel;
  protected String photo;
  protected String pwd;


  @Override
  public String toString() {
    return "Parent [member_uid=" + member_uid + ", name=" + name + ", email=" + email + ", kidClass=" + kidClass
        + ", kidName=" + kidName + ", tel=" + tel + ", photo=" + photo + ", pwd=" + pwd + "]";
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getKidClass() {
    return kidClass;
  }

  public void setKidClass(String kidClass) {
    this.kidClass = kidClass;
  }

  public String getKidName() {
    return kidName;
  }

  public void setKidName(String kidName) {
    this.kidName = kidName;
  }

  public String getTel() {
    return tel;
  }

  public void setTel(String tel) {
    this.tel = tel;
  }

  public String getPhoto() {
    return photo;
  }

  public void setPhoto(String photo) {
    this.photo = photo;
  }

  public String getPwd() {
    return pwd;
  }

  public void setPwd(String pwd) {
    this.pwd = pwd;
  }

  public String getMember_uid() {
    return member_uid;
  }

  public void setMember_uid(String member_uid) {
    this.member_uid = member_uid;
  }
  
}