package com.erp.interceptor;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

/**
* 类功能说明 TODO:
* 类修改者	修改日期
* 修改说明
* <p>Title: EncodingInterceptor.java</p>
* <p>Description:福产流通科技</p>
* <p>Copyright: Copyright (c) 2012</p>
* <p>Company:福产流通科技</p>
* @author shouyin 756514656@qq.com
* @date 2013-4-19 上午09:05:30
* @version V1.0
*/
public class SessionInterceptor extends MethodFilterInterceptor {

	private static final long serialVersionUID = -2771516501737587145L;

	@Override
	protected String doIntercept(ActionInvocation actionInvocation) throws Exception {
		/*SessionInfo sessionInfo = (SessionInfo) ServletActionContext.getRequest().getSession().getAttribute(ResourceUtil.getSessionInfoName());
		if (sessionInfo == null) {
			ServletActionContext.getRequest().setAttribute("msg", "您还没有登录或登录已超时，请重新登录，然后再刷新本功能！");
			return "noSession";
		}*/
		return actionInvocation.invoke();
	}

}
