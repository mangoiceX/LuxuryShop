package com.web.controller.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.web.biz.OrderBiz;
import com.web.biz.impl.OrderBizImpl;
import com.web.entity.Consumer;
import com.web.entity.Order;

/**
 * 我的订单
 */
@WebServlet("/FindOrderByUserController")
public class FindOrderByUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindOrderByUserController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//获取用户的信息
		HttpSession session = req.getSession();
		Consumer consumer = (Consumer) session.getAttribute("consumer");
		
		//根据用户的信息查询订单信息
		OrderBiz orderBiz = new OrderBizImpl();
		
		List<Order> list = orderBiz.findOrderByConsumer(consumer);
		
		//把订单列表数据信息传递到前台
		req.setAttribute("orderList", list);
		
		//转发跳转页面
		req.getRequestDispatcher("/client/order/orderlist.jsp").forward(req, resp);
	}

}
