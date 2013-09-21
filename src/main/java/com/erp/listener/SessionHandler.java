package com.erp.listener;


import org.apache.shiro.cache.ehcache.EhCacheManager;
import org.apache.shiro.session.Session;
import org.apache.shiro.session.SessionListener;

public class SessionHandler implements SessionListener
{

	public void onStart(Session session )
	{
		// TODO Auto-generated method stub
		
	}

	public void onStop(Session session )
	{
		
		System.out.println("---->"+session.getTimeout());
		//CacheManager.getInstance().clearAll();
	//	Cache sdf2 = CacheManager.getInstance().getCache("shiro.authorizationCache");
		// sdf2.removeAll();
		EhCacheManager sdf=new EhCacheManager();
		//sdf.getCache("shiro-activeSessionCache");
		sdf.getCache("shiro.authorizationCache");
		sdf.destroy();
		
	}

	public void onExpiration(Session session )
	{
		// TODO Auto-generated method stub
		
	}

}
