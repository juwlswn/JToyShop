package mini.project.toy;

import java.util.ArrayList;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import mini.project.toy.service.MemberDAO;
import mini.project.toy.service.ProductDAO;
import mini.project.toy.service.ReplyDAO;
import mini.project.toy.util.FileService;
import mini.project.toy.vo.Cart;
import mini.project.toy.vo.Member;
import mini.project.toy.vo.Order;
import mini.project.toy.vo.Product;
import mini.project.toy.vo.Reply;

@Controller
public class ProductController {
	
	
	private final String UPLOAD_PATH = "/productfile";
	
	@Inject
	ProductDAO pdao;
	@Inject
	MemberDAO mdao;
	@Inject
	ReplyDAO rdao;
	
	@RequestMapping(value = "pro_insert", method = RequestMethod.POST)
	public String pro_insert(Product product, MultipartFile upload) {
		
		if (upload.isEmpty() == false) {
			String savedfile = FileService.saveFile(upload, UPLOAD_PATH);
			String originalfile = upload.getOriginalFilename();
			
			product.setSavedfile(savedfile);
			product.setOriginalfile(originalfile);
		}
		
		pdao.insertProduct(product);
		return "redirect:./";
	}
	
	/*@RequestMapping(value = "readproduct", method = RequestMethod.GET)
	public String readproduct(String pcode, Model model) {
		System.out.println(pcode);
		Product product = pdao.getProduct(pcode);
		model.addAttribute("product", product);
		System.out.println(product);
		return "product/detailList";
	}*/
	@RequestMapping(value = "gocart", method = RequestMethod.POST)
	public String insertcart(Cart cart) {
		pdao.insertCart(cart);
		return "redirect:./?jsp=gocartlist";
	}
	
	/*@RequestMapping(value = "gocartlist", method = RequestMethod.GET)
	public String gocartlist(Model model, HttpSession session) {
		String id = (String) session.getAttribute("loginId");
		ArrayList<Cart> cList = pdao.getcartList(id);
		System.out.println(cList);
		model.addAttribute("cList", cList);
		return "product/gocartList";
	}*/
	
	@RequestMapping(value = "deletecart", method = RequestMethod.GET)
	public String deletecart(String cno) {
		pdao.deleteCart(cno);
		return "redirect:/?jsp=gocartlist";
	}
	
/*	@RequestMapping(value = "gobuy", method = RequestMethod.GET)
	public String gobuy(String cno,Model model,HttpSession session, Member member) {
	String id = (String) session.getAttribute("loginId");
	member = mdao.getMember(id);
	model.addAttribute("member", member);
	Cart cart = pdao.getCart(cno);
	model.addAttribute("cart", cart);
		return "product/orderList";
	}*/
	
	@RequestMapping(value = "order", method = RequestMethod.POST)
	public String order(Order order,String cno,String pcode) {
		pdao.orderProduct(order);
		pdao.deleteCart(cno);
		pdao.disCount(pcode);
		pdao.addCount(pcode);
		return "redirect:./";
	}
	
/*	@RequestMapping(value = "gomypage", method = RequestMethod.GET)
	public String gomypage(HttpSession session, Model model) {
		String id = (String)session.getAttribute("loginId");
		ArrayList<Order> oList = pdao.getOrderList(id);
		model.addAttribute("oList", oList);
		System.out.println(oList);
		return "member/mypage";
	}*/
	
	@RequestMapping(value = "goorderdel", method = RequestMethod.POST)
	public String goorderdel(String ono, String pcode) {
		pdao.orderCancel(ono);
		pdao.againCount(pcode);
		pdao.againPcount(pcode);
		return "redirect:/?jsp=gomypage";
	}
	
	@RequestMapping(value = "productdel", method = RequestMethod.GET)
	public String productdel(String pcode) {
		Product product = pdao.getProduct(pcode);
		
		FileService.deleteFile(UPLOAD_PATH + "/" + product.getSavedfile());
		
		pdao.deleteProduct(pcode);
		return "redirect:/?jsp=godeleteproduct";
		
	}
	
	@ResponseBody
	@RequestMapping(value = "insertreply", method = RequestMethod.POST)
	public int insertreply(Reply reply) {
		int rpy=0;
		rpy = rdao.insertReply(reply);
		return rpy;
	}
	
	@ResponseBody
	@RequestMapping(value = "replylist", method = RequestMethod.GET)
	public ArrayList<Reply> replylist(String pcode) {
		System.out.println(pcode);
		
		ArrayList<Reply> rList = null;
			rList=rdao.getReply(pcode);
		System.out.println("넘어가?" + rList);
		return rList;
	}
	
	
}	
