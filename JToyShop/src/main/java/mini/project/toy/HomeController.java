package mini.project.toy;


import java.util.ArrayList;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.RowBounds;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import mini.project.toy.service.MemberDAO;
import mini.project.toy.service.ProductDAO;
import mini.project.toy.service.ReplyDAO;
import mini.project.toy.vo.Cart;
import mini.project.toy.vo.Member;
import mini.project.toy.vo.Order;
import mini.project.toy.vo.Product;
import mini.project.toy.vo.Reply;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Inject
	ProductDAO pdao;
	
	@Inject
	MemberDAO mdao;
	
	@Inject
	ReplyDAO rdao;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(@RequestParam (value="jsp", defaultValue="index") String jsp,  HttpServletRequest request, Model model,
			String page, String pcode,HttpSession session,Member member,String cno) {
		model.addAttribute("jsp", jsp);
		if (jsp.equals("index")) {
			ArrayList<Product> pList = pdao.getProductList(null);
			model.addAttribute("pList", pList);
		}
		else if (jsp.equals("productList")) {
			String category = request.getParameter("category");
			
			System.out.println(category);
			
			ArrayList<Product> pList = pdao.getProductList(category);
			
			model.addAttribute("pList", pList);
		} else if (jsp.equals("godeleteproduct")) {
			 int startPage =1;
			  int boardCount =10;
			  int offset=0;
			  
			  int allboardcount =pdao.getProductCount();
			  
			  if(page !=null) {
				  
				   startPage= Integer.parseInt(page);
				  if(startPage <= 0) {
				   startPage =1;
				   
				  }
				   if((allboardcount/boardCount)+1 <startPage) {
				    startPage=startPage-1;
				   }
				  }
				  
				  offset =(boardCount *startPage)-boardCount;
				   
				  RowBounds rb = new RowBounds(offset, boardCount);
			
			ArrayList<Product> pList  = pdao.getallproduct(rb);
			model.addAttribute("pList", pList);
			model.addAttribute("startPage", startPage);
			model.addAttribute("boardcount", allboardcount);
		} else if (jsp.equals("goreadproduct")) {
			Product product = pdao.getProduct(pcode);
			model.addAttribute("product", product);
			System.out.println(product);
		} else if (jsp.equals("gocartlist")) {
			String id = (String) session.getAttribute("loginId");
			ArrayList<Cart> cList = pdao.getcartList(id);
			System.out.println(cList);
			model.addAttribute("cList", cList);
		} else if (jsp.equals("gobuy")) {
			String id = (String) session.getAttribute("loginId");
			member = mdao.getMember(id);
			model.addAttribute("member", member);
			Cart cart = pdao.getCart(cno);
			model.addAttribute("cart", cart);
		} else if (jsp.equals("gomypage")) {
			String id = (String)session.getAttribute("loginId");
			ArrayList<Order> oList = pdao.getOrderList(id);
			model.addAttribute("oList", oList);
		} 
		return "home";
		}
	
	
}
