package com.web.biz.impl;

import com.web.biz.OrderBiz;
import com.web.biz.ProductBiz;
import com.web.dao.OrderDao;
import com.web.dao.impl.OrderDaoImpl;
import com.web.entity.Order;

public class OrderBizImpl implements OrderBiz {

	OrderDao orderDao = new OrderDaoImpl();
	ProductBiz productBiz = new ProductBizImpl();
	
	
	@Override
	public boolean addOrder(Order order) {
		// 添加订单
		boolean flag = false;
		
		try {
			//添加订单
			 orderDao.addOrder(order);
			 //修改库存
			 productBiz.changeLuxuryNum(order);
			 flag = true;
			 
		} catch (Exception e) {
			e.printStackTrace();
			flag = false;
		}
		
		return flag;
	}

}
