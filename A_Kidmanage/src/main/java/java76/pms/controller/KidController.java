package java76.pms.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java76.pms.dao.MemberDao;
import java76.pms.domain.Member;
import java76.pms.util.MultipartHelper;
import net.coobird.thumbnailator.Thumbnails;

@Controller
@RequestMapping("/kid/*")
public class KidController { 
  public static final String SAVED_DIR = "/file";
  @Autowired MemberDao memberDao;
  @Autowired ServletContext servletContext;

  @RequestMapping(value="add", method=RequestMethod.GET)
  public String form() {
    return "member/MemberForm";
  }

  @RequestMapping(value="login", method=RequestMethod.GET)
  public String indexform() {
    
    return "kid/IndexForm";
  }

  @RequestMapping(value="gallery1", method=RequestMethod.GET)
  public String gallery1() {
    
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
  
  
  
  @RequestMapping(value="add", method=RequestMethod.POST)
  public String add(Member member, MultipartFile photofile) throws Exception {

    if (photofile.getSize() > 0) {
      String newFileName = MultipartHelper.generateFilename(photofile.getOriginalFilename());  
      File attachfile = new File(
          servletContext.getRealPath(SAVED_DIR) 
          + "/" + newFileName);
      photofile.transferTo(attachfile);
      member.setPhoto(newFileName);
      Thumbnails.of(new File(servletContext.getRealPath(SAVED_DIR) + "/" + newFileName))
      .size(60,44)
      .outputQuality(1.0)
      .toFile(new File(servletContext.getRealPath(SAVED_DIR) + "/s-" + newFileName));
    }
    memberDao.insert(member);
    return "member/LoginForm";
  }

  //---------------------------------------------------------

  @RequestMapping("delete")
  public String delete(String id, Model model) throws Exception {

    if (memberDao.delete(id) <= 0) {
      model.addAttribute("errorCode", "401");
      return "/member/MemberAuthError.jsp";
    }
    return "redirect:login.do";
  }

  //---------------------------------------------------------

  @RequestMapping("list")
  public String list(HttpServletRequest request) throws Exception {


    List<Member> members = memberDao.selectList();

    request.setAttribute("members", members);

    return "/member/MemberList";

  }

  //---------------------------------------------------------

  @RequestMapping(value="detail", method=RequestMethod.GET)
  public String detail(String id, Model model) throws Exception {
    Member member = memberDao.selectOne(id);
    model.addAttribute("member", member);
    return "/member/MemberDetail";
  }


  //---------------------------------------------------------


  @RequestMapping(value="update", method=RequestMethod.POST)
  public String update(Member member, MultipartFile photofile, Model model) throws Exception {

    if (photofile.getSize() > 0) {
      String newFileName = MultipartHelper.generateFilename(photofile.getOriginalFilename());  
      File attachfile = new File(servletContext.getRealPath(SAVED_DIR) + "/" + newFileName);
      photofile.transferTo(attachfile);
      member.setPhoto(newFileName);
      Thumbnails.of(new File(servletContext.getRealPath(SAVED_DIR) + "/" + newFileName))
      .size(60,44)
      .outputQuality(1.0)
      .toFile(new File(servletContext.getRealPath(SAVED_DIR) + "/s-" + newFileName));
    } else if (member.getPhoto().length() > 0) { 
      member.setPhoto(member.getPhoto());
    } 

    if (memberDao.update(member) <= 0) {
      model.addAttribute("errorCode", "401");
      System.out.println(member.getId());
      return "/member/MemberAuthError";
    } 

    return "redirect:../board/list.do";
  }


  //---------------------------------------------------------


  @RequestMapping(value="login", method=RequestMethod.POST)
  public String kidMain()  {
    return "kid/KidMain";
  }


  //---------------------------------------------------------


  @RequestMapping("logout")
  public String logout(HttpSession session)  {
    session.invalidate();
    return "redirect:../board/list.do";
  }
  
  
  
  //---------------------------------------------------------
  
  
  
  @RequestMapping(value="logincheck", method=RequestMethod.POST)
  public String logincheck(String id, String pwd)  {
    HashMap<String,Object> paramMap = new HashMap<>();
    paramMap.put("id", id);
    paramMap.put("pwd", pwd);
    Member member = memberDao.logincheck(paramMap);
    
    System.out.println(member.getId());
    System.out.println(member.getPwd());
    
    return "redirect:login.do";
  }

}

