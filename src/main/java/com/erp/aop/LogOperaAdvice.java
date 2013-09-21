package com.erp.aop;

import java.lang.reflect.Method;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;

import com.erp.serviceImpl.LogsServiceImpl;

public class LogOperaAdvice {
	@Autowired
	private LogsServiceImpl logsService;

	public Object after(ProceedingJoinPoint joinPoint) throws Throwable {
		Method method = ((MethodSignature) joinPoint.getSignature())
				.getMethod();
		// TODO 保存日志到数据库
		System.out
				.println("===============================" + method.getName());
		return joinPoint.proceed();
	}

	public Object update(ProceedingJoinPoint joinPoint) throws Throwable {
		Method method = ((MethodSignature) joinPoint.getSignature())
				.getMethod();
		System.out.println("============有数据被更新===================");
		return joinPoint.proceed();
	}
}
