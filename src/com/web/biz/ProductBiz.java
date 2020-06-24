package com.web.biz;

import java.util.List;

import com.web.entity.OrderItem;
import com.web.entity.Product;
import com.web.util.PageBean;

/**
 * 商品的业务逻辑层
 * @author ASUS
 *
 */
public interface ProductBiz {

	/**
	 * 根据类别分页查询数据信息
	 * @param currentPage  当前页码
	 * @param currentCount  每页显示的条数
	 * @param category   类别
	 * @return
	 */
	public PageBean findProductByPage(int currentPage,int currentCount,String category);


	/**
	 * 前台，用于搜索框根据书名来模糊查询相应的图书
	 * @param currentPage
	 * @param currentCount
	 * @param searchfield
	 * @return
	 */
    public PageBean findProductByName(int currentPage,int currentCount,String searchfield);
    
    /**
     * 通过id找到产品
     * @param id
     * @return
     */
    public Product findProductById(int id);
    
    /**
	 * 生成订单时，将商品库存数量减少
	 * @param orderItem
	 * @return
	 */
	public boolean changeLuxuryNum(OrderItem orderItem);
	
	/**
	 * 得到每周热卖商品
	 * @param orderItem
	 * @return
	 */
	public List<Object[]> getWeekHotLuxury();
}