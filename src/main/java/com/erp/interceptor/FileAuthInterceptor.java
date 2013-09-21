package com.erp.interceptor;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;
/**
 * 类功能说明 TODO:文件上传下载权限拦截器
 * 类修改者	修改日期
 * 修改说明
 * <p>Title: LoginAction.java</p>
 * <p>Description:福产流通科技</p>
 * <p>Copyright: Copyright (c) 2012</p>
 * <p>Company:福产流通科技</p>
 * @author shouyin 756514656@qq.com
 * @date 2013-4-19 上午10:13:47
 * @version V1.0
 */
public class FileAuthInterceptor extends MethodFilterInterceptor {
	private static final long serialVersionUID = -6521979628239073324L;

	@Override
	protected String doIntercept(ActionInvocation actionInvocation) throws Exception {
		/*ActionContext actionContext = actionInvocation.getInvocationContext();
		SessionInfo sessionInfo = (SessionInfo) ServletActionContext.getRequest().getSession().getAttribute(ResourceUtil.getSessionInfoName());
		if (sessionInfo.getLoginName().equals("admin")) {// admin用户不需要验证权限
			return actionInvocation.invoke();
		}
		String requestPath = RequestUtil.getRequestPath(ServletActionContext.getRequest());
		logger.debug(actionInvocation.getAction().getClass());
		logger.debug(requestPath);
		List<Auth> auths = sessionInfo.getAuths();
		if (auths != null && auths.size() > 0) {
			boolean b = false;
			for (Auth a : auths) {
				if (requestPath.equals(a.getCurl())) {
					b = true;
					break;
				}
			}
			if (b) {
				return actionInvocation.invoke();
			}
		}
		ServletActionContext.getRequest().setAttribute("msg", "您没有访问此功能的权限！权限路径为[" + requestPath + "]请联系管理员给你赋予相应权限。");*/
		return "noFileAuth";
	}

}
