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
import org.springframework.web.multipart.MultipartFile;

import java76.pms.dao.MemberDao;
import java76.pms.dao.ParentDao;
import java76.pms.dao.TeacherDao;
import java76.pms.domain.Member;
import java76.pms.domain.Parent;
import java76.pms.domain.Teacher;
import java76.pms.util.MultipartHelper;
import net.coobird.thumbnailator.Thumbnails;

@Controller
@RequestMapping("/join/*")
public class JoinController { 
  public static final String SAVED_DIR = "/file";
  @Autowired ParentDao parentDao;
  @Autowired MemberDao memberDao;
  @Autowired TeacherDao teacherDao;
  @Autowired ServletContext servletContext;

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
    
    if (member.getType().equals("parent")) {
      System.out.println(member);
      parentDao.insert(member);
    } else if (member.getType().equals("teacher")) {
      teacherDao.insert(member);
    }
    
    
    return "kid/IndexForm";
  }

  //---------------------------------------------------------

  @RequestMapping("delete")
  public String delete(String email, Model model) throws Exception {

    if (parentDao.delete(email) <= 0) {
      model.addAttribute("errorCode", "401");
      return "/member/MemberAuthError.jsp";
    }
    return "redirect:login.do";
  }

  //---------------------------------------------------------

  @RequestMapping("list")
  public String list(HttpServletRequest request) throws Exception {


    List<Parent> parents = parentDao.selectList();

    request.setAttribute("parents", parents);

    return "/member/MemberList";

  }

  //---------------------------------------------------------
//
//  @RequestMapping(value="detail", method=RequestMethod.GET)
//  public String detail(String email, Model model) throws Exception {
//    Parent parent = parentDao.selectOne(email);
//    model.addAttribute("parent", parent);
//    return "/member/MemberDetail";
//  }


  //---------------------------------------------------------


  @RequestMapping(value="update", method=RequestMethod.POST)
  public String update(Parent parent, MultipartFile photofile, Model model) throws Exception {

    if (photofile.getSize() > 0) {
      String newFileName = MultipartHelper.generateFilename(photofile.getOriginalFilename());  
      File attachfile = new File(servletContext.getRealPath(SAVED_DIR) + "/" + newFileName);
      photofile.transferTo(attachfile);
      parent.setPhoto(newFileName);
      Thumbnails.of(new File(servletContext.getRealPath(SAVED_DIR) + "/" + newFileName))
      .size(60,44)
      .outputQuality(1.0)
      .toFile(new File(servletContext.getRealPath(SAVED_DIR) + "/s-" + newFileName));
    } else if (parent.getPhoto().length() > 0) { 
      parent.setPhoto(parent.getPhoto());
    } 

    if (parentDao.update(parent) <= 0) {
      model.addAttribute("errorCode", "401");
      System.out.println(parent.getEmail());
      return "/parent/MemberAuthError";
    } 

    return "redirect:../board/list.do";
  }


  //---------------------------------------------------------


  @RequestMapping(value="login", method=RequestMethod.POST)
  public String login(
      String email,
      String pwd,
      String saveEmail,
      String type,
      HttpServletResponse response,
      HttpSession session) {

    Cookie emailCookie = null;
    if (saveEmail != null) { // 이메일 저장을 체크했으면,
      emailCookie = new Cookie("email", email);
      emailCookie.setMaxAge(60 * 60 * 24 * 15);
    } else {
      emailCookie = new Cookie("email", "");
      emailCookie.setMaxAge(0); // 웹브라우저에게 email 쿠키 삭제를 명령한다.
    }
    response.addCookie(emailCookie);

    HashMap<String,Object> paramMap = new HashMap<>();
    paramMap.put("email", email);
    paramMap.put("pwd", pwd);
    
    System.out.println(paramMap);
    
    Member member = memberDao.login(paramMap);
    System.out.println(member);
    
    if (member == null) { // 로그인 실패!
      session.invalidate(); // 세션을 무효화시킴. => 새로 세션 객체 생성!
      System.out.println(session);
      return "redirect:../kid/login.do";
    }
    
    
    if (member.getType().equals("parent")) {
      Parent parent = parentDao.getInfo(member.getM_uid());
      session.setAttribute("common", parent);
    } else if (member.getType().equals("teacher")) {
      Teacher teacher = teacherDao.getInfo(member.getM_uid());
      session.setAttribute("common", teacher);
    }
    session.setAttribute("loginUser", member);
    return "redirect:../kid/main.do";
  }


  //---------------------------------------------------------


  @RequestMapping("logout")
  public String logout(HttpSession session)  {
    session.invalidate();
    return "redirect:../kid/login.do";
  }
  
}

