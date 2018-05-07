package mini.project.toy.service;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;

import mini.project.toy.vo.Cart;
import mini.project.toy.vo.Order;
import mini.project.toy.vo.Product;

public interface ProductMapper {
	//상품 등록
	public int insertProduct(Product product);
	//상품 수정
	public int updateProduct(Product product);
	//상품 삭제
	public int deleteProduct(String pcode);
	//상품 판매량 하나 증가
	public int addCount(String pcode);
	//수량 하나씩 감소
	public int disCount(String pcode);
	//주문 취소 시 수량 다시 증가
	public int againCount(String pcode);
	//주문 취소시 판매량 하나 감소
	public int againPcount(String pcode);
	//카테 고리별 상품 리스트
	public ArrayList<Product> getProductList(String category);
	//전체 상품 출력
	public ArrayList<Product> getallproduct(RowBounds rb);
	//상품 보기
	public Product getProduct(String pcode);
	//카트에 담기(등록)
	public int insertCart(Cart cart);
	//카트에서 삭제
	public int deleteCart(String cno);
	//카트 불러오기
	public ArrayList<Cart> getcartList(String id);
	//카트 하나 불러오기
	public Cart getCart(String cno);
	//상품 구매
	public int orderProduct(Order order);
	//상품 구매 취소
	public int orderCancel(String ono);
	//구매 내역 
	public ArrayList<Order> getOrderList(String id);
	//전체 상품 수
	//11. 전체 게시글 수
	public int getProductCount();
}
