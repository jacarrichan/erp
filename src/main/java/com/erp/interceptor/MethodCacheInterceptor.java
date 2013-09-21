package com.erp.interceptor;

import org.aopalliance.intercept.MethodInterceptor;
import org.aopalliance.intercept.MethodInvocation;
import org.springframework.beans.factory.InitializingBean;

public class MethodCacheInterceptor implements MethodInterceptor, InitializingBean
{
	/*private static final Logger log = Logger.getLogger(MethodCacheInterceptor.class);
	private Cache cache;

	public void setCache(Cache cache )
	{
		this.cache = cache;
	}
*/
	public void afterPropertiesSet() throws Exception
	{

	}

	public Object invoke(MethodInvocation arg0 ) throws Throwable
	{
		return null;
	}

}
