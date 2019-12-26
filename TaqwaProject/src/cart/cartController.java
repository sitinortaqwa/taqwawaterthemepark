package cart;

import cart.cart;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class cartController extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
		    throws ServletException, IOException {
		 
		  String strAction = request.getParameter("action");
		   
		   
		  if(strAction!=null && !strAction.equals("")) {
		   if(strAction.equals("add")) {
		    addToCart(request);
		   } else if (strAction.equals("Update")) {
		    updateCart(request);
		   } else if (strAction.equals("Delete")) {
		    deleteCart(request);
		   }
		  }
		  response.sendRedirect("../cart.jsp");
		 }
		  
		 protected void deleteCart(HttpServletRequest request) {
		  HttpSession session = request.getSession();
		  String strItemIndex = request.getParameter("itemIndex");
		  cart cartBean = null;
		   
		  Object objCartBean = session.getAttribute("cart");
		  if(objCartBean!=null) {
		   cartBean = (cart) objCartBean ;
		  } else {
		   cartBean = new cart();
		  }
		  cartBean.deleteCartItem(strItemIndex);
		 }
		  
		 protected void updateCart(HttpServletRequest request) {
		  HttpSession session = request.getSession();
		  String strQuantity = request.getParameter("quantity");
		  String strItemIndex = request.getParameter("itemIndex");
		  
		  cart cartBean = null;
		   
		  Object objCartBean = session.getAttribute("cart");
		  if(objCartBean!=null) {
		   cartBean = (cart) objCartBean ;
		  } else {
		   cartBean = new cart();
		  }
		  cartBean.updateCartItem(strItemIndex, strQuantity);
		 }
		  
		 protected void addToCart(HttpServletRequest request) {
		  HttpSession session = request.getSession();
		  String roomName = request.getParameter("roomName");
		  String roomBook = request.getParameter("roomBook");
		  String night = request.getParameter("night");
		  String price = request.getParameter("price");
		  String total = request.getParameter("total");
		   
		  cart cartBean = null;
		   
		  Object objCartBean = session.getAttribute("cart");
		 
		  if(objCartBean!=null) {
		   cartBean = (cart) objCartBean ;
		  } else {
		   cartBean = new cart();
		   session.setAttribute("cart", cartBean);
		  }
		   
		  cartBean.addCartItem(roomName, roomBook, night, price, total);
		 }
		 
		

}
