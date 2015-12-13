package java76.pms.domain;

import java.io.Serializable;

public class Teacher implements Serializable {
  private static final long serialVersionUID = 1L;

  protected String member_uid;
  protected String name;
  protected String cid;
  protected String tel;
  protected String photo;
  protected String pwd;


  @Override
  public String toString() {
    return "Teacher [member_uid=" + member_uid + ", name=" + name + ", cid=" + cid + ", tel=" + tel + ", photo=" + photo
        + ", pwd=" + pwd + "]";
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

  public String getMember_uid() {
    return member_uid;
  }

  public void setMember_uid(String member_uid) {
    this.member_uid = member_uid;
  }

  public String getPwd() {
    return pwd;
  }

  public void setPwd(String pwd) {
    this.pwd = pwd;
  }

 
}