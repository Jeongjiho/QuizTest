package java76.pms.dao;

import java.util.List;

import java76.pms.domain.Member;
import java76.pms.domain.Teacher;

public interface TeacherDao {

  List<Teacher> selectList();

  int insert(Member member);

  int delete(String email);

  int update(Teacher teacher);

  Teacher getInfo(int member_uid);

  
}







