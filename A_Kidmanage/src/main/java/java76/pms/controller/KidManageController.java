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

import java76.pms.dao.KidManageDao;
import java76.pms.domain.KidManage;
import java76.pms.util.MultipartHelper;
import net.coobird.thumbnailator.Thumbnails;

@Controller
@RequestMapping("/kidManage/*")
public class KidManageController { 
  public static final String SAVED_DIR = "/file";
  @Autowired KidManageDao kidManageDao;
  @Autowired ServletContext servletContext;

  @RequestMapping(value="add", method=RequestMethod.POST)
  public String add(KidManage kidManage, MultipartFile photofile) throws Exception {

    if (photofile.getSize() > 0) {
      String newFileName = MultipartHelper.generateFilename(photofile.getOriginalFilename());  
      File attachfile = new File(
          servletContext.getRealPath(SAVED_DIR) 
          + "/" + newFileName);
      photofile.transferTo(attachfile);
      kidManage.setPhoto(newFileName);
      Thumbnails.of(new File(servletContext.getRealPath(SAVED_DIR) + "/" + newFileName))
      .size(60,44)
      .outputQuality(1.0)
      .toFile(new File(servletContext.getRealPath(SAVED_DIR) + "/s-" + newFileName));
    }
    kidManageDao.insert(kidManage);
    
    return "redirect:list.do";
  }

  //---------------------------------------------------------

  @RequestMapping("delete")
  public String delete(int no, Model model) throws Exception {

    if (kidManageDao.delete(no) <= 0) {
      model.addAttribute("errorCode", "401");
      return "/kidManage/KidError.jsp";
    }
    return "redirect:list.do";
  }

  //---------------------------------------------------------

  @RequestMapping("list")
  public String list(HttpServletRequest request) throws Exception {


    List<KidManage> kidManages = kidManageDao.selectList();

    request.setAttribute("kidManages", kidManages);

    return "/kidManage/KidList";

  }

  //---------------------------------------------------------

  @RequestMapping(value="detail", method=RequestMethod.GET)
  public String detail(int no, Model model) throws Exception {
    System.out.println(no);
    KidManage kidManage = kidManageDao.selectOne(no);
    System.out.println(kidManage);
    model.addAttribute("kidManage", kidManage);
    return "/kidManage/KidDetail";
  }


  //---------------------------------------------------------


  @RequestMapping(value="update", method=RequestMethod.POST)
  public String update(KidManage kidManage, MultipartFile photofile, Model model) throws Exception {

    if (photofile.getSize() > 0) {
      String newFileName = MultipartHelper.generateFilename(photofile.getOriginalFilename());  
      File attachfile = new File(servletContext.getRealPath(SAVED_DIR) + "/" + newFileName);
      photofile.transferTo(attachfile);
      kidManage.setPhoto(newFileName);
      Thumbnails.of(new File(servletContext.getRealPath(SAVED_DIR) + "/" + newFileName))
      .size(60,44)
      .outputQuality(1.0)
      .toFile(new File(servletContext.getRealPath(SAVED_DIR) + "/s-" + newFileName));
    } else if (kidManage.getPhoto().length() > 0) { 
      kidManage.setPhoto(kidManage.getPhoto());
    } 

    System.out.println(kidManage);
    if (kidManageDao.update(kidManage) <= 0) {
      model.addAttribute("errorCode", "401");
      return "/kidManage/KidError.jsp";
    } 

    return "redirect:../kidManage/list.do";
  }
}

