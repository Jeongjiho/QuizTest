package java76.pms.dao;

import java.util.List;

import java76.pms.domain.KidManage;

public interface KidManageDao {

  List<KidManage> selectList();

  int insert(KidManage kidManage);

  int delete(int no);

  int update(KidManage kidManage);

  KidManage selectOne(int no);

}







