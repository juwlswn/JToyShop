package mini.project.toy;

import java.util.ArrayList;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mini.project.toy.service.MemberDAO;
import mini.project.toy.vo.Member;

@Controller
public class MemberController {
	
	@Inject
	MemberDAO mdao;
	
	@RequestMapping(value = "join" , method = RequestMethod.POST)
	public String join(String id, String password, String name ,String email1 , String email2) {
		String email = email1 + "@" + email2 ;
		Member member = new Member(id,name,password,email);
		mdao.insertMember(member);
		return "redirect:./";
	}
	
	@RequestMapping(value = "gocheckid" , method = RequestMethod.GET)
	public String gocheckid() {
		return "member/idCheckAction";
	}
	
	@RequestMapping(value = "idcheck" , method = RequestMethod.GET)
	public String idcheck(String id, Model model) {
		String idok = mdao.checkId(id);
		if (idok != null) {
			model.addAttribute("idok", false);
		} else {
			model.addAttribute("idok", true);
		}
		model.addAttribute("id",id);
		return "member/idCheckAction";
	}
	
	@RequestMapping(value= "login", method = RequestMethod.POST)
	public String login(Member member,HttpSession session, String id){
		member = mdao.login(member);
		if (member!= null) {
			session.setAttribute("loginId", member.getId());
			session.setAttribute("loginName", member.getName());
		}
		
		if (id.equals("juwlswn")) {
			session.setAttribute("manager", id);
		}
		return "redirect:./";
	}
	
	@RequestMapping(value= "logout", method = RequestMethod.GET)
	public String logout(HttpSession session){
		session.removeAttribute("loginId");
		session.removeAttribute("loginName");
		session.removeAttribute("manager");
		return "redirect:./";
	}
	
	@RequestMapping(value= "goupdateForm", method = RequestMethod.POST)
	public String goupdateForm(Member member, Model model){
		member = mdao.login(member);
		System.out.println(member);
		 String[] array;
		String s = member.getEmail();
		
		array = s.split("@");
		
		String email1=array[0];
		String email2=array[1];
		System.out.println(email1+"@"+email2);
		if (member != null) {
			model.addAttribute("member", member);
			model.addAttribute("email1", email1);
			model.addAttribute("email2", email2);
		}
		return "member/updateForm";
	}
	
	@RequestMapping(value = "update" , method = RequestMethod.POST)
	public String update(String id,String name, String password, String email1, String email2
			, String address, String phone, String birth,Model model) {
		String email = email1 + "@" + email2;
		System.out.println(email);
		Member member = new Member(id,name,password,email,address,phone,birth);
		mdao.updateMember(member);
		if (member != null) {
			model.addAttribute("member", member);
		}
		return "member/updateForm";
	}
	@RequestMapping(value = "memberdel", method = RequestMethod.GET)
	public String godelete(Member member,Model model) {
		System.out.println(member);
		model.addAttribute("member", member);
		return "member/deletecheck";
	}
	
	
	@RequestMapping(value = "delete", method = RequestMethod.GET)
	public String delete(HttpSession session) {
		String id = (String) session.getAttribute("loginId");
		mdao.deleteMember(id);
		session.removeAttribute("loginId");
		
		return "redirect:./";
	}

	
	
}
