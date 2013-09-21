package com.erp.util;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SpringBeanUtils {
	private static ApplicationContext context;

	//隐藏构造器
	private SpringBeanUtils(){}
	
	public static ApplicationContext init(String path){
		if(context == null){
			context = new ClassPathXmlApplicationContext(path);
		}
		return context;
	}
	
	public static Object getBean(String beanName){
		return context.getBean(beanName);
	}
	
	public static <T>T getBean(String beanName, Class<T> clazz){
		return (T) context.getBean(beanName, clazz);
	}
	
}