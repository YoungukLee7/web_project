package chap02.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import datamodel.Product;

@WebServlet("/product")
public class ProductSurvlet extends HttpServlet {
	
	private static Map<String, Product> products = new HashMap<>();
	
	static {
		products.put("fan", new Product("부체", 1000, 0.2, "리빙"));
		products.put("elecfan", new Product("선풍기", 33000, 5.3, "가전제품"));
		products.put("minifan", new Product("미니 선풍기", 20000, 0.8, "아이디어 상품"));
		products.put("aircon", new Product("에어컨", 1800000, 28.9, "가전제품"));
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String productName = req.getParameter("name");
		
		//System.out.println(products.get(productName));
		
		// 파라미터로 받은 상품명을 통해 상품의 모든 정보들을 얻을 수 있다
		
		//상품명을 통해 얻은 데이터를 어트리뷰트에 실어서 전달할 수 있다
		//            원하는 이름 사용가능
		req.setAttribute("product", products.get(productName));
		
		// forward : webapp 밑의 경로만 입력하면 된다
		req.getRequestDispatcher("/attrebute/view/product_detail.jsp").forward(req,resp);
	}
}
