package java76.pms.domain;

import java.io.Serializable;

public class Member implements Serializable {
  private static final long serialVersionUID = 1L;
  
  protected String name;
  protected String id;
  protected String pwd;
  protected String tel;
  protected String address;
  protected String email;
  protected String photo;
  
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }
  public String getPwd() {
    return pwd;
  }
  public void setPwd(String pwd) {
    this.pwd = pwd;
  }
  public String getTel() {
    return tel;
  }
  public void setTel(String tel) {
    this.tel = tel;
  }
  public String getAddress() {
    return address;
  }
  public void setAddress(String address) {
    this.address = address;
  }
  public String getEmail() {
    return email;
  }
  public void setEmail(String email) {
    this.email = email;
  }
  public String getPhoto() {
    return photo;
  }
  public void setPhoto(String photo) {
    this.photo = photo;
  }
  public static long getSerialversionuid() {
    return serialVersionUID;
  }
  
}








