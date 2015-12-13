package java76.pms.controller;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import java76.pms.dao.AlbumDao;
import java76.pms.domain.Album;
import java76.pms.util.MultipartHelper;
import net.coobird.thumbnailator.Thumbnails;

@Controller
@RequestMapping("/kid/*")
public class KidController { 
  public static final String SAVED_DIR = "/file";
  @Autowired AlbumDao albumDao;
  @Autowired ServletContext servletContext;

  //---------------------------------------------------------
  /* 로그인 처리 부분*/
  @RequestMapping(value="login", method=RequestMethod.POST)
  public String kidMain()  {
    return "kid/KidMain";
  }


  @RequestMapping("main")
  public String kidMain1()  {
    return "kid/KidMain";
  }

  //---------------------------------------------------------


  @RequestMapping(value="login", method=RequestMethod.GET)
  public String indexform() {

    return "kid/IndexForm";
  }

  @RequestMapping(value="gallery1", method=RequestMethod.GET)
  public String gallery1(HttpServletRequest request) {

    List<Album> albums = albumDao.selectList();

    request.setAttribute("albums", albums);

    return "kid/gallery1";
  }


  @RequestMapping(value="gallery2", method=RequestMethod.GET)
  public String gallery2() {

    return "kid/gallery2";
  }



  @RequestMapping(value="gallery3", method=RequestMethod.GET)
  public String gallery3() {

    return "kid/gallery3";
  }


  //---------------------------------------------------------
  /* 앨범 추가 부분 */

  @RequestMapping(value="albumadd", method=RequestMethod.GET)
  public String form() {
    return "kid/albumadd";
  }

  @RequestMapping(value="albumadd", method=RequestMethod.POST)
  public String add(Album album, MultipartFile photofile) throws Exception {

    if (photofile.getSize() > 0) {
      String newFileName = MultipartHelper.generateFilename(photofile.getOriginalFilename());  
      File attachfile = new File(servletContext.getRealPath(SAVED_DIR) + "/" + newFileName);
      photofile.transferTo(attachfile);
      album.setPhoto(newFileName);

      Thumbnails.of(new File(servletContext.getRealPath(SAVED_DIR) + "/" + newFileName))
      .size(1500,450)
      //.outputQuality(1.0)
      .toFile(new File(servletContext.getRealPath(SAVED_DIR) + "/s-" + newFileName));
    }
    albumDao.insert(album);
    return "redirect:gallery1.do";
  }


  //---------------------------------------------------------


  /*
  @RequestMapping(value="update", method=RequestMethod.POST)
  public String update(Album album, MultipartFile photofile, Model model) throws Exception {

    if (photofile.getSize() > 0) {
      String newFileName = MultipartHelper.generateFilename(photofile.getOriginalFilename());  
      File attachfile = new File(servletContext.getRealPath(SAVED_DIR) + "/" + newFileName);
      photofile.transferTo(attachfile);
      album.setPhoto(newFileName);

      Thumbnails.of(new File(servletContext.getRealPath(SAVED_DIR) + "/" + newFileName))
      .size(1500,450)
      //.outputQuality(1.0)
      .toFile(new File(servletContext.getRealPath(SAVED_DIR) + "/s-" + newFileName));
    }

    if (albumDao.update(album) <= 0) {
      model.addAttribute("errorCode", "401");
      return "/kid/AlbumAuthError";
    } 

    return "redirect:../board/list.do";
  }

   */

  //---------------------------------------------------------


  @RequestMapping(value="delete", method=RequestMethod.POST)
  public String detail(int ano, Model model) throws Exception {

    System.out.println("호출");
    
    if(albumDao.delete(ano) <= 0) {
      model.addAttribute("errorCode", "401");
      return "kid/KidError";
    }

    return "redirect:gallery1.do";
  }


}

