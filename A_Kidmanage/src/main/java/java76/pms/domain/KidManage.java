package java76.pms.domain;

import java.io.Serializable;

public class KidManage implements Serializable {
  private static final long serialVersionUID = 1L;
  
  protected int no;
  protected String name;
  protected String age;
  protected String gender;
  protected String cid;
  protected String photo;
  protected int check1;
  
  
  @Override
  public String toString() {
    return "KidManage [no=" + no + ", name=" + name + ", age=" + age + ", gender=" + gender + ", cid=" + cid
        + ", photo=" + photo + ", check1=" + check1 + "]";
  }
  
  public int getNo() {
    return no;
  }
  public void setNo(int no) {
    this.no = no;
  }
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }
  public String getAge() {
    return age;
  }
  public void setAge(String age) {
    this.age = age;
  }
  public String getCid() {
    return cid;
  }
  public void setCid(String cid) {
    this.cid = cid;
  }
  public String getPhoto() {
    return photo;
  }
  public void setPhoto(String photo) {
    this.photo = photo;
  }
  public int getCheck1() {
    return check1;
  }
  public void setCheck1(int check1) {
    this.check1 = check1;
  }

  public String getGender() {
    return gender;
  }

  public void setGender(String gender) {
    this.gender = gender;
  }
  
}