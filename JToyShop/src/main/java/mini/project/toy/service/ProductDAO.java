package mini.project.toy.service;

import java.util.ArrayList;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import mini.project.toy.vo.Cart;
import mini.project.toy.vo.Order;
import mini.project.toy.vo.Product;

@Repository
public class ProductDAO implements ProductMapper {

	@Inject
	SqlSession session;
	
	@Override
	public int insertProduct(Product product) {
		ProductMapper mapper = session.getMapper(ProductMapper.class);
		int result = 0;
		try {
			result = mapper.insertProduct(product);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int updateProduct(Product product) {
		ProductMapper mapper = session.getMapper(ProductMapper.class);
		int result = 0;
		try {
			result = mapper.updateProduct(product);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int deleteProduct(String pcode) {
		ProductMapper mapper = session.getMapper(ProductMapper.class);
		int result = 0;
		try {
			result = mapper.deleteProduct(pcode);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int addCount(String pcode) {
		ProductMapper mapper = session.getMapper(ProductMapper.class);
		int result = 0;
		try {
			result = mapper.addCount(pcode);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}


	@Override
	public Product getProduct(String pcode) {
		ProductMapper mapper = session.getMapper(ProductMapper.class);
		Product product = null;
		try {
			product = mapper.getProduct(pcode);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return product;
	}

	@Override
	public int disCount(String pcode) {
		ProductMapper mapper = session.getMapper(ProductMapper.class);
		int result = 0;
		try {
			result = mapper.disCount(pcode);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public ArrayList<Product> getProductList(String category) {
		ProductMapper mapper = session.getMapper(ProductMapper.class);
		
		ArrayList<Product> pList = null;
		
		try {
			pList = mapper.getProductList(category);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return pList;
	}

	@Override
	public int insertCart(Cart cart) {
		ProductMapper mapper = session.getMapper(ProductMapper.class);
		int result = 0;
		try {
			result = mapper.insertCart(cart);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int deleteCart(String cno) {
		ProductMapper mapper = session.getMapper(ProductMapper.class);
		int result =0;
		try {
			result = mapper.deleteCart(cno);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public ArrayList<Cart> getcartList(String id) {
		ProductMapper mapper = session.getMapper(ProductMapper.class);
		ArrayList<Cart> cList = null;
		try {
			cList = mapper.getcartList(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cList;
	}

	@Override
	public ArrayList<Product> getallproduct(RowBounds rb) {
		ProductMapper mapper = session.getMapper(ProductMapper.class);
		ArrayList<Product> cList = null;
		try {
			cList = mapper.getallproduct(rb);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cList;
	}

	@Override
	public int orderProduct(Order order) {
		ProductMapper mapper = session.getMapper(ProductMapper.class);
		int result =0;
		try {
			result = mapper.orderProduct(order);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int orderCancel(String ono) {
		ProductMapper mapper = session.getMapper(ProductMapper.class);
		int result =0;
		try {
			result = mapper.orderCancel(ono);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public Cart getCart(String cno) {
		ProductMapper mapper = session.getMapper(ProductMapper.class);
		Cart cart = null;
		try {
			cart = mapper.getCart(cno);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cart;
	}

	@Override
	public ArrayList<Order> getOrderList(String id) {
		ProductMapper mapper = session.getMapper(ProductMapper.class);
		ArrayList<Order> oList = null;
		try {
			oList = mapper.getOrderList(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return oList;
	}

	@Override
	public int againCount(String pcode) {
		ProductMapper mapper = session.getMapper(ProductMapper.class);
		int result = 0;
		try {
			result = mapper.againCount(pcode);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int againPcount(String pcode) {
		ProductMapper mapper = session.getMapper(ProductMapper.class);
		int result = 0;
		try {
			result = mapper.againPcount(pcode);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int getProductCount() {
		ProductMapper mapper = session.getMapper(ProductMapper.class);
		int result = 0;
		try {
			result = mapper.getProductCount();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

}
