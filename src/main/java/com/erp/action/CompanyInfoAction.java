package com.erp.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.springframework.beans.factory.annotation.Autowired;

import com.alibaba.fastjson.JSON;
import com.erp.model.CompanyInfo;
import com.erp.service.CompanyInfoService;
import com.erp.util.Constants;
import com.erp.util.PageUtil;
import com.erp.viewModel.GridModel;
import com.opensymphony.xwork2.ModelDriven;

/**
* 类功能说明 TODO:公司信息处理action
* 类修改者
* 修改日期
* 修改说明
* <p>Title: CompanyInfoAction.java</p>
* <p>Description:福产流通科技</p>
* <p>Copyright: Copyright (c) 2006</p>
* <p>Company:福产流通科技有限公司</p>
* @author lsy 756514656@qq.com
* @date 2013-4-28 下午12:51:26
* @version V1.0
*/
@Namespace("/companyInfo")
@Action(value = "companyInfoAction")
public class CompanyInfoAction extends BaseAction implements ModelDriven<CompanyInfo>{
	//private static final Logger logger = Logger.getLogger(LoginAction.class);
	private static final long serialVersionUID = -3276708781259160129L;
	private CompanyInfoService companyInfoService;
	private CompanyInfo companyInfo;
	
	public CompanyInfo getCompanyInfo()
	{
		return companyInfo;
	}

	public void setCompanyInfo(CompanyInfo companyInfo )
	{
		this.companyInfo = companyInfo;
	}

	@Autowired
	public void setCompanyInfoService(CompanyInfoService companyInfoService) {
		this.companyInfoService = companyInfoService;
	}
	
	/**  
	* 函数功能说明 
	* Administrator修改者名字
	* 2013-4-28修改日期
	* 修改内容
	* @Title: persistenceCompanyInfo 
	* @Description:TODO:持久化persistenceCompanyInfo
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String persistenceCompanyInfo() throws Exception {
		System.out.println(inserted);
		//String sdfString="[{"name":"123123","tel":"123","fax":"123","address":"123","zip":"123","email":"123123@qq.com","contact":"123","description":"123123"}]";
		Map<String, List<CompanyInfo>> map=new HashMap<String, List<CompanyInfo>>();
		map.put("addList", JSON.parseArray(inserted, CompanyInfo.class));
		map.put("updList", JSON.parseArray(updated, CompanyInfo.class));
		map.put("delList", JSON.parseArray(deleted, CompanyInfo.class));
		OutputJson(getMessage(companyInfoService.persistenceCompanyInfo(map)));
		return null;
	}
	
	/**  
	* 函数功能说明 TODO:CompanyInfo弹出框模式新增
	* Administrator修改者名字
	* 2013-6-9修改日期
	* 修改内容
	* @Title: addCompanyInfo 
	* @Description: 
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String persistenceCompanyInfoDlg() throws Exception
	{
		List<CompanyInfo> list=new ArrayList<CompanyInfo>();
		list.add(getModel());
		Integer companyId = getModel().getCompanyId();
		if (null==companyId||"".equals(companyId))
		{
			OutputJson(getMessage(companyInfoService.addCompanyInfo(list)), Constants.TEXT_TYPE_PLAIN);
		}else {
			OutputJson(getMessage(companyInfoService.updCompanyInfo(list)), Constants.TEXT_TYPE_PLAIN);
		}
		return null;
	}
	
	/**  
	* 函数功能说明
	* Administrator修改者名字
	* 2013-4-28修改日期
	* 修改内容
	* @Title: findAllCompanyInfoList 
	* @Description: TODO:查询所有或符合条件的CompanyInfo
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String findAllCompanyInfoList() throws Exception {
		Map<String, Object> map=new HashMap<String, Object>();
		if (null!=searchValue&&!"".equals(searchValue))
		{
			map.put(searchName, Constants.GET_SQL_LIKE+searchValue+Constants.GET_SQL_LIKE);
		}
		PageUtil pageUtil=new PageUtil(page, rows, searchAnds, searchColumnNames, searchConditions, searchVals);
		GridModel gridModel=new GridModel();
		gridModel.setRows(companyInfoService.findAllCompanyInfoList(map, pageUtil));
		gridModel.setTotal(companyInfoService.getCount(map,pageUtil));
		OutputJson(gridModel);
		return null;
	}
 
	/**  
	* 函数功能说明 TODO:删除CompanyInfo
	* Administrator修改者名字
	* 2013-6-14修改日期
	* 修改内容
	* @Title: delCompanyInfo 
	* @Description: 
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String delCompanyInfo() throws Exception
	{
		OutputJson(getMessage(companyInfoService.delCompanyInfo(getModel().getCompanyId())));
		return null;
	}
	public CompanyInfo getModel()
	{
		if(null==companyInfo){
			companyInfo=new CompanyInfo();
		}
		return companyInfo;
	}
}
