package com.web.biz.impl;

import java.math.BigDecimal;
import java.util.List;

import com.web.biz.OrderBiz;
import com.web.biz.OrderItemBiz;
import com.web.biz.ProductBiz;
import com.web.dao.OrderDao;
import com.web.dao.impl.OrderDaoImpl;
import com.web.entity.Consumer;
import com.web.entity.Order;
import com.web.entity.OrderItem;
import com.web.util.OrderPageBean;

public class OrderBizImpl implements OrderBiz {

	
	
	//实例化订单条目的业务逻辑层
	OrderItemBiz orderItemBiz = new OrderItemBizImpl();
	//实例化订单的数据访问层
	OrderDao orderDao = new OrderDaoImpl();
	//实例化商品的业务逻辑层
	ProductBiz productBiz = new ProductBizImpl();
	
	
	@Override
	public boolean addOrder(Order order) {
		boolean flag  = false;
		
		try {
			//添加订单
			 orderDao.addOrder(order);
			 
			//获取订单的条目信息
			 List<OrderItem> list = order.getOrderItems();
			 
			 //循环
			 for (OrderItem orderItem : list) {
				 //添加订单条目
				 orderItemBiz.addOrderItem(orderItem);
				 
				 //商品库存数量的减少
				 productBiz.changeLuxuryNum(orderItem);
				 
				 // 增加商品销量
				 
			}
			
			 flag = true;
		} catch (Exception e) {
			e.printStackTrace();
			flag = false;
		}
		
		return flag;
	}

		
	@Override
	public List<Order> findOrderByConsumer(Consumer consumer) {
		return orderDao.findOrderByConsumer(consumer);
	}


	@Override
	public Order findOrderById(String id) {
		//查询订单的信息
		Order order = orderDao.findOrderById(id);
		
		//查询订单项的信息
		List<OrderItem> orderItemList = orderItemBiz.findOrderItemByOrder(order);
		
		//设置订单的订单项
		order.setOrderItems(orderItemList);
		
		return order;
	}


	@Override
	public boolean changeState(Order order) {
		return orderDao.changeState(order);
	}


	@Override
	public OrderPageBean FindOrderByPage(Integer currentPage, int currentCount, String oid, String username,
			Integer state) {

		//获取分页查询的总条数
		Integer totalCount =orderDao.findOrderAllCount(oid, username, state);
		
		//获取分页查询的数据信息
		List<Order> orderList = orderDao.findOrderByPage(currentPage, currentCount, oid, username, state);
		
		OrderPageBean orderpageBean = new OrderPageBean();
		orderpageBean.setOid(oid);
		orderpageBean.setUsername(username);
		orderpageBean.setState(state);
		orderpageBean.setCurrentPage(currentPage);
		orderpageBean.setCurrentCount(currentCount);
		orderpageBean.setTotalCount(totalCount);
		orderpageBean.setOrderList(orderList);
		
		return orderpageBean;
	}


	@Override
	public boolean deliverById(String oid) {
		return orderDao.deliverById(oid);
	}


	@Override
	public List<Order> findOrderByState(Integer state) {
		return orderDao.findOrderByState(state);
	}


	@Override
	public List<Order> findDeliveredOrder() {
		return orderDao.findDeliveredOrder();
	}


	@Override
	public Integer countAllOrder() {
		return orderDao.countAllOrder();
	}


	@Override
	public BigDecimal totalSales() {
		return orderDao.totalSales();
	}

}
