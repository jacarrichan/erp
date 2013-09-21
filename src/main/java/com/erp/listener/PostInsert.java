package com.erp.listener;

import java.io.File;

import org.apache.struts2.ServletActionContext;
import org.hibernate.event.spi.PostInsertEvent;
import org.hibernate.event.spi.PostInsertEventListener;

public class PostInsert implements PostInsertEventListener
{
	private static final long serialVersionUID = -6665376854602907007L;
	public void onPostInsert(PostInsertEvent event )
	{
		String fileRealDir = ServletActionContext.getRequest().getSession().getServletContext().getRealPath(File.separator);
		System.out.println(fileRealDir);
	}
}
