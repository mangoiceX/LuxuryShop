package com.web.controller.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.web.biz.ConsumerBiz;
import com.web.biz.impl.ConsumerBizImpl;
import com.web.entity.Consumer;

/**
 * Servlet implementation class RegisterController
 */
@WebServlet(urlPatterns="/RegisterController")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public RegisterController() {
        super();
        // TODO Auto-generated constructor stub
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//调用业务逻辑层的注册方法
		
		//实例化业务逻辑层
		ConsumerBiz consumerBiz = new ConsumerBizImpl();
		
		//实例化用户对象
		Consumer consumer = new Consumer();
		
	    try {
	    	//把表单中的参数赋值给用户对象
			BeanUtils.populate(consumer, request.getParameterMap());
			System.out.println(consumer.getGENDER());
			System.out.println(consumer.getCNAME());
//			//给用户设置激活码
//			user.setActiveCode(ActiveCodeUtil.createActiveCode());
//			
//			//设置角色
//			user.setRole("普通用户");
			
			//调用业务逻辑层的注册方法
			boolean flag = consumerBiz.register(consumer);
			
			if(flag){//如果注册成功
				
				//req.getContextPath():获取绝对路径
				response.sendRedirect(request.getContextPath()+"/client/login.jsp");
			}else{
				//req.getContextPath():获取绝对路径
				response.sendRedirect(request.getContextPath()+"/client/register.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
