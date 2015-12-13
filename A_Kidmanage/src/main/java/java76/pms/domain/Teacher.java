package java76.pms.domain;

import java.io.Serializable;

public class Teacher implements Serializable {
  private static final long serialVersionUID = 1L;

  protected String name;
  protected String cid;
  protected String tel;
  protected String photo;

  @Override
  public String toString() {
    return "Teacher [name=" + name + ", cid=" + cid + ", tel=" + tel + ", photo=" + photo + "]";
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