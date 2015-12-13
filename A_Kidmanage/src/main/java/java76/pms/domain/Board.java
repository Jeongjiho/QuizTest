package java76.pms.domain;

import java.io.Serializable;
import java.sql.Date;

public class Board implements Serializable {
  private static final long serialVersionUID = 1L;
  protected int no;
  protected String title;
  protected String content;
  protected String writer;
  protected Date   createdDate;
  protected String pwd;
  protected String attachFile; // 컬럼명 = afile
  
  public Board() {}

  @Override
  public String toString() {
    return "Board [no=" + no + ", title=" + title + ", content=" + content + ", writer=" + writer + ", createdDate="
        + createdDate + ", pwd=" + pwd + ", attachFile=" + attachFile + "]";
  }

  public int getNo() {
    return no;
  }

  public void setNo(int no) {
    this.no = no;
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

  public String getWriter() {
    return writer;
  }

  public void setWriter(String writer) {
    this.writer = writer;
  }

  public Date getCreatedDate() {
    return createdDate;
  }

  public void setCreatedDate(Date createdDate) {
    this.createdDate = createdDate;
  }

  public String getPwd() {
    return pwd;
  }

  public void setPwd(String pwd) {
    this.pwd = pwd;
  }

  public String getAttachFile() {
    return attachFile;
  }

  public void setAttachFile(String attachFile) {
    this.attachFile = attachFile;
  }

  
}
