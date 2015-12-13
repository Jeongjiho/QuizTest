package java76.pms.controller;

import java.io.File;
import java.util.HashMap;
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
    String cid = kidManage.getCid();
    return "redirect:" + cid + "List.do";
  }

  //---------------------------------------------------------

  @RequestMapping("delete")
  public String delete(int no, Model model) throws Exception {

    if (kidManageDao.delete(no) <= 0) {
      model.addAttribute("errorCode", "401");
      return "/kidManage/KidError.jsp";
    }
    KidManage kidManage = kidManageDao.selectOne(no);
    String cid = kidManage.getCid();
    return "redirect:" + cid + "List.do";  }

  //---------------------------------------------------------

  @RequestMapping(value="edit", method=RequestMethod.POST)
  public String edit(int change, int no, Model model) throws Exception {

    HashMap<String,Integer> paramMap = new HashMap<>();
    paramMap.put("change", change);
    paramMap.put("no", no);
    
    if (kidManageDao.edit(paramMap) <= 0) {
      model.addAttribute("errorCode", "401");
      return "/kidManage/KidError.jsp";
    }
    
    KidManage kidManage = kidManageDao.selectOne(no);
    String cid = kidManage.getCid();
    return "redirect:" + cid + "List.do";
  }
  
  
  //---------------------------------------------------------

  @RequestMapping("c1List")
  public String c1List(String cid, HttpServletRequest request) throws Exception {

    List<KidManage> kidManages = kidManageDao.selectList("c1");

    request.setAttribute("kidManages", kidManages);

    return "/kidManage/KidList";

  }
  
  @RequestMapping("c2List")
  public String c2List(String cid, HttpServletRequest request) throws Exception {

    List<KidManage> kidManages = kidManageDao.selectList("c2");

    request.setAttribute("kidManages", kidManages);

    return "/kidManage/KidList";

  }
  
  @RequestMapping("c3List")
  public String c3List(String cid, HttpServletRequest request) throws Exception {

    List<KidManage> kidManages = kidManageDao.selectList("c3");

    request.setAttribute("kidManages", kidManages);

    return "/kidManage/KidList";

  }

  //---------------------------------------------------------

  @RequestMapping(value="detail", method=RequestMethod.GET)
  public String detail(int no, Model model) throws Exception {
    KidManage kidManage = kidManageDao.selectOne(no);
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

    if (kidManageDao.update(kidManage) <= 0) {
      model.addAttribute("errorCode", "401");
      return "/kidManage/KidError.jsp";
    } 

    String cid = kidManage.getCid();
    return "redirect:" + cid + "List.do";  }
}

