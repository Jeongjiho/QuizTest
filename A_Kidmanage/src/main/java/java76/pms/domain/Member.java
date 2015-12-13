package java76.pms.domain;

import java.io.Serializable;

public class Member implements Serializable {
  private static final long serialVersionUID = 1L;
  
  protected int m_uid;
  protected String email;
  protected String pwd;
  protected String type;
  protected String name;
  protected String cid;
  protected String kidClass;
  protected String kidName;
  protected String tel;
  protected String photo;
  
  @Override
  public String toString() {
    return "Member [m_uid=" + m_uid + ", email=" + email + ", pwd=" + pwd + ", type=" + type + ", name=" + name
        + ", cid=" + cid + ", kidClass=" + kidClass + ", kidName=" + kidName + ", tel=" + tel + ", photo=" + photo
        + "]";
  }

  public int getM_uid() {
    return m_uid;
  }

  public void setM_uid(int m_uid) {
    this.m_uid = m_uid;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getPwd() {
    return pwd;
  }

  public void setPwd(String pwd) {
    this.pwd = pwd;
  }

  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getCid() {
    return cid;
  }

  public void setCid(String cid) {
    this.cid = cid;
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
 
  
}