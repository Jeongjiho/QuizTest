package java76.pms.dao;

import java.util.List;

import java76.pms.domain.Member;
import java76.pms.domain.Parent;

public interface ParentDao {

  List<Parent> selectList();

  int insert(Member member);

  int delete(String email);

  int update(Parent parent);

  Parent getInfo(int m_uid);

  
}







