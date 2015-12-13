package java76.pms.dao;

import java.util.List;

import java76.pms.domain.Album;

public interface AlbumDao {
  
  List<Album> selectList();
  
  int insert(Album album);
  
  int delete(int ano);

}







